/* --------------------------------------------------

File Name : common.js
Description : initialize for smartphone.
Charset : utf-8
Version : 1.0
Last update : 2012-11-14

-------------------------------------------------- */

(function($, undefined) {
	
	var $window = $(window);
	var $html = $('html');
	var ua = navigator.userAgent.toLowerCase();
	
	// extend $support & $browser
	$.extend ({
		support: {
			orientation: 'orientation' in window,
			onorientationchange : 'onorientationchange' in window
		},
		browser: {
			isAndroid: /android/.test(ua),
			isLegacyAndroid: /android/.test(ua) && 'onorientationchange' in window === false,
			isIPhone: /iphone/.test(ua),
			isIPad: /ipad/.test(ua),
			isIPod: /ipod/.test(ua),
			isIOS: /iphone/.test(ua) || /ipad/.test(ua) || /ipod/.test(ua),
			isGalaxyNexus: /galaxy nexus/i.test(ua),
			isTouchDevice: 'createTouch' in document || 'ontouchstart' in document
		}
	});
	
	// add html class
	if ($.browser.isIOS) $html.addClass('ios'); // iOS
	if ($.browser.isIPad) $html.addClass('ipad'); // iPad
	if ($.browser.isAndroid) $html.addClass('android'); // Android
	if ($.browser.isLegacyAndroid) $html.addClass('legacy-android'); // Android 2.1 or before
	if ($.browser.isGalaxyNexus) $html.addClass('galaxy-nexus'); // Galaxy Nexus
	
	if ($.browser.isIOS) {
		$window.bind('orientationchange', function() {
			orientationChange((window.orientation / 90) ? 'landscape' : 'portrait');
		});
	} else if($.browser.isAndroid) {
		$window.bind('resize', function() {
			orientationChange((window.orientation / 90) ? 'landscape' : 'portrait');
		});
	} else {
		$window.bind('load resize', function() {
			if ($(this).height() < $(this).width()) {
				orientationChange('landscape');
			} else {
				orientationChange('portrait');
			}
		});
	}
	
	$window.bind('orientationchange', function() {
		hideAddressBar();
	});
	
	// orientationChange
	function orientationChange(orientation) {
		$html.removeClass('landscape portrait').addClass(orientation);
	}
	
	// hide address bar
	$html.data('hideAddressBar', false);
	function hideAddressBar() {
		if (location.href.indexOf('#') != -1) return;
		if (!$html.data('hideAddressBar') || window.pageYOffset < 100) {
			setTimeout(function() {	window.scrollTo(0, 1); }, 20);	
			setTimeout(function() { $html.data('hideAddressBar', true); }, 100);
		}
	}
	
	$.fn.isVisible = function() {
		return $.expr.filters.visible(this[0]);
	};
	
	// $.fn.showHideMenu
	$.fn.showHideMenu = function(showHide) {
		
		var $this = $(this);
		var target = $this.attr('href');		
		var $overlay = $('#overlay');
		var $overlayArea = $('#area1');
		var $headerMenu = $('#headerMenu');
		var $footerMenu = $('#footerMenu');
		return $this.bind('click', function() {
			if(showHide === 'show') {
				disabledItem();
				$(target).show();
				
				$overlay.show().live('click', function(e) {
					e.preventDefault();
				});
				
				if ($(target)[0].id == 'headerMenu') {
					if ($footerMenu.isVisible) {
						$footerMenu.hide();
					}
				} else {
					if ($headerMenu.isVisible) {
						$headerMenu.hide();
					}
				}
				
			}
			if(showHide === 'hide') {
				enabledItem();
				$(target).hide();
				$overlay.hide()
			}
			return false;
		});
		
		function disabledItem() {
			var $items = $('input, select, textarea');
			$items.attr('disabled', 'disabled');
			$overlayArea.addClass('covered');
			$('#globalFooter .subMenu').addClass('covered');
			$('#globalFooter .mainMenu').addClass('covered');
		}
		
		function enabledItem() {
			var $items = $('input, select, textarea');
			$items.removeAttr('disabled');
			$overlayArea.removeClass('covered');
			$('#globalFooter .subMenu').removeClass('covered');
			$('#globalFooter .mainMenu').removeClass('covered');
		}
		
	};

	// domready initialize
	$(function() {
		if ($.support.orientation) orientationChange((window.orientation / 90) ? 'landscape' : 'portrait');
		hideAddressBar();
		$('#openHeaderMenu').showHideMenu('show');		
		$('#closeHeaderMenu').showHideMenu('hide');
		$('#openFooterMenu').showHideMenu('show');		
		$('#closeFooterMenu').showHideMenu('hide');
		
	});
	
})(jQuery, this);



/*!
 * jQuery Cookie Plugin v1.3
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2011, Klaus Hartl
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.opensource.org/licenses/GPL-2.0
 */
(function ($, document, undefined) {

	var pluses = /\+/g;

	function raw(s) {
		return s;
	}

	function decoded(s) {
		return decodeURIComponent(s.replace(pluses, ' '));
	}

	var config = $.cookie = function (key, value, options) {

		// write
		if (value !== undefined) {
			options = $.extend({}, config.defaults, options);

			if (value === null) {
				options.expires = -1;
			}

			if (typeof options.expires === 'number') {
				var days = options.expires, t = options.expires = new Date();
				t.setDate(t.getDate() + days);
			}

			value = config.json ? JSON.stringify(value) : String(value);

			return (document.cookie = [
				encodeURIComponent(key), '=', config.raw ? value : encodeURIComponent(value),
				options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
				options.path    ? '; path=' + options.path : '',
				options.domain  ? '; domain=' + options.domain : '',
				options.secure  ? '; secure' : ''
			].join(''));
		}

		// read
		var decode = config.raw ? raw : decoded;
		var cookies = document.cookie.split('; ');
		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			if (decode(parts.shift()) === key) {
				var cookie = decode(parts.join('='));
				return config.json ? JSON.parse(cookie) : cookie;
			}
		}

		return null;
	};

	config.defaults = {};

	$.removeCookie = function (key, options) {
		if ($.cookie(key) !== null) {
			$.cookie(key, null, options);
			return true;
		}
		return false;
	};

})(jQuery, document);



