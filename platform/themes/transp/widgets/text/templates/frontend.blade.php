<div class="col-lg-3 width-20 mb-30">
    @if($config['name'])
        <h5 class="mb-10 color-brand-1">{!! BaseHelper::clean($config['name']) !!}</h5>
    @endif
    <div class="text-white">{!! do_shortcode(BaseHelper::clean($config['content'])) !!}</div>
</div>
