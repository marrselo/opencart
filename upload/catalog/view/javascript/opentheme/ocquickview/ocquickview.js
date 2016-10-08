//<![CDATA[
$(window).load(function () {
	ocquickview.initQuickViewContainer();
});

$(document).ajaxComplete(function () {
	var qvcontainer = $('#qv-container').val();
	var qvstatus = $('#qv-status').val();
	var qvparentelement = $('#qv-parent-element').val();
	var qvchildrenelement = $('#qv-children-element').val();
	if(qvstatus == 1) {
		var containers = qvcontainer.split(';');
		containers.forEach(function (container) {
			ocquickview.initQuickViewButton(container, qvparentelement, qvchildrenelement);
		});
	}	
});

var ocquickview = {
	'initQuickViewButton' : function (divContain, parentEle, childrenEle) {
		$(divContain + ' a').each(function() {
			var hasImg = $(this).has('img').length;
			if(hasImg == 1) {
				var url = $(this).attr('href');
				var text_quickview = $('#text-quickview').val();
				var isExist = $(this).data('exist');
				if(isExist != 1) {
					var divContainer = $(this).closest('.' + parentEle);
					divContainer.find('.' + childrenEle).append('<div class="qv-button-container"><button class="btn-quickview" data-toggle="tooltip" title="'+ text_quickview + '" type="button">Quick View</button></div>');
					$(this).attr('data-exist', 1);
					if(url) {
						if(url.search('route=product/product') != -1) {
							url = url.replace('route=product/product', 'route=extension/module/ocquickview');
							divContainer.find('.btn-quickview').attr('onclick', "ocquickview.ajaxView('"+ url +"')");
						} else {
							divContainer.find('.btn-quickview').attr('onclick', "ocquickview.ajaxSeoView('"+ url +"')");
						}
					}
				}
			} 
		});
	},

	'initQuickViewContainer' : function () {
		$('body').append('<div class="quickview-container"></div>');
		$('div.quickview-container').load('index.php?route=extension/module/ocquickview/appendcontainer');
	},

	'appendCloseFrameLink' : function () {
		$('div.quickview-container').prepend("<a href='javascript:void(0);' class='a-qv-close' onclick='ocquickview.closeQVFrame()'>Close</a>");
		
	},

	'closeQVFrame' : function () {
		$('#quickview-bg-block').hide();
    	$('.quickview-load-img').hide();
		$('div.quickview-container a').hide(1);
    	$('div#quickview-content').hide(600);
    	$('div#quickview-content').html('');
	},

	'ajaxView'	: function (url) {
		$.ajax({
			url 		: url,
			type		: 'get',
			beforeSend	: function() {
				$('#quickview-bg-block').show();
				$('.quickview-load-img').show();
			},
			success		: function(json) {
				if(json['success'] == true) {
					$('.quickview-load-img').hide();
					$('#quickview-content').html(json['html']);
					ocquickview.appendCloseFrameLink();
					$('#quickview-content').show(600);
				}
			}
		});
	},

	'ajaxSeoView': function (url) {
		$.ajax({
			url		: 'index.php?route=extension/module/ocquickview/seoview&ourl=' + url,
			type	: 'get',
			beforeSend	: function() {
				$('#quickview-bg-block').show();
				$('.quickview-load-img').show();
			},
			success		: function(json) {
				if(json['success'] == true) {
					$('.quickview-load-img').hide();
					$('#quickview-content').html(json['html']);
					ocquickview.appendCloseFrameLink();
					$('#quickview-content').show(600);
				}
			}
		});
	}
};
//]]>
