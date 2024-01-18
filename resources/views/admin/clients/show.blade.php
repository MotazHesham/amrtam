@extends('layouts.admin')
@section('content')

<div class="row">
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                {{ trans('global.show') }} {{ trans('cruds.client.title') }}
            </div>
        
            <div class="card-body">
                <div class="form-group">
                    <div class="form-group">
                        <a class="btn btn-default" href="{{ route('admin.clients.index') }}">
                            {{ trans('global.back_to_list') }}
                        </a>
                    </div>
                    <table class="table table-bordered table-striped">
                        <tbody>
                            <tr>
                                <th>
                                    {{ trans('cruds.user.fields.id') }}
                                </th>
                                <td>
                                    {{ $client->id }}
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    {{ trans('cruds.user.fields.name') }}
                                </th>
                                <td>
                                    {{ $client->name }}
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    {{ trans('cruds.user.fields.email') }}
                                </th>
                                <td>
                                    {{ $client->email }}
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    {{ trans('cruds.user.fields.phone_number') }}
                                </th>
                                <td>
                                    {{ $client->phone_number }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    نوع العميل
                                </th>
                                <td>
                                    {{ $client->client_type ? \App\Models\User::CLIENT_TYPE_SELECT[$client->client_type] : '' }}
                                </td>
                            </tr> 
                            @if($client->client_type == 'individual')
                            <tr>
                                <th>
                                    رقم الهوية
                                </th>
                                <td>
                                    {{ $client->national_num }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    الحي
                                </th>
                                <td>
                                    {{ $client->district }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    المدينة
                                </th>
                                <td>
                                    {{ $client->city }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    الجنسية
                                </th>
                                <td>
                                    {{ $client->nationality }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    الجنس
                                </th>
                                <td>
                                    {{ $client->gender }}
                                </td>
                            </tr> 
                            @endif
                            @if($client->client_type == 'company')
                            <tr>
                                <th>
                                    اسم المنشئة
                                </th>
                                <td>
                                    {{ $client->company_name }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    نشاط منشئه
                                </th>
                                <td>
                                    {{ $client->working_field }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    عدد العاملين  او الموظفين
                                </th>
                                <td>
                                    الاجانب : {{ $client->foreign_employees }}
                                    <br>
                                    السعوديين : {{ $client->saudi_employees }}
                                </td>
                            </tr> 
                            <tr>
                                <th>
                                    السجل التجاري
                                </th>
                                <td>
                                    @if($client->commerical_record)
                                        <a class="btn btn-info btn-lg mb-2" href="{{ $client->commerical_record->getUrl() }}" target="_blank">
                                            عرض الملف<i class="fas fa-cloud-download-alt"></i>
                                        </a>
                                    @endif
                                </td>
                            </tr>
                            @endif
                            <tr>
                                <th>
                                    العنوان الوطني
                                </th>
                                <td>
                                    {{ $client->address }}
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                    <div class="form-group">
                        <a class="btn btn-default" href="{{ route('admin.clients.index') }}">
                            {{ trans('global.back_to_list') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                {{ trans('global.relatedData') }}
            </div>
            <ul class="nav nav-tabs" role="tablist" id="relationship-tabs">
                <li class="nav-item">
                    <a class="nav-link" href="#user_request_services" role="tab" data-toggle="tab">
                        {{ trans('cruds.requestService.title') }}
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#user_user_alerts" role="tab" data-toggle="tab">
                        {{ trans('cruds.userAlert.title') }}
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane" role="tabpanel" id="user_request_services">
                    @includeIf('admin.users.relationships.userRequestServices', ['requestServices' => $client->userRequestServices])
                </div>
                <div class="tab-pane" role="tabpanel" id="user_user_alerts">
                    @includeIf('admin.users.relationships.userUserAlerts', ['userAlerts' => $client->userUserAlerts])
                </div>
            </div>
        </div>
    </div>
</div>



@endsection