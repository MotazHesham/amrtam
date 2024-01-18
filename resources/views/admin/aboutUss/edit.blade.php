@extends('layouts.admin')
@section('content')
    <div class="card">
        <div class="card-header">
            {{ trans('global.edit') }} {{ trans('cruds.aboutUs.title_singular') }}
        </div>

        <div class="card-body">
            <form method="POST" action="{{ route('admin.about-uss.update', [$aboutUss->id]) }}" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="logo">{{ trans('cruds.aboutUs.fields.logo') }}</label>
                        <div class="needsclick dropzone {{ $errors->has('logo') ? 'is-invalid' : '' }}" id="logo-dropzone">
                        </div>
                        @if ($errors->has('logo'))
                            <div class="invalid-feedback">
                                {{ $errors->first('logo') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.logo_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="vision">{{ trans('cruds.aboutUs.fields.vision') }}</label>
                        <textarea class="form-control {{ $errors->has('vision') ? 'is-invalid' : '' }}" name="vision" id="vision">{{ old('vision', $aboutUss->vision) }}</textarea>
                        @if ($errors->has('vision'))
                            <div class="invalid-feedback">
                                {{ $errors->first('vision') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.vision_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="message">{{ trans('cruds.aboutUs.fields.message') }}</label>
                        <textarea class="form-control {{ $errors->has('message') ? 'is-invalid' : '' }}" name="message" id="message">{{ old('message', $aboutUss->message) }}</textarea>
                        @if ($errors->has('message'))
                            <div class="invalid-feedback">
                                {{ $errors->first('message') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.message_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="morals">{{ trans('cruds.aboutUs.fields.morals') }}</label> 
                        <textarea class="form-control {{ $errors->has('morals') ? 'is-invalid' : '' }}" name="morals" id="morals">{{ old('morals', $aboutUss->morals) }}</textarea>
                        @if ($errors->has('morals'))
                            <div class="invalid-feedback">
                                {{ $errors->first('morals') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.morals_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="manager_word">{{ trans('cruds.aboutUs.fields.manager_word') }}</label>
                        <textarea class="form-control {{ $errors->has('manager_word') ? 'is-invalid' : '' }}" name="manager_word"
                            id="manager_word">{{ old('manager_word', $aboutUss->manager_word) }}</textarea>
                        @if ($errors->has('manager_word'))
                            <div class="invalid-feedback">
                                {{ $errors->first('manager_word') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.manager_word_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="cv">{{ trans('cruds.aboutUs.fields.cv') }}</label>
                        <div class="needsclick dropzone {{ $errors->has('cv') ? 'is-invalid' : '' }}" id="cv-dropzone">
                        </div>
                        @if ($errors->has('cv'))
                            <div class="invalid-feedback">
                                {{ $errors->first('cv') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.cv_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="email">{{ trans('cruds.aboutUs.fields.email') }}</label>
                        <input class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" type="email"
                            name="email" id="email" value="{{ old('email', $aboutUss->email) }}">
                        @if ($errors->has('email'))
                            <div class="invalid-feedback">
                                {{ $errors->first('email') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.email_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="website">{{ trans('cruds.aboutUs.fields.website') }}</label>
                        <input class="form-control {{ $errors->has('website') ? 'is-invalid' : '' }}" type="text"
                            name="website" id="website" value="{{ old('website', $aboutUss->website) }}">
                        @if ($errors->has('website'))
                            <div class="invalid-feedback">
                                {{ $errors->first('website') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.website_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="phone_number">{{ trans('cruds.aboutUs.fields.phone_number') }}</label>
                        <input class="form-control {{ $errors->has('phone_number') ? 'is-invalid' : '' }}" type="text"
                            name="phone_number" id="phone_number"
                            value="{{ old('phone_number', $aboutUss->phone_number) }}">
                        @if ($errors->has('phone_number'))
                            <div class="invalid-feedback">
                                {{ $errors->first('phone_number') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.phone_number_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="phone_number_2">{{ trans('cruds.aboutUs.fields.phone_number_2') }}</label>
                        <input class="form-control {{ $errors->has('phone_number_2') ? 'is-invalid' : '' }}" type="text"
                            name="phone_number_2" id="phone_number_2"
                            value="{{ old('phone_number_2', $aboutUss->phone_number_2) }}">
                        @if ($errors->has('phone_number_2'))
                            <div class="invalid-feedback">
                                {{ $errors->first('phone_number_2') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.phone_number_2_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="address">{{ trans('cruds.aboutUs.fields.address') }}</label>
                        <input class="form-control {{ $errors->has('address') ? 'is-invalid' : '' }}" type="text"
                            name="address" id="address" value="{{ old('address', $aboutUss->address) }}">
                        @if ($errors->has('address'))
                            <div class="invalid-feedback">
                                {{ $errors->first('address') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.address_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="twitter">{{ trans('cruds.aboutUs.fields.twitter') }}</label>
                        <input class="form-control {{ $errors->has('twitter') ? 'is-invalid' : '' }}" type="text"
                            name="twitter" id="twitter" value="{{ old('twitter', $aboutUss->twitter) }}">
                        @if ($errors->has('twitter'))
                            <div class="invalid-feedback">
                                {{ $errors->first('twitter') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.twitter_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="facebook">{{ trans('cruds.aboutUs.fields.facebook') }}</label>
                        <input class="form-control {{ $errors->has('facebook') ? 'is-invalid' : '' }}" type="text"
                            name="facebook" id="facebook" value="{{ old('facebook', $aboutUss->facebook) }}">
                        @if ($errors->has('facebook'))
                            <div class="invalid-feedback">
                                {{ $errors->first('facebook') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.facebook_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="instagram">{{ trans('cruds.aboutUs.fields.instagram') }}</label>
                        <input class="form-control {{ $errors->has('instagram') ? 'is-invalid' : '' }}" type="text"
                            name="instagram" id="instagram" value="{{ old('instagram', $aboutUss->instagram) }}">
                        @if ($errors->has('instagram'))
                            <div class="invalid-feedback">
                                {{ $errors->first('instagram') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.instagram_helper') }}</span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="tiktok">{{ trans('cruds.aboutUs.fields.tiktok') }}</label>
                        <input class="form-control {{ $errors->has('tiktok') ? 'is-invalid' : '' }}" type="text"
                            name="tiktok" id="tiktok" value="{{ old('tiktok', $aboutUss->tiktok) }}">
                        @if ($errors->has('tiktok'))
                            <div class="invalid-feedback">
                                {{ $errors->first('tiktok') }}
                            </div>
                        @endif
                        <span class="help-block">{{ trans('cruds.aboutUs.fields.tiktok_helper') }}</span>
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-danger" type="submit">
                        {{ trans('global.save') }}
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        Dropzone.options.logoDropzone = {
            url: '{{ route('admin.about-uss.storeMedia') }}',
            maxFilesize: 2, // MB
            acceptedFiles: '.jpeg,.jpg,.png,.gif',
            maxFiles: 1,
            addRemoveLinks: true,
            headers: {
                'X-CSRF-TOKEN': "{{ csrf_token() }}"
            },
            params: {
                size: 2,
                width: 4096,
                height: 4096
            },
            success: function(file, response) {
                $('form').find('input[name="logo"]').remove()
                $('form').append('<input type="hidden" name="logo" value="' + response.name + '">')
            },
            removedfile: function(file) {
                file.previewElement.remove()
                if (file.status !== 'error') {
                    $('form').find('input[name="logo"]').remove()
                    this.options.maxFiles = this.options.maxFiles + 1
                }
            },
            init: function() {
                @if (isset($aboutUss) && $aboutUss->logo)
                    var file = {!! json_encode($aboutUss->logo) !!}
                    this.options.addedfile.call(this, file)
                    this.options.thumbnail.call(this, file, file.preview ?? file.preview_url)
                    file.previewElement.classList.add('dz-complete')
                    $('form').append('<input type="hidden" name="logo" value="' + file.file_name + '">')
                    this.options.maxFiles = this.options.maxFiles - 1
                @endif
            },
            error: function(file, response) {
                if ($.type(response) === 'string') {
                    var message = response //dropzone sends it's own error messages in string
                } else {
                    var message = response.errors.file
                }
                file.previewElement.classList.add('dz-error')
                _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
                _results = []
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                    node = _ref[_i]
                    _results.push(node.textContent = message)
                }

                return _results
            }
        }
    </script>
    <script>
        Dropzone.options.cvDropzone = {
            url: '{{ route('admin.about-uss.storeMedia') }}',
            maxFilesize: 5, // MB
            maxFiles: 1,
            addRemoveLinks: true,
            headers: {
                'X-CSRF-TOKEN': "{{ csrf_token() }}"
            },
            params: {
                size: 5
            },
            success: function(file, response) {
                $('form').find('input[name="cv"]').remove()
                $('form').append('<input type="hidden" name="cv" value="' + response.name + '">')
            },
            removedfile: function(file) {
                file.previewElement.remove()
                if (file.status !== 'error') {
                    $('form').find('input[name="cv"]').remove()
                    this.options.maxFiles = this.options.maxFiles + 1
                }
            },
            init: function() {
                @if (isset($aboutUss) && $aboutUss->cv)
                    var file = {!! json_encode($aboutUss->cv) !!}
                    this.options.addedfile.call(this, file)
                    file.previewElement.classList.add('dz-complete')
                    $('form').append('<input type="hidden" name="cv" value="' + file.file_name + '">')
                    this.options.maxFiles = this.options.maxFiles - 1
                @endif
            },
            error: function(file, response) {
                if ($.type(response) === 'string') {
                    var message = response //dropzone sends it's own error messages in string
                } else {
                    var message = response.errors.file
                }
                file.previewElement.classList.add('dz-error')
                _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
                _results = []
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                    node = _ref[_i]
                    _results.push(node.textContent = message)
                }

                return _results
            }
        }
    </script>
@endsection
