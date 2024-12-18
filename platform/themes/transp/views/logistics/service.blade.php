<div class="mb-50">
    <section class="section">
        <div class="container">
            <div class="box-pageheader-1 box-pageheader-services text-center">
                <span class="btn btn-tag wow animate__ animate__fadeIn animated" style="visibility: visible; animation-name: fadeIn;">{{ __('Our Services') }}</span>
                <h2 class="color-brand-2 mt-15 mb-10 wow animate__ animate__fadeIn animated" style="visibility: visible; animation-name: fadeIn;">
                    {!! BaseHelper::clean($service->title) !!}
                </h2>
                <p class="font-md color-grey-900 wow animate__ animate__fadeIn animated" style="visibility: visible; animation-name: fadeIn;">
                    {!! BaseHelper::clean($service->description) !!}
                </p>
            </div>
        </div>
    </section>

    <div class="section">
        @if($image = $service->image)
            <img src="{{ RvMedia::getImageUrl($image) }}" alt="{{ $service->title }}">
        @endif
    </div>

    <section class="section mt-50">
        <div class="container">
            <div class="content-detail ck-content" style="max-width: 100%">
                {!! BaseHelper::clean($service->content) !!}
            </div>
        </div>
    </section>
</div>
