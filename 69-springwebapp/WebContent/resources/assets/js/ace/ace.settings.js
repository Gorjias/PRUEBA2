/**
 <b>Settings box</b>. It's good for demo only. You don't need this.
*/
(function($ , undefined) {

 $('#ace-settings-btn').on(ace.click_event, function(e){
	e.preventDefault();

	$(this).toggleClass('open');
	$('#ace-settings-box').toggleClass('open');
 })





 





 $('#ace-settings-compact').on('click', function(){
	if(this.checked) {
		$('#sidebar').addClass('compact');
		var hover = $('#ace-settings-hover');
		if( hover.length > 0 ) {
			hover.removeAttr('checked').trigger('click');
		}
	}
	else {
		$('#sidebar').removeClass('compact');
		$('#sidebar[data-sidebar-scroll=true]').ace_sidebar_scroll('reset')
	}
	
	if(ace.vars['old_ie']) ace.helper.redraw($('#sidebar')[0], true);
 })/*.removeAttr('checked')*/


 $('#ace-settings-highlight').on('click', function(){
	if(this.checked) $('#sidebar .nav-list > li').addClass('highlight');
	else $('#sidebar .nav-list > li').removeClass('highlight');
	
	if(ace.vars['old_ie']) ace.helper.redraw($('#sidebar')[0]);
 })/*.removeAttr('checked')*/


 $('#ace-settings-hover').on('click', function(){
	if($('#sidebar').hasClass('h-sidebar')) return;
	if(this.checked) {
		$('#sidebar li').addClass('hover')
		.filter('.open').removeClass('open').find('> .submenu').css('display', 'none');
		//and remove .open items
	}
	else {
		$('#sidebar li.hover').removeClass('hover');

		var compact = $('#ace-settings-compact');
		if( compact.length > 0 && compact.get(0).checked ) {
			compact.trigger('click');
		}
	}
	
	$('.sidebar[data-sidebar-hover=true]').ace_sidebar_hover('reset')
	$('.sidebar[data-sidebar-scroll=true]').ace_sidebar_scroll('reset')
	
	if(ace.vars['old_ie']) ace.helper.redraw($('#sidebar')[0]);
 })/*.removeAttr('checked')*/

})(jQuery);