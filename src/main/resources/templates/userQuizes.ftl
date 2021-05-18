<#import "parts/common.ftl" as c>

<@c.page>

    <#if isCurrentUser>
        <#include "parts/quizEdit.ftl" />
    </#if>
    <#include "parts/quizList.ftl" />

</@c.page>