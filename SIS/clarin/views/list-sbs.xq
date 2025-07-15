xquery version "3.1";

module namespace sis = 'sis';

import module namespace menu = "http://clarin.ids-mannheim.de/standards/menu" at "../modules/menu.xql";
import module namespace app = "http://clarin.ids-mannheim.de/standards/app" at "../modules/app.xql";
import module namespace sbm = "http://clarin.ids-mannheim.de/standards/sb-module" at "../modules/sb.xql";

(: Define the list of standard body page 
   @author margaretha
:)
declare
  %rest:path('/clarin/views/list-sbs.xq')
  %output:method('html')
  %output:media-type("text/html")
  %output:indent("yes")
  %output:html-version("5")
function sis:print() as element(html) {

  <html lang="en">
      <head>
          <title>Standard Bodies</title>
          <link rel="icon" type="image/x-icon" href="{app:favicon()}"/>
          <link rel="stylesheet" type="text/css" href="{app:resource("style.css", "css")}"/>
          <script type="text/javascript" src="{app:resource("edit.js", "js")}"/>
          <script type="text/javascript" src="{app:resource("session.js", "js")}"/>
      </head>
      <body>
          <div id="all">
              <div class="logoheader"/>
              {menu:view()}
              <div class="content">
                  <div class="navigation">
                      &gt; <a href="{app:link("views/list-specs.xq?sortBy=name&amp;page=1")}">Standards Watchtower</a>
                      &gt; <a href="{app:link("views/list-sbs.xq")}">Standard Bodies</a>
                  </div>
                  <div class="title">Standard Bodies</div>
                  <div><p>Standard bodies are organizations that develop standards. </p></div>
                  <ul style="padding:0px; margin-left:15px;">
                      {sbm:list-sbs()}
                  </ul>
              </div>
              <div class="footer">{app:footer()}</div>
          </div>
      </body>
  </html>
};