<?php

namespace Botble\Logistics\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Logistics\Forms\PackageForm;
use Botble\Logistics\Http\Requests\PackageRequest;
use Botble\Logistics\Models\Package;
use Botble\Logistics\Tables\PackageTable;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class PackageController extends BaseController
{
    public function __construct(protected BaseHttpResponse $response)
    {
    }

    public function index(PackageTable $table): View|JsonResponse
    {
        PageTitle::setTitle(trans('plugins/logistics::logistics.package.name'));

        return $table->renderTable();
    }

    public function create(FormBuilder $formBuilder): string
    {
        PageTitle::setTitle(trans('plugins/logistics::logistics.package.create'));

        return $formBuilder->create(PackageForm::class)->renderForm();
    }

    public function store(PackageRequest $request): BaseHttpResponse
    {
        $package = Package::query()->create($request->validated());

        event(new CreatedContentEvent('packages', $request, $package));

        return $this->response
            ->setNextUrl(route('logistics.packages.edit', $package))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Package $package, Request $request, FormBuilder $formBuilder): string
    {
        event(new BeforeEditContentEvent($request, $package));

        PageTitle::setTitle(trans('core/base::forms.edit_item', ['name' => $package->name]));

        return $formBuilder->create(PackageForm::class, ['model' => $package])->renderForm();
    }

    public function update(Package $package, PackageRequest $request): BaseHttpResponse
    {
        $package->update($request->validated());

        event(new UpdatedContentEvent('packages', $request, $package));

        return $this->response
            ->setPreviousUrl(route('logistics.packages.index'))
            ->setNextUrl(route('logistics.packages.edit', $package))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Package $package)
    {
        return DeleteResourceAction::make($package);
    }
}
