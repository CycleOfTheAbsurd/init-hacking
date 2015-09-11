<!DOCTYPE html>
<html  class="linux">

<head>
  <script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"Vw4OVV9bGwEDUlVUAQQ="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),f=c.length,u=i(a,o,r),d=0;f>d;d++)c[d].apply(u,n);return u}function a(t,e){f[t]=s(t).concat(e)}function s(t){return f[t]||[]}function c(){return n(e)}var f={};return{on:a,emit:e,create:c,listeners:s,_events:f}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t){try{i.console&&console.log(t)}catch(e){}}var n,r=t("ee"),o=t(1),i={};try{n=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(i.console=!0,-1!==n.indexOf("dev")&&(i.dev=!0),-1!==n.indexOf("nr_dev")&&(i.nrDev=!0))}catch(a){}i.nrDev&&r.on("internal-error",function(t){e(t.stack)}),i.dev&&r.on("fn-err",function(t,n,r){e(r.stack)}),i.dev&&(e("NR AGENT IN DEVELOPMENT MODE"),e("flags: "+o(i,function(t){return t}).join(", ")))},{1:23,ee:"QJf3ax"}],4:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(f){try{r("ierr",[f,(new Date).getTime(),!0])}catch(u){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,t(5),window.onerror=e;try{throw new Error}catch(f){"stack"in f&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&t(4),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:10,2:9,3:7,4:11,5:3,6:24,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],5:[function(t){t("loader").features.ins=!0},{loader:"G9z0Bl"}],6:[function(t){function e(){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var n=t("ee"),r=t("handle"),o=t(1),i=t(2);t("loader").features.stn=!0,t(3),n.on("fn-start",function(t){var e=t[0];e instanceof Event&&(this.bstStart=Date.now())}),n.on("fn-end",function(t,e){var n=t[0];n instanceof Event&&r("bst",[n,e,this.bstStart,Date.now()])}),o.on("fn-start",function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),o.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),this.bstType])}),i.on("fn-start",function(){this.bstStart=Date.now()}),i.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),n.on("pushState-start",function(){this.time=Date.now(),this.startPath=location.pathname+location.hash}),n.on("pushState-end",function(){r("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),"addEventListener"in window.performance&&(window.performance.addEventListener("webkitresourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.webkitClearResourceTimings()},!1),window.performance.addEventListener("resourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.clearResourceTimings()},!1)),document.addEventListener("scroll",e,!1),document.addEventListener("keypress",e,!1),document.addEventListener("click",e,!1)}},{1:10,2:9,3:8,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],7:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=t("ee").create(),i=t(1)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=t[1]=a(e,"nr@wrapped",function(){return i(e,"fn-",null,e.name||"anonymous")}):"function"==typeof e.handleEvent&&i.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:25,ee:"QJf3ax",gos:"7eSDFh"}],8:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window.history,["pushState"],"-")},{1:25,ee:"QJf3ax"}],9:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:25,ee:"QJf3ax"}],10:[function(t,e){function n(t,e,n){t[0]=o(t[0],"fn-",null,n)}var r=t("ee").create(),o=t(1)(r);e.exports=r,o.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",n)},{1:25,ee:"QJf3ax"}],11:[function(t,e){function n(){f.inPlace(this,p,"fn-")}function r(t,e){f.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}function i(t,e){for(var n in t)e[n]=t[n];return e}var a=t("ee").create(),s=t(1),c=t(2),f=c(a),u=c(s),d=window.XMLHttpRequest,p=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=a,window.XMLHttpRequest=function(t){var e=new d(t);try{a.emit("new-xhr",[],e),u.inPlace(e,["addEventListener","removeEventListener"],"-",o),e.addEventListener("readystatechange",n,!1)}catch(r){try{a.emit("internal-error",[r])}catch(i){}}return e},i(d,XMLHttpRequest),XMLHttpRequest.prototype=d.prototype,f.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),a.on("send-xhr-start",r),a.on("open-xhr-start",r)},{1:7,2:25,ee:"QJf3ax"}],12:[function(t){function e(t){var e=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!e.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var a=t.responseType,f="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,u=n(f);if(u&&(r.rxSize=u),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(e.cat=d.split(", ").pop())}}else e.status=0;r.cbTime=this.cbTime,o("xhr",[e,r,this.startTime])}}}function n(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,f=t(1);t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,e){var r=this.metrics,o=t[0],i=this;if(r&&o){var f=n(o);f&&(r.txSize=f)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{a.emit("internal-error",[n])}catch(r){}}};for(var u=0;c>u;u++)e.addEventListener(s[u],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:13,3:11,4:7,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],13:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],14:[function(t,e){function n(t){return function(){r(t,[(new Date).getTime()].concat(i(arguments)))}}var r=t("handle"),o=t(1),i=t(2);"undefined"==typeof window.newrelic&&(newrelic=window.NREUM);var a=["setPageViewName","addPageAction","setCustomAttribute","finished","addToTrace","inlineHit","noticeError"];o(a,function(t,e){window.NREUM[e]=n("api-"+e)}),e.exports=window.NREUM},{1:23,2:24,handle:"D5DuLP"}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):void(r.q&&(r.q[t]||(r.q[t]=[]),r.q[t].push(e)))}var r=t("ee").create();e.exports=n,n.ee=r,r.q={}},{ee:"QJf3ax"}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info,e=f.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(d,function(e,n){e in t||(t[e]=n)});var n="https"===u.split(":")[0]||t.sslForHttp;p.proto=n?"https://":"http://",a("mark",["onload",i()]);var r=f.createElement("script");r.src=p.proto+t.agent,e.parentNode.insertBefore(r,e)}}function r(){"complete"===f.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=t(1),c=window,f=c.document;t(2);var u=(""+location).split("?")[0],d={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-686.min.js"},p=e.exports={offset:i(),origin:u,features:{}};f.addEventListener?(f.addEventListener("DOMContentLoaded",o,!1),c.addEventListener("load",n,!1)):(f.attachEvent("onreadystatechange",r),c.attachEvent("onload",n)),a("mark",["firstbyte",i()])},{1:23,2:14,handle:"D5DuLP"}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],23:[function(t,e){function n(t,e){var n=[],o="",i=0;for(o in t)r.call(t,o)&&(n[i]=e(o,t[o]),i+=1);return n}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],24:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],25:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@wrapper",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,f;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){u([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return f=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,f],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=!0,f(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,f?s+o:o,i,s))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){u([o,e,n,r])}}function f(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){u([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function u(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:24,ee:"QJf3ax"}]},{},["G9z0Bl",4,12,6,5]);</script>
  <meta charset="utf-8">
  <meta name="verify-v1" content="ZwWAp70PgmKCLts2y4qNiJL9qXshM3jR7EmorduE3H0=">
  <meta name="verify-v1" content="QzLYf7htJLR4QxdPphORVw8ltI+uLCeauRiD/1RIqdc=">

  

        <title>Ashley Madison&reg; | FAQs | How it works and Contact Numbers</title>








<meta name="description" content="Ashley Madison Frequently Asked Questions. All the information you need to start using the world's biggest dating website for discreet encounters.">
<meta name="keywords" content="Ashley Madison help, AshleyMadison help, Ashley Madison FAQs, Ashleymadison FAQs, Ashley Madison FAQ, Ashleymadison FAQ, Ashley Madison wiki, Ashleymadison wiki">











<meta name="copyright" content="Ashley Madison, Limited. 2001-2015">
<meta name="type" content="ashleymadison.com">
<meta name="robots" content="index,follow">
<meta name="distribution" content="global">

  
  <link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/vendor/pure.min.ecb2a387.css">
  <link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/css/main.6c001b91.css" type="text/css">
  <link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/css/theme-public.b6abd39b.css" type="text/css">

  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/bower_components/jquery.273e017f.js"></script>
  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/bower_components/jquery.cookie.1e3faa7f.js"></script>
  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/js/countrylangselector.a4a7493a.js"></script>
  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/js/phonecall.ceee7021.js"></script>

  <script type="text/javascript">
    if (this != top) {
      top.location.href = this.location.href;
    }
      </script>

  <script>_udn='.ashleymadison.com';</script>
<script>
  function cookie_read(name) { var nameEQ = name + "="; var ca = document.cookie.split(';'); for(var i=0;i < ca.length;i++) { var c = ca[i]; while (c.charAt(0)==' ') c = c.substring(1,c.length); if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length); }; return null; };
  affid = cookie_read('amaffiliate');
  kwd = cookie_read('amkeywords');
  if (affid == null) affid = 0;
  if (kwd == null) kwd = '';
  window._gaq = [['_setAccount', 'UA-344798-1'],['_setCampaignCookieTimeout', 63072000000],['_setDomainName', '.ashleymadison.com'],['_setAllowLinker', true],['_setCustomVar',1,'Affiliate',affid,1],['_setCustomVar',2,'Keywords',kwd,1],['_setCustomVar',3,'Async','1',1],['_trackPageLoadTime'],['_trackPageview']];
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>


</head>
<body class="lang-en_US country-CA date-09-10 ">

<div class="content content-960">

  <div id="header" class="pure-g">
    <div id="logo" class="pure-u-2-5 box-marg-t box-marg-b text-center">
      <a href="../../index.html?c=2"><img src="https://static-cdn.ashleymadison.com/v4/build/images/global_logo_ashley.25ef2310.png" alt="Ashley Madison - &amp;nbsp;Life is short. Have an affair.&lt;sup&gt;&amp;reg;&lt;/sup&gt;" width="277" height="39"></a>
      <div id="tagline" class="bold">&nbsp;Life is short. Have an affair.<sup>&reg;</sup></div>
    </div>
          <div id="login" class="pure-u-3-5 text-right">
        <form name="loginform" class="pure-form pure-form-aligned" action="login.p" method="POST">
                    <input type="hidden" name="pinf_action_bG9naW4%3D_YXBwL3N0cnVjdHVyZS9wdWJsaWMvbG9naW4%3D_loginpage" value="00">
          <div class="box-marg-t">
            <div class="inline">
              <div class="pure-control-group">
                <label id="lusername">Username</label>


<input
	type="text"
	id="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__username_value"

	
	
			name="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__username_value"
					value=""
			
	
	

	size="20"							class="amLoginInputHilite"																		  >


              </div>
              <div class="pure-control-group">
                <label id="lpassword">Password</label>


<input
	type="password"
	id="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__password_value"

	
	
			name="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__password_value"
			
	
			autocomplete="off"
	

	size="20"	autocomplete="off"						class="amLoginInputHilite"																		  >


              </div>
            </div>
            <div class="inline box-marg-l">
              <a class="block font-sm" href="loginlost.p">Lost Login?</a>
              <button class="pure-button button-small box-marg-t" type="submit" name="pinf_action_bG9naW4%3D_YXBwL3N0cnVjdHVyZS9wdWJsaWMvY291bnQ%3D">Login</button>
            </div>
          </div>

        </form>
      </div>
      </div>

  
  <div id="content" class="thin-border">
  



<link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/css/theme-public.b6abd39b.css" media="screen">



<div itemscope itemtype="http://schema.org/WebPage" class="font-sm neighbour-bottom box-pad">
<a href="../../index.html" title="Ashley Madison" itemprop="breadcrumb"> >Home</a> > <span itemprop="breadcrumb" class="bold">FAQ</span>
</div>


	<div class="pure-g content-faq collapse-p">
		<div class="pure-u-1 box-pad"><a name="faqtop">&nbsp;</a>
			<div><h1>Frequently Asked Questions</h1></div>

				<table class="faq-table" border="0" id="questions">

					<tr>
						<th class="text-left" colspan="2"><a name="28"><h3>Member Initiated Contact</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#28154"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#28154">What is Member Initiated Contact?</a></td>
							<td width="15">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#28150"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#28150">What messages are considered member initiated contact?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#28152"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#28152">Do I get to use this feature when I run out of credits?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#28153"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#28153">How do I cancel my subscription?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#28151"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#28151">Why did I get charged credits for opening and replying to a Collect Message?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="5"><h3>About Ashley Madison, How it works and Contact Number</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#53"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#53">Will you give out my private info to marketing companies?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#56"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#56">Does it cost anything to use this website system?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#527"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#527">What features do you have?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#530"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#530">What do I do after I sign up?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
												<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#531"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#531">Are there any 'Singles' on Ashley Madison?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
												<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#567"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#567">How do I know the Ashley Madison website system & membership base are for real?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#5127"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#5127">Is there a code of conduct or protocol for using this site?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="6"><h3>Registration Information</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#610"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#610">Will you send any information to my home or office?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#629"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#629">How long does it take for my new Profile to be approved?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#638"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#638">Why must I add a valid Zip/Postal code?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#641"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#641">Why must I enter a valid email address?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="7"><h3>Safe Dating Tips</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#713"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#713">Do you pre-screen Members? Do you perform criminal background checks?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#740"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#740">Are any profiles endorsed by Ashley Madison?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
												<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#799"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#799">I'm planning on meeting someone. What should I remember?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
							<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="8"><h3>Public Photos, Keys & Private Showcase Photos</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#822"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#822">How do I request access to someone's Private Showcase?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="3"><h3>Mail-Messaging</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#334"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#334">How do I view my mail-message history with another member?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="9"><h3>Profiles</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#948"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#948">How do I create an Ashley Madison Profile?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#951"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#951">What are the Profile Guidelines?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#953"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#953">How long does it take for my Profile to be approved and does it ever expire?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#956"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#956">For what reason(s) will my Profile be removed?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="11"><h3>Billing & Payments</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#1175"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#1175">How will the charges appear on my credit card?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#1178"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#1178">What methods of payment are available to me?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="14"><h3>About Ashley Madison</h3></a></th>
					</tr>
                    											<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#1487"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#1487">Does Ashley Madison encourage infidelity?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
					                    						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#1488"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#1488">How long has Ashley Madison been in business?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>

						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#14120"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#14120">Is this the right place for me? Will I find someone?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
									<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="15"><h3>Safe-Sex Tips & HIV / AIDS Prevention</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#15105"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#15105">How can I reduce the risk of HIV or other diseases?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#15106"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#15106">Are some sexual practices considered more risky than others?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#15107"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#15107">Which methods of sexual activity are considered to be lower risk?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
									<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="16"><h3>Advanced Searches</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#16113"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#16113">What is the Advanced Search Feature?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
					<tr>
						<th class="text-left" colspan="2" width="100%" valign="top"><a name="4"><h3>Trouble Shooting</h3></a></th>
					</tr>
						<tr>
							<td width="30" valign="middle" class="block"><a href="faq.p#4142"><h4>Q:</h4></td>
							<td width="100%" valign="middle"><a href="faq.p#4142">Why am I timing out?</a></td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
				</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Member Initiated Contact</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="28154"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What is Member Initiated Contact?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  The Member Initiated Contact feature is a premium subscription feature that is available to full members.  It allows male members to open and reply to unsolicited messages sent from female members without spending their credits!
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="28150"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What messages are considered member initiated contact?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Our definition of member initiated contact is any contact from a female member that is not a response to contact a male member has sent.</p><p>The following messages sent from a female are considered member initiated contact:</p><ul><li>Adds you to her Favorites List</li><li>Sends you a Wink or Mail/Collect Message</li><li>Gives you access to her Private Showcase</li><li>If you have the MIC feature you can reply for free!</li></ul><p>Don’t forget, this is only considered member initiated if you haven’t sent her any of the above messages first!</p>
                            </td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="28152"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Do I get to use this feature when I run out of credits?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Yes, as long as your subscription hasn’t expired you won’t have to spend credits to continue messaging with women who initiated contact with you. But once your subscription expires you will no longer be able to message with those women for free.</p><p>You can keep track of your subscription by going to 'Manage Profile' and then 'Credit History'.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="28153"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How do I cancel my subscription?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							   To manage your Member Initiated Contact subscription, go to 'Manage Profile' and then 'Credit History'.
                            </td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="28151"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Why did I get charged credits for opening and replying to a Collect Message?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>If you were charged credits for opening and replying to a Collect Message than you likely initiated contact with her either by adding her to your Favorites List, sending her a Wink Message or sending her access to your Private Showcase. You might have done this a while ago.</p><p>If you have the Member Initiated Contact feature and you feel you should not have been charged credits for opening and replying to a message please contact our Customer Service department.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>About Ashley Madison, How it works and Contact Number</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="53"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Will you give out my private info to marketing companies?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>We do NOT sell, rent or give away our member's personal email addresses or other personal information to any third party company under any circumstance.</p><p>For more information about our Privacy Policy, please click on 'Privacy Policy' on the link provided at the bottom of any page.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="56"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Does it cost anything to use this website system?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>It's free to sign up as a Guest Member. As a Guest you may do the following for no charge:</p><ul><li>Receive winks</li><li>Send and receive photos</li><li>Add members to your Favorites list</li><li>Reply to any Full Member</li><li>Perform searches</li></ul><p>If you wish to send a custom mail-message, initiate a chat session, send a priority message or send virtual gifts to express your interest you will have to upgrade your account to a Full Member.</p><p>To upgrade your account, click on the 'Buy Credits' button located on the main console when you are logged into your account.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>

					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="527"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What features do you have?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>We offer the following features:</p><h3>Instant Messaging</h3><p>Our chat feature allows you to chat with members who are online at the same time as you are. You can also chat with multiple members at the same time at no extra charge.</p><h3>Custom Mail Messaging</h3><p>Ashley Madison system email is just like regular email. It's safe, private, easy to use, confidential and can be accessed whenever you access your Ashley Madison account. To send a custom mail message, access the member's profile details page, click 'Message me', compose your message and click 'Send'. There is a 5 credit charge to initiate contact.</p><h3>Collect Messages</h3><p>Collect Messages allow female members to connect with male members who haven't already initiated contact with them. There is a 5 credit fee charged when a male member accepts a Collect messages.</p><h3>Priority Mail</h3><p>Priority Mail allows a male member to stand out from the crowd by marking his message Priority. The message goes to the top of a female member's inbox and a he'll gets notified when the message is opened.</p><h3>Gifting</h3><p>Send a Gift with a pre-composed or write a message in your own words and send it to someone you admire. To send a gift, access the member's profile details page and click 'Send me a gift'.</p><h3>Winks</h3><p>All members can send free pre-composed Winks. To send a wink, access the member's profile details page and click 'Send me a wink'.</p><h3>Photos - Private Showcase Keys</h3><p>Keep your personal pictures confidential in your Private Showcase. An admirer wants to see your photos? Send them a Key to view your Private Showcase and let them see more of you. To send a key, access the member's profile details page and click 'Send me a private key'. You may revoke keys at any time by accessing the member's profile details page and clicking 'Revoke the private key'. You may also revoke all or individual keys from the 'Lists' section.</p><h3>Favorites</h3><p>Keep track of your favorite members by adding them to your Favorites list. Plus we always tell you when someone adds you to their favorites so you'll know who your admirers are. To add a member to your favorites list click 'Add to favorites' on the member's profile details page.<h3>Blocking</h3><p>You may block a member by accessing their Profile details page, scroll to the bottom of the page and click 'block this profile'. You are also able to unblock a member if you like. To unblock, access your 'Lists' and select 'Blocked Profiles'.</p><h3>Search Tool</h3><p>Find other members using our Quicksearch toolbar or our advanced search feature.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="530"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What do I do after I sign up?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
						      <p>If you haven't completed your profile and added photos, that would be the first place to start.</p><ul><li>You can edit your profile details and add up to 12 photos by visiting the 'Manage Profile' section of your account.</li><li>The more information you provide about yourself, the more appealing you will appear to members reading your profile which will lead to more success.</li><li>You can also begin by using our search features to locate members you might be interested in.</li><li>If you wish to initiate contact you can upgrade your membership from Guest to 'Full Member' and purchase credits so you can initiate instant messages and/or send custom mail messages.</li><li>To purchase credits and upgrade your account so you can start communicating on a more personal level click the 'Buy Credits' button where you can review all our discrete and convenient methods of payment.</li></ul><p>If you would like more tips and suggestions please visit the <a href='../../blog/category/dating-advice'><b>Dating Advice</b></a> section of <a href='../../blog/category/dating-advice'><b>our blog</b></a>.</p>
						    </td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
										<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="531"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Are there any 'Singles' on Ashley Madison?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>There are many single people on Ashley Madison that wish to meet attached people for various reasons.</p><p>If you are single and wish to meet an attached person, you're probably going to have to try a little harder. Single people don't have as much to risk. We suggest that you remain patient and keep trying.</p><p>People in relationships may feel that you have an upper-hand and that you may not be sympathetic to their circumstances. Take your time to build an additional level of trust with attached people you wish to meet.</p><p>Alternatively, single people have more flexibility with their schedule & are usually more available. Singles are more apt to work within your limitations since they have few boundaries. Single people can also be more fun to be with - their guard is down & they don't care who sees them.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
										<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="567"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How do I know the Ashley Madison website system & membership base are for real?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							 <p>While we can't guarantee the authenticity of any profile on Ashley Madison, we endeavor to ensure that all Members signing up for our service agree to the Terms & Conditions that outline acceptable use of our system.</p><p>In  addition, Ashley Madison undertakes to ensure your confidence in many ways:</p><p>We proactively preview every photograph and all text changes posted to the public section of our website and use our best efforts to edit or modify any information that does not comply with our acceptable operating standards.</p><p>If you use credits to send a mail message to any member that becomes involuntarily suspended, we automatically refund those credits back to your account. That way, you can initiate contact with confidence.</p><p>We have been in operation since late 2001 and launched in January 2002. We openly disclose our Terms & Conditions, Privacy Policy and Disclaimer information at the bottom of EVERY page you view. This information clearly outlines how we collect your information and what we do with it, our code of conduct, etc.</p><p>Ashley Madison has been featured in numerous news segments on national television, radio and news print. (From our Home Page, click on 'Media Center' to view news Articles about Us).</p><p>Ashley Madison constantly re-invests in the long-term viability of our business by spending hundreds of thousands of dollars in main-stream advertising so you know that qualified new members are signing up and that new regions are being developed. (From our Home Page, click on 'Media Center' to view our Print, Radio & Television Advertising).</p><p><a href='contactform.p'><b>We also provide you with our toll-free number to contact our Customer Service</b></a></p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="5127"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Is there a code of conduct or protocol for using this site?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>While we do not monitor private messages, we will not tolerate harassment, racial or ethnic slurs, threats, and insulting messages being sent to our members.</p><p>We also do not allow the solicitation of goods or services on our site, commercial advertisements, 'spamming', or anyone under the age of 18.</p><p>Always be kind, courteous and well mannered.  Treat other members as though you were speaking to them face-to-face and build some rapport before getting too personal and giving out personal contact information.  Please refer to the Terms & Conditions located at the bottom of every page while logged into your Ashley Madison account.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Registration Information</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="610"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Will you send any information to my home or office?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>We respect your privacy, security and anonymity. We will never send you anything as we do not ask for any personal information upon registration.</p><p>Please note that we DO send you system notices to the email address you entered when you Registered. You can opt-out of notifications and emails at any time by editing the settings and preferences from your Mailbox and Manage Profile section.</p><p>Important Note: When sending an email to Customer Service, you  must write from the email address you entered on your Profile when you registered and provide your profile number.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="629"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How long does it take for my new Profile to be approved?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  Profiles are active immediately upon your completion of registration.  Custom content may take up to 24 hours to be approved during peak times, week-ends and holidays.
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="638"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Why must I add a valid Zip/Postal code?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  Adding a correct Zip/Postal code enables our system to match you with other members that are within close geographical proximity to you. For example, you can find members and other members can find you if you live say, within 25 miles of each other.
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="641"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Why must I enter a valid email address?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>We will need to send you system notices from time to time and will send them to the email address you provide us with.</p><p>If you lose your username and password information it is confirmed to your email address when requested by you. For that reason, please ensure that you sign up with an email account that is secure and used only by you.</p><p>If you do not have a secure email account, you may consider using one of the free email services available to most internet users. (E.g. Hotmail).</p><p>You can opt out of system messages at any time. To do so, go to 'Mailbox', then click on 'Settings' to view your mail notification options.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Safe Dating Tips</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="713"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Do you pre-screen Members? Do you perform criminal background checks?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  We do not pre-screen Members and do not endorse any profile on this system. Always be safe and mindful of what you are doing. Having fun should not expose you to unnecessary risks. Be smart. Remember, everyone you initially meet on this system will be a stranger to you.<p>WE DO NOT PERFORM ANY CRIMINAL BACKGROUND CHECKS</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="740"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Are any profiles endorsed by Ashley Madison?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  No, we do not pre-screen members therefore we do not endorse any profile on our system. Anyone who is able to commit identity theft can also falsify a dating profile
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
										<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="799"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>I'm planning on meeting someone. What should I remember?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Meeting someone through The Ashley Madison Website System is inherently similar to meeting through specialized offline venues and as long as the same standards of safety are followed, you can feel at ease while getting to know each other in this new social scene.</p><p>There is no substitute for acting with caution when communicating with a stranger who wants to meet you.</p><p>If you are planning on meeting someone in person, remember the following:</p><p>Never include your last name, email address, home address, phone number, place of work, or any other identifying information in your Internet profile or initial email message. Stop communicating with anyone who pressures you for personal or financial information or attempts in any way to trick you into revealing it. Use the service features offered on our system to help maintain your anonymity.</p><p>If you choose to have a face-to-face meeting with another member, always tell someone in your family or a friend where you are going and when you will return. Never agree to be picked up at your home. Always provide your own transportation to and from your date and meet in a public place with many people around.</p><p>Go at your own pace.</p><p>Plan for a short first date so that if you feel uncomfortable, you have an easy way out.</p><p>Avoid the "Cyrano-syndrome". Emails can be deceiving so don't get carried away in an email fantasy.</p><p>Always be mindful of the personal details you're providing and do not reveal information that may make it easy to locate you in the event you do not wish to see the person again.</p><p>Use your common sense and good judgment. If you get a bad feeling about your date, it may be better to simply cancel.</p><p>Be safe and enjoy the experience of meeting a new person.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
									<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Public Photos, Keys & Private Showcase Photos</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="822"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How do I request access to someone's Private Showcase?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  From the main search results page or from the Member's profile details page, click on the 'purple lock' and then click 'Request Access to Private Showcase.'
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Mail-Messaging</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="334"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How do I view my mail-message history with another member?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  To view your message history with a member you have been in contact with, open the mail message and click the 'Message History' button.  Your last 10 messages will be displayed.
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Profiles</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="948"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How do I create an Ashley Madison Profile?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>To create your own Ashley Madison Profile, (Guest Membership) click 'Register' from the Ashley Madison home page. (www.ashleymadison.com).</p><p>Complete the online Membership form and upload photos the get the best results.</p><p>NOTE: Your email address, password, answer to security question, zip/postal is held in the strictest confidence and is never revealed to any other member.</p><p>After you have completed the Membership form  you will have unlimited access to the free features offered by the Ashley Madison system.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="951"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What are the Profile Guidelines?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Your ad should be positive,interesting and give other members intriguing details about who you are, what you like and what you're looking for. Remember, this is your first impression. If you're vague or crude, you may not get a large response. Try to imagine yourself at a party or a club, and you've just walked up to someone you're interested in - How would you introduce yourself? How would you describe yourself?</p><p>Your preferences can say just about anything. Show off your charm. Here are some things that are not permitted:</p><ul><li>Personal contact information in your profile or opening line. This includes MSN or ICQ numbers, personal email addresses, phone numbers, websites, etc.</li><li>Graphic or foul language (swearing) or inappropriate language in your 'Caption'.</li><li>Anything cryptically imbedded in your information that may violate anything in this section.</li><li>Solicitation of any goods or services.</li><li>Slandering / defamation.</li><li>Illegal activities / Promoting anything illegal.</li><li>Please also review our Terms and Conditions for more details.</li></ul>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="953"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How long does it take for my Profile to be approved and does it ever expire?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Profiles are active immediately after completing the FREE registration process.  Custom written content must be approved by our administrators and is  generally approved within 4 hours however may take up to 24 hours during peak times, week-ends and holidays.</p><p>Your Profile never expires.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="956"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>For what reason(s) will my Profile be removed?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  Upon registration you agree to our Terms and Conditions of Use.  Any member who violates these terms will be suspended.
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Billing & Payments</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="1175"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How will the charges appear on my credit card?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>We offer discreet billing. Please visit the Buy Credits section of your account for details.</p><p>Note: We also offer more anonymous methods of payment. Full details are available in the Buy Credits section of your account.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="1178"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What methods of payment are available to me?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Ashley Madison offers a variety of payment methods in different locations. Please visit the Buy Credits section of your account to see the payment methods that are offered in your area.</p><p>There is no obligation to purchase at any time.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>About Ashley Madison</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
															<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="1487"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Does Ashley Madison encourage infidelity?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>No, Ashley Madison does not encourage anyone to stray. In fact, if you are having difficulty with your relationship, you should seek counseling.</p><p>However, if you still feel that you will seek a person other than your partner to fill your unmet needs, then we truly believe that our service is the best place to start.</p><p>At Ashley Madison, you can communicate with other like-minded adults who may be more sympathetic to your circumstances. You never compromise your safety, privacy or security and will never have to reveal your identity unless you choose to.</p><p>You can go at your own pace and change your mind any time you wish.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
															<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="1488"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How long has Ashley Madison been in business?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Ashley Madison was started in late 2001 and officially launched our website to the public on January 21st, 2002.</p><p>You may register as a Guest member for Free with no obligation to purchase at any time.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>

					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="14120"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Is this the right place for me? Will I find someone?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>The good thing about The Ashley Madison Website System is that it really can work.</p><p>Ashley Madison has thousands of Profiles to choose from and we're always advertising to bring on hundreds of new members every week.</p><p>You may find your perfect match right away or sometime in the near future as new members sign on and wish to contact or be contacted by you.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
                				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Safe-Sex Tips & HIV / AIDS Prevention</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="15105"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>How can I reduce the risk of HIV or other diseases?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Because sexual contact is the major transmission route for HIV infection, eliminating sexual contact eliminates risk of transmission by this route. Abstinence, however, may be neither desirable nor practicable for many people. Nonetheless, it is an important option to consider, as some persons may feel that at least limited periods of abstinence may be the best choice under certain circumstances.</p><p>Sexual contact with many persons increases the probability of coming in contact with an HIV-infected partner. Thus, one risk-reducing strategy to consider is a reduction in the number of sexual partners, but this in no way reduces the risk of infection by sexual contact with even a single partner who is HIV positive. Because risk of HIV infection derives only from exposure to HIV-infected partners, avoiding sexual exposure with partners known or likely to be HIV infected would be an appropriate risk-reduction strategy for many people, but in many cases it is not possible to tell whether or not a given partner is HIV positive. One reasonable approach is to choose a partner who is at low risk of being HIV infected and then practice safer-sex techniques with that partner.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="15106"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Are some sexual practices considered more risky than others?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Evidence shows that some sexual practices are associated with a greater risk of HIV transmission than others. Proper use of barrier methods can reduce the risk of transmission associated with many of these practices. Thus, decision making about safer sex involves choices about specific sexual practices in addition to choices about partner selection.</p><p>These sexual activities carry the highest risk, based on epidemiologic studies of transmitting HIV between partners of unlike or unknown HIV serostatus (High-risk practices):</p><ul><li>Vaginal intercourse without a male or female condom.</li><li>Anal intercourse without a latex condom (highest risk is to the receptive partner)</li><li>Anal penetration with the hand or other rectal trauma without a latex glove, or fisting followed by unprotected anal intercourse.</li></ul>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="15107"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Which methods of sexual activity are considered to be lower risk?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>These sexual activities cannot transmit HIV (No-risk / lowest-risk  practices):</p><ul><li>Self-masturbation</li><li>Touching, massaging, hugging, caressing</li><li>Social (dry) kissing</li><li>Any type of sexual intercourse between partners who are certain that they are uninfected.</li></ul><p>These activities carry a small (based on case reports) or theoretical risk of HIV transmission between partners of unlike or unknown HIV serostatus (extremely low-risk practices):</p><ul><li>French (wet) kissing.</li><li>Mutual masturbation (if no cuts on hands, and no ulcers or lesions on genitals of either partner)</li><li>Vaginal sex with a male or female condom (with proper use, including putting latex or polyurethane condom in place before any penetration)</li><li>Fellatio with condom (with latex condom placed on penis before oral contact)</li><li>Cunnilingus with dental dam (with latex dam placed over vaginal area before oral contact)</li><li>Anilingus (rimming) with dental dam (with latex dam placed over anus before oral contact)</li><li>Contact with urine (only with intact skin, avoiding contact with mouth)</li><li>Using one's own sex toys (without sharing of any toys that contact body fluids)</li><ul><p>Epidemiologic studies have found these sexual activities to have a low probability of HIV transmission between partners of unlike or unknown HIV serostatus (low-risk practices):</p><ul><li>Fellatio without condom (Risk of HIV infection to insertive partner is extremely low, risk to receptive partner is increased if ejaculation occurs in mouth.)</li><li>Cunnilingus without a latex dam.</li><li>Anilingus without a latex dam.</li><li>Anal intercourse with condom (with proper use of condom, including placing latex condom on penis prior to any penetration, and using ample amounts of water-based or nonpetroleum-based lubrication with latex condoms)</li><li>Anal or vaginal penetration with the hand with latex gloves.</li></ul>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
                				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Advanced Searches</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="16113"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>What is the Advanced Search Feature?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>Ashley Madison's Advanced Search feature allows members to refine their search so that they can find exactly who they are looking for.</p><p>To use the Advanced Search Feature, click on the 'Advanced Search' button located on the main console.</p><p>Keep in mind that the more criteria you select the smaller your results may end up being.</p>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
				<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
					<tr>
						<td width="100%" valign="middle" class="faqtopicheading"><a class="faqtopicheading"><h3>Trouble Shooting</h3></a></td>
						<td valign="middle"></td>
					</tr>
				</table>
					<table class="faq" border="0" cellpadding="5" cellspacing="0" width="580">
						<tr>
							<td width="30" valign="middle" class="questionAnswer block" valign="top"><a name="4142"><h3>Q:</h3></a></td>
							<td width="100%" colspan="2" valign="middle"><font size="2"><b>Why am I timing out?</b></font></td>
						  <td width="15" valign="middle" class='backtop'><a href="faq.p#faqtop">Top</a></td>
						</tr>
						<tr>
							<td width="15" valign="top"><h3 style="margin: 0;">A:</h3></td>
							<td width="100%" colspan="2" valign="top">
							  <p>If you are timing out while logged into your profile, please check the following:</p><ul><li>Try clearing your temporary internet files before logging into your account.</li><li>If you continue to experience problems after clearing your temporary internet files. Please contact Customer Service.</li></ul>
							</td>
							<td width="15" valign="middle">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3"><img src="https://static-cdn.ashleymadison.com/site/images/spacer.gif" width="10" height="5"></td>
						</tr>
					</table>
	</div>
</div>



  </div>
  

  
  <div id="footer" class="text-center relative">
    
<p id="footer-nav">
        <a href="../../index.html?reg=1&amp;c=2" class="footerRegLink" title="Register on Ashley Madison">Register on Ashley Madison</a>
        <a href="http://affiliate.ashleymadison.com" title="Affiliate Program">Affiliate Program</a>
        <a href="media/index.p" title="Press">Press</a>
    <a href="faq.p" title="FAQ">FAQ</a>
        <a href="guarantee/detailsform.p" title="Guaranteed Affairs">Guarantee</a>
        <a id="bloglink" href="https://ashleymadison.com/blog/" title="Ashley Madison Blog">Blog</a>
        <a href="http://news.ashleymadison.com/" title="Ashley Madison Infidelity News">Infidelity News</a>
            <a href="http://affair.ashleymadison.com/" title="Articles">Articles</a>
        <a href="tandc.p?c=2" rel="nofollow" class="legal-link" title="Terms &amp; Conditions">Terms</a>
    <a href="privacy.p" rel="nofollow" title="Privacy">Privacy</a>
        <a href="contact.p" rel="nofollow" title="Contact Us">Contact Us</a>
    
    </p>

<p id="social-nav">
  
  <span class="inline">Follow Ashley Madison on:</span>
  
   <a href="https://twitter.com/ashleymadison">Twitter</a>  
  <a href="https://www.facebook.com/AshleyMadison">Facebook</a>
  <a href="https://www.youtube.com/ashleymadison">Youtube</a>

  </p>



    <div id="location" class="inline box-hpad-sm">
      Location: <a href="faq.p#" id="locationChange">Canada <span class="arrow-down arrow-down-dark inline"></span></a>
    </div>

    <div id="language" class="inline box-hpad-sm">Language:
      <a href="faq.p#" id="languageChange">English <span class="arrow-down arrow-down-dark inline"></span></a>
    </div>

    <div id="locationLanguage" class="relative">
      <div id="countryList" class="selectNew location box-pad-lg text-left is-hidden"></div>
      <div id="languageList" class="selectNew language box-pad-lg text-left is-hidden"></div>
    </div>

        <p>
      
              The most recognized name in infidelity. As seen on Dr. Phil, Tyra, CNN, The View, Ellen, Larry King, Good Morning America.<br />We are the most recognized and reputable extramarital affair company. Our married dating services work. We are the most successful website for finding cheating partners.
          </p>
    
    <p>
                                    <span class="memberFooterCopyright force-ltr"> &copy; 2001 - 2015 Avid Dating Life Inc.</span>
          <span class="memberFooterCopyright">  </span>
                    
      <br><br>
      <em>All Members are 18 or Over</em>
    </p>
      </div>
  

</div>

  
  
  <script>
    indexURL = (jQuery.cookie('indexURL') != null) ? jQuery.cookie('indexURL') : '';
    newHref = '/' + indexURL + jQuery('.footerRegLink').attr('href').substr(1);
    jQuery('.footerRegLink').attr('href', newHref);
    newHref = '/' + indexURL + jQuery('#logo a').attr('href').substr(1);
    jQuery('#logo a').attr('href', newHref);
  </script>

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"e258bdbf0f","applicationID":"2364665","transactionName":"M1wBNhdWDENTVxdbCwoWIBcWQw1dHVUTQksUTAEODFRNVlNF","queueTime":0,"applicationTime":45,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-686.min.js"}</script></body>
</html>
