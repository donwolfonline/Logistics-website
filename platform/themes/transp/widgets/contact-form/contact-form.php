<?php

use Botble\Base\Forms\FieldOptions\InputFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\ColorField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Contact\Forms\Fronts\ContactForm;
use Botble\Theme\Facades\Theme;
use Botble\Widget\AbstractWidget;
use Botble\Widget\Forms\WidgetForm;

class ContactFormWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => __('Contact form'),
            'description' => __('Contact Us'),
            'title' => null,
            'background_color' => '#ffe799',
            'shape_icon_top' => null,
            'shape_icon_bottom' => null,
        ]);

        Theme::asset()
            ->usePath(false)
            ->add('contact-css', asset('vendor/core/plugins/contact/css/contact-public.css'), [], [], '1.0.0');
        Theme::asset()
            ->container('footer')
            ->usePath(false)
            ->add(
                'contact-public-js',
                asset('vendor/core/plugins/contact/js/contact-public.js'),
                ['jquery'],
                [],
                '1.0.0'
            );
    }

    public function settingForm(): ?WidgetForm
    {
        return WidgetForm::createFromArray($this->getConfig())
            ->add(
                'title',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Title'))
                    ->toArray()
            )
            ->add(
                'background_color',
                ColorField::class,
                InputFieldOption::make()
                    ->label(__('Background color'))
                    ->defaultValue('#ffe799')
                    ->toArray()
            );
    }

    public function data(): array
    {
        if (! is_plugin_active('contact')) {
            return [];
        }

        $form = ContactForm::create();

        return compact('form');
    }
}
