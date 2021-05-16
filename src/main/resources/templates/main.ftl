<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

    <div class="collapse" style="display: block" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
<#--                    <input type="text" class="form-control" name="title" placeholder="Title">-->
                    <input type="text" class="form-control ${(titleError??)?string('is-invalid', '')}"
                           value="<#if message??>${message.title}</#if>" name="title" placeholder="Title">
                    <#if titleError??>
                        <div class="invalid-feedback">
                            ${titleError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
<#--                    <input type="text" class="form-control" name="description" placeholder="Description" />-->
                    <input type="text" class="form-control ${(descriptionError??)?string('is-invalid', '')}"
                           value="<#if message??>${message.description}</#if>" name="description" placeholder="Description">
                    <#if descriptionError??>
                        <div class="invalid-feedback">
                            ${descriptionError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file" id="imageFile">
                        <label class="custom-file-label" for="imageFile">Choose image</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Add new quiz</button>
                </div>
            </form>
        </div>
    </div>

    <div class="card-columns">
        <#list messages as message>
            <div class="card my-3">
                <div class="m-2">
                    <h3>${message.title}</h3>
                </div>
                <div class="m-2">
                    <span>${message.description}</span>
                </div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="card-footer text-muted">
                    Author: ${message.authorName}
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>
</@c.page>