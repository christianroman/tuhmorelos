/*
 * jQuery Easing Compatibility v1 - http://gsgd.co.uk/sandbox/jquery.easing.php
 *
 * Adds compatibility for applications that use the pre 1.2 easing names
 *
 * Copyright (c) 2007 George Smith
 * Licensed under the MIT License:
 *   http://www.opensource.org/licenses/mit-license.php
 */

jQuery.extend(jQuery.easing,{def:"easeOutQuad",easeOutQuad:function(e,a,b,c,d){return-c*(a/=d)*(a-2)+b},easeOutQuint:function(e,a,b,c,d){return c*((a=a/d-1)*a*a*a*a+1)+b},easeInOutQuint:function(e,a,b,c,d){if((a/=d/2)<1)return c/2*a*a*a*a*a+b;return c/2*((a-=2)*a*a*a*a+2)+b}});jQuery.extend(jQuery.easing,{easeOut:function(a,b,c,d,e){return jQuery.easing.easeOutQuad(a,b,c,d,e)},easeInOut:function(a,b,c,d,e){return jQuery.easing.easeInOutQuad(a,b,c,d,e)}});