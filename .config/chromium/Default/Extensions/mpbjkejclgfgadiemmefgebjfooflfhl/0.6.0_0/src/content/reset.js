"use strict";(function(){const a=function(a){for(const[b,c]of Object.entries(___grecaptcha_cfg.clients))for(const[d,e]of Object.entries(c))for(const[c,d]of Object.entries(e))if(d instanceof Element&&d.src===a)return void grecaptcha.reset(b)},b=function(b){b.stopImmediatePropagation(),window.clearTimeout(c),a(b.detail)},c=window.setTimeout(function(){document.removeEventListener("___resetCaptcha",b,{capture:!0,once:!0})},1e4);// 10 seconds
document.addEventListener("___resetCaptcha",b,{capture:!0,once:!0})})();