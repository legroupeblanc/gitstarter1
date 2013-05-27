
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
			
				<g:if test="${projectInstance?.avaiableFound}">
				<li class="fieldcontain">
					<span id="avaiableFound-label" class="property-label"><g:message code="project.avaiableFound.label" default="Avaiable Found" /></span>
					
						<span class="property-value" aria-labelledby="avaiableFound-label"><g:fieldValue bean="${projectInstance}" field="avaiableFound"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="project.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${projectInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="project.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${projectInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.foundingDeadline}">
				<li class="fieldcontain">
					<span id="foundingDeadline-label" class="property-label"><g:message code="project.foundingDeadline.label" default="Founding Deadline" /></span>
					
						<span class="property-value" aria-labelledby="foundingDeadline-label"><g:formatDate date="${projectInstance?.foundingDeadline}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.foundingObjective}">
				<li class="fieldcontain">
					<span id="foundingObjective-label" class="property-label"><g:message code="project.foundingObjective.label" default="Founding Objective" /></span>
					
						<span class="property-value" aria-labelledby="foundingObjective-label"><g:fieldValue bean="${projectInstance}" field="foundingObjective"/></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${projectInstance?.projectPicture}">
				<li class="fieldcontain">
				<g:if test="${project.picture}">
  <img class="avatar" src="${createLink(controller:'project', action:'project_picture', id:user.ident())}" />
</g:if>	
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="project.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${projectInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.utilisateur_idUtilisateur}">
				<li class="fieldcontain">
					<span id="utilisateur_idUtilisateur-label" class="property-label"><g:message code="project.utilisateur_idUtilisateur.label" default="Utilisateurid Utilisateur" /></span>
					
						<span class="property-value" aria-labelledby="utilisateur_idUtilisateur-label"><g:fieldValue bean="${projectInstance}" field="utilisateur_idUtilisateur"/></span>
					
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
