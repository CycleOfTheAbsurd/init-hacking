<!DOCTYPE html>
<html  class="linux">

<head>
  <script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"Vw4OVV9bGwEDUlVUAQQ="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),f=c.length,u=i(a,o,r),d=0;f>d;d++)c[d].apply(u,n);return u}function a(t,e){f[t]=s(t).concat(e)}function s(t){return f[t]||[]}function c(){return n(e)}var f={};return{on:a,emit:e,create:c,listeners:s,_events:f}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t){try{i.console&&console.log(t)}catch(e){}}var n,r=t("ee"),o=t(1),i={};try{n=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(i.console=!0,-1!==n.indexOf("dev")&&(i.dev=!0),-1!==n.indexOf("nr_dev")&&(i.nrDev=!0))}catch(a){}i.nrDev&&r.on("internal-error",function(t){e(t.stack)}),i.dev&&r.on("fn-err",function(t,n,r){e(r.stack)}),i.dev&&(e("NR AGENT IN DEVELOPMENT MODE"),e("flags: "+o(i,function(t){return t}).join(", ")))},{1:23,ee:"QJf3ax"}],4:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(f){try{r("ierr",[f,(new Date).getTime(),!0])}catch(u){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,t(5),window.onerror=e;try{throw new Error}catch(f){"stack"in f&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&t(4),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:10,2:9,3:7,4:11,5:3,6:24,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],5:[function(t){t("loader").features.ins=!0},{loader:"G9z0Bl"}],6:[function(t){function e(){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var n=t("ee"),r=t("handle"),o=t(1),i=t(2);t("loader").features.stn=!0,t(3),n.on("fn-start",function(t){var e=t[0];e instanceof Event&&(this.bstStart=Date.now())}),n.on("fn-end",function(t,e){var n=t[0];n instanceof Event&&r("bst",[n,e,this.bstStart,Date.now()])}),o.on("fn-start",function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),o.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),this.bstType])}),i.on("fn-start",function(){this.bstStart=Date.now()}),i.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),n.on("pushState-start",function(){this.time=Date.now(),this.startPath=location.pathname+location.hash}),n.on("pushState-end",function(){r("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),"addEventListener"in window.performance&&(window.performance.addEventListener("webkitresourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.webkitClearResourceTimings()},!1),window.performance.addEventListener("resourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.clearResourceTimings()},!1)),document.addEventListener("scroll",e,!1),document.addEventListener("keypress",e,!1),document.addEventListener("click",e,!1)}},{1:10,2:9,3:8,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],7:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=t("ee").create(),i=t(1)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=t[1]=a(e,"nr@wrapped",function(){return i(e,"fn-",null,e.name||"anonymous")}):"function"==typeof e.handleEvent&&i.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:25,ee:"QJf3ax",gos:"7eSDFh"}],8:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window.history,["pushState"],"-")},{1:25,ee:"QJf3ax"}],9:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:25,ee:"QJf3ax"}],10:[function(t,e){function n(t,e,n){t[0]=o(t[0],"fn-",null,n)}var r=t("ee").create(),o=t(1)(r);e.exports=r,o.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",n)},{1:25,ee:"QJf3ax"}],11:[function(t,e){function n(){f.inPlace(this,p,"fn-")}function r(t,e){f.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}function i(t,e){for(var n in t)e[n]=t[n];return e}var a=t("ee").create(),s=t(1),c=t(2),f=c(a),u=c(s),d=window.XMLHttpRequest,p=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=a,window.XMLHttpRequest=function(t){var e=new d(t);try{a.emit("new-xhr",[],e),u.inPlace(e,["addEventListener","removeEventListener"],"-",o),e.addEventListener("readystatechange",n,!1)}catch(r){try{a.emit("internal-error",[r])}catch(i){}}return e},i(d,XMLHttpRequest),XMLHttpRequest.prototype=d.prototype,f.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),a.on("send-xhr-start",r),a.on("open-xhr-start",r)},{1:7,2:25,ee:"QJf3ax"}],12:[function(t){function e(t){var e=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!e.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var a=t.responseType,f="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,u=n(f);if(u&&(r.rxSize=u),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(e.cat=d.split(", ").pop())}}else e.status=0;r.cbTime=this.cbTime,o("xhr",[e,r,this.startTime])}}}function n(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,f=t(1);t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,e){var r=this.metrics,o=t[0],i=this;if(r&&o){var f=n(o);f&&(r.txSize=f)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{a.emit("internal-error",[n])}catch(r){}}};for(var u=0;c>u;u++)e.addEventListener(s[u],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:13,3:11,4:7,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],13:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],14:[function(t,e){function n(t){return function(){r(t,[(new Date).getTime()].concat(i(arguments)))}}var r=t("handle"),o=t(1),i=t(2);"undefined"==typeof window.newrelic&&(newrelic=window.NREUM);var a=["setPageViewName","addPageAction","setCustomAttribute","finished","addToTrace","inlineHit","noticeError"];o(a,function(t,e){window.NREUM[e]=n("api-"+e)}),e.exports=window.NREUM},{1:23,2:24,handle:"D5DuLP"}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):void(r.q&&(r.q[t]||(r.q[t]=[]),r.q[t].push(e)))}var r=t("ee").create();e.exports=n,n.ee=r,r.q={}},{ee:"QJf3ax"}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info,e=f.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(d,function(e,n){e in t||(t[e]=n)});var n="https"===u.split(":")[0]||t.sslForHttp;p.proto=n?"https://":"http://",a("mark",["onload",i()]);var r=f.createElement("script");r.src=p.proto+t.agent,e.parentNode.insertBefore(r,e)}}function r(){"complete"===f.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=t(1),c=window,f=c.document;t(2);var u=(""+location).split("?")[0],d={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-686.min.js"},p=e.exports={offset:i(),origin:u,features:{}};f.addEventListener?(f.addEventListener("DOMContentLoaded",o,!1),c.addEventListener("load",n,!1)):(f.attachEvent("onreadystatechange",r),c.attachEvent("onload",n)),a("mark",["firstbyte",i()])},{1:23,2:14,handle:"D5DuLP"}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],23:[function(t,e){function n(t,e){var n=[],o="",i=0;for(o in t)r.call(t,o)&&(n[i]=e(o,t[o]),i+=1);return n}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],24:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],25:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@wrapper",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,f;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){u([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return f=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,f],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=!0,f(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,f?s+o:o,i,s))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){u([o,e,n,r])}}function f(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){u([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function u(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:24,ee:"QJf3ax"}]},{},["G9z0Bl",4,12,6,5]);</script>
  <meta charset="utf-8">
  <meta name="verify-v1" content="ZwWAp70PgmKCLts2y4qNiJL9qXshM3jR7EmorduE3H0=">
  <meta name="verify-v1" content="QzLYf7htJLR4QxdPphORVw8ltI+uLCeauRiD/1RIqdc=">

  

        <title>Ashley Madison&reg; | Terms & Conditions | Life is Short. Have an Affair.&reg;</title>















<meta name="description" content="Ashley Madison Terms & Conditions. Ashley Madison is the leading website for married people looking to have an affair and discreet encounters.">
<meta name="keywords" content="Ashley Madison, AshleyMadison, Ashley Madison terms, AshleyMadison terms, married dating, affairs, married women, cheating, dating, extramarital affairs, secret encounters, cheating wives, adult encounters, unfaithful, escorts">




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
  
<div class="font-sm neighbour-bottom box-pad" itemscope itemtype="https://schema.org/WebPage">
<a href="../../index.html" title="Ashley Madison" itemprop="breadcrumb"> >Home</a> > <span itemprop="breadcrumb" class='bold'>Terms and Conditions</span>
</div>

<div class="box-pad default-content">
	
	
  <h1 class="title">
	Ashley Madison</h1>
<p>
	Avid Dating Life Inc. (&quot;we,&quot; &quot;us&quot; or &quot;Ashley Madison&quot;) owns and operates AshleyMadison.com (including Ashley Madison Mobile) (collectively, our or this &quot;Site&quot;), on which we provide an interactive way for like minded users to communicate, explore their fantasies, entertain themselves and to determine whether they wish to meet each other, chat with each other and/or explore extra-marital relationships (our Site and such services, collectively, our or this &quot;Service&quot;). AFFAIRS CANNOT AND DO NOT TAKE PLACE ON THIS SITE. ASHLEY MADISON IS SIMPLY A SOCIAL NETWORK FOR LIKE-MINDED ADULTS TO INTERACT.&nbsp; WE DO NOT ENDORSE OR ENCOURAGE ANY UNLAWFUL BEHAVIOUR IN ANY JURISDICTION IN WHICH THIS SOCIAL NETWORK IS MADE AVAILABLE. THE TERMS AND CONDITIONS SET FORTH BELOW FORM AN AGREEMENT (THE &quot;TERMS&quot;) THAT GOVERNS YOUR USE OF THE SERVICE. BY USING OR ACCESSING THE SERVICE, YOU (&quot;YOU&quot; AND &quot;YOUR&quot;) AGREE TO BE BOUND BY (1) THE TERMS AND (2) ASHLEY MADISON&#39;S PRIVACY POLICY, AVAILABLE AT [<a href="privacy.p" target="_blank">https://www.ashleymadison.com/app/public/privacy.p</a>] <a href="privacy.p" target="_blank">(&quot;PRIVACY POLICY&quot;)</a>. PLEASE READ THESE TERMS CAREFULLY BEFORE USING THIS SITE INCLUDING THE SECTIONS RELATING TO TERMINATION, ARBITRATION AND CLASS ACTION WAIVER. IF YOU DO NOT AGREE WITH THE TERMS OR PRIVACY POLICY, DO NOT ACCESS OR OTHERWISE USE THE SITE OR ANY INFORMATION CONTAINED HEREIN. WE RESERVE THE RIGHT, AT OUR DISCRETION, TO MODIFY THESE TERMS AT ANY TIME. ANY UPDATED VERSION SUPERSEDES AND REPLACES ANY PRIOR VERSIONS UPON POSTING AND THE PRIOR VERSION IS OF NO FURTHER FORCE AND EFFECT UNLESS WE SPECIFICALLY STATE OTHERWISE.&nbsp; WE WILL INDICATE THE LAST UPDATE DATE AT THE END OF THESE TERMS.&nbsp; YOU AGREE TO NOTE THAT LAST UPDATE DATE OF THE REVISION YOU READ AND AGREE TO PERIODICALLY CHECK THESE TERMS FOR CHANGES. IF THE LAST UPDATE DATE HAS BEEN CHANGED, THEN YOU WILL KNOW WE HAVE MADE CHANGES TO THESE TERMS AND THAT YOU MUST REVIEW THE TERMS TO DETERMINE HOW YOUR RIGHTS AND RESPONSIBILITIES UNDER THE TERMS HAVE CHANGED. YOUR CONTINUED USE OF THIS SITE FOLLOWING THE POSTING OF CHANGES TO THESE TERMS WILL MEAN YOU ACCEPT THOSE CHANGES.&nbsp; &nbsp;&nbsp;YOU ALSO WILL BE REQUIRED TO AFFIRMATIVELY AGREE TO THE TERMS AND ANY MATERIAL MODIFICATIONS TO THE TERMS.</p>
<p>
	YOU CANNOT USE THIS SITE OR OUR SERVICE IF YOU ARE NOT AT LEAST 18 YEARS OF AGE AND THE AGE OF MAJORITY AND LEGAL CONSENT IN THE JURISDICTION IN WHICH YOU LIVE OR RESIDE AND HAVE THE LEGAL CAPACITY TO ENTER INTO THESE TERMS.&nbsp; YOU ALSO MAY NOT USE THIS SITE OR OUR SERVICE IF YOU HAVE EVER BEEN CONVICTED OF A SEXUAL OFFENSE, ARE REQUIRED TO REGISTER AS A SEX OFFENDER WITH ANY GOVERNMENTAL ENTITY OR AGENCY OR ARE CURRENTLY UNDER INDICTMENT FOR SUCH AN OFFENSE OF A SEXUAL NATURE.</p>
<p>
	This legal agreement is made between you and us. By accessing the Service, you accept these Terms and agree to be bound by the terms, conditions and notices contained or referenced herein whether or not you become a paid subscriber. IF YOU DO NOT AGREE WITH THESE TERMS, DO NOT USE OR ACCESS THE SITE OR THE SERVICE.</p>
<p>
	Information and services that are provided on this Site and Service in a language other than English are only provided as a convenience to you when available. All Services to be provided, all obligations of Ashley Madison and all communication between the parties with respect to this Agreement will be done in the English language. Web pages which are translated from English to other languages may contain errors / omissions. If for any reason the translated text is incorrect, or misleading, the English text shall be deemed as the official version.</p>
<ol>
	<li>
		<strong>USER CONDUCT</strong></li>
</ol>
<p>
	In your use of our Service, you agree to act responsibly in a manner demonstrating the exercise of good judgment. For example and without limitation, you agree not to:</p>
<ol style="list-style-type:lower-alpha;">
	<li>
		violate any applicable law or regulation,</li>
	<li>
		infringe the rights of any third party, including, without limitation, intellectual property, privacy, publicity or contractual rights,</li>
	<li>
		use the information available through our Service for any unauthorized or unlawful purpose,</li>
	<li>
		interfere with or damage our Service, including, without limitation, through the use of viruses, cancel bots, trojan horses, harmful code, flood pings, denial of service attacks, packet or IP spoofing, forged routing or electronic mail address information or similar methods or technology, including methods that in any way reproduces or circumvents the navigational structure or presentation of the Service or its contents,</li>
	<li>
		use our Service to transmit, distribute, post or submit any information concerning any other person or entity, including, without limitation, photographs of others, personal contact information or credit, debit, calling card or account numbers,</li>
	<li>
		use our Service to obtain the personal contact information of another user without their prior consent;</li>
	<li>
		use our Service in connection with the distribution of unsolicited commercial email (&quot;Spam&quot;) or advertisements,</li>
	<li>
		&quot;stalk&quot; or harass any other user of our Service,</li>
	<li>
		use the Service if you have ever been convicted of a sexual offense or currently have such charges pending against you;</li>
	<li>
		use the Service for any illegal purposes, including, without limitation, prostitution and/or solicitation;</li>
	<li>
		collect or store any information about any other user other than in the course of the permitted use of our Service,</li>
	<li>
		use our Service for any commercial purpose whatsoever, including, without limitation, advertising or marketing any services or products,</li>
	<li>
		impersonate any person or entity,</li>
	<li>
		remove any copyright, trademark or other proprietary right notices contained in the Service,</li>
	<li>
		infringe on the intellectual property rights of the Service or any third parties in any manner,</li>
	<li>
		modify, adapt, sublicense, translate, sell, reverse engineer, decipher, decompile or otherwise disassemble any portion of the Service or our Site or any software used on or for the Service,</li>
	<li>
		post, upload or transmit false, misleading or illegal information or content to the Service,</li>
	<li>
		make false statements, attempt or use personal, financial or other information that you are not authorized to use,</li>
	<li>
		upload, post, email, transmit or otherwise make available any content that you are not legally permitted to make available to the Service under any law or any contractual or fiduciary relationship (including, without limitation, inside information and information subject to obligations of confidentiality),</li>
	<li>
		disrupt the flow of dialogue, cause a screen to &ldquo;scroll&rdquo; faster than other users or members of the Service are able to read to type, or otherwise engage in behavior that negatively affects the ability of other users or members to engage in communications or other interactions on our Service,</li>
	<li>
		collect or store personal data about other users or members without their consent, or upload, post, email or transmit any other user&rsquo;s or member&rsquo;s private information or data,</li>
	<li>
		provide hyperlinks, URL links, graphic links or other direct connection to our Site or the Service for profit or gain, or</li>
	<li>
		assist any third party in doing any of the foregoing.</li>
</ol>
<ol>
	<li value="2">
		<strong>YOUR INTERACTIONS WITH OTHER USERS OF THE SERVICE</strong></li>
</ol>
<ol style="list-style-type:upper-alpha;">
	<li>
		<strong>Your Responsibilities</strong></li>
</ol>
<p>
	You are solely responsible for your interactions with other users of our Service, including the content of the materials you post on the Service and in your messages to other users of the Service. You agree to take reasonable precautions in all interactions with other users of the Service, particularly if you decide to meet offline or in person. In addition, YOU AGREE TO REVIEW ASHLEY MADISON&#39;S DATING SAFETY TIPS [<a href="faq.p?#713" target="_blank">https://www.ashleymadison.com/app/public/faq.p?#713</a>] PRIOR TO USING THE SERVICE. You should not provide your personal or financial information (for example, your credit card or bank account information) to other users of our Site. That information may be misused. There is no substitute for acting with caution when communicating with any stranger that would like to meet you.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="2">
		<strong>Our Limitations</strong></li>
</ol>
<p>
	You agree that we will not be responsible for any damage or harm resulting from your use of the Service or your interactions with other users of our Service. While we do make concerted efforts to screen users, you understand and acknowledge that we do not pre-approve any of our users or members nor do we in any way inquire into the backgrounds of the users of the Service or attempt to verify their statements. We make no representations or warranties as to the conduct of our users or their compatibility with any current or future users. <u>WE DO NOT PERFORM CRIMINAL OR ANY OTHER FORM OF BACKGROUND CHECKS ON OUR USERS OR MEMBERS.</u> &nbsp;It is your responsibility to investigate the background, financial status, criminal background, character and all other aspects that might affect whether or not you want to interact with a user or member on our Service. &nbsp;We reserve the right, but have no obligation, to monitor all interactions between you and other users of our Service and to take any action in good faith to restrict access to or the availability of any material that we or another user of our Service may consider to be illegal, obscene, lewd, lascivious, filthy, excessively violent, harassing or otherwise objectionable. Email and chat messages sent between you and other users of the Service that are not readily accessible to the general public may be reviewed by us for compliance with these Terms, but will be treated by us as private to the extent required by applicable law. In no event shall we be liable for any damages whatsoever, whether direct, indirect, general, special, compensatory, consequential, punitive, and/or incidental, arising out of or relating to the conduct of you or anyone else in connection with the use of the Service, including without limitation, bodily injury, emotional distress, and/or any other damages resulting from communications or meetings with other users of the Service or persons you meet through the Service. We are not responsible for, and cannot control, the use by others of any information which you provide to them and you should use caution in selecting the personal information you provide to others through the Service. We cannot and do not assume any responsibility for the content of messages sent by other users of the Service. You agree that we are not responsible for the accuracy of information communicated to you on the Service. You release us from any and all liability in connection with the Service and the contents of any communications you may receive from other users. We reserve the right to investigate and take appropriate legal action in our sole discretion against anyone who violates these Terms, including without limitation, removing the offending communication from the Service, terminating the violator&#39;s access to the Site and contacting and disclosing information to the relevant authorities and pursuant to legal process; however, you agree that we are under no obligation to do so.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="3">
		<strong>User Disputes</strong></li>
</ol>
<p>
	YOU ARE SOLELY RESPONSIBLE FOR YOUR INTERACTIONS WITH OTHER USERS OF OUR SITE AND OUR SERVICE. We reserve the right, but have no obligation, to monitor disputes between you and other users.&nbsp; You agree to release us, our parents, subsidiaries and affiliated entities and ours and their shareholders, officers, directors, employees and agents, successors and assigns from all claims, demands, damages, losses, liabilities of every kind, know and unknown, direct and contingent, disclosed and undisclosed, arising out of or in any way related to such disputes.&nbsp; If you are a California resident, you waive California Civil Code Section 1542, which says: &ldquo;A general release does not extend to claims which the creditor does not know or suspect to exist in his favor at the time of executing the release, which, if known by him must have materially affected his settlement with the debtor.&rdquo;</p>
<ol>
	<li value="3">
		<strong>MINORS</strong></li>
</ol>
<p>
	Our Service is intended for persons 18 years or older and who have otherwise attained the age of majority and legal consent in the jurisdiction of their residence ONLY. We will not knowingly permit anyone who does not meet these criteria to use our Service. By using our Site and/or using the Service, you represent and warrant that you are at least 18 years old and otherwise have the right, authority and capacity to accept these Terms and abide by all of the terms and conditions set forth herein. &nbsp;You also represent and warrant that you will not allow any minor access to this Site or our Service, including taking all precautions and implementing all parental control protections on your computer or other electronic device used to access this Site and our Service to prevent any minor from gaining access to this Site and our Service. Further, you hereby commit to inform us immediately should you become aware of a minor using the Service.</p>
<p>
	You agree that we shall not be responsible or liable for any misrepresentations regarding a user&rsquo;s or member&rsquo;s age or for the unauthorized use of this Site or our Service by a minor.</p>
<p>
	WE DO NOT TOLERATE ANY UPLOADING OF PICTURES OR OTHER DEPICTIONS OF ANYONE UNDER THE AGE OF 18.</p>
<ol>
	<li value="4">
		<strong>THE ASHLEY MADISON SERVICE &ndash; REGISTRATION AND TERMINATION</strong></li>
</ol>
<ol style="list-style-type:upper-alpha;">
	<li>
		<strong>Categories of Services</strong></li>
</ol>
<p>
	Users of the Service may become &quot;Guests&quot; or &quot;Full Members&quot; of the Service. Guests are allowed access to a minimal level of the Service&#39;s features and are not charged by us for the use of the features they can access. Full Members are provided with access to additional features of the Service that are not available to Guests. Full Members are not charged by us for the features that are free to Guests; however, some features available to Guests may not be accessible when a Full Member has run out of credits. Certain additional features of the Service made available to Full Members are also free of charge. Certain other features of the Service are &quot;paid features&quot;, for which a Full Member is charged.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="2">
		<strong>Registering to Use our Service, Fees and Payments</strong></li>
</ol>
<p>
	Guests of the Service are required to set up an &quot;Profile&quot; in order to access the Service. To activate certain additional features of the Service, Guests may choose one of our membership packages to purchase a &nbsp;membership and upgrade to Full Membership status. A member may pay via credit card, cash, check or any other method we may accept as payment of account, in accordance with our pricing policy for Full Memberships as posted on our website under the &quot;Buy Credits&quot; section. An explanation of our fee structure is available under the &ldquo;credits&rdquo; section of our Site.&nbsp; All funds are quoted in the currency in which they are displayed or, where no currency is displayed, all amounts are in United States dollars. In addition to paying the published price, you are responsible for paying all applicable taxes or client transaction fees in connection with your purchase. We reserve the right to change our pricing policy or the method or manner in which we charge for our Service at any time at our sole discretion without further notice. Once we have confirmed receipt of your payment, you will become a member and we will credit your account with the number of credits purchased. If we receive payment for an incorrect amount or non-specified currency payments, we reserve the right to credit your account with a pro-rated number of credits based on the funds received, converted to the specified currency at a reasonable market exchange rate at the time of processing.&nbsp; Accounts may not be transferred from one client of the Service to another client.</p>
<p>
	You understand and agree that it is a condition of your use of this Site and the Service and of your membership that all of the information you provide to us when you are signing up and providing your Profile is correct, current, accurate and complete.&nbsp; If you provide any misleading or false information to us, your right to use this Site is invalid and your membership is void.&nbsp; &nbsp;</p>
<ol style="list-style-type:upper-alpha;">
	<li value="3">
		<strong>Cancellation of Your Account for Non-Usage </strong></li>
</ol>
<p>
	If you have not logged into your account within the previous 90 days, we reserve the right to cancel your remaining credits.&nbsp; You agree that the time &nbsp;will lapse automatically on your account and will be automatically deducted from your account as follows.&nbsp; We reserve the right to cancel without refund any unused credits on or after 90 days from the date of purchase. You can confirm the expiry date of your account and any account balance at any time by clicking on &quot;Manage Profile&quot; or by using the Contact Form and providing us with your Ad Profile Number and account details. A Full Member whose account has lapsed or who has no remaining credits may not be able to access certain features until credits for additional time is purchased.&nbsp;</p>
<ol style="list-style-type:upper-alpha;">
	<li value="4">
		<strong>Automatic Renewals and Cancellation</strong></li>
</ol>
<p>
	We use an automatic re-bill &ldquo;top up&rdquo; feature to keep your account active.&nbsp; In the event that any action you take or features you use on the Service that require the expenditure of credits results in you having a &quot;zero balance&quot; or a negative balance of credits, WE WILL AUTOMATICALLY PURCHASE (WITHOUT FURTHER AUTHORIZATION FROM YOU ONCE YOU OPT IN) FOR YOU THE SAME MEMBERSHIP PACKAGE THAT YOU HAD PURCHASED PREVIOUSLY (OR, IF SUCH MEMBERSHIP PACKAGE IS NO LONGER AVAILABLE TO YOU, THE MEMBERSHIP PACKAGE THAT IS MOST CLOSELY PRICED TO THE MEMBERSHIP PACKAGE YOU MOST RECENTLY PURCHASED)&nbsp; USING THE SAME PAYMENT METHOD YOU PREVIOUSLY USED.&nbsp; YOU AGREE TO THIS AUTOMATICALLY RECURRING TOP UP PAYMENT FEATURE OF OUR SERVICE.&nbsp; TO TERMINATE YOUR AUTHORIZATION FOR US TO AUTOMATICALLY REPURCHASE A MEMBERSHIP PACKAGE FOR YOU OR TO CHANGE YOUR PAYMENT METHOD, GO TO  <a href="loginaction.p?redir=credithistory">https://www.ashleymadison.com/app/public/loginaction.p?redir=credithistory</a> . You agree to pay or have paid all fees and charges incurred in connection with the Service (including any applicable taxes) at the rates in effect when the charges were incurred.</p>
<p>
	Your paid membership will include complimentary 30 day unlimited access to read and respond to unsolicited member initiated communications and/or communications you have initiated through your purchases of credits.&nbsp; After the period lapses, your complimentary access expires. &nbsp;AT THE END OF THE 30 DAY PROMOTIONAL PERIOD, AS INDICATED ON YOUR PURCHASE IF THE PAYMENT METHOD YOU HAVE SELECTED PERMITS, WE WILL AUTOMATICALLY PURCHASE FOR YOU AN ADDITIONAL 30 DAYS OF UNLIMITED ACCESS TO UNSOLICITED MEMBER INITIATED COMMUNICATIONS AND ALLOW YOU TO CONTINUE ONGOING COMMUNICATIONS WITH THOSE MEMBERS YOU HAVE ALREADY COMMUNICATED WITH. &nbsp;YOU MAY OPT OUT OF THIS FEATURE IN YOUR MEMBER PROFILE&#39;S &ldquo;CREDIT HISTORY&rdquo;. &nbsp;</p>
<p>
	We may change the fees and charges in effect for using the Service, or add new fees or charges, by posting new fees and changes on the Site from time to time. You are also responsible for any fees or charges incurred to access the Service through an Internet access provider or other third party service, including, but not limited to telephone charges.</p>
<p>
	THE PURCHASE OF INITIAL AND RECURRING CREDITS IS NON-REFUNDABLE.</p>
<p>
	Once successfully posted, we may monitor your account for usage and compliance with the Terms. We reserve the right to terminate your membership for breach of these Terms or otherwise in our discretion.&nbsp; If your usage of the Service is terminated because of a breach of these Terms or if it is terminated for any reason, any unused credit balance you may have is immediately forfeited. No fees or charges are refundable under any circumstance.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="5">
		<strong>Refund Policy</strong></li>
</ol>
<p>
	You agree that your all purchases are non-refundable.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="6">
		<strong>Termination</strong></li>
</ol>
<p>
	You acknowledge and agree that we, in our sole discretion, may terminate your access to our Service for any reason, including, without limitation, your breach of these Terms. You understand and agree that we are not required, and may be prohibited, from disclosing to you the reason for termination of your access to our Service.&nbsp; You acknowledge and agree that any termination of your access to our Service may be effected without prior notice, and acknowledge and agree that we may immediately deactivate or delete any of your accounts and all related information and files in such accounts and/or bar any further access to such files or our Service. Further, you acknowledge and agree that we will not be liable to you or any third party for any costs or damages of any kind for or resulting from any termination of your access to our Service. You will be entitled to a refund of unused credit or subscription fees paid upon termination of your access to our Service by us for any reason.&nbsp;&nbsp;&nbsp;</p>
<p>
	You may terminate your access to the Service at any time via our Site or by sending us written or email notice of termination. &nbsp;<strong>You will not be entitled to any refund of unused credits or subscription fees upon your termination of your access to our Service for any reason whatsoever.</strong></p>
<ol style="list-style-type:upper-alpha;">
	<li value="7">
		<strong>Complete Profile Removal</strong></li>
</ol>
<p>
	You may also select the &quot;Complete Profile Removal&quot; option, which is offered separately of basic termination. This feature will remove any existence of the account on the Service, including all messages sent and received (regular, collect, priority), Winks, Gifts, all photos you have uploaded, any Site usage history and other personally identifiable information. By using the Service, you hereby acknowledge that Members&#39; communications may no longer be accessible should that Member have selected the Complete Profile Removal.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="8">
		<strong>Credit Card Chargeback Policy</strong></li>
</ol>
<p>
	<strong>We protect our business and credit card processors, banks and other institutions providing related services to us from fraudulent credit card chargebacks.&nbsp; A credit card chargeback is when the holder of a credit card disputes a charge with a credit card processor, bank or other institution and the charge is charged back to the business.&nbsp;&nbsp; The chargeback is fraudulent if the credit card holder disputes a charge to a legitimate charge for services the holder has purchased.&nbsp; You understand and agree that in the event you attempt to create a fraudulent credit card chargeback, we will work with the relevant credit card processor, bank or other institution and law enforcement authorities to investigate the matter.&nbsp; Our assistance may include providing details about the profiles, card authentication and communications with or related to our Service or other users or members.&nbsp; Engaging in activities aimed at reversing a legitimate charge is illegal.&nbsp; You understand and acknowledge that you can be prosecuted for such activity and we reserve the right to reclaim any fees and costs we incur in responding to fraudulently filed chargebacks.</strong></p>
<ol style="list-style-type:upper-roman;">
	<li>
		<strong>Privacy &amp; Use of Information</strong></li>
</ol>
<p>
	Use of the Service is also governed by our Privacy Policy. You agree that by registering a Profile or using our Service you have agreed to our Privacy Statement. You acknowledge that although we strive to maintain the necessary safeguards to protect your personal data, we cannot ensure the security or privacy of information you provide through the Internet and your email messages.&nbsp; Our privacy policy is incorporated into the Terms by this reference.&nbsp; You agree to release us, our parent, subsidiaries and affiliated entities and ours and their shareholders, officers, directors, employees and agents, successors and assigns from all claims, demands, damages, losses, liabilities of every kind, know and unknown, direct and contingent, disclosed and undisclosed, arising out of or in any way related to the release or use of such information by third parties.&nbsp; If you are a California resident, you waive California Civil Code Section 1542, which says: &ldquo;A general release does not extend to claims which the creditor does not know or suspect to exist in his favor at the time of executing the release, which, if known by him must have materially affected his settlement with the debtor.&rdquo;</p>
<ol style="list-style-type:upper-alpha;">
	<li value="10">
		<strong>Customer Service</strong></li>
</ol>
<p>
	Our customer service representatives are available to answer questions you may have about your Service and to enhance your experience using our Service and its features. You may not be abusive, obscene, profane, offensive, sexist, threatening, harassing, racially offensive, or otherwise behave inappropriately when communicating with our customer service representatives. If we determine, in our sole discretion, that your behavior towards any of our representatives is at any time inappropriate, we reserve the right to immediately terminate your access to our Site and your membership to our Service and you will not be entitled to any refund of unused credits or subscription fees.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="11">
		<strong>Email Communications</strong></li>
</ol>
<p>
	You acknowledge and agree that we and other sites we operate (or our agents) may send you email (electronic) communications that include messages about the Service and your membership account with us and services offered by our other sites and third parties.&nbsp; We communicate with you as part of our Service and your membership.&nbsp; You agree and consent that any notice, agreements, and other communications we send to you electronically will satisfy any legal requirements, including, without limitation, that such communications be in writing.&nbsp; You may opt out of receiving these notifications from us.</p>
<ol>
	<li value="5">
		<strong>Other Aspects of the Ashley Madison Service &ndash; For Your Entertainment </strong></li>
</ol>
<p>
	Our Site and our Service gives users the opportunity to explore their fantasies and to interact with others in the Site. However, there is no guarantee you will find a date or partner on our Site or using our Service. Our Site and our Service also is geared to provide you with amusement and entertainment. You agree that some of the features of our Site and our Service are intended to provide entertainment.</p>
<p>
	<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Others Using the Site for Entertainment</strong></p>
<p>
	You also understand and agree that there are users and members on the Site that use and subscribe to our Service for purely entertainment purposes. Those users and subscribers are not seeking physical meetings with anyone they meet on the Service, but consider their communications with users and members to be for their amusement.</p>
<p>
	You acknowledge and agree that any profiles of users and members, as well as, communications from such persons may not be true, accurate or authentic and may be exaggerated or fantasy. You acknowledge and understand that you may be communicating with such persons and that we are not responsible for such communications.</p>
<ol>
	<li value="6">
		<strong>USER CONTENT</strong>
		<ol style="list-style-type:upper-alpha;">
			<li>
				By submitting any content (including, without limitation, your photograph and profile and other information) to our Site, you represent and warrant to us that the content, including your photograph, is posted by you and that you are the exclusive author of the content, including your photograph, and use of your content by us will not infringe or violate the intellectual property or other rights of any third party. You waive absolutely any and all moral rights to be identified as the author of the content, including your photograph and profile, and any similar rights in any jurisdiction in the world. By submitting any content (including, without limitation, your photograph and profile) to our Site, you automatically grant, and you represent and warrant that you have the right to grant, to us, and our licensees, parent, subsidiaries, affiliates and successors, an unlimited, perpetual, worldwide, non-exclusive, royalty-free irrevocable, transferable right and license to use, reproduce, display, broadcast, publish, quote, re-post, reproduce, bundle, distribute, create derivative works of, adapt, translate, transmit, arrange, sub-license, export, outsource, loan, lease, rent, share, assign and modify such content or incorporate into other works such content, and to grant and to authorize sub-licenses and other transfers of the foregoing. You specifically authorize us to use this license to reproduce and display the photographs you transmit to us, in digital form alone or in connection with other images and to adapt, modify or alter your photographs or otherwise create derivative works based upon your photographs. We are under no obligation to remove your profile, picture and other information from our Service even after you have terminated your membership unless you utilize the <em>Complete Profile Removal</em> option.&nbsp; You represent and warrant to us that you have the absolute right to grant the license and other rights set forth above.&nbsp; You agree that we may use your contact information to send or transmit to you, information and promotional materials about our Service, and information and promotional materials about our affiliates and third party sites.</li>
			<li>
				You are solely responsible for any content that you submit, post or transmit via our Service. You agree not to post or submit any content that:</li>
		</ol>
	</li>
</ol>
<ol style="list-style-type:lower-alpha;">
	<li>
		is libelous, defamatory or slanderous,</li>
	<li>
		contains pornographic, sexually explicit or vulgar content,</li>
	<li>
		may denigrate any ethnic, racial, sexual or religious group by stereotypical depiction or otherwise, including by promoting racism, bigotry, hatred or physical harm of any kind against any group,</li>
	<li>
		exploits images or the likeness of individuals under 18 years of age including in a sexual or violent manner, or solicits personal information from anyone under the age of 18, or harms minors in any way,</li>
	<li>
		encourages or otherwise depicts or glamorizes drug use (including alcohol and cigarettes) or any illegal acts,</li>
	<li>
		makes use of offensive language or images or is otherwise patently offensive to the online community,</li>
	<li>
		harasses or advocates harassment of another person,</li>
	<li>
		involves the transmission of &quot;junk mail&quot;, &quot;chain letters&quot; or unsolicited mass mailing or Spam,</li>
	<li>
		promotes an illegal or unauthorized copy of another person&#39;s copyrighted work,</li>
	<li>
		characterizes violence as acceptable, glamorous or desirable,</li>
	<li>
		contains any illegal material or any material that infringes or violates another party&#39;s rights (including, without limitation, intellectual property rights and rights of privacy and publicity),</li>
	<li>
		constitutes an illegal act (including, without limitation, prostitution and/or solicitation) or provides instructional information about illegal activities such as making or buying illegal weapons, violating someone&#39;s privacy, or providing or creating computer viruses,</li>
	<li>
		solicits passwords or personal identifying information for commercial or unlawful purposes from other users,</li>
	<li>
		provides or promotes inaccurate, misleading or false information,</li>
	<li>
		engages in commercial activities and/or sales without our prior written consent such as contests, sweepstakes, barter, advertising, and pyramid schemes, or</li>
	<li>
		contains any identifiable personal contact information (other than for purposes of registration for the Service).</li>
</ol>
<p>
	If any information that you provide to us subsequently becomes inaccurate, misleading or false, you will promptly notify us of such change.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="3">
		The foregoing is a partial list of the kind of content that is illegal or prohibited on our Site. We reserve the right to investigate and take appropriate legal action in our sole discretion against anyone who violates this Section 6 or any other provision of these Terms, including, without limitation, removing the offending communication from the Service, terminating the violator&#39;s access to the Site and contacting and disclosing information to the relevant authorities.</li>
	<li value="4">
		We have no obligation to post any content that you or anyone else submits. While we do not and cannot review every message or other material posted or sent by users of the Service, and are not responsible for any content of these messages or materials, we reserve the right, but are not obligated, to monitor, delete, move, remove, block, refuse to post or transmit, or edit messages or materials, including, without limitation, advertisements, profiles, public postings, emails, and messages, that we, in our sole discretion, deem to violate these Terms or any applicable content guidelines, or to be otherwise unacceptable. You understand and agree that you shall remain solely responsible for the content of profiles, public postings, messages and other materials you may upload to the Service or users of the Service. You also understand and agree that we cannot guarantee, and assume no responsibility for verifying, the accuracy of the information provided by other users of the Service.</li>
</ol>
<ol>
	<li value="7">
		<strong>NON-COMMERCIAL USE</strong></li>
</ol>
<p>
	You understand and agree that our Site and the Service is for personal use only and may not be used in connection with any commercial purposes. Organizations, companies, and/or businesses may not use the Service or our Site for any purpose. Illegal and/or unauthorized uses of our Site, including prostitution and/solicitation, financial fraud, collecting usernames and/or email addresses of users by electronic or other means for the purpose of sending unsolicited email and unauthorized framing of or linking to our Site may be investigated, and appropriate legal action will be taken, including, without limitation, civil, criminal, and injunctive redress. You understand and agree that use of our Site is with our permission, which may be revoked at any time, for any reason, in our sole discretion.</p>
<ol>
	<li value="8">
		<strong>THIRD PARTY CONTENT, LINKS AND PAGES</strong></li>
</ol>
<p>
	In your use of our Service, you may access content from third parties (&quot;Third Party Content&quot;), either via our Service or through links to third party web sites. We do not control Third Party Content and make no representations or warranties about it. We do not endorse or accept any responsibility for any Third Party Content. You acknowledge and agree that by using our Service, you may be exposed to Third Party Content that is false, offensive, indecent, inaccurate, incomplete or otherwise objectionable. Third Party Content is subject to the privacy and security policies of those third parties, which may differ substantially from our privacy policies.&nbsp; You acknowledge and agree that Third Party Content is the sole responsibility of the authors or sites displaying such Third Party Content and under no circumstances will we be liable in any way for any Third Party Content, including, without limitation, any inaccuracies, errors or omissions in any Third Party Content or any losses, liabilities or damages of any kind arising out of or incurred as a result of the use of any Third Party Content posted, stored or transmitted via our Service. You agree that you must evaluate, and bear all risks associated with Third Party Content, including, without limitation, profiles of other users of our Service.</p>
<ol>
	<li value="9">
		<strong>PROPRIETARY RIGHTS </strong>
		<ol style="list-style-type:upper-alpha;">
			<li>
				<strong>Content is Protected by Law </strong></li>
		</ol>
	</li>
</ol>
<p>
	You acknowledge and agree that all content and materials available on our Site are protected by either our rights, or the rights of our licensors or other third parties, of publicity, copyright, trademarks, service marks, patents, trade secrets or other proprietary rights and laws. You may not use any of the marks, logos, domains and trademarks that you may find on our Site, unless you have our written permission.&nbsp; Except for that information which is in the public domain or for which you have been given express written permission by us, you agree not to sell, license, loan, rent, modify, distribute, copy, reproduce, transmit, publicly display, broadcast, publicly perform, publish, adapt, edit or create derivative works from materials or content available on our Site. Notwithstanding the above, you may use the content and materials on our Site in the course of your normal, personal, non-commercial use of our Service in accordance with the Terms.&nbsp; If you download or print a copy of any content for your personal use, you must retain all copyright and other proprietary notices contained on such content.&nbsp;</p>
<ol style="list-style-type:upper-alpha;">
	<li value="2">
		<strong>Use of Content</strong></li>
</ol>
<p>
	You agree not to systematically retrieve data or other content or any materials from our Site to create or compile, directly or indirectly, a collection, compilation, database, directory or the like, whether by manual methods, through the use of &quot;bots&quot; or otherwise. You agree not to use any of our trademarks or logos as metatags on other web sites. You agree not to display any of our Site in a frame (or any of our content via in-line links) without our express written permission, which may be requested by contacting us at <a class="__cf_email__" href="../../cdn-cgi/l/email-protection" data-cfemail="e8ab8798919a818f809ca8a99b80848d91a5898c819b8786c68b8785c6">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script> You may, however, establish ordinary links to the homepage of our Site without our written permission.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="3">
		<strong>Content &ndash; AS-IS</strong></li>
</ol>
<p>
	All of the content on our Site is provided &ldquo;AS IS.&rdquo;&nbsp; All content is the responsibility of the person that originated such content.&nbsp; You understand and agree that under no circumstances will we be liable for any losses, liabilities or damages incurred as a result of your use of any content on our Site.</p>
<ol>
	<li value="10">
		<strong>USERNAME AND PASSWORD </strong></li>
</ol>
<p>
	You will select a username and password when completing the registration process. You agree that you will not choose a name that may represent you as someone else or that may otherwise violate some third party&rsquo;s rights. We may refuse to grant you a Username/Nickname that impersonates someone else, is protected by trademark or proprietary law, or is vulgar or otherwise offensive, as determined by us in our sole discretion. Your username and password are not transferable and may not be assigned.&nbsp; You are solely and fully responsible for maintaining the confidentiality of your username and password, and are solely and fully responsible for all activities that occur under your username and password. You agree to: (a) immediately notify us of any unauthorized use of your username and password or any other breach of security and (b) ensure that you log off from your account at the end of each session. We will not be liable for any loss or damage arising from your failure to comply with this Section 10.</p>
<ol>
	<li value="11">
		<strong>DISCONTINUANCE OF SERVICE</strong></li>
</ol>
<p>
	We reserve the right at any time to modify or discontinue, temporarily or permanently, any portion of our Service with or without prior notice. You acknowledge and agree that we will not be liable to you or to any third party for any modification or discontinuance of our Service.</p>
<ol>
	<li value="12">
		<strong>BLOCKING OF IP ADDRESSES</strong></li>
</ol>
<p>
	In order to protect the integrity of the Service, we reserve the right at any time, in our sole discretion, to block users from certain IP addresses from accessing our Site.</p>
<ol>
	<li value="13">
		<strong>REPRESENTATIONS AND WARRANTIES</strong></li>
</ol>
<p>
	You hereby represent and warrant to us that: (a) you have the full power and authority to enter into and perform under these Terms; (b) your use of our Service will not infringe or violate the copyright, trademark, right of publicity or any other legal right of any third party; (c) you will comply with all applicable laws and regulations in using our Service and in engaging in all other activities arising from, relating to or connected with these Terms, including, without limitation, contacting other users of our Service; (d) you have never been convicted of a sexual offense and that you have no such charges currently pending against you; and (e) you own or otherwise have all rights necessary to license the content you submit and that the posting and use of your content by us will not infringe or violate the rights of any third party.</p>
<ol>
	<li value="14">
		<strong>DISCLAIMER OF WARRANTIES</strong></li>
</ol>
<p>
	YOU AGREE THAT:</p>
<ol style="list-style-type:upper-alpha;">
	<li>
		IF YOU USE OUR SERVICE, YOU DO SO AT YOUR OWN AND SOLE RISK. OUR SERVICE IS PROVIDED ON AN &quot;AS IS&quot; AND &quot;AS AVAILABLE&quot; BASIS. WE EXPRESSLY DISCLAIM ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, WITHOUT LIMITATION, IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT.</li>
	<li>
		WE DO NOT WARRANT THAT (A) OUR SERVICE WILL MEET YOUR REQUIREMENTS; (B) OUR SERVICE WILL BE UNINTERRUPTED, TIMELY, SECURE, OR ERROR-FREE; (C) ANY INFORMATION THAT YOU MAY OBTAIN ON OUR SERVICE WILL BE ACCURATE OR RELIABLE; (D) THE QUALITY OR RELIABILITY OF ANY PRODUCTS, SERVICES, INFORMATION OR OTHER MATERIAL PURCHASED OR OBTAINED BY YOU THROUGH OUR SERVICE WILL MEET YOUR EXPECTATIONS; (E) ANY INFORMATION YOU PROVIDE OR WE COLLECT WILL NOT BE DISCLOSED TO THIRD PARTIES; (F) ANY PROFILE ON OUR SITE IS ACCURATE, UP TO DATE OR AUTHENTIC; (G) ANY MATERIAL OR FILES THAT YOU CAN DOWNLOAD FROM THE INTERNET WILL BE FREE OF VIRUSES, WORMS, TROJAN HORSES OR OTHER CODE THAT MAY HAVE DAMAGING; (H) THIRD PARTIES WILL NOT USE OF YOUR CONFIDENTIAL INFORMATION IN AN UNAUTHORIZED MANNER; OR (I) ANY ERRORS IN ANY DATA OR SOFTWARE WILL BE CORRECTED. WE ARE NOT RESPONSIBLE FOR ANY PROBLEMS OR TECHNICAL MALFUNCTION OF ANY TELEPHONE NETWORK OR LINES, COMPUTER ONLINE SYSTEMS, SERVERS OR PROVIDERS, COMPUTER EQUIPMENT, SOFTWARE, FAILURE OF EMAIL/CHAT OR PLAYERS ON ACCOUNT OF TECHNICAL PROBLEMS OR TRAFFIC CONGESTION ON THE INTERNET OR AT ANY WEBSITE OR COMBINATION THEREOF, INCLUDING INJURY OR DAMAGE TO USERS OR TO ANY OTHER PERSON&#39;S COMPUTER RELATED TO OR RESULTING FROM PARTICIPATING OR DOWNLOADING MATERIALS IN CONNECTION WITH OUR SITE AND/OR IN CONNECTION WITH THE SERVICE. UNDER NO CIRCUMSTANCES WILL WE OR ANY OF OUR AFFILIATES, ADVERTISERS, PROMOTERS OR DISTRIBUTION PARTNERS BE RESPONSIBLE FOR ANY LOSS OR DAMAGE, INCLUDING PERSONAL INJURY OR DEATH, RESULTING FROM ANYONE&#39;S USE OF OUR SITE OR THE SERVICE, ANY CONTENT POSTED ON OUR SITE OR TRANSMITTED TO USERS, ANY PRODUCTS OR SERVICE PROVIDED BY THIRD PARTIES OR ANY CONDUCT OR INTERACTIONS BETWEEN USERS OF OUR SITE, WHETHER ONLINE OR OFFLINE.</li>
	<li>
		IF YOU ACCESS OR TRANSMIT ANY CONTENT THROUGH THE USE OF OUR SERVICE, YOU DO SO AT YOUR OWN DISCRETION AND YOUR SOLE RISK. YOU ARE SOLELY RESPONSIBLE FOR ANY LOSS OR DAMAGE TO YOU IN CONNECTION WITH SUCH ACTIONS. WE ARE NOT RESPONSIBLE FOR ANY INCORRECT OR INACCURATE CONTENT POSTED ON OUR SITE OR IN CONNECTION WITH THE SERVICE, WHETHER CAUSED BY USERS OF OUR SITE OR BY ANY OF THE EQUIPMENT OR PROGRAMMING ASSOCIATED WITH OR UTILIZED IN THE SERVICE. WE ARE NOT RESPONSIBLE FOR THE CONDUCT, WHETHER ONLINE OR OFFLINE, OF ANY USER OF OUR SITE OR THE SERVICE. WE ASSUME NO RESPONSIBILITY FOR ANY ERROR, OMISSION, INTERRUPTION, DELETION, DEFECT, DELAY IN OPERATION OR TRANSMISSION, COMMUNICATIONS LINE FAILURE, THEFT OR DESTRUCTION OR UNAUTHORIZED ACCESS TO, OR ALTERATION OF, USER COMMUNICATIONS.</li>
	<li>
		NO DATA, INFORMATION OR ADVICE OBTAINED BY YOU IN ORAL OR WRITTEN FORM FROM US OR THROUGH OR FROM OUR SERVICE WILL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THESE TERMS.</li>
</ol>
<ol>
	<li value="15">
		<strong>LIMITS ON LIABILITY </strong>
		<ol style="list-style-type:upper-alpha;">
			<li>
				YOU AGREE THAT WE WILL NOT BE LIABLE FOR ANY DAMAGES WHATSOEVER, INCLUDING DIRECT, INDIRECT, INCIDENTAL, PUNATIVE, SPECIAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES (EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), ARISING FROM, RELATING TO OR CONNECTED WITH: (A) THE USE OR INABILITY TO USE OUR SERVICE; (B) THE COST OF REPLACEMENT OF ANY GOODS, SERVICES OR INFORMATION PURCHASED OR OBTAINED AS A RESULT OF ANY INFORMATION OBTAINED FROM OR TRANSACTIONS ENTERED INTO THROUGH OR FROM OUR SERVICE; (C) DISCLOSURE OF, UNAUTHORIZED ACCESS TO OR ALTERATION OF YOUR CONTENT; (D) STATEMENTS, CONDUCT OR OMISSIONS OF ANY SERVICE PROVIDERS OR OTHER THIRD PARTY ON OUR SERVICE; (E) ACTIONS OR INACTIONS OF OTHER USERS OF OUR SITE OR OUR SERVICE OR ANY OTHER THIRD PARTIES FOR ANY REASON; OR (F) ANY OTHER MATTER ARISING FROM, RELATING TO OR CONNECTED WITH OUR SERVICE OR THESE TERMS.</li>
			<li>
				WE WILL NOT BE LIABLE FOR ANY FAILURE OR DELAY IN PERFORMING UNDER THESE TERMS WHERE SUCH FAILURE OR DELAY IS DUE TO CAUSES BEYOND OUR REASONABLE CONTROL, INCLUDING NATURAL CATASTROPHES, GOVERNMENTAL ACTS OR OMISSIONS, LAWS OR REGULATIONS, TERRORISM, LABOR STRIKES OR DIFFICULTIES, COMMUNICATION SYSTEM BREAKDOWNS, HARDWARE OR SOFTWARE FAILURES, TRANSPORTATION STOPPAGES OR SLOWDOWNS OR THE INABILITY TO PROCURE SUPPLIES OR MATERIALS.</li>
			<li>
				IN NO EVENT WILL OUR AGGREGATE LIABILITY TO YOU OR ANY THIRD PARTY IN ANY MATTER ARISING FROM, RELATING TO OR CONNECTED WITH OUR SERVICE OR THESE TERMS EXCEED THE SUM OF FIVE THOUSAND ($5,000) DOLLARS.</li>
			<li>
				SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES OR THE LIMITATION OR EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES. ACCORDINGLY, SOME OF THE LIMITATIONS OF SECTIONS 14 AND 15 MAY NOT APPLY TO YOU.&nbsp; THESE LIMITATIONS OF LIABILITY SHALL APPLY TO THE FULLEST EXTENT PERMITTED BY LAW AND SHALL SURVIVE TERMINATION OF THESE TERMS.</li>
			<li>
				YOU ACKNOWLEDGE AND AGREE THAT THE DISCLAIMERS OF WARRANTIES THESE LIMITATIONS OF LIABILITY ARE AN AGREED UPON ALLOCATION OF RISK BETWEEN YOU AND US.&nbsp; YOU ACKNOWLEDGE AND AGREE THAT IF YOU DID NOT AGREE TO THESE LIMITATIONS OF LIABILITY WE WOULD NOT PROVIDE OUR SITE OR THE SERVICE OR THE MATERIALS OR CONTENT INCLUDED TO YOU.&nbsp; YOU ACKNOWLEDGE AND AGREE THAT SUCH PROVISIONS ARE REASONABLE AND FAIR.</li>
		</ol>
	</li>
</ol>
<p>
	IF YOU ARE A CALIFORNIA RESIDENT, YOU WAIVE CALIFORNIA CIVIL CODE SECTION 1542, WHICH SAYS: &ldquo;A GENERAL RELEASE DOES NOT EXTEND TO CLAIMS WHICH THE CREDITOR DOES NOT KNOW OR SUSPECT TO EXIST IN HIS FAVOR AT THE TIME OF EXECUTING THE RELEASE, WHICH, IF KNOWN BY HIM MUST HAVE MATERIALLY AFFECTED HIS SETTLEMENT WITH THE DEBTOR.&rdquo;&nbsp;</p>
<ol>
	<li value="16">
		<strong>INDEMNITY</strong></li>
</ol>
<p>
	You agree to defend, indemnify and hold us, and our subsidiaries, parents, affiliates, and each of our and their directors, officers, managers, members, partners, agents, other representatives, employees and customers (each an &ldquo;Indemnified Party&rdquo; and collectively, the &ldquo;Indemnified Parties&rdquo;), harmless from any claim, demand, action, damage, loss, cost or expense, including without limitation, attorneys&#39; fees and costs, investigation costs and settlement expenses, incurred in connection with any investigation, claim, action, suit or proceeding of any kind brought against any Indemnified Party arising out of your use of our Service, any alleged or actual infringement of the intellectual property rights of any party, any injury or damage to property or person, any act by you in connection with any user or member of this Service or any other third party, any business practices in which you engage or are alleged to engage, or alleging facts or circumstances that could constitute a breach by you of any provision of these Terms and/or any of the representations and warranties set forth above. If you are obligated to indemnify an Indemnified Party, we and the Indemnified Party will have the right, in our sole discretion, to choose our attorneys, experts and other advisers, conduct our own inquiry into the matter, control any investigation, action or proceeding and determine if and how we wish to settle it.&nbsp; You agree that you will advance costs and expenses to any Indemnified Party.&nbsp; You agree to cooperate with the Indemnified Parties in connection with any investigation, claim, action or proceeding covered by this Section 16.</p>
<ol>
	<li value="17">
		<strong>COPYRIGHT POLICY </strong></li>
</ol>
<p>
	The Service contains information, which is proprietary to us, our partners and our users. We assert full copyright protection in the Service. Information posted by us, our partners or users of the Service may be protected whether or not it is identified as proprietary to us or to them. You may not post, distribute, or reproduce in any way any copyrighted material, trademarks, or other proprietary information without obtaining the prior written consent of the owner of such proprietary rights.</p>
<ol style="list-style-type:upper-alpha;">
	<li>
		<strong>DMCA Notice</strong></li>
</ol>
<p>
	The Digital Millennium Copyright Act of 1998, as amended (&quot;DMCA&quot;), provides recourse for copyright owners who believe that material appearing on the Internet infringes their rights under the United States copyright laws.&nbsp; Other laws provide similar protection.&nbsp; If you believe that your work has been copied, posted or otherwise made available through the Service in a way that constitutes copyright infringement, please notify our DMCA Copyright Agent of your complaint and a requirement that such content be removed or blocked, as set forth in the DMCA. Please consult the DMCA to confirm these requirements. You must provide our DMCA Copyright Agent with the following information in writing, to the extent required by the DMCA: (a) an electronic or physical signature of the person authorized to act on behalf of the copyright owner that is allegedly infringed; (b) identification of the copyrighted work that you claim has been infringed (or, if multiple copyrighted works on a site are covered by a single complaint, a representative list of the allegedly infringing works on the site); (c) identification of the material that is claimed to be infringing and to be removed, and information reasonably sufficient to permit us to locate the material on our Site; (d) information reasonably sufficient to permit us to contact the complaining party, such as your address, telephone number and e-mail address; (e) a written statement by you that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent or the law; and (f) a statement by you, made under penalty of perjury, that the above information in your notice and complaint is accurate and that you are the copyright owner or authorized to act on the copyright owner&#39;s behalf. Please be aware that the foregoing information in your complaint may be forwarded to the person who provided the allegedly infringing content. The foregoing information must be submitted to our DMCA Copyright Agent as follows:</p>
<p style="margin-left:36.0pt;">
    Avid Life Media Inc. Legal</p>
<p>
    PO Box 67027</p>
<p>
	Toronto, ON Canada M4P 1E4.</p>
<p style="margin-left:36.0pt;">
	Email: <a class="__cf_email__" href="../../cdn-cgi/l/email-protection" data-cfemail="214d4446404d614052494d44584c404548524e4f0f424e4c">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script></p>
<p>
	Pursuant to Section 512(f) of the DMCA, any person who knowingly materially misrepresents that material or activity is infringing may be subject to liability.</p>
<p>
	If you believe that your material has been mistakenly removed or disabled pursuant to this Section 17, you may submit a counter notice by notifying our DMCA Copyright Agent at the address provided above.</p>
<p>
	Pursuant to Section 512(f) of the DMCA, any person who knowingly materially misrepresents that material or activity was removed or disabled by mistake or misidentification may be subject to liability.</p>
<ol>
	<li value="18">
		<strong>LINKS</strong></li>
</ol>
<p>
	The Service may provide, or third parties may provide, links, including, without limitation, banner ads and hyperlinks, to other World Wide Web sites or resources. Because we have no control over such sites and resources, you acknowledge and agree that we are not responsible for the availability of such external sites or resources, and do not endorse and are not responsible or liable for any content, advertising, products or other materials on or available from such sites or resources. &nbsp;You acknowledge and agree that we are not responsible for any use of your personal information by such third parties.&nbsp; Such third parties have their own privacy policies and procedures.&nbsp; You should check those privacy policies and procedures before you provide any information to them. You further acknowledge and agree that we shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of, or reliance upon, any such content, goods or services available on or through any such site or resource.</p>
<ol>
	<li value="19">
		<strong>ARBITRATION AND CLASS ACTION WAIVER</strong></li>
</ol>
<ol style="list-style-type:upper-alpha;">
	<li>
		<strong>Scope</strong></li>
</ol>
<p>
	All disputes, controversies, causes of action (in tort, contract, by statute or otherwise) (&ldquo;Disputes&rdquo;), including, without limitation, Disputes arising from or relating to this Arbitration Provision (including the interpretation, breach, termination and invalidity thereof) or the relationship that results from this Agreement shall be resolved by binding arbitration by a single independent and impartial arbitrator under the applicable Commercial Dispute Resolution Procedures and Supplementary Procedures for Consumer-Related Disputes of the American Arbitration Association (&ldquo;AAA&rdquo;) (<a href="http://www.adr.org/" target="_blank">http://www.adr.org/</a>, 1-800-778-7879), or pursuant to the National Arbitration Rules of the ADR Institute of Canada, Inc. (http://amic.org/ ) [the Simplified Arbitration Rules of the ADR Institute of Canada, Inc.</p>
<p>
	Arbitration replaces the right to go to court, and therefore the parties waive any right that you or Ashley Madison might otherwise have had to a jury trial or the opportunity to litigate any claims in court before either a judge or jury.&nbsp; Notwithstanding the foregoing, Ashley Madison reserves the right to pursue the protection of intellectual property rights and confidential information and to stop other illegal activities through injunctive relief or other equitable relief through the courts.</p>
<p>
	<strong>Venue: </strong>The exclusive venue for the arbitration shall be Toronto, Canada if claimant is a Canadian resident and New York, New York if claimant is a United States resident.&nbsp; The parties will agree on a reasonable location, in the event that Toronto or New York are inconvenient forums.&nbsp; The parties will endeavor to minimize the need for long distance travel through use of telephonic communications and submission of documents as permitted under the applicable rules for Expedited Procedures.&nbsp; The official language of the arbitration shall be English.&nbsp;</p>
<ol style="list-style-type:upper-alpha;">
	<li value="2">
		<strong>Governing Law</strong></li>
</ol>
<p>
	<strong>For United States Residents:&nbsp; </strong>This Agreement involves transactions between the parties in interstate commerce and shall be governed by the Federal Arbitration Act, 9 USC &sect; 1-19.&nbsp; Judgment upon any interim or final award shall be entered and confirmed in any court or tribunal of competent jurisdiction.&nbsp; The substantive law of the State of New York (excluding its conflicts of law provisions) shall apply to all Disputes and the Agreement.&nbsp; If there is a difference between the Federal Arbitration Act and New York law, the Federal Arbitration Act controls.</p>
<p>
	<strong>For Canada Residents:&nbsp; </strong>This Agreement and all Disputes shall be governed by the Arbitration Act of 1991 (Ontario), as amended, replaced or re-enacted from time to time.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="3">
		<strong>Small Claims</strong></li>
</ol>
<p>
	Both parties retain the right to file any claim that is not aggregated with the claim of any other persons and whose amount in controversy is properly within the jurisdiction of a court which is limited to adjudicated small claims.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="4">
		<strong>Class and Consolidated Claims Waiver</strong></li>
</ol>
<p>
	It is agreed that neither party shall have the right to participate as a class representative or class member with respect to any Disputes subject to arbitration under this Agreement or any Dispute between the parties.&nbsp; The parties also waive any right to assert consolidated claims with respect to any Disputes subject to arbitration under this Agreement or any Dispute between the parties.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="5">
		<strong>Limit of Liability</strong></li>
</ol>
<p>
	Liability for both parties is limited $5,000 in damages.&nbsp; <strong>Parties waive and the Arbitrator shall not be empowered to grant indirect, consequential, special, punitive or exemplary damages and/or damages or relief in excess of those permitted by this Agreement unless the statute under which they are suing provides otherwise.&nbsp; </strong>An arbitration award rendered by the arbitrator may be entered in any court having jurisdiction for the purposes of enforcement.&nbsp;</p>
<ol style="list-style-type:upper-alpha;">
	<li value="6">
		<strong>Notice of Claims, Timing of Disputes and Nature of Award</strong></li>
</ol>
<p>
	All Disputes shall be filed within one (1) year of the date the Disputes arose or occurred.&nbsp; The parties expressly waive any contrary statute of limitations or time bars, both legal and equitable, to the Disputes.&nbsp; Arbitration shall be commenced by filing a Claim pursuant to the applicable American Arbitration Association Rules or the National Arbitration Rules of the ADR Institute of Canada, Inc.&nbsp; The arbitration shall be completed, barring extraordinary circumstances within ninety (90) days of the filing of the Claim.&nbsp; The parties may grant reasonable continuance upon good cause shown.&nbsp; The Award shall be reasoned and shall be rendered within thirty (30) days of closure of the arbitration proceedings.</p>
<p>
	For United States residents, rules and forms may be obtained and Claims may be filed at American Arbitration Association, 1633 Broadway, Floor 10, New York, NY 10019-6708, (212) 716 &ndash; 5800, (800) 778 &ndash; 7879, www.adr.org.</p>
<p>
	For Canada residents, rules and forms may be obtained and Claims may be filed at ADR Institute of Canada, Inc., Suite 405-234 Eglinton Avenue East, Toronto, Canada M4P 1K5, (877) 475 &ndash; 4353, www.adrcanada.ca.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="7">
		<strong>Discovery and Hearing Procedures</strong></li>
</ol>
<p>
	All parties have the right, at their own expense, to be represented by an attorney or spokesperson of their own choosing.&nbsp; Discovery shall be expeditiously completed within three (3) months of the time the parties are at issue.&nbsp; Each party shall produce relevant non-privileged documents requested by the other party.&nbsp; Discovery procedures available in court actions do not apply.&nbsp; The arbitrator shall grant oral and/or written discovery to preserve evidence or upon a showing of need.&nbsp; All discovery disputes shall be promptly submitted to and promptly resolved by the arbitrator.&nbsp; For a Dispute involving a United States resident, the Parties may elect to use any of the Expedited Procedures of the Commercial Dispute Resolution Procedures or Supplementary Procedures for Consumer-Related Disputes of the AAA.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="8">
		<strong>Emergency and Provisional Remedies</strong></li>
</ol>
<p>
	Any party may seek a preliminary injunction or other provisional, injunctive, emergency or equitable relief (but not monetary relief) in a court of competent jurisdiction if, in its sole judgment, such relief is necessary to preserve the status quo or to prevent irreparable harm.&nbsp; The parties shall, despite seeking relief under this section, participate in good faith in the arbitration.</p>
<ol style="list-style-type:upper-roman;">
	<li>
		<strong>Confidentiality</strong></li>
</ol>
<p>
	The arbitrator will take reasonable steps to protect customer account information and other confidential or proprietary information.&nbsp; The arbitration will not be confidential unless you request that it remain confidential.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="10">
		<strong>Payment of Arbitration Fees and Costs</strong></li>
</ol>
<p>
	Ashley Madison will advance all arbitration filing fees and arbitrator&rsquo;s costs and expenses upon your written request given prior to the commencement of the arbitration.&nbsp; You are responsible for all additional costs that you incur in the arbitration, including, without limitation, costs association with attorneys or experts witnesses.&nbsp; The handling of fee arrangements and the payment of fees should be conducted by the Independent ADR Institution.&nbsp; If the arbitration is decided in your favor, you will not be required to reimburse Ashley Madison for any of the fees and costs it advanced.&nbsp; If the arbitration is decided in Ashley Madison&rsquo;s favor, you shall reimburse Ashley Madison arbitration fees and costs, but only to the extent awardable in a judicial proceeding and permitted under the AAA Supplementary Procedures for Consumer-Related Disputes or the National Arbitration Rules of the ADR Institute of Canada, Inc.</p>
<ol style="list-style-type:upper-alpha;">
	<li value="11">
		<strong>Survival and Severability</strong></li>
</ol>
<p>
	This Arbitration Agreement shall survive the termination of your service with Ashley Madison.&nbsp; If any portion of this Arbitration provision is deemed invalid or unenforceable, the remaining portions shall nevertheless remain in force.</p>
<ol>
	<li value="20">
		<strong>ASSIGNMENT</strong></li>
</ol>
<p>
	You do not have the right to assign these Terms or this Agreement or any of your rights to our Service to anyone. Avid Dating Life Inc. has the right to assign any or all of its rights and obligations under this Agreement or to the Service to any third party. Provided such rights and obligations are assumed by such third party, Avid Dating Life Inc. shall be relieved of any and all liability under this Agreement and in such event you hereby agree to release Avid Dating Life Inc. of all liability, claims, charges, damages and causes of action.</p>
<ol>
	<li value="21">
		<strong>EXPORT CONTROLS </strong></li>
</ol>
<p>
	Software and content provided through our Site and our Service is subject to United States export controls. The United States Department of Commerce prohibits export or diversion of software and certain content to specified countries and persons.&nbsp; No software or content from the Services may be downloaded or otherwise exported or re-exported (a) into (or to a national or resident of) Cuba, Iraq, Libya, North Korea, Iran, Syria, or any other country to which the U.S. has embargoed goods; or (b) to anyone on the U.S. Treasury Department&#39;s list of Specially Designated Nationals or the U.S. Commerce Department&#39;s Table of Deny Orders. By downloading or using any such software or content, you represent and warrant that you are not located in, under the control of, or a national or resident of any such country or on any such list and that you will not license or otherwise permit anyone in any such country or on any such list to receive software or content that is subject to export control.</p>
<ol>
	<li value="22">
		<strong>NOTICES</strong></li>
</ol>
<p>
	<strong>Unless provided otherwise in these Terms, all notices shall to us be delivered to Avid Life Media, PO Box 67027, Toronto, Ontario Canada M4P 1E4, Attention: Legal Department, and all notices to you shall be sent by email to you at the email address you provided to us at the time you registered or through a later notice of a change of address.&nbsp; We may also send you notice by overnight courier or certified mail, postage prepaid. Email notices shall be deemed received 24 hours after the email is sent, unless the sender is notified the email address is invalid or has been returned for some other reason.&nbsp; All other notices shall be deemed received when delivered.&nbsp; </strong></p>
<ol>
	<li value="23">
		<strong>MISCELLANEOUS</strong></li>
</ol>
<p>
	You agree that: (i) the Service shall be deemed solely based in the Province of Ontario, Canada; (ii) the Service shall be deemed a passive one that does not give rise to personal jurisdiction over Ashley Madison, either specific or general, in jurisdictions other than the Province of Ontario; and (iii) the Terms, and your relationship with Ashley Madison under the Terms shall be governed by the internal substantive laws of the Province of Ontario, without respect to its conflict of laws principles. These Terms shall be interpreted in accordance with the laws of the Province of Ontario without reference to conflict of law principles (except as provided in the arbitration provisions of these Terms applicable to United States residents). These Terms, together with our privacy policy contain the entire understanding of the parties regarding their subject matter, and supersede all prior and contemporaneous agreements and understandings between the parties regarding their subject matter. These Terms shall be binding on the parties, their successors and permitted assigns.&nbsp; No failure or delay by a party in exercising any right, power or privilege under these Terms shall operate as a waiver thereof. The invalidity or unenforceability of any of these Terms shall not affect the validity or enforceability of any other of these Terms, all of which shall remain in full force and effect.&nbsp; The headings used in these Terms are for convenience only and shall not be deemed to define or limit the content of any provision of these Terms. These Terms will not be governed by the United Nations Convention on Contracts for the International Sale of Goods. Les parties acceptent d&#39;un commun accord que la presente entente soit redigee en anglais.</p>
<p>
	* * * * * * * *</p>
<p>
	If you have any questions or concerns about these Terms, our Privacy Policy, the practices of the Ashley Madison, or your dealings with us, you may contact a representative of our company by using the Contact Form or by regular mail: PO Box 67027, Toronto, ON Canada M4P 1E4.</p>
<p>
	&copy; 2013 Avid Dating Life Inc.<br />
	All rights reserved</p>
<p>
	Last Updated: November 18, 2013.</p>
	
	
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
      Location: <a href="tandc.p#" id="locationChange">Canada <span class="arrow-down arrow-down-dark inline"></span></a>
    </div>

    <div id="language" class="inline box-hpad-sm">Language:
      <a href="tandc.p#" id="languageChange">English <span class="arrow-down arrow-down-dark inline"></span></a>
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

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"e258bdbf0f","applicationID":"2364665","transactionName":"M1wBNhdWDENTVxdbCwoWIBcWQw1dHVUTQksUTAEODFRNRFNaB1E=","queueTime":0,"applicationTime":44,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-686.min.js"}</script></body>
</html>
