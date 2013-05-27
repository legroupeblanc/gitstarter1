<%@ page import="sifinance.Project" %>
<table>
  <tr>
    <th> <div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="project.title.label" default="Title" />
		
	</label> 
  </div> </th>
  <th> <div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectPicture', 'error')} ">
	<label for="projectPicture">
          
		<g:message code="project.projectPicture.label" default="Project Picture" />
		
	</label>
    </div>
</th>
  </tr>
  
  <tr>
    <td><div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} ">
	
	<g:textField name="title" value="${projectInstance?.title}"/>
      </div></td>
      <td><div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectPicture', 'error')} ">

	<fieldset>

  <g:form action="upload_picture" method="post" enctype="multipart/form-data">
    <label for="picture">Project Picture </label>
    <input type="file" name="avatar" id="avatar" />
    <div style="font-size:0.8em; margin: 1.0em;">
   
    </div>
    <input type="submit" class="buttons" value="Upload" />
  </g:form>
</fieldset>
	
</div></td>

</tr>
</table>
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

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





