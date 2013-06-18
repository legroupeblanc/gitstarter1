
<%@ page import="sifinance.Finance" %>
<%@ page import="org.grails.plugins.google.visualization.data.Cell; org.grails.plugins.google.visualization.util.DateUtil" %>
<html>
    <head>
        <title>Financial Management</title>
        <meta name="layout" content="main" />
        <gvisualization:apiImport/>
    </head>
       <body>
       <%
          def fruitColumns = [['string', 'Fruit'],
                               ['date', 'Date'], 
                               ['number', 'Sales'], 
                               ['number', 'Expenses'], 
                               ['string', 'Location']]
          
       
       
       
       def fruitData = [
         ['Apples', DateUtil.createDate(1988, 0, 1), 1000, 300, 'East'],
         ['Apples', DateUtil.createDate(1988, 6, 1), 500, 100, 'East'],
         ///['Oranges', DateUtil.createDate(1988, 0, 1), 1150, 200, 'West'],
         //['Bananas', DateUtil.createDate(1988, 0, 1), 300, 250, 'West'],
         ['Apples', DateUtil.createDate(1989, 6, 1), 1200, 400, 'East']//,
         //['Oranges', DateUtil.createDate(1989, 6, 1), 750, 150, 'West'],
       //  ['Bananas', DateUtil.createDate(1989, 6, 1), 788, 617, 'West']
       
       ]
                %>
       <script type="text/javascript">
          function selectHandler(e) {
              alert('A table row was selected');
          }

          function readyHandler(e) {
              console.log('Table is ready');
              
                  }
                  
                  
                  var options = {};
options['state'] =
'{"iconKeySettings":[],"stateVersion":3,"time":"notime","xAxisOption":"_NOTHING","playDuration":15,"iconType":"BUBBLE","sizeOption":"_NOTHING","xZoomedDataMin":null,"xZoomedIn":false,"duration":{"multiplier":1,"timeUnit":"none"},"yZoomedDataMin":null,"xLambda":1,"colorOption":"_NOTHING","nonSelectedAlpha":0.4,"dimensions":{"iconDimensions":[]},"yZoomedIn":false,"yAxisOption":"_NOTHING","yLambda":1,"yZoomedDataMax":null,"showTrails":true,"xZoomedDataMax":null};';

options['width'] = 600;
options['height'] = 400;
                  
       </script>
        
       <gvisualization:motionChart elementId="motionchart" columns="${fruitColumns}" data="${fruitData}" />
       
   
       <td>       
       <div id="motionchart"></div>
             </td>
        
   <!-- EXCHANGERATES.ORG.UK CURRENCY RATES TABLE DELUXE START -->
<div style="width:178px;margin:0;padding:0;border:1px solid #DDDDDD;background:#FCFCFC;">
<div style="width:178px;text-align:center;padding:2px 0px;background:#FCFCFC;font-family:;font-size:11px;color:#;font-weight:bold;vertical-align:middle;">
<a style="color:#;text-decoration:none;" target="_new" title="Exchange Rates">Exchange Rates</a> <i>Live</i>
</div>
<div style="padding:5px;text-align:center;">
<script type="text/javascript">	
var nb = '6';
var tz = '1';
var mc = 'EUR';
var c1 = 'USD';
var c1 = 'USD';
var c2 = 'EUR';
var c2 = 'EUR';
var c3 = 'GBP';
var c3 = 'GBP';
var c4 = 'JPY';
var c4 = 'JPY';
var c5 = 'INR';
var c5 = 'INR';
var c6 = 'CAD';
var c6 = 'CAD';
var c7 = 'ZAR';
var c8 = 'NZD';
var c9 = 'SGD';
var c10 = 'CNY';
var mcol = 'DDDDDD';
var mbg = 'FCFCFC';
var fc = '000000';

</script>
<script type="text/javascript" src="http://www.currency.me.uk/remote/ER-SCRT-1.php"></script>
</div></div>

<Module>
<ModulePrefs title="Currency Charts Widget" directory_title="Currency Charts Widget" description="Get a visual (graphic) representation of the exchange rate between any 2 currencies from 120+ preset currencies. The graphic changes automatically between representations for the following values: intraday, 7 days, 1 month, 3 months and 6 months." title_url="http://biz-directory.eu/" category="finance" category2="tools" author="bizdirectory3@gmail.com" author_email="bizdirectory3@gmail.com" author_affiliation="Biz-Directory.Eu" author_link="http://biz-directory.eu/" author_location="Berlin, Deutschland" author_aboutme="Biz-Directory.Eu was created by Mel LeShaun, currently residing in Berlin, Germany. Mel is also a blogger, father of two special kids, and amateur gourmet cook." author_photo="http://biz-directory.eu/financial/matamax100.png" author_quote="Keep it up until it`s gone!" screenshot="http://biz-directory.eu/financial/currencychartsssh.png" thumbnail="http://biz-directory.eu/financial/currencychartsthn.png" width="272" height="332"></ModulePrefs>
<Content type="html">
<![CDATA[
<body style="margin:0;"> <center> <iframe src="http://biz-directory.eu/financial/currencycharts.htm" width="272" height="290" scrolling="no" frameborder="0"> </iframe> </center> </body>
]]>
</Content>
</Module>
   
</html>