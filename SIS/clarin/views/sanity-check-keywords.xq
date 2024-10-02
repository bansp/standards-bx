xquery version "3.0";

declare namespace exist = "http://exist.sourceforge.net/NS/exist";
declare option exist:serialize "method=xhtml media-type=text/html indent=yes doctype-system=about:legacy-compat";

import module namespace menu = "http://clarin.ids-mannheim.de/standards/menu" at "../modules/menu.xql";
import module namespace app = "http://clarin.ids-mannheim.de/standards/app" at "../modules/app.xql";
import module namespace sc = "http://clarin.ids-mannheim.de/standards/sanity-checker" at "../modules/sanity-checker.xql";

(: 
    @author margaretha
:)

<html lang="en">
    <head>
        <title>Sanity check: Keywords</title>
        <link rel="stylesheet" type="text/css" href="{app:resource("style.css", "css")}"/>
        <script type="text/javascript" src="{app:resource("edit.js", "js")}"/>
        <script type="text/javascript" src="{app:resource("utils.js", "js")}"/>
        <script type="text/javascript" src="{app:resource("session.js", "js")}"/>
    </head>
    <body>
        <div id="all">
            <div class="logoheader"/>
            {menu:view()}
            <div class="content">
                <div class="navigation">
                    &gt; <a href="{app:link("views/recommended-formats-with-search.xq")}">Format Recommendations</a>
                    &gt; <a href="{app:link("views/sanity-check.xq")}">Sanity Check</a>
                    &gt; <a href="{app:link("views/sanity-check-keywords.xq")}">Keywords</a>
                </div>
                
                <div class="title">Sanity check: Keywords</div>
                <div><p>This page lists all keywords used in <a href="{app:link("views/list-formats.xq")}">format descriptions</a>. 
                The number of descriptions using the keyword (key phrase) in question is provided in the brackets. Clicking on a 
                keyword opens a list of links to the particular descriptions.</p></div>
                
                 <div id="keywords">
                    <h2>List of keywords</h2>
                    <ul style="column-count: 2;">{sc:list-keywords()}</ul>
                </div>
                </div>
            <div
                class="footer">{app:footer()}</div>
        </div>
    </body>
</html>