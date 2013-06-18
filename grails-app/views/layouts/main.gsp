<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="GiStarter"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
  <g:layoutHead/>
  <r:layoutResources />
</head>
<body>
  <div id="grailsLogo" role="banner"> <script type="text/javascript">
var focusQueryInput = function() {
document.getElementById("q").focus();
}
    </script>
  </head>
  <body onload="focusQueryInput();">
    <div id="header">
      
       <span id='loginLink' style="margin-top:0%;position:absolute;margin-left:64%;">
    <sec:ifLoggedIn>
      Logged in as <sec:username/> <br>(<g:link controller='logout'>Logout</g:link>)
    </sec:ifLoggedIn>
    <sec:ifNotLoggedIn>
      <a  href="${createLink(uri: '/login/')}"><g:message code="Login"/></a>
      <a  href="${createLink(uri: '/user/create')}">Sign up</a>
    </sec:ifNotLoggedIn>
  </span>

      
      
      <a class="header-main"
        href="${resource(dir:'')}"><img src="${resource(dir: 'images', file: 'poney.gif')}" alt="GitStarter" style="max-width: 100px"/></a></p>
        <div style="margin-top:-15%;position:absolute;margin-left:20%;"> 
         <form action="/SiFinance/searchable" method="get" id="searchableForm" name="searchableForm" style="text-align : right; ">
        <input type="text" name="q" value="" size="50" id="q" style="border-radius: 15px;"/> <input type="submit" value="Search" style="border-radius: 5px;" />
      </form>
        </div>
            </div>
</div>
<g:layoutBody/>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
<sec:ifAnyGranted roles="ROLE_USER"><li><g:link controller="moderation" action="customsave"  params="[ur : request.forwardURI]">>>Moderation</g:link></li></sec:ifAnyGranted>


</html>