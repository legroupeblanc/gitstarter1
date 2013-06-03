<!doctype html>
<html>
	<head>
		<title>404</title>
		<meta name="layout" content="main">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css">
	</head>
	<body><div id="page-body" role="main">
<script language="JavaScript" type="text/javascript">  
var count =6  
var redirect="/SiFinance/"
  
function countDown(){  
 if (count <=0){  
  window.location = redirect;  
 }else{  
  count--;  
  document.getElementById("timer").innerHTML = "This page will redirect in "+count+" seconds."  
  setTimeout("countDown()", 1000)  
 }  
}  
</script>  
<h1>
            <p>Sorry, but the page you were looking for can’t be found       </p> </h1>
  
<span id="timer">  
<script>  
 countDown();  
</script>  
</span>  
      </div> </body>
</html>
</html>
