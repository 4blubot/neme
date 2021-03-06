<txp:act_if_mobile>
<txp:else />
<txp:act_if_mobile>
<txp:else />
<script src="<txp:site_url />js/default.js"></script>
</txp:act_if_mobile>
<script src="<txp:site_url />js/css3-mediaqueries.js"></script>
<!--[if (IE 6)|(IE 7)|(IE 8)]>
<script src="<txp:site_url />js/html5shiv.js"></script>
<script src="<txp:site_url />js/jquery1x.js"></script>
<![endif]-->
</txp:act_if_mobile>
<!--[if gte IE 9]>
<script src="<txp:site_url />js/jquery.js"></script>
<![endif]-->
<!--[if !IE]>-->
<script src="<txp:site_url />js/jquery.js"></script>
<txp:output_form form="responsiveslides.js" format="flat.script" />
<script>
$(function() {
$("li").removeClass("customTarget");
var myLocation = document.location.hash.replace("#","");
if (myLocation) {
document.getElementById(myLocation).className = "customTarget";
}
$("a").click(function () {
$("li").removeClass("customTarget");
var clickedLink = this.href.split("#");
if (clickedLink.length > 1) {
document.getElementById(clickedLink[1]).className = "customTarget";
}
});
});
</script>
<!--<![endif]-->
<txp:if_individual_article>
<txp:output_form form="bxslider.js" format="flat.script" />
</txp:if_individual_article>
<script>
$(document).ready(function(){
// change class
$('body').removeClass('no-js').addClass('js');
// bxslider 
if(window.innerWidth < 960) {
$('.slider').bxSlider({
slideWidth: 340,
minSlides: 2,
maxSlides: 2,
moveSlides: 2,
slideMargin: 5
});
} else {
$('.slider').bxSlider({
slideWidth: 340,
minSlides: 2,
maxSlides: 2,
moveSlides: 2,
slideMargin: 10
});
}
// slides
$(".rslides").responsiveSlides({
auto: true,
speed: 500,
timeout: 4000,
pause: true,
pauseControls: true,
namespace: "rslides",
});
});
</script>
