<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyCServiceRequest;
use App\Http\Requests\StoreCServiceRequest;
use App\Http\Requests\UpdateCServiceRequest;
use App\Models\CService;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CServicesController extends Controller
{
    public function update_status(Request $request){
        $service = CService::findOrFail($request->id);
        $service->featured = $request->status;
        $service->save(); 
        return 1;
    } 
    public function index()
    {
        abort_if(Gate::denies('c_service_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $cServices = CService::with(['parent'])->get();

        return view('admin.cServices.index', compact('cServices'));
    }

    public function create()
    {
        abort_if(Gate::denies('c_service_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $parents = CService::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        return view('admin.cServices.create', compact('parents'));
    }

    public function store(StoreCServiceRequest $request)
    {
        $cService = CService::create($request->all());

        return redirect()->route('admin.c-services.index');
    }

    public function edit(CService $cService)
    {
        abort_if(Gate::denies('c_service_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $parents = CService::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $cService->load('parent');

        return view('admin.cServices.edit', compact('cService', 'parents'));
    }

    public function update(UpdateCServiceRequest $request, CService $cService)
    {
        $cService->update($request->all());

        return redirect()->route('admin.c-services.index');
    }

    public function show(CService $cService)
    {
        abort_if(Gate::denies('c_service_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $cService->load('parent');

        return view('admin.cServices.show', compact('cService'));
    }

    public function destroy(CService $cService)
    {
        abort_if(Gate::denies('c_service_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $cService->delete();

        return back();
    }

    public function massDestroy(MassDestroyCServiceRequest $request)
    {
        $cServices = CService::find(request('ids'));

        foreach ($cServices as $cService) {
            $cService->delete();
        }

        return response(null, Response::HTTP_NO_CONTENT);
    }
}