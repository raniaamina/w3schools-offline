
<!DOCTYPE html>
<html lang="en-US">

<!-- Mirrored from www.w3schools.com/css/css3_2dtransforms.asp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Mar 2016 11:04:41 GMT -->
<head>

<title>CSS3 2D Transforms</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Keywords" content="HTML,CSS,JavaScript,SQL,PHP,jQuery,ASP,XML,DOM,Bootstrap,Web development,W3C,tutorials,programming,training,learning,quiz,primer,lessons,references,examples,source code,colors,demos,tips">
<meta name="Description" content="Well organized and easy to understand Web bulding tutorials with lots of examples of how to use HTML, CSS, JavaScript, SQL, PHP, and XML.">
<link rel="icon" href="../favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="../lib/w3.css">

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','../../www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-3855518-1', 'auto');
ga('require', 'displayfeatures');
ga('send', 'pageview');
</script>

<script type='text/javascript'>
var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];
(function() {
var gads = document.createElement('script');
gads.async = true;
gads.type = 'text/javascript';
var useSSL = 'https:' == document.location.protocol;
gads.src = (useSSL ? 'https:' : 'http:') + 
'//www.googletagservices.com/tag/js/gpt.js';
var node = document.getElementsByTagName('script')[0];
node.parentNode.insertBefore(gads, node);
})();
</script>

<script type='text/javascript'>
// GPT slots
var gptAdSlots = [];
googletag.cmd.push(function() {
var leaderMapping = googletag.sizeMapping().
// Mobile ad
addSize([0, 0], [320, 50]). 
// Vertical Tablet ad
addSize([480, 0], [468, 60]). 
// Horizontal Tablet
addSize([750, 0], [728, 90]).
// Small Desktop
addSize([993, 0], [468, 60]).
// Normal Desktop
addSize([1135, 0], [728, 90]).
// Large Desktop and bigger ad
addSize([1425, 0], [[728, 90], [970, 90]]).build();
gptAdSlots[0] = googletag.defineSlot('/16833175/MainLeaderboard', [[728, 90], [970, 90]], 'div-gpt-ad-1422003450156-2').
defineSizeMapping(leaderMapping).addService(googletag.pubads());
var skyMapping = googletag.sizeMapping().
// Mobile ad
addSize([0, 0], [320, 50]). 
// Tablet ad
addSize([975, 0], [120, 600]). 
// Desktop
addSize([1135, 0], [160, 600]).   
// Large Desktop
addSize([1675, 0], [[160, 600], [300, 600], [300, 1050]]).build();
gptAdSlots[1] = googletag.defineSlot('/16833175/WideSkyScraper', [[160, 600], [300, 600], [300, 1050]], 'div-gpt-ad-1422003450156-5').
defineSizeMapping(skyMapping).addService(googletag.pubads());
var bmrMapping = googletag.sizeMapping().
// Smaller
addSize([0, 0], [[300, 250], [336, 280]]). 
// Large Desktop
addSize([1200, 0], [[300, 250], [336, 280], [970, 250]]).build();
gptAdSlots[2] = googletag.defineSlot('/16833175/BottomMediumRectangle', [[300, 250], [336, 280], [970, 250]], 'div-gpt-ad-1422003450156-0').
defineSizeMapping(bmrMapping).setCollapseEmptyDiv(true).addService(googletag.pubads());
gptAdSlots[3] = googletag.defineSlot('/16833175/RightBottomMediumRectangle', [[300, 250], [336, 280]], 'div-gpt-ad-1422003450156-3').addService(googletag.pubads());
googletag.pubads().setTargeting("content","css");
googletag.enableServices();
});
</script>
<link rel="stylesheet" type="text/css" href="../browserref.css">
<link rel="stylesheet" type="text/css" href="../stdtheme.css">
<style> 
#rotate2D,#rotate3D {
    width:80px;
    height:70px;
    color:white;
    position:relative;
    font-weight:bold;
    font-size:15px;
    padding:10px;
    float:left;
    margin-right:50px;
    border-radius:5px;
    border:1px solid #000000;
    background:red;
    margin:10px;
}
</style>
<script>
<!--
var x,y,n=0,ny=0,rotINT,rotYINT
function rotateDIV()
{
x=document.getElementById("rotate2D")
clearInterval(rotINT)
rotINT=setInterval("startRotate()",10)
}
function rotateYDIV()
{
y=document.getElementById("rotate3D")
clearInterval(rotYINT)
rotYINT=setInterval("startYRotate()",10)
}
function startRotate()
{
n=n+1
x.style.transform="rotate(" + n + "deg)"
x.style.webkitTransform="rotate(" + n + "deg)"
x.style.OTransform="rotate(" + n + "deg)"
x.style.MozTransform="rotate(" + n + "deg)"
if (n==180 || n==360)
	{
	clearInterval(rotINT)
	if (n==360){n=0}
	}
}
function startYRotate()
{
ny=ny+1
y.style.transform="rotateY(" + ny + "deg)"
y.style.webkitTransform="rotateY(" + ny + "deg)"
y.style.OTransform="rotateY(" + ny + "deg)"
y.style.MozTransform="rotateY(" + ny + "deg)"
if (ny==180 || ny>=360)
	{
	clearInterval(rotYINT)
	if (ny>=360){ny=0}
	}
}
//-->
</script>
</head>
<body>
<div class='w3-container top'>
<a class='w3schools-logo' href='../index.html'>w3schools<span class='dotcom'>.com</span></a>
<div class='w3-right toptext w3-wide'>THE WORLD'S LARGEST WEB DEVELOPER SITE</div></div>
<div class='w3-topnav w3-card-2 w3-slim topnav' id='topnav'>
<div style='overflow:auto;'>
<div style='float:left;width:50%;overflow:hidden;height:44px'>
<a href='javascript:void(0);' class='topnav-localicons w3-hide-large w3-left' onclick='open_menu()' title='Menu'>&#9776;</a>
<a href='../default.html' class='topnav-icons fa fa-home w3-left' title='Home'></a>
<a href='../html/default.html' class='w3-hide-small' title='HTML Tutorial'>HTML</a><a href='default.html' class='w3-hide-small' title='CSS Tutorial'>CSS</a><a href='../js/default.html' class='w3-hide-small' title='JavaScript Tutorial'>JAVASCRIPT</a><a href='../sql/default.html' class='w3-hide-small' title='SQL Tutorial'>SQL</a><a href='../php/default.html' class='w3-hide-small' title='PHP Tutorial'>PHP</a><a href='../bootstrap/default.html' class='w3-hide-small' title='Bootstrap Tutorial'>BOOTSTRAP</a><a href='../jquery/default.html' class='w3-hide-small' title='jQuery Tutorial'>JQUERY</a><a href='../angular/default.html' class='w3-hide-small' title='Angular Tutorial'>ANGULAR</a><a href='../xml/default.html' class='w3-hide-small' title='XML Tutorial'>XML</a></div>
<div style='float:right;width:110px;overflow:hidden;height:44px;'>
<a href='javascript:void(0);' class='topnav-icons fa fa-search w3-right' onclick='w3_open_nav("search")' title='Search W3Schools'></a>
<a href='javascript:void(0);' class='topnav-icons fa fa-globe w3-right' onclick='openGoogleTranslate();w3_open_nav("translate")' title='Translate W3Schools'></a></div>
<div class='w3-hide-small' style='float:right;width:30%;overflow:hidden;height:44px;'>
<a id='topnavbtn_tutorials' href='javascript:void(0);' onclick='w3_open_nav("tutorials")' title='Tutorials'>TUTORIALS <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a><a id='topnavbtn_references' href='javascript:void(0);' onclick='w3_open_nav("references")' title='References'>REFERENCES <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a><a id='topnavbtn_examples' href='javascript:void(0);' onclick='w3_open_nav("examples")' title='Examples'>EXAMPLES <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a><a href='http://w3schools.invisionzone.com/'>FORUM</a></div></div>
<div id='nav_tutorials' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_references' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_examples' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_translate' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_search' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div></div>
<div class='w3-row w3-light-grey' id='belowtopnav'>
<div class='w3-col w3-slim' id='leftmenu'>
<div id='leftmenuinner'>
<div class='w3-light-grey' id='leftmenuinnerinner'>
<a href='javascript:void(0)' onclick='close_menu()' class='w3-closebtn w3-hide-large w3-large' style='padding:3px 12px;'>&times;</a>
<h2 class="left"><span class="left_h2">CSS</span> Tutorial</h2>
<a target="_top" href="default.html">CSS HOME</a>
<a target="_top" href="css_intro.html">CSS Introduction</a>
<a target="_top" href="css_syntax.html">CSS Syntax</a>
<a target="_top" href="css_howto.html">CSS How To</a>
<a target="_top" href="css_colors.html">CSS Colors</a>
<a target="_top" href="css_background.html">CSS Backgrounds</a>
<a target="_top" href="css_border.html">CSS Borders</a>
<a target="_top" href="css_margin.html">CSS Margins</a>
<a target="_top" href="css_padding.html">CSS Padding</a>
<a target="_top" href="css_dimension.html">CSS Height/Width</a>
<a target="_top" href="css_text.html">CSS Text</a>
<a target="_top" href="css_font.html">CSS Fonts</a>
<a target="_top" href="css_link.html">CSS Links</a>
<a target="_top" href="css_list.html">CSS Lists</a>
<a target="_top" href="css_table.html">CSS Tables</a>
<a target="_top" href="css_boxmodel.html">CSS Box Model</a>
<a target="_top" href="css_outline.html">CSS Outline</a>
<a target="_top" href="css_display_visibility.html">CSS Display</a>
<a target="_top" href="css_max-width.html">CSS Max-width</a>
<a target="_top" href="css_positioning.html">CSS Position</a>
<a target="_top" href="css_float.html">CSS Float</a>
<a target="_top" href="css_inline-block.html">CSS Inline-block</a>
<a target="_top" href="css_align.html">CSS Align</a>
<a target="_top" href="css_combinators.html">CSS Combinators</a>
<a target="_top" href="css_pseudo_classes.html">CSS Pseudo-class</a>
<a target="_top" href="css_pseudo_elements.html">CSS Pseudo-element</a>
<a target="_top" href="css_navbar.html">CSS Navigation Bar</a>
<a target="_top" href="css_dropdowns.html">CSS Dropdowns</a>
<a target="_top" href="css_tooltip.html">CSS Tooltips</a>
<a target="_top" href="css_image_gallery.html">CSS Image Gallery</a>
<a target="_top" href="css_image_transparency.html">CSS Image Opacity</a>
<a target="_top" href="css_image_sprites.html">CSS Image Sprites</a>
<a target="_top" href="css_attribute_selectors.html">CSS Attr Selectors</a>
<a target="_top" href="css_form.html">CSS Forms</a>
<a target="_top" href="css_counters.html">CSS Counters</a>
<br>
<h2 class="left"><span class="left_h2">CSS3</span></h2>
<a target="_top" href="css3_intro.html">CSS3 Introduction</a>
<a target="_top" href="css3_borders.html">CSS3 Rounded Corners</a>
<a target="_top" href="css3_border_images.html">CSS3 Border Images</a>
<a target="_top" href="css3_backgrounds.html">CSS3 Backgrounds</a>
<a target="_top" href="css3_colors.html">CSS3 Colors</a>
<a target="_top" href="css3_gradients.html">CSS3 Gradients</a>
<a target="_top" href="css3_shadows.html">CSS3 Shadows</a>
<a target="_top" href="css3_text_effects.html">CSS3 Text</a>
<a target="_top" href="css3_fonts.html">CSS3 Fonts</a>
<a target="_top" href="css3_2dtransforms.asp">CSS3 2D Transforms</a>
<a target="_top" href="css3_3dtransforms.html">CSS3 3D Transforms</a>
<a target="_top" href="css3_transitions.html">CSS3 Transitions</a>
<a target="_top" href="css3_animations.html">CSS3 Animations</a>
<a target="_top" href="css3_images.html">CSS3 Images</a>
<a target="_top" href="css3_buttons.html">CSS3 Buttons</a>
<a target="_top" href="css3_pagination.html">CSS3 Pagination</a>
<a target="_top" href="css3_multiple_columns.html">CSS3 Multiple Columns</a>
<a target="_top" href="css3_user_interface.html">CSS3 User Interface</a>
<a target="_top" href="css3_box-sizing.html">CSS3 Box Sizing</a>
<a target="_top" href="css3_flexbox.html">CSS3 Flexbox</a>
<a target="_top" href="css3_mediaqueries.html">CSS3 Media Queries</a>
<a target="_top" href="css3_mediaqueries_ex.html">CSS3 MQ Examples</a>
<br>
<h2 class="left"><span class="left_h2">CSS</span> Responsive</h2>
<a target="_top" href="css_rwd_intro.html">RWD Intro</a>
<a target="_top" href="css_rwd_viewport.html">RWD Viewport</a>
<a target="_top" href="css_rwd_grid.html">RWD Grid View</a>
<a target="_top" href="css_rwd_mediaqueries.html">RWD Media Queries</a>
<a target="_top" href="css_rwd_images.html">RWD Images</a>
<a target="_top" href="css_rwd_videos.html">RWD Videos</a>
<a target="_top" href="css_rwd_frameworks.html">RWD Frameworks</a>
<br>
<h2 class="left"><span class="left_h2">CSS</span> Examples</h2>
<a target="_top" href="css_examples.html">CSS Examples</a>
<a target="_top" href="css_quiz.html">CSS Quiz</a>
<a target="_top" href="css_exam.html">CSS Certificate</a>
<br>
<h2 class="left"><span class="left_h2">CSS</span> References</h2>
<a target="_top" href="../cssref/default.html">CSS Reference</a>
<a target="_top" href="../cssref/css_selectors.html">CSS Selectors</a>
<a target="_top" href="../cssref/css_functions.html">CSS Functions</a>
<a target="_top" href="../cssref/css_ref_aural.html">CSS Reference Aural</a>
<a target="_top" href="../cssref/css_websafe_fonts.html">CSS Web Safe Fonts</a>
<a target="_top" href="../cssref/css_animatable.html">CSS Animatable</a>
<a target="_top" href="../cssref/css_units.html">CSS Units</a>
<a target="_top" href="../cssref/css_pxtoemconversion.html">CSS PX-EM Converter</a>
<a target="_top" href="../cssref/css_colors.html">CSS Colors</a>
<a target="_top" href="../cssref/css_colors_legal.html">CSS Color Values</a>
<a target="_top" href="../colors/colors_names.html">CSS Color Names</a>
<a target="_top" href="../cssref/css3_browsersupport.html">CSS3 Browser Support</a><br><br></div></div>&nbsp;</div>
<div class='w3-rest'>
<div class='w3-row w3-white'>
<div class='w3-col l10 m12' id='main'>
<div id='mainLeaderboard' style='overflow:hidden;'>
<!-- MainLeaderboard-->
<div id='div-gpt-ad-1422003450156-2'>
<script type='text/javascript'>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-2'); });</script>
</div></div>
<h1>CSS3 <span class="color_h1">2D Transforms</span></h1>
<div class="chapter">
<div class="prev"><a class="chapter" href="css3_fonts.html">&laquo; Previous</a></div>
<div class="next"><a class="chapter" href="css3_3dtransforms.html">Next Chapter &raquo;</a></div>
</div>
<hr>
<h2>CSS3 Transforms</h2>
<p>CSS3 transforms allow you to translate, rotate, scale, and skew elements.</p>
<p>A transformation is an effect that lets an element change shape, size and position.</p>
<p>CSS3 supports 2D and 3D transformations.</p>
<p>Mouse over the elements below to see the difference between a 2D and a 3D transformation:</p>
<div style="height:80px;">
	<div onmouseover="rotateDIV()" id="rotate2D">2D rotate</div>
	<div onmouseover="rotateYDIV()" id="rotate3D">3D rotate</div>
</div>
<hr>

<h2>Browser Support for 2D Transforms</h2>
<p>The numbers in the table specify the first browser version that fully supports the property.</p>
<p>Numbers followed by -ms-, -webkit-, -moz-, or -o- specify the first version that worked with a prefix.</p>
<div class="w3-responsive">
<table class="browserref notranslate">
  <tr>
    <th style="width:22%;font-size:16px;text-align:left;">Property</th>
    <th style="width:13%;" class="bsChrome" title="Chrome"></th>
    <th style="width:13%;" class="bsEdge" title="Edge"></th>
    <th style="width:13%;" class="bsIE" title="Internet Explorer"></th>
    <th style="width:13%;" class="bsFirefox" title="Firefox"></th>
    <th style="width:13%;" class="bsSafari" title="Safari"></th>
    <th style="width:13%;" class="bsOpera" title="Opera"></th>                
  </tr>
  <tr>
    <td style="text-align:left;">transform</td>
    <td>36.0<br>4.0&nbsp;-webkit-</td>
    <td>12.0</td>
    <td>10.0<br>9.0&nbsp;-ms-</td>
    <td>16.0<br>3.5&nbsp;-moz-</td>
    <td>3.2&nbsp;-webkit-</td>
    <td>23.0<br>15.0&nbsp;-webkit-<br>12.1<br>10.5&nbsp;-o-</td>
  </tr>
  <tr>
    <td style="text-align:left;">transform-origin<br>(two-value syntax)</td>
    <td>36.0<br>4.0&nbsp;-webkit-</td>
    <td>12.0</td>
    <td>10.0<br>9.0&nbsp;-ms-</td>
    <td>16.0<br>3.5&nbsp;-moz-</td>
    <td>3.2&nbsp;-webkit-</td>
    <td>23.0<br>15.0&nbsp;-webkit-<br>12.1<br>10.5&nbsp;-o-</td>
  </tr>
</table>
</div>
<hr>

<h2>CSS3 2D Transforms</h2>
<p>In this chapter you will learn about the following 2D transformation methods:</p>
<ul>
	<li><code>translate()</code></li>
	<li><code>rotate()</code></li>
	<li><code>scale()</code></li>
	<li><code>skewX()</code></li>
	<li><code>skewY()</code></li>
	<li><code>matrix()</code></li>
</ul>

<table class="lamp"><tr>
<th style="width:34px"><img src="../images/lamp.jpg" alt="Note" style="height:32px;width:32px"></th>
<td><b>Tip:</b> You will learn about 3D transformations in the next chapter.</td>
</tr></table>
<hr>

<h2>The translate() Method</h2>
<img src="transform_translate.gif" alt="Translate"><br><br>
<p>The <code>translate()</code> method moves an element from its current position (according 
to the parameters given for the X-axis and the Y-axis).</p>
<p>The following example moves the &lt;div&gt; element 50 pixels to the right, 
and 100 pixels down from its current position:</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: translate(50px,100px); /* IE 9 */<br>	
&nbsp;&nbsp;&nbsp;	
-webkit-transform: translate(50px,100px); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: translate(50px,100px);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryit139f.html?filename=trycss3_transform_translate">Try it yourself &raquo;</a>
</div>
<hr>

<h2>The rotate() Method</h2>
<img src="transform_rotate.gif" alt="Rotate">
<p>The <code>rotate()</code> method rotates an element clockwise or counter-clockwise according to a given degree.</p>
<p>The following example rotates the &lt;div&gt; element clockwise with 20 degrees:</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: rotate(20deg); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: rotate(20deg); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: rotate(20deg);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryit811b.html?filename=trycss3_transform_rotate">Try it yourself &raquo;</a>
</div>
<p>Using negative values will rotate the element counter-clockwise.</p>
<p>The following example rotates the &lt;div&gt; element counter-clockwise with 20 degrees:</p>
<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: rotate(-20deg); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: rotate(-20deg); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: rotate(-20deg);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryita6c0.html?filename=trycss3_transform_rotate2">Try it yourself &raquo;</a>
</div>
<hr>

<h2>The scale() Method</h2>
<img src="transform_scale.gif" alt="Scale"><br><br>
<p>The <code>scale()</code> method increases or decreases the size of an element (according to the parameters given for the width and height).</p>
<p>The following example increases the &lt;div&gt; element to be two times of its original width, and three times of its original height:&nbsp;</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: scale(2,3); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: scale(2,3); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: scale(2,3);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryitf3be.html?filename=trycss3_transform_scale">Try it yourself &raquo;</a>
</div>

<p>The following example decreases the &lt;div&gt; element to be half of its original width and height:&nbsp;</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: scale(0.5,0.5); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: scale(0.5,0.5); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: scale(0.5,0.5);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryit213e.html?filename=trycss3_transform_scale2">Try it yourself &raquo;</a>
</div>
<hr>

<h2>The skewX() Method</h2>
<!--
<div id="skewx">
This div element is skewed 20 degrees along the X-axis.
</div>
-->

<p>The <code>skewX()</code> method skews an element along the X-axis by the given angle.</p>
<p>The following example skews the &lt;div&gt; element 20 degrees along the 
X-axis:</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: skewX(20deg); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: skewX(20deg); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: skewX(20deg);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryitf112.html?filename=trycss3_transform_skewx">Try it yourself &raquo;</a>
</div>
<hr>

<h2>The skewY() Method</h2>
<!--
<div id="skewy">
This div element is skewed 20 degrees along the X-axis.
</div>
-->

<p>The <code>skewY()</code> method skews an element along the Y-axis by the given angle.</p>
<p>The following example skews the &lt;div&gt; element 20 degrees along the Y-axis:</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: skewY(20deg); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: skewY(20deg); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: skewY(20deg);<br>
}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryitf273.html?filename=trycss3_transform_skewy">Try it yourself &raquo;</a>
</div>
<hr>

<h2>The skew() Method</h2>
<!--
<div id="skewy">
This div element is skewed 20 degrees along the X-axis.
</div>
-->

<p>The <code>skew()</code> method skews an element along the X and Y-axis by the given angles.</p>
<p>The following example skews the &lt;div&gt; element 20 degrees along the X-axis, and 10 degrees along the Y-axis:</p>
<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: skew(20deg, 10deg); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: skew(20deg, 10deg); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: skew(20deg, 10deg);<br>
}	
</div>
<a class="w3-btn w3-margin-bottom" href="tryit92d3.html?filename=trycss3_transform_skew" target="_blank">Try it yourself &raquo;</a>
</div>
<p>If the second parameter is not specified, it has a zero value. So, the following example skews the &lt;div&gt; element 20 degrees along the X-axis:</p>
<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp;
-ms-transform: skew(20deg); /* IE 9 */<br>
&nbsp;&nbsp;&nbsp;
-webkit-transform: skew(20deg); /* Safari */<br>
&nbsp;&nbsp;&nbsp;
transform: skew(20deg);<br>
}	
</div>
<a class="w3-btn w3-margin-bottom" href="tryitfce5.asp?filename=trycss3_transform_skew2" target="_blank">Try it yourself &raquo;</a>
</div>
<hr>

<h2>The matrix() Method</h2>
<img src="transform_rotate.gif" alt="Rotate">
<p>The <code>matrix()</code> method combines all the 2D transform methods into one.</p>
<p>The matrix() method take six parameters, containing mathematic functions, 
which allows you to rotate, scale, move (translate), and skew elements.</p>
<p>The parameters are as follow: matrix(scaleX(),skewY(),skewX(),scaleY(),translateX(),translateY()):</p>

<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate cssHigh">
div
{<br>
&nbsp;&nbsp;&nbsp; -ms-transform: matrix(1, -0.3, 0, 1, 0, 0); /* IE 9 */<br>&nbsp;&nbsp;&nbsp; 
	-webkit-transform: matrix(1, -0.3, 0, 1, 0, 0); /* Safari */<br>&nbsp;&nbsp;&nbsp; 
	transform: matrix(1, -0.3, 0, 1, 0, 0);<br>}	
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="tryit514d.html?filename=trycss3_transform_matrix1">Try it yourself &raquo;</a>
</div>
<hr>

<h2>Test Yourself with Exercises!</h2>
<p>
<a class="w3-btn" href="exercised565.asp?filename=exercise_css3_2dtransforms1" target="_blank">Exercise 1 &raquo;</a>&nbsp;
<a class="w3-btn" href="exerciseab58.asp?filename=exercise_css3_2dtransforms2" target="_blank">Exercise 2 &raquo;</a>&nbsp;
<a class="w3-btn" href="exercise6e8b.asp?filename=exercise_css3_2dtransforms3" target="_blank">Exercise 3 &raquo;</a>&nbsp;
<a class="w3-btn" href="exercisef3fd.asp?filename=exercise_css3_2dtransforms4" target="_blank">Exercise 4 &raquo;</a>
</p>
<hr>

<h2>CSS3 Transform Properties</h2>
<p>The following table lists all the 2D transform properties:</p>
<table class="w3-table-all notranslate">
  <tr>
    <th style="width:23%">Property</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><a href="../cssref/css3_pr_transform.html">transform</a></td>
    <td>Applies a 2D or 3D transformation to an element</td>
  </tr>
  <tr>
    <td><a href="../cssref/css3_pr_transform-origin.html">transform-origin</a></td>
    <td>Allows you to change the position on transformed elements</td>
  </tr>
</table>
  
<h2>2D Transform Methods</h2>
<table class="w3-table-all notranslate">
  <tr>
    <th style="width:23%">Function</th>
    <th>Description</th>
  </tr>  
  <tr>
    <td>matrix(<i>n,n,n,n,n,n</i>)</td>
    <td>Defines a 2D transformation, using a matrix of six values</td>
  </tr>
  <tr>
    <td>translate(<i>x,y</i>)</td>
    <td>Defines a 2D translation, moving the element along the X- and the Y-axis</td>
  </tr>
	<tr>
    <td>translateX(<i>n</i>)</td>
    <td>Defines a 2D translation, moving the element along the X-axis</td>
  </tr>
  <tr>
    <td>translateY(<i>n</i>)</td>
    <td>Defines a 2D translation, moving the element along the Y-axis</td>
  </tr>
  <tr>
    <td>scale(<i>x,y</i>)</td>
    <td>Defines a 2D scale transformation, changing the elements width and 
	height</td>
  </tr>
	<tr>
    <td>scaleX(<i>n</i>)</td>
    <td>Defines a 2D scale transformation, changing the element's width</td>
  </tr>
  <tr>
    <td>scaleY(<i>n</i>)</td>
    <td>Defines a 2D scale transformation, changing the element's height</td>
  </tr>
  <tr>
    <td>rotate(<i>angle</i>)</td>
    <td>Defines a 2D rotation, the angle is specified in the 
		parameter</td>
  </tr>
  <tr>
    <td>skew(<i>x-angle,y-angle</i>)</td>
    <td>Defines a 2D skew transformation along the X- and the Y-axis</td>
  </tr>
  <tr>
    <td>skewX(<i>angle</i>)</td>
    <td>Defines a 2D skew transformation along the X-axis</td>
  </tr>
  <tr>
    <td>skewY(<i>angle</i>)</td>
    <td>Defines a 2D skew transformation along the Y-axis</td>
  </tr>
</table>

<br>
<div class="chapter">
<div class="prev"><a class="chapter" href="css3_fonts.html">&laquo; Previous</a></div>
<div class="next"><a class="chapter" href="css3_3dtransforms.html">Next Chapter &raquo;</a></div>
</div>
</div>
<div class="w3-col l2 m12" id="right">

<div class="sidesection">
<div id="skyscraper">
<div id="div-gpt-ad-1422003450156-5">
<script>
 googletag.cmd.push(function() {
 googletag.display('div-gpt-ad-1422003450156-5');
 });
 </script> 
</div>
</div>
</div>

<div class="sidesection">
<h3>W3SCHOOLS EXAMS</h3>
<a target="_blank" href="../cert/default.html">HTML, CSS, JavaScript, PHP, jQuery, and XML Certifications</a>
</div>

<div class="sidesection">
<h3>COLOR PICKER</h3>
<a href="../colors/colors_picker.html">
<img src="../images/colorpicker.gif" alt="colorpicker"></a>
</div>

<div class="sidesection">
<h3>SHARE THIS PAGE</h3>
<div class="w3-text-grey sharethis">
<script>
<!--
try{
loc=location.pathname;
if (loc.toUpperCase().indexOf(".ASP")<0) loc=loc+"default.asp";
txt='<a href="http://www.facebook.com/sharer.php?u=http://www.w3schools.com'+loc+'" target="_blank" title="Facebook"><span class="fa fa-facebook-square fa-2x"></span></a>';
txt=txt+'<a href="http://twitter.com/home?status=Currently reading http://www.w3schools.com'+loc+'" target="_blank" title="Twitter"><span class="fa fa-twitter-square fa-2x"></span></a>';
txt=txt+'<a href="https://plus.google.com/share?url=http://www.w3schools.com'+loc+'" target="_blank" title="Google+"><span class="fa fa-google-plus-square fa-2x"></span></a>';
document.write(txt);
} catch(e) {}
//-->
</script>
</div>
</div>

<div class="sidesection w3-text-grey sharethis">
<a href="javascript:void(0);" onclick="clickFBLike()" title="Like W3Schools on Facebook">
<span class="fa fa-thumbs-o-up fa-2x"></span></a>
<div id="fblikeframe">
<div id="popupframe"></div>
<div id="popupDIV"></div>
</div>
</div>       

<div class="sidesection">
<h3>LEARN MORE:</h3>
<p>
<a href="../colors/colors_converter.html">Color Converter</a><br>
<a href="../howto/howto_google_maps.html">Google Maps</a><br>
<a href="../howto/howto_css_animate_buttons.html">Animated Buttons</a><br>
<a href="../howto/howto_css_modals.html">Modal Boxes</a><br>
<a href="../howto/howto_css_modal_images.html">Modal Images</a><br>
<a href="../howto/howto_css_tooltip.html">Tooltips</a><br>
<a href="../howto/howto_css_loader.html">Loaders</a><br>
<a href="../howto/howto_js_animate.html">JS Animations</a><br>
<a href="../howto/howto_js_progressbar.html">Progress Bars</a><br>
<a href="../howto/howto_js_dropdown.html">Dropdowns</a><br>
<a href="../howto/howto_js_slideshow.html">Slideshow</a><br>
<a href="../howto/howto_js_sidenav.html">Side Navigation</a><br>
<a href="../howto/howto_html_include.html">HTML Includes</a><br>
<a href="../w3css/w3css_color_palettes.html">Color Palettes</a>
</p>
</div>

</div>
</div>
<div class="footer w3-container w3-white">      

<hr>
<div style="overflow:auto">
<!-- BottomMediumRectangle -->
<div class="bottomad" id='div-gpt-ad-1422003450156-0'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-0'); });
</script>
</div>
<!-- RightBottomMediumRectangle -->
<div class="bottomad" id='div-gpt-ad-1422003450156-3'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-3'); });
</script>
</div>
</div>

<hr>
<div class="w3-row w3-center w3-small">
<div class="w3-col l3 m3 s12">
<a href="javascript:void(0);" onclick="displayError();return false" style="white-space:nowrap;">REPORT ERROR</a>
</div>
<div class="w3-col l3 m3 s12">
<a href="#" target="_blank" onclick="printPage();return false;">PRINT PAGE</a>
</div>
<div class="w3-col l3 m3 s12">
<a href="http://w3schools.invisionzone.com/" target="_blank">FORUM</a>
</div>
<div class="w3-col l3 m3 s12">
<a href="../about/default.html" target="_top">ABOUT</a>
</div>
</div>
<hr>
<div class="w3-light-grey w3-padding w3-center" id="err_form" style="display:none;">
<span onclick="this.parentElement.style.display='none'" class="w3-closebtn">&times;</span>     
<h2>Your Suggestion:</h2>
<form>
<div class="w3-group">      
<label for="err_email">Your E-mail:</label>
<input class="w3-input" type="text" style="width:100%" id="err_email" name="err_email">
</div>
<div class="w3-group">      
<label for="err_email">Page address:</label>
<input class="w3-input" type="text" style="width:100%" id="err_url" name="err_url" disabled="disabled">
</div>
<div class="w3-group">
<label for="err_email">Description:</label>
<textarea rows="10" class="w3-input" id="err_desc" name="err_desc" style="width:100%;"></textarea>
</div>
<div class="form-group">        
<button type="button" onclick="sendErr()">Submit</button>
</div>
<br>
</form>
</div>
<div class="w3-container w3-light-grey w3-padding" id="err_sent" style="display:none;">
<span onclick="this.parentElement.style.display='none'" class="w3-closebtn">&times;</span>     
<h2>Thank You For Helping Us!</h2>
<p>Your message has been sent to W3Schools.</p>
</div>

<div class="w3-row w3-center w3-small">
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Top 10 Tutorials</h4>
<a href="../html/default.html">HTML Tutorial</a><br>
<a href="default.html">CSS Tutorial</a><br>
<a href="../js/default.html">JavaScript Tutorial</a><br>
<a href="../w3css/default.html">W3.CSS Tutorial</a><br>
<a href="../bootstrap/default.html">Bootstrap Tutorial</a><br>
<a href="../sql/default.html">SQL Tutorial</a><br>
<a href="../php/default.html">PHP Tutorial</a><br>
<a href="../jquery/default.html">jQuery Tutorial</a><br>
<a href="../angular/default.html">Angular Tutorial</a><br>
<a href="../xml/default.html">XML Tutorial</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Top 10 References</h4>
<a href="../tags/default.html">HTML Reference</a><br>
<a href="../cssref/default.html">CSS Reference</a><br>
<a href="../jsref/default.html">JavaScript Reference</a><br>
<a href="../w3css/w3css_references.html">W3.CSS Reference</a><br>
<a href="../browsers/default.html">Browser Statistics</a><br>
<a href="../php/php_ref_array.asp">PHP Reference</a><br>
<a href="../colors/colors_names.html">HTML Colors</a><br>
<a href="../charsets/default.html">HTML Character Sets</a><br>
<a href="../jquery/jquery_ref_selectors.html">jQuery Reference</a><br>
<a href="../angular/angular_ref_directives.html">AngularJS Reference</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Top 10 Examples</h4>
<a href="../html/html_examples.html">HTML Examples</a><br>
<a href="css_examples.html">CSS Examples</a><br>
<a href="../js/js_examples.html">JavaScript Examples</a><br>
<a href="../w3css/w3css_examples.html">W3.CSS Examples</a><br>
<a href="../js/js_dom_examples.html">HTML DOM Examples</a><br>
<a href="../php/php_examples.html">PHP Examples</a><br>
<a href="../jquery/jquery_examples.html">jQuery Examples</a><br>
<a href="../asp/asp_examples.html">ASP Examples</a><br>
<a href="../xml/xml_examples.html">XML Examples</a><br>
<a href="../svg/svg_examples.html">SVG Examples</a>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Web Certificates</h4>
<a href="../cert/default.html">HTML Certificate</a><br>
<a href="../cert/default.html">HTML5 Certificate</a><br>
<a href="../cert/default.html">CSS Certificate</a><br>
<a href="../cert/default.html">JavaScript Certificate</a><br>
<a href="../cert/default.html">jQuery Certificate</a><br>
<a href="../cert/default.html">PHP Certificate</a><br>
<a href="../cert/default.html">Bootstrap Certificate</a><br>
<a href="../cert/default.html">XML Certificate</a><br>
</div>
</div>        
</div>        

<hr>
<div class="w3-center w3-small w3-opacity">
W3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding.
Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content.
While using this site, you agree to have read and accepted our <a href="../about/about_copyright.html">terms of use</a>,
<a href="../about/about_privacy.html">cookie and privacy policy</a>.
<a href="../about/about_copyright.html">Copyright 1999-2016</a> by Refsnes Data. All Rights Reserved.<br><br>
<a href="../index.html">
<img style="width:150px;height:28px;border:0" src="../images/w3schoolscom_gray.gif" alt="W3Schools.com"></a>
</div>
<br><br>
</div>
</div>
</div>

<div id="nav_tutorials_content" style="display:none;">
<span onclick='w3_close_nav("tutorials")' class='w3-closebtn w3-xlarge'>&times;</span>
<div class='w3-row-padding'>
<div class='w3-col l2 m4'>
<h3>HTML/CSS</h3>
<a href='../html/default.html'>Learn HTML</a>
<a href='default.html'>Learn CSS</a>
<a href='../w3css/default.html'>Learn W3.CSS</a>
<a href='../colors/default.html'>Learn Colors</a>
<a href='../bootstrap/default.html'>Learn Bootstrap</a>
</div>
<div class='w3-col l2 m4'>  
<h3>JavaScript</h3>
<a href='../js/default.html'>Learn JavaScript</a>
<a href='../jquery/default.html'>Learn jQuery</a>
<a href='../jquerymobile/default.html'>Learn jQueryMobile</a>
<a href='../appml/default.html'>Learn AppML</a>
<a href='../angular/default.html'>Learn AngularJS</a>
<a href='../ajax/default.html'>Learn AJAX</a>
<a href='../json/default.html'>Learn JSON</a>
</div>
<div class='w3-col l2 m4'>   
<h3>HTML Graphics</h3>
<a href='../canvas/default.html'>Learn Canvas</a>
<a href='../svg/default.html'>Learn SVG</a>
<a href='../icons/default.html'>Learn Icons</a>
<a href='../googleapi/default.html'>Learn Google Maps</a>
<a href="../games/default.html">Learn HTML Games</a>
</div>
<div class='w3-col l2 m4'>
<h3>Server Side</h3>
<a href='../sql/default.html'>Learn SQL</a>
<a href='../php/default.html'>Learn PHP</a>
<a href='../asp/default.html'>Learn ASP</a>
<a href='../aspnet/default.html'>Learn ASP.NET</a>
</div>
<div class='w3-col l2 m4'>
<h3>Web Building</h3>
<a href='../website/default.html'>Web Building</a>
<a href='../browsers/default.html'>Web Statistics</a>
<a href='../cert/default.html'>Web Certificates</a>
</div>
<div class='w3-col l2 m4'>
<h3>XML Tutorials</h3>
<a href='../xml/default.html'>Learn XML</a>
<a href='../xsl/default.html'>Learn XSLT</a>
</div>
</div>
</div>
<div id="nav_references_content" style="display:none;">
<span onclick='w3_close_nav("references")' class='w3-closebtn w3-xlarge'>&times;</span>
<div class='w3-row-padding'>
<div class='w3-col l2 m4'>
<h3>HTML</h3>
<a href='../tags/default.html'>HTML Tag Reference</a>
<a href='../tags/ref_eventattributes.html'>HTML Event Reference</a>
<a href='../colors/default.html'>HTML Color Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>CSS</h3>
<a href='../cssref/default.html'>CSS Reference</a>
<a href='../cssref/css_selectors.html'>CSS Selector Reference</a>
<a href='../w3css/w3css_references.html'>W3.CSS Reference</a>
<a href='../bootstrap/bootstrap_ref_css_text.html'>Bootstrap Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>JavaScript</h3>
<a href='../jsref/default.html'>JavaScript Reference</a>
<a href='../jsref/default.html'>HTML DOM Reference</a>
<a href='../jquery/jquery_ref_selectors.html'>jQuery Reference</a>
<a href='../jquerymobile/jquerymobile_ref_data.html'>jQuery Mobile Reference</a>
<a href='../angular/angular_ref_directives.html'>AngularJS Reference</a>
<a href='../googleAPI/google_maps_ref.html'>Google Maps Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>Server Side</h3>
<a href='../php/php_ref_array.asp'>PHP Reference</a>
<a href='../sql/sql_quickref.html'>SQL Reference</a>
<a href='../asp/asp_ref_response.html'>ASP Reference</a>
<a href='../aspnet/webpages_ref_classes.html'>Razor Reference</a>
<a href='../aspnet/aspnet_intro.html'>ASP.NET Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>XML</h3>
<a href='../xml/dom_nodetype.html'>XML Reference</a>
<a href='../xsl/xsl_w3celementref.html'>XSLT Reference</a>
<a href='../xml/schema_elements_ref.html'>XML Schema Reference</a>
<a href='../svg/svg_reference.html'>SVG Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>Charsets</h3>
<a href='../charsets/default.html'>HTML Character Sets</a>
<a href='../charsets/ref_html_ascii.html'>HTML ASCII</a>
<a href='../charsets/ref_html_ansi.html'>HTML ANSI</a>
<a href='../charsets/ref_html_ansi.html'>HTML Windows-1252</a>
<a href='../charsets/ref_html_8859.html'>HTML ISO-8859-1</a>
<a href='../charsets/ref_html_symbols.html'>HTML Symbols</a>
<a href='../charsets/ref_html_utf8.html'>HTML UTF-8</a>
</div>
</div>
</div>
<div id="nav_examples_content" style="display:none;">
<span onclick='w3_close_nav("examples")' class='w3-closebtn w3-xlarge'>&times;</span>
<div class='w3-row-padding'>
<div class='w3-col l3 m6'>
<h3>HTML/CSS</h3>
<a href='../html/html_examples.html'>HTML Examples</a>
<a href='css_examples.html'>CSS Examples</a>
<a href='../w3css/w3css_examples.html'>W3.CSS Examples</a>
</div>
<div class='w3-col l3 m6'>
<h3>JavaScript</h3>
<a href='../js/js_examples.html' target='_top'>JavaScript Examples</a>
<a href='../js/js_dom_examples.html' target='_top'>HTML DOM Examples</a>
<a href='../jquery/jquery_examples.html' target='_top'>jQuery Examples</a>
<a href='../jquerymobile/jquerymobile_examples.html' target='_top'>jQuery Mobile Examples</a>
<a href='../angular/angular_examples.html' target='_top'>AngularJS Examples</a>
<a href='../ajax/ajax_examples.html' target='_top'>AJAX Examples</a>
</div>
<div class='w3-col l3 m6'>
<h3>Server Side</h3>
<a href='../php/php_examples.html' target='_top'>PHP Examples</a>
<a href='../asp/asp_examples.html' target='_top'>ASP Examples</a>
<a href='../aspnet/webpages_examples.html' target='_top'>Razor Examples</a>
<a href='../aspnet/aspnet_examples.html' target='_top'>.NET Examples</a>
</div>
<div class='w3-col l3 m6'>
<h3>XML</h3>
<a href='../xml/xml_examples.html' target='_top'>XML Examples</a>
<a href='../xsl/xsl_examples.html' target='_top'>XSL Examples</a>
<a href='../xsl/xsl_examples.html' target='_top'>XSLT Examples</a>
<a href='../xsl/xpath_examples.html' target='_top'>XPath Examples</a>
<a href='../xml/schema_example.html' target='_top'>XML Schema Examples</a>
<a href='../svg/svg_examples.html' target='_top'>SVG Examples</a>
</div>
</div>
</div>
<div id='nav_translate_content' style="display:none">
<span onclick='w3_close_nav("translate")' class='w3-closebtn w3-xlarge'>&times;</span>
<br><br>Translate w3schools.com:
<div id='google_translate_element'></div>
<br>
</div>
<div id='nav_search_content' style="display:none">
<span onclick='w3_close_nav("search")' class='w3-closebtn w3-xlarge'>&times;</span>
<br><br>
<div class='searchdiv'>
Search w3schools.com:
<div id='googleSearch'><div class='gcse-search'></div></div>
</div>
<br>
</div>
<script src="../lib/w3schools_footer.js"></script>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>  
<![endif]-->
</body>

<!-- Mirrored from www.w3schools.com/css/css3_2dtransforms.asp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Mar 2016 11:04:41 GMT -->
</html>