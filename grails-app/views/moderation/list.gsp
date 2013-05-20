
<%@ page import="sifinance.Moderation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'moderation.label', default: 'Moderation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-moderation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-moderation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="url" title="${message(code: 'moderation.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'moderation.date.label', default: 'Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${moderationInstanceList}" status="i" var="moderationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
                                                <td><a href=<%=fieldValue(bean: moderationInstance, field: "url")%>>${fieldValue(bean: moderationInstance, field: "url")}</a></td>
					
						<td><g:link action="show" id="${moderationInstance.id}"><g:formatDate date="${moderationInstance.date}" /></g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${moderationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
