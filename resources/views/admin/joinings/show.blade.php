@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.joining.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.joinings.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.id') }}
                        </th>
                        <td>
                            {{ $joining->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.name') }}
                        </th>
                        <td>
                            {{ $joining->name }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.email') }}
                        </th>
                        <td>
                            {{ $joining->email }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.phone_number') }}
                        </th>
                        <td>
                            {{ $joining->phone_number }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.gender') }}
                        </th>
                        <td>
                            {{ App\Models\Joining::GENDER_SELECT[$joining->gender] ?? '' }}
                        </td>
                    </tr>  
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.nationalid') }}
                        </th>
                        <td>
                            {{ $joining->nationalid }}
                        </td>
                    </tr> 
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.dob') }}
                        </th>
                        <td>
                            {{ $joining->dob }}
                        </td>
                    </tr> 
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.country') }}
                        </th>
                        <td>
                            {{ $joining->country }}
                        </td>
                    </tr> 
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.city') }}
                        </th>
                        <td>
                            {{ $joining->city }}
                        </td>
                    </tr> 
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.license') }}
                        </th>
                        <td>
                            {{ $joining->license }}
                        </td>
                    </tr> 
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.specialization') }}
                        </th>
                        <td>
                            {{ $joining->specialization }}
                        </td>
                    </tr> 
                    <tr>
                        <th>
                            {{ trans('cruds.joining.fields.is_sent_email') }}
                        </th>
                        <td>
                            <input type="checkbox" disabled="disabled" {{ $joining->is_sent_email ? 'checked' : '' }}>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.joinings.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection