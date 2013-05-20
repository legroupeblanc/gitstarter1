<%@ page import="sifinance.Moderation" %>



<div class="fieldcontain ${hasErrors(bean: moderationInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="moderation.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${moderationInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moderationInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="moderation.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="minute"  value="${moderationInstance?.date}"  />
</div>

