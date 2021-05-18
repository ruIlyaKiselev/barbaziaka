<#include "security.ftl">

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
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