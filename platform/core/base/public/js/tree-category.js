$((function(){var t=$(".file-tree-wrapper"),e=$(".tree-form-container");function a(){var e=$(document).find(".dd");"function"==typeof e.nestable&&e.nestable({group:1,maxDepth:e.data("depth")||5,listClass:"list-group dd-list",emptyClass:'dd-empty">'.concat(e.data("empty-text"),'</div><div class="'),callback:function(a,n){$httpClient.make().put(t.data("update-url"),{data:e.nestable("serialize")}).then((function(t){var e=t.data;Botble.showSuccess(e.message)}))}})}function n(t){$(".tree-form-body").html(t),a(),Botble.initResources(),Botble.handleCounterUp(),window.EditorManagement&&(window.EDITOR=(new EditorManagement).init()),Botble.initMediaIntegrate()}function o(a,o){Botble.showLoading(e),t.find(".dd3-content.active").removeClass("active"),o&&o.addClass("active"),$httpClient.make().get(a).then((function(t){return n(t.data.data)})).finally((function(){return Botble.hideLoading(e)}))}a(),t.on("click",".fetch-data",(function(e){e.preventDefault();var a=$(e.currentTarget);a.data("href")?o(a.data("href"),a.closest(".dd3-content")):(t.find(".dd3-content.active").removeClass("active"),a.closest(".dd3-content").addClass("active"))})),$(document).on("click",".tree-categories-create",(function(t){var a,o;t.preventDefault(),a=$(t.currentTarget).attr("href"),o={},r.get("ref_lang")&&(o.ref_lang=r.get("ref_lang")),Botble.showLoading(e),$httpClient.make().get(a,o).then((function(t){return n(t.data.data)})).finally((function(){return Botble.hideLoading(e)}))}));var r=new URLSearchParams(window.location.search);function i(e,a){$httpClient.make().get(t.data("url")||window.location.href).then((function(e){var n=e.data;t.html(n.data),jQuery().tooltip&&$('[data-bs-toggle="tooltip"]').tooltip({placement:"top",boundary:"window"}),a&&a()}))}$(document).on("click","#list-others-language a",(function(t){t.preventDefault(),o($(t.currentTarget).prop("href"))})),$(document).on("submit",".tree-form-container form",(function(t){var a;t.preventDefault();var o=$(t.currentTarget),r=new FormData(t.currentTarget),l=null===(a=t.originalEvent)||void 0===a?void 0:a.submitter,d=!1;l&&l.name&&(d="apply"===l.value,r.append(l.name,l.value)),o.find("select").each((function(){null==$(this).val()&&r.append($(this).attr("name"),"")}));var c=o.attr("method").toLowerCase()||"post";$httpClient.make().withLoading(e)[c](o.attr("action"),r).then((function(t){var e=t.data;Botble.showSuccess(e.message);var a=$(".tree-categories-create"),o=d&&e.data&&e.data.model?e.data.model.id:null;i(0,(function(){if(o){var t=$('.dd-item[data-id="'.concat(o,'"] > .dd3-content .fetch-data'));t.length?t.trigger("click"):location.reload()}else if(a.length)a.trigger("click");else{var r;n(null===(r=e.data)||void 0===r?void 0:r.form)}}))})).finally((function(){return o.find("button[type=submit]").prop("disabled",!1).removeClass("disabled")}))})),$(document).on("show.bs.modal",".modal-confirm-delete",(function(t){$(t.currentTarget).find('[data-bb-toggle="modal-confirm-delete"]').attr("data-url",$(t.relatedTarget).data("url"))})).on("click",'[data-bb-toggle="modal-confirm-delete"]',(function(t){t.preventDefault();var e=$(t.currentTarget);$httpClient.make().withButtonLoading(e).delete($(e).get(0).dataset.url).then((function(t){var e=t.data;Botble.showSuccess(e.message),i();var a=$(".tree-categories-create");a.length?a.trigger("click"):n("")})).finally((function(){return e.closest(".modal").modal("hide")}))}))}));