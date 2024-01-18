@extends('layouts.admin')
@section('content')
    @can('c_service_create')
        <div style="margin-bottom: 10px;" class="row">
            <div class="col-lg-12">
                <a class="btn btn-success" href="{{ route('admin.c-services.create') }}">
                    {{ trans('global.add') }} {{ trans('cruds.cService.title_singular') }}
                </a>
            </div>
        </div>
    @endcan
    <div class="card">
        <div class="card-header">
            {{ trans('cruds.cService.title_singular') }} {{ trans('global.list') }}
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class=" table table-bordered table-striped table-hover datatable datatable-CService">
                    <thead>
                        <tr>
                            <th width="10">

                            </th>
                            <th>
                                {{ trans('cruds.cService.fields.id') }}
                            </th>
                            <th>
                                {{ trans('cruds.cService.fields.name') }}
                            </th>
                            <th>
                                {{ trans('cruds.cService.fields.parent') }}
                            </th>
                            <th>
                                مميز
                            </th>
                            <th>
                                &nbsp;
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($cServices as $key => $cService)
                            <tr data-entry-id="{{ $cService->id }}">
                                <td>

                                </td>
                                <td>
                                    {{ $cService->id ?? '' }}
                                </td>
                                <td>
                                    {{ $cService->name ?? '' }}
                                </td>
                                <td>
                                    {{ $cService->parent->name ?? '' }}
                                </td>
                                <td> 
                                    <label class="c-switch c-switch-pill c-switch-success">
                                        <input onchange="update_status(this)" value="{{$cService->id}}" type="checkbox" class="c-switch-input" {{ ($cService->featured ? "checked" : null)  }}>
                                        <span class="c-switch-slider"></span>
                                    </label>
                                </td>
                                <td>
                                    @can('c_service_show')
                                        <a class="btn btn-xs btn-primary"
                                            href="{{ route('admin.c-services.show', $cService->id) }}">
                                            {{ trans('global.view') }}
                                        </a>
                                    @endcan

                                    @can('c_service_edit')
                                        <a class="btn btn-xs btn-info"
                                            href="{{ route('admin.c-services.edit', $cService->id) }}">
                                            {{ trans('global.edit') }}
                                        </a>
                                    @endcan

                                    @can('c_service_delete')
                                        <form action="{{ route('admin.c-services.destroy', $cService->id) }}" method="POST"
                                            onsubmit="return confirm('{{ trans('global.areYouSure') }}');"
                                            style="display: inline-block;">
                                            <input type="hidden" name="_method" value="DELETE">
                                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                            <input type="submit" class="btn btn-xs btn-danger"
                                                value="{{ trans('global.delete') }}">
                                        </form>
                                    @endcan

                                </td>

                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    @parent
    <script>
        function update_status(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            } 
            $.post('{{ route('admin.c-services.update_status') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    showFrontendAlert('success',"{{ trans('global.success') }}");
                }else{
                    showFrontendAlert('error',"{{ trans('global.error') }}");
                }
            });
        }
        $(function() {
            let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
            @can('c_service_delete')
                let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
                let deleteButton = {
                    text: deleteButtonTrans,
                    url: "{{ route('admin.c-services.massDestroy') }}",
                    className: 'btn-danger',
                    action: function(e, dt, node, config) {
                        var ids = $.map(dt.rows({
                            selected: true
                        }).nodes(), function(entry) {
                            return $(entry).data('entry-id')
                        });

                        if (ids.length === 0) {
                            alert('{{ trans('global.datatables.zero_selected') }}')

                            return
                        }

                        if (confirm('{{ trans('global.areYouSure') }}')) {
                            $.ajax({
                                    headers: {
                                        'x-csrf-token': _token
                                    },
                                    method: 'POST',
                                    url: config.url,
                                    data: {
                                        ids: ids,
                                        _method: 'DELETE'
                                    }
                                })
                                .done(function() {
                                    location.reload()
                                })
                        }
                    }
                }
                dtButtons.push(deleteButton)
            @endcan

            $.extend(true, $.fn.dataTable.defaults, {
                orderCellsTop: true,
                order: [
                    [1, 'desc']
                ],
                pageLength: 100,
            });
            let table = $('.datatable-CService:not(.ajaxTable)').DataTable({
                buttons: dtButtons
            })
            $('a[data-toggle="tab"]').on('shown.bs.tab click', function(e) {
                $($.fn.dataTable.tables(true)).DataTable()
                    .columns.adjust();
            });

        })
    </script>
@endsection
