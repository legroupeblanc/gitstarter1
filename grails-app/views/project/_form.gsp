<%@ page import="sifinance.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'avaiableFound', 'error')} required">
	<label for="avaiableFound">
		<g:message code="project.avaiableFound.label" default="Avaiable Found" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="avaiableFound" value="${fieldValue(bean: projectInstance, field: 'avaiableFound')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="project.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${projectInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'foundingDeadline', 'error')} required">
	<label for="foundingDeadline">
		<g:message code="project.foundingDeadline.label" default="Founding Deadline" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="foundingDeadline" precision="day"  value="${projectInstance?.foundingDeadline}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'foundingObjective', 'error')} required">
	<label for="foundingObjective">
		<g:message code="project.foundingObjective.label" default="Founding Objective" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foundingObjective" value="${fieldValue(bean: projectInstance, field: 'foundingObjective')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'idOwner', 'error')} required">
	<label for="idOwner">
		<g:message code="project.idOwner.label" default="Id Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idOwner" type="number" value="${projectInstance.idOwner}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'idProjet', 'error')} required">
	<label for="idProjet">
		<g:message code="project.idProjet.label" default="Id Projet" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idProjet" type="number" value="${projectInstance.idProjet}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectPicture', 'error')} ">
	<label for="projectPicture">
		<g:message code="project.projectPicture.label" default="Project Picture" />
		
	</label>
	<g:textField name="projectPicture" value="${projectInstance?.projectPicture}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="project.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${projectInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'utilisateur_idUtilisateur', 'error')} required">
	<label for="utilisateur_idUtilisateur">
		<g:message code="project.utilisateur_idUtilisateur.label" default="Utilisateurid Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utilisateur_idUtilisateur" type="number" value="${projectInstance.utilisateur_idUtilisateur}" required=""/>
</div>

