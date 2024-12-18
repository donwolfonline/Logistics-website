@if (is_plugin_active('contact'))
    @php
        $bgColor = $config['background_color'] ?: '#ffe799'
    @endphp

    <div class="section bg-map d-block"
         style="
        @if($config['shape_icon_top'])
            --shape-1: url('{{ RvMedia::getImageUrl($config['shape_icon_top']) }}');
        @endif
        @if($config['shape_icon_bottom'])
            --shape-2: url('{{ RvMedia::getImageUrl($config['shape_icon_bottom']) }}');
        @endif
        --bg-color: {{ $bgColor }}
    "
    >
        <div class="container">
            <div class="box-newsletter">
                @if ($title = $config['title'])
                    <h3 class="color-brand-2 mb-20">{!! BaseHelper::clean($title) !!}</h3>
                @endif
                <div class="row">
                    <div class="col-lg-5 mb-30">
                        <div class="form-newsletter">
                            {!! $form->renderForm() !!}
                        </div>
                    </div>
                    <div class="col-lg-7 mb-30">
                        <div class="d-flex box-newsletter-right">
                            @if($address = theme_option('address'))
                                <div class="box-map-2">
                                    <iframe src="https://www.google.com/maps?q={{ $address }}&output=embed" height="242" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            @endif
                            <ul class="list-info-footer">
                                @if ($address)
                                    <li>
                                        <div class="cardImage">
                                    <span class="icon-brand-1">
                                        <img src="{{ Theme::asset()->url('images/contact-form/icons/address.svg') }}" alt="{{ __('Address') }}">
                                    </span>
                                        </div>
                                        <div class="cardInfo">
                                            <h6 class="font-sm-bold color-grey-900">{{ __('Address') }}</h6>
                                            <p class="font-sm color-grey-900">{!! BaseHelper::clean($address) !!}</p>
                                        </div>
                                    </li>
                                @endif

                                @if ($email = theme_option('contact_email'))
                                    <li>
                                        <div class="cardImage">
                                    <span class="icon-brand-1">
                                        <img src="{{ Theme::asset()->url('images/contact-form/icons/email.svg') }}" alt="{{ __('Email') }}">
                                    </span>
                                        </div>
                                        <div class="cardInfo">
                                            <h6 class="font-sm-bold color-grey-900">{{ __('Email') }}</h6>
                                            <a href="mailto:{{ $email }}" class="font-sm color-grey-900">{!! BaseHelper::clean($email) !!}</a>
                                        </div>
                                    </li>
                                @endif

                                @if ($phoneNumber = theme_option('phone'))
                                    <li>
                                        <div class="cardImage">
                                    <span class="icon-brand-1">
                                        <img src="{{ Theme::asset()->url('images/contact-form/icons/phone.svg') }}" alt="{{ __('Phone') }}">
                                    </span>
                                        </div>
                                        <div class="cardInfo">
                                            <h6 class="font-sm-bold color-grey-900">{{ __('Telephone') }}</h6>
                                            <a href="tel:{{ $phoneNumber }}" class="font-sm color-grey-900"> {!! BaseHelper::clean($phoneNumber) !!} </a>
                                        </div>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
