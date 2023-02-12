<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="demo.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="jquery.easing.1.3.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript" language="javascript" src="jquery.js"></script>
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css" media="screen">
			
			p { font-size: 1.2em; }
			
			ul li { display: inline; }
			
			.wide {
				border-bottom: 1px #000 solid;
				width: 4000px;
			}
			
			.fleft { float: left; margin: 0 20px 0 0; }
			
			.cboth { clear: both; }
			
			#main {
				background: #fff;
				margin: 0 auto;
				padding: 30px;
				width: 1000px;
			}</style>
<script type="text/javascript">
<!--    //---------------------------------+
    //  Developed by Roshan Bhattarai
    //  Visit http://roshanbh.com.np for this script and more.
    //  This notice MUST stay intact for legal use
    // --------------------------------->
    $(document).ready(function () {
        //slides the element with class "menu_body" when paragraph with class "menu_head" is clicked
        $("#firstpane p.menu_head").click(function () {
            $(this).css({ backgroundImage: "url(down.png)" }).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
            $(this).siblings().css({ backgroundImage: "url(left.png)" });
        });
        //slides the element with class "menu_body" when mouse is over the paragraph
        $("#secondpane p.menu_head").mouseover(function () {
            $(this).css({ backgroundImage: "url(down.png)" }).next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
            $(this).siblings().css({ backgroundImage: "url(left.png)" });
        });
    });
</script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <div id="Div7"><!-- subbody Div Start -->
<div id="Div8"><font class="style5"><strong>Garden</strong> </font><br />
<br /><br />

<ul class="gallery clearfix" style="font-family: Tahoma; font-size: 12px">
<li><a href="images/imgmcp/gardenee.jpg" rel="prettyPhoto[gallery1]"><img src="images/imgmcp/gardenee.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/imgmcp/gardenjulla (1).jpg" rel="prettyPhoto[gallery1]"><img src="images/imgmcp/gardenjulla (1).jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/imgmcp/gardenjulla (2).jpg" rel="prettyPhoto[gallery1]"><img src="images/imgmcp/gardenjulla (2).jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/imgmcp/gardenjulla (3).jpg" rel="prettyPhoto[gallery1]"><img src="images/imgmcp/gardenjulla (3).jpg" width="120" height="120" alt=" " /></a></li>
</div></div><!-- subbody Div Close --></ul>

  <div id="Div1"><!-- subbody Div Start -->
<div id="Div2"><font class="style5"><strong>Roads</strong> </font><br />
<br /><br />

<ul class="gallery clearfix" style="font-family: Tahoma; font-size: 12px">
<li><a href="images/Road%20construction/concrete-road-construction-service-500x500.jpg" rel="prettyPhoto[gallery1]"><img src="images/Road%20construction/concrete-road-construction-service-500x500.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/imgmcp/roadundercon.jpg" rel="prettyPhoto[gallery1]"><img src="images/imgmcp/roadundercon.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/imgmcp/road.jpg" rel="prettyPhoto[gallery1]"><img src="images/imgmcp/road.jpg" width="120" height="120" alt=" " /></a></li>
</div></div><!-- subbody Div Close --></ul>

  <div id="Div3"><!-- subbody Div Start -->
<div id="Div4"><font class="style5"><strong>Vehicles</strong> </font><br />
<br /><br />

<ul class="gallery clearfix" style="font-family: Tahoma; font-size: 12px">
<li><a href="images/vehicle/bus.jpg" rel="prettyPhoto[gallery1]"><img src="images/vehicle/bus.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/vehicle/clean up.jpg" rel="prettyPhoto[gallery1]"><img src="images/vehicle/clean up.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/vehicle/fire brigade.jpg" rel="prettyPhoto[gallery1]"><img src="images/vehicle/fire brigade.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/vehicle/ghanta gadi.jpg" rel="prettyPhoto[gallery1]"><img src="images/vehicle/ghanta gadi.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/vehicle/jcb.jpg" rel="prettyPhoto[gallery1]"><img src="images/vehicle/jcb.jpg" width="120" height="120" alt=" " /></a></li>
 </div></div><!-- subbody Div Close --></ul>


  <div id="Div5"><!-- subbody Div Start -->
<div id="Div6"><font class="style5"><strong>Services</strong></font><br />
<br /><br />

<ul class="gallery clearfix" style="font-family: Tahoma; font-size: 12px">
<li><a href="images/services gallery/clean up.jpg" rel="prettyPhoto[gallery1]"><img src="images/services gallery/clean up.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/services gallery/education.jpg" rel="prettyPhoto[gallery1]"><img src="images/services gallery/education.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/services gallery/fire extingusher.jpg" rel="prettyPhoto[gallery1]"><img src="images/services gallery/fire extingusher.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/services gallery/first aid.jpg" rel="prettyPhoto[gallery1]"><img src="images/services gallery/first aid.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/services gallery/polio.jpg" rel="prettyPhoto[gallery1]"><img src="images/services gallery/polio.jpg" width="120" height="120" alt=" " /></a></li>
<li><a href="images/services gallery/water supply.jpg" rel="prettyPhoto[gallery1]"><img src="images/services gallery/water supply.jpg" width="120" height="120" alt=" " /></a></li>
</div></div><!-- subbody Div Close --></ul>

<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $("area[rel^='prettyPhoto']").prettyPhoto();

        $(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({ animation_speed: 'normal', theme: 'light_square', slideshow: 3000, autoplay_slideshow: true });
        $(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({ animation_speed: 'fast', slideshow: 10000, hideflash: true });

        $("#custom_content a[rel^='prettyPhoto']:first").prettyPhoto({
            custom_markup: '<div id="map_canvas" style="width:260px; height:265px"></div>',
            changepicturecallback: function () { initialize(); }
        });

        $("#custom_content a[rel^='prettyPhoto']:last").prettyPhoto({
            custom_markup: '<div id="bsap_1259344" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div><div id="bsap_1237859" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6" style="height:260px"></div><div id="bsap_1251710" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div>',
            changepicturecallback: function () { _bsap.exec(); }
        });
    });
			</script><!-- Google Maps Code -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true">
			</script>
<script type="text/javascript">
    function initialize() {
        var latlng = new google.maps.LatLng(-34.397, 150.644);
        var myOptions = {
            zoom: 8,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
			        myOptions);
    }

			</script><!-- END Google Maps Code --><!-- BuySellAds.com Ad Code -->
<style type="text/css" media="screen">
				.bsap a { float: left; }</style>
<script type="text/javascript">
    (function () {
        var bsa = document.createElement('script');
        bsa.type = 'text/javascript';
        bsa.async = true;
        bsa.src = '//s3.buysellads.com/ac/bsa.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(bsa);
    })();
			</script><!-- END BuySellAds.com Ad Code -->
            

</asp:Content>

