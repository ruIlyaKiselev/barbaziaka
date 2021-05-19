<#include "security.ftl">
<#import "pager.ftl" as p>
<@p.pager url page />
    <div class="card-columns" id="message-list">

        <#list page.content as message>
            <div class="card my-3" data-id="$message.id">
                <div class="m-2">
                    <h3>${message.title}</h3>
                </div>
                <div class="m-2">
                    <span>${message.description}</span><br/>
                </div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="card-footer text-muted">
                    <a href="/user-quizes/${message.author.id}"> Author: ${message.authorName} </a>
                    <#if message.author.id == currentUserId>
                        <a class="btn btn-primary" href="/user-quizes/${message.author.id}?message=${message.id}"> Edit </a>
                    </#if>
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>
<@p.pager url page />