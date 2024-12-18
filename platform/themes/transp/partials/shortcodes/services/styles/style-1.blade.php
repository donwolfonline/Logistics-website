<section class="section mt-100">
    <div class="container">
        @if ($title = $shortcode->title)
            <h2 @if (theme_option('favicon')) style="background-image: url({{ RvMedia::getImageUrl(theme_option('favicon')) }})" @endif class="title-favicon mb-20">{!! BaseHelper::clean($title) !!}</h2>
        @endif
        <div class="row align-items-end">
            @if ($description = $shortcode->description)
                <div class="col-lg-8 col-md-8 mb-30">
                    <p class="font-md color-gray-700">{!! BaseHelper::clean($description) !!}</p>
                </div>
            @endif

            @if (($buttonLabel = $shortcode->button_label) && ($buttonLink = $shortcode->button_link))
                <div class="col-lg-4 col-md-4 mb-30 text-md-end text-start">
                    <a class="btn btn-brand-1 hover-up" href="{{ $buttonLink }}">
                        <svg fill="none" stroke="currentColor" stroke-width="1.5" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M9 12h3.75M9 15h3.75M9 18h3.75m3 .75H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08m-5.801 0c-.065.21-.1.433-.1.664 0 .414.336.75.75.75h4.5a.75.75 0 00.75-.75 2.25 2.25 0 00-.1-.664m-5.8 0A2.251 2.251 0 0113.5 2.25H15c1.012 0 1.867.668 2.15 1.586m-5.8 0c-.376.023-.75.05-1.124.08C9.095 4.01 8.25 4.973 8.25 6.108V8.25m0 0H4.875c-.621 0-1.125.504-1.125 1.125v11.25c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V9.375c0-.621-.504-1.125-1.125-1.125H8.25zM6.75 12h.008v.008H6.75V12zm0 3h.008v.008H6.75V15zm0 3h.008v.008H6.75V18z"> </path>
                        </svg>
                        {!! BaseHelper::clean($buttonLabel) !!}
                    </a>
                </div>
            @endif
        </div>
        <div class="mt-20 box-background-offer">
            <div
                class="bg-under"
                style="
                    background-image: url('{{ RvMedia::getImageUrl($shortcode->background) }}');
                    --left-shape-image: url('{{ RvMedia::getImageUrl($shortcode->left_shape_image) }}');
                "
            ></div>
            <div class="row">
                @foreach($tabs as $tab)
                    <div class="col-lg-4 col-md-6">
                        <div class="card-offer hover-up">
                            @if ($tab['image'])
                                <div class="card-image">
                                    <img src="{{ RvMedia::getImageUrl($tab['image']) }}" alt="{{ $tab['title'] }}">
                                </div>
                            @endif
                            <div class="card-info">
                                @if ($tab['title'])
                                    <h5 class="color-brand-2 mb-15">{!! BaseHelper::clean($tab['title']) !!}</h5>
                                @endif

                                @if ($tab['description'])
                                    <p class="font-sm color-grey-900 mb-35">{!! BaseHelper::clean($tab['description']) !!}</p>
                                @endif

                                @if($tab['link'])
                                    <div class="box-button-offer mb-30">
                                        <a class="btn btn-link font-sm color-brand-2" href="{{ $tab['link'] }}">
                                            {{ __('View Details') }}
                                            <span>
                                            <svg class="icon-16" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                                            </svg>
                                        </span>
                                        </a>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
