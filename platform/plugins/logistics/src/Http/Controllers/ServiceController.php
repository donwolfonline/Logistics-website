<?php

namespace Botble\Logistics\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Logistics\Forms\ServiceForm;
use Botble\Logistics\Http\Requests\ServiceRequest;
use Botble\Logistics\Models\Service;
use Botble\Logistics\Tables\ServiceTable;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ServiceController extends BaseController
{
    public function index(ServiceTable $table): View|JsonResponse
    {
        $this->pageTitle(trans('plugins/logistics::logistics.service.name'));

        return $table->renderTable();
    }

    public function create(FormBuilder $formBuilder): string
    {
        $this->pageTitle(trans('plugins/logistics::logistics.service.create'));

        return $formBuilder->create(ServiceForm::class)->renderForm();
    }

    public function store(ServiceRequest $request): BaseHttpResponse
    {
        $service = Service::query()->create(array_merge($request->validated(), [
            'author_type' => $request->user()::class,
            'author_id' => $request->user()->getKey(),
        ]));

        event(new CreatedContentEvent('services', $request, $service));

        return $this
            ->httpResponse()
            ->setNextUrl(route('logistics.services.edit', $service))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Service $service, Request $request, FormBuilder $formBuilder): string
    {
        event(new BeforeEditContentEvent($request, $service));

        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $service->title]));

        return $formBuilder->create(ServiceForm::class, ['model' => $service])->renderForm();
    }

    public function update(Service $service, ServiceRequest $request): BaseHttpResponse
    {
        $service->update($request->validated());

        event(new UpdatedContentEvent('services', $request, $service));

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('logistics.services.index'))
            ->setNextUrl(route('logistics.services.edit', $service))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Service $service)
    {
        return DeleteResourceAction::make($service);
    }
}
