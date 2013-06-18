  
<%@ page import="sifinance.Project" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to GitStarter</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}
                        .ranked {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}
                        .ranked ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			.ranked li {
				line-height: 1.3;
			}

			.ranked h2 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin-left:83px;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

                        #login {
                                margin: 15px 0px;
                                padding: 0px;
                                text-align: left;
                        }

                        #login .inner {
                                width: 400px;
                                padding-bottom: 6px;
                                margin: 60px auto;
                                text-align: left;
                                border: 1px solid #aab;
                                background-color: #f0f0fa;
                                -moz-box-shadow: 2px 2px 2px #eee;
                                -webkit-box-shadow: 2px 2px 2px #eee;
                                -khtml-box-shadow: 2px 2px 2px #eee;
                                box-shadow: 2px 2px 2px #eee;
                        }

                        #login .inner .fheader {
                                padding: 18px 26px 14px 26px;
                                background-color: #f7f7ff;
                                margin: 0px 0 14px 0;
                                color: #2e3741;
                                font-size: 18px;
                                font-weight: bold;
                        }

                        #login .inner .cssform p {
                                clear: left;
                                margin: 0;
                                
                                padding-left: 105px;
                                height: 1%;
                        }
                        #login .cssform  {
                                margin-top: 20px;
                                margin-left: 10px;
                         }
                        #login .inner .cssform input[type='text'] {
                                width: 120px;
                        }

                        #login .inner .cssform label {
                                font-weight: bold;
                                float: left;
                                margin-left: -105px;
                                width: 110px;
                                padding-top: 3px;
                                padding-right: 10px;
                        }

                        #login #remember_me_holder {
                                padding-left: 120px;
                        }
                        #login #remember_me_holder #submit{
                          display:inline;
                        }

                        #login #submit {
                                margin-left: 15px;
                        }

                        #login #remember_me_holder label {
                                float: none;
                                margin-left: 0;
                                text-align: left;
                                width: 200px
                        }

                        #login .inner .login_message {
                                padding: 6px 25px 20px 25px;
                                color: #c33;
                        }

                        #login .inner .text_ {
                                width: 120px;
                        }

                        #login .inner .chk {
                                height: 12px;
                        }

			
                        .ranked{
                          display:block !important;
                        }
                        #page-body #rankeds{
                          display:block;
                        }
		</style>
	</head>
	<body>
  <div class="nav" role="navigation">
			<ul>
				<li><a  href="${createLink(uri: '/Project')}">Projects</a></li>
                                <li><a  href="${createLink(uri: '/User')}">Users</a></li>
			                      
                        </ul>
		</div>
       
          <div id="rankeds">
		<div id="page-body" class="ranked" >

			<div id="Most-Founded-list"  role="navigation">
				<h2>Most Founded:</h2>
				<ul>
					<g:each var="c" in="${Project.list(sort: "availableFound", order: "desc")}">
						<li class="controller"><g:link controller="Project" action="show" id="${c.idProjet}">${c.title}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
                <div id="page-body2" class="ranked">

			<div id="Most-Recent-list"  role="navigation">
				<h2>Most Recent:</h2>
				<ul>
					<g:each var="c" in="${Project.list(sort: "fundingGoal", order: "asc")}">
						<li class="controller"><g:link controller="Project" action="show" id="${c.idProjet}">${c.title}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
                <div id="page-body2" class="ranked">
                    <div id="Most-Popular-list"  role="navigation">
				<h2>Most Popular:</h2>
				<ul>
					<g:each var="c" in="${Project.list(sort: "fundingGoal", order: "asc")}">
						<li class="controller"><g:link controller="Project" action="show" id="${c.idProjet}">${c.title}</g:link></li>
					</g:each>
				</ul>
                                to doo
			</div>
                </div>
          </div>
                  

               <sec:ifAnyGranted roles="ROLE_ADMIN">
  <div id="controllerList" class="dialog">
      
                    <div id="controller-list" role="navigation">
                            <h2>Available Controllers:</h2>
                            <ul>
                                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                                            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                                    </g:each>
                            </ul>
                    </div>
   </sec:ifAnyGranted>
                <script type='text/javascript'>
                  <!--
                  (function() {
                          document.forms['loginForm'].elements['j_username'].focus();
                  })();
                  // -->
          </script>
         
          
	</body>
</html>