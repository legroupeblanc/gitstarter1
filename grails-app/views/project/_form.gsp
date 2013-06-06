<%@ page import="sifinance.Project" %>



<style>
 
  .grey-field {
background-color: rgb(238, 242, 234);
border-bottom-color: rgb(117, 121, 111);
border-bottom-left-radius: 6px;
border-bottom-right-radius: 6px;
border-bottom-style: none;
border-bottom-width: 0px;
border-image-outset: 0px;
border-image-repeat: stretch;
border-image-slice: 100%;
border-image-source: none;
border-image-width: 1;
border-left-color: rgb(117, 121, 111);
border-left-style: none;
border-left-width: 0px;
border-right-color: rgb(117, 121, 111);
border-right-style: none;
border-right-width: 0px;
border-top-color: rgb(117, 121, 111);
border-top-left-radius: 6px;
border-top-right-radius: 6px;
border-top-style: none;
border-top-width: 0px;
color: rgb(117, 121, 111);
display: block;
font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif;
font-size: 15px;
font-style: normal;
font-variant: normal;
font-weight: normal;
height: 100px;
line-height: 30px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-bottom: 12px;
margin-left: 0px;
margin-right: 0px;
margin-top: 0px;
overflow-x: hidden;
overflow-y: hidden;
padding-bottom: 4px;
padding-left: 4px;
padding-right: 3px;
padding-top: 4px;
position: relative;
text-align: left;
vertical-align: baseline;
width: 633px;
  }
fieldset ol li {
list-style-image: none;
list-style-type: none;
margin-left: 0;
}

fieldset ol {
list-style: none;
}
li {
margin-left: 30px;
}
.primary{width:160px}
.field-wrapper{display: inline-block;vertical-align: middle;zoom: 1;width: 449px;height:80px;color: #0b1902;
line-height: 18px;
font-size: 13px;}
.character_counter_wrapper{position:relative}
.field-help-2{
  color: #0b1902;
font-size: 12px;
line-height: 16px;
padding-top: 10px;
}
.required_select{width:400px;height:40px;}
.titon{height:40px;width:400px;}
.upload{display:inline-block}

</style>


<div class ="container">
  <div id="main"> 
    <div class="window" style ="height:929 px;">
      <ol class ="form-panels">
        <li class="panel" id="the-basis">
          <fieldset>
            <ol class ="fields">
              
              
              <li class ="project-image">
                <div class="grey-field" style="width:640px; height:108px;">
                  <label class="primary" for ="project_photo">Project image</label>
                  <div class="field-wrapper">
                    
                    <div class ="NS-assets_form project required has_file">
                      <div class ="error"></div>
                      <div class="success"></div>
                      <div class="upload">
                        <div class ="button">
                          <input type="file" id="projectPicture" name="projectPicture" />
                          <strong> "Choose an image from your computer"</strong>
                          <span>JPEG,PNG,GIF</span>
                          
                        </div>
                        <div class ="progress finished"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              
              
              <li class ="project-title">
                <div class ="grey-field" > 
	<label class="primary" for="projectTitle">
		<g:message code="project.projectTitle.label" default="Project Title" />
		
	</label>
                  <div class="field-wrapper">       
         <g:textField class="titon"name="projectTitle" value="${projectInstance?.projectTitle}"/>        
	 
                  <div class="field-help-2">
                    <p>Your project title should be simple, specific, and memorable, and it should include the title of the creative project you're raising funds for. Avoid words like "help,” "support,” or "fund.”</p>
                  </div>
         </div>
               
                </div>
              </li>
              
             
              <li class="short description">
                <div class="grey-field" >    
	<label class ="primary" for="shortDescription">
		<g:message code="project.shortDescription.label" default="Short Description" />
		
	</label>
	<g:textField class="titon" name="shortDescription" value="${projectInstance?.shortDescription}"/>
                </div>
              </li>
              
              <li class ="location">
                <div class="grey-field" >      
	<label class="primary"for="projectLocation">
		<g:message code="project.projectLocation.label" default="Project Location" />
		
	</label>
	<g:textField class="titon"name="projectLocation" value="${projectInstance?.projectLocation}"/>
                </div>
              </li>
              
              <li class =" funding-duration">
                <div class="grey-field">   
	<label class="primary" for="fundingDuration">
		<g:message code="project.fundingDuration.label" default="Funding Duration" />
               
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fundingDuration" precision="day"  value="${projectInstance?.fundingDuration}"  />
     
                </div>
              </li>
                <li class =" funding-deadline">
                <div class="grey-field">   
	<label class="primary" for="foundingDeadline">
		<g:message code="project.foundingDeadline.label" default="Funding Deadline" />
               
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="foundingDeadline" precision="day"  value="${projectInstance?.foundingDeadline}"  />
     
                </div>
              </li>
              
              <li class ="funding-goal">
                <div class="grey-field" style ="height:160px;">
	<label class="primary"for="fundingGoal">
		<g:message code="project.fundingGoal.label" default="Funding Goal" />
		<span class="required-indicator">*</span>
	</label>
                  <div class="field-wrapper">
	<g:field class="titon"name="fundingGoal" type="number" value="${projectInstance.fundingGoal}" required=""/>
        <div class="field-help-2">
                  <p>Your funding goal should be the minimum amount needed to complete the project and fulfill all rewards. Because funding is all-or-nothing, you can always raise more than your goal but never less.

If your project is successfully funded, GitStarter will apply a 5% fee to the funds raised, and Amazon will apply credit card processing fees (between 3-5%). If funding isn't successful, there are no fees.</p>
                </div>
                </div>
                </div>
                
              </li>
              
               
            </ol>
          </fieldset>
        </li>
      </ol> 
    </div>
    
  </div>
  
  
  <div id ="sidebar-wrap">
    

</div>