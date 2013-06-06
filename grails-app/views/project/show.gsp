
<%@ page import="sifinance.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.projectPicture}">
				<li class="fieldcontain">
					<span id="projectPicture-label" class="property-label"><g:message code="project.projectPicture.label" default="Project Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.pictureType}">
				<li class="fieldcontain">
					<span id="pictureType-label" class="property-label"><g:message code="project.pictureType.label" default="Picture Type" /></span>
					
						<span class="property-value" aria-labelledby="pictureType-label"><g:fieldValue bean="${projectInstance}" field="pictureType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.availableFound}">
				<li class="fieldcontain">
					<span id="availableFound-label" class="property-label"><g:message code="project.availableFound.label" default="Available Found" /></span>
					
						<span class="property-value" aria-labelledby="availableFound-label"><g:fieldValue bean="${projectInstance}" field="availableFound"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.foundingDeadline}">
				<li class="fieldcontain">
					<span id="foundingDeadline-label" class="property-label"><g:message code="project.foundingDeadline.label" default="Founding Deadline" /></span>
					
						<span class="property-value" aria-labelledby="foundingDeadline-label"><g:formatDate date="${projectInstance?.foundingDeadline}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.fundingDuration}">
				<li class="fieldcontain">
					<span id="fundingDuration-label" class="property-label"><g:message code="project.fundingDuration.label" default="Funding Duration" /></span>
					
						<span class="property-value" aria-labelledby="fundingDuration-label"><g:formatDate date="${projectInstance?.fundingDuration}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.fundingGoal}">
				<li class="fieldcontain">
					<span id="fundingGoal-label" class="property-label"><g:message code="project.fundingGoal.label" default="Funding Goal" /></span>
					
						<span class="property-value" aria-labelledby="fundingGoal-label"><g:fieldValue bean="${projectInstance}" field="fundingGoal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.projectLocation}">
				<li class="fieldcontain">
					<span id="projectLocation-label" class="property-label"><g:message code="project.projectLocation.label" default="Project Location" /></span>
					
						<span class="property-value" aria-labelledby="projectLocation-label"><g:fieldValue bean="${projectInstance}" field="projectLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.projectTitle}">
				<li class="fieldcontain">
					<span id="projectTitle-label" class="property-label"><g:message code="project.projectTitle.label" default="Project Title" /></span>
					
						<span class="property-value" aria-labelledby="projectTitle-label"><g:fieldValue bean="${projectInstance}" field="projectTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="project.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${projectInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectInstance?.id}" />
					<g:link class="edit" action="edit" id="${projectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
