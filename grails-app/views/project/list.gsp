
<%@ page import="sifinance.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="projectPicture" title="${message(code: 'project.projectPicture.label', default: 'Project Picture')}" />
					
						<g:sortableColumn property="pictureType" title="${message(code: 'project.pictureType.label', default: 'Picture Type')}" />
					
						<g:sortableColumn property="availableFound" title="${message(code: 'project.availableFound.label', default: 'Available Found')}" />
					
						<g:sortableColumn property="foundingDeadline" title="${message(code: 'project.foundingDeadline.label', default: 'Founding Deadline')}" />
					
						<g:sortableColumn property="fundingDuration" title="${message(code: 'project.fundingDuration.label', default: 'Funding Duration')}" />
					
						<g:sortableColumn property="fundingGoal" title="${message(code: 'project.fundingGoal.label', default: 'Funding Goal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "projectPicture")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "pictureType")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "availableFound")}</td>
					
						<td><g:formatDate date="${projectInstance.foundingDeadline}" /></td>
					
						<td><g:formatDate date="${projectInstance.fundingDuration}" /></td>
					
						<td>${fieldValue(bean: projectInstance, field: "fundingGoal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
