         
<%@include file="../include/cabeceras.jsp" %>
<%@include file="../include/head.jsp" %>
<%@include file="../include/sidebar.jsp" %>      
			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="main-content-inner">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Recetas </li>
						</ul><!-- /.breadcrumb -->

						<!-- #section:basics/content.searchbox -->
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Buscar ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->

						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content">
					
					
					
						<legend> LIBRO DE RECETAS</legend>
                        <div class="col-xs-12">
                            <table id="mitabla" class="table table-striped table-bordered table-hover">
                                <thead>
                                  <tr>
                                   
                                    <th class=" btn-link">Nombre</th>
                                    <th class=" btn-link">Apellidos</th>
                                    <th class=" btn-link">Perfil</th>
                                    <th class=" btn-link">Correo</th>
                                    <th class=" btn-link">Activo</th>
                                    <th class=" btn-link">Contraseña</th>
                                    <th class=" btn-link">Ultimo Login</th>                                    
                                    <th class=" btn-link">Acción</th>
                                  </tr>
                                </thead>
                                <tbody>


								<c:forEach items="${usuarios}" var="usuario">
                                  <tr>
                              
                                    
                                    <td><c:out value="${usuario.nombre}" /></td>
                                    <td><c:out value="${usuario.apellidos}" /></td>
                                    <td><c:out value="${usuario.perfil}" /></td>
                                    <td><c:out value="${usuario.correo}" /></td>
                                    <td><c:out value="${usuario.valid_mail}" /></td>
                                    <td><c:out value="${usuario.password}" /></td>
                                    <td><c:out value="${usuario.last_login}" /></td>
                                    
                                    <td>
                                     

                                        <div class="hidden-sm hidden-xs btn-group">
											<a href='<c:url value="/usuario/${usuario.id}/edit" />'>
											 <button class="btn btn-xs btn-info" id="editar">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
                                            </button>
											
											Editar</a>
											
											<a href='<c:url value="/usuario/${usuario.id}/delete" />'>Borrar
                                                         <button class="btn btn-xs btn-danger" id="borrar" onclick="">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>                              
											</a>
                                            

                                           
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline position-relative">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>
                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                      
                                                            
                                                    </li>
                                                    <li>
                                      
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                      </td>
                                  </tr>
								</c:forEach>
                                </tbody>
                            </table>
                        </div>
					
					
					
					
					
					
					
					
                    </div><!--  class="page-content" -->

		<%@include file="../include/footer.jsp" %>
		<%@include file="../include/mostrarmsg.jsp" %>
		<!-- <![endif]-->


		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($){
			
				//handling tabs and loading/displaying relevant messages and forms
				//not needed if using the alternative view, as described in docs
				$('#inbox-tabs a[data-toggle="tab"]').on('show.bs.tab', function (e) {
					var currentTab = $(e.target).data('target');
					if(currentTab == 'write') {
						Inbox.show_form();
					}
					else if(currentTab == 'inbox') {
						Inbox.show_list();
					}
				})
			
			
				
				//basic initializations
				$('.message-list .message-item input[type=checkbox]').removeAttr('checked');
				$('.message-list').on('click', '.message-item input[type=checkbox]' , function() {
					$(this).closest('.message-item').toggleClass('selected');
					if(this.checked) Inbox.display_bar(1);//display action toolbar when a message is selected
					else {
						Inbox.display_bar($('.message-list input[type=checkbox]:checked').length);
						//determine number of selected messages and display/hide action toolbar accordingly
					}		
				});
			
			
				//check/uncheck all messages
				$('#id-toggle-all').removeAttr('checked').on('click', function(){
					if(this.checked) {
						Inbox.select_all();
					} else Inbox.select_none();
				});
				
				//select all
				$('#id-select-message-all').on('click', function(e) {
					e.preventDefault();
					Inbox.select_all();
				});
				
				//select none
				$('#id-select-message-none').on('click', function(e) {
					e.preventDefault();
					Inbox.select_none();
				});
				
				//select read
				$('#id-select-message-read').on('click', function(e) {
					e.preventDefault();
					Inbox.select_read();
				});
			
				//select unread
				$('#id-select-message-unread').on('click', function(e) {
					e.preventDefault();
					Inbox.select_unread();
				});
			
		

					//gestionamos la lista de mensajes, apertura y cierre
					$('.message-list .message-item:eq(<?=$indice?>) .text').on('click', function(){
						//cogemos el elemento item del elemento clickado
						var message = $(this).closest('.message-item');

						//recorremos la lista de items para comprobar si hay algun mensaje abierto
						for (var i = 0; i < 10; i++) {
							var messageAbierto = $('.message-list .message-item:eq('+i+')');
							//si el mensaje tiene la clase open, borramos la clase
							if(messageAbierto.hasClass('message-inline-open') ) {
								messageAbierto.removeClass('message-inline-open').find('.message-content-'+i).remove();
								//si clickamos en el mismo mensaje abierto, lo cerramos tambien
								if (i==0) {
									return;
								};

							}
						};
					

						$('.message-container').append('<div class="message-loading-overlay"><i class="fa-spin ace-icon fa fa-spinner orange2 bigger-160"></i></div>');
						setTimeout(function() {
							$('.message-container').find('.message-loading-overlay').remove();
							message
								.addClass('message-inline-open')
								.append('<div class="message-content-<?=$indice?>" />')
							var content = message.find('.message-content-<?=$indice?>:last').html( $('#id-message-content-<?=$indice?>').html() );
				
							//remove scrollbar elements
							content.find('.scroll-track').remove();
							content.find('.scroll-content').children().unwrap();
							
							content.find('.message-body').ace_scroll({
								size: 150,
								mouseWheelLock: true,
								styleClass: 'scroll-visible'
							});
					
						}, 500 + parseInt(Math.random() * 500));
						
					});

			

			
			
				//back to message list
				$('.btn-back-message-list').on('click', function(e) {
					
					e.preventDefault();
					$('#inbox-tabs a[href="#inbox"]').tab('show');
				});
			
			
	
			
				var Inbox = {
					//displays a toolbar according to the number of selected messages
					display_bar : function (count) {
						if(count == 0) {
							$('#id-toggle-all').removeAttr('checked');
							$('#id-message-list-navbar .message-toolbar').addClass('hide');
							$('#id-message-list-navbar .message-infobar').removeClass('hide');
						}
						else {
							$('#id-message-list-navbar .message-infobar').addClass('hide');
							$('#id-message-list-navbar .message-toolbar').removeClass('hide');
						}
					}
					,
					select_all : function() {
						var count = 0;
						$('.message-item input[type=checkbox]').each(function(){
							this.checked = true;
							$(this).closest('.message-item').addClass('selected');
							count++;
						});
						
						$('#id-toggle-all').get(0).checked = true;
						
						Inbox.display_bar(count);
					}
					,
					select_none : function() {
						$('.message-item input[type=checkbox]').removeAttr('checked').closest('.message-item').removeClass('selected');
						$('#id-toggle-all').get(0).checked = false;
						
						Inbox.display_bar(0);
					}
					,
					select_read : function() {
						$('.message-unread input[type=checkbox]').removeAttr('checked').closest('.message-item').removeClass('selected');
						
						var count = 0;
						$('.message-item:not(.message-unread) input[type=checkbox]').each(function(){
							this.checked = true;
							$(this).closest('.message-item').addClass('selected');
							count++;
						});
						Inbox.display_bar(count);
					}
					,
					select_unread : function() {
						$('.message-item:not(.message-unread) input[type=checkbox]').removeAttr('checked').closest('.message-item').removeClass('selected');
						
						var count = 0;
						$('.message-unread input[type=checkbox]').each(function(){
							this.checked = true;
							$(this).closest('.message-item').addClass('selected');
							count++;
						});
						
						Inbox.display_bar(count);
					}
				}
			
				//show message list (back from writing mail or reading a message)
				Inbox.show_list = function() {
					$('.message-navbar').addClass('hide');
					$('#id-message-list-navbar').removeClass('hide');
			
					$('.message-footer').addClass('hide');
					$('.message-footer:not(.message-footer-style2)').removeClass('hide');
			
					$('.message-list').removeClass('hide').next().addClass('hide');
					//hide the message item / new message window and go back to list
				}
			
				//show write mail form
				Inbox.show_form = function() {
					if($('.message-form').is(':visible')) return;
					if(!form_initialized) {
						initialize_form();
					}
					
					
					var message = $('.message-list');
					$('.message-container').append('<div class="message-loading-overlay"><i class="fa-spin ace-icon fa fa-spinner orange2 bigger-160"></i></div>');
					
					setTimeout(function() {
						message.next().addClass('hide');
						
						$('.message-container').find('.message-loading-overlay').remove();
						
						$('.message-list').addClass('hide');
						$('.message-footer').addClass('hide');
						$('.message-form').removeClass('hide').insertAfter('.message-list');
						
						$('.message-navbar').addClass('hide');
						$('#id-message-new-navbar').removeClass('hide');
						
						
						//reset form??
						$('.message-form .wysiwyg-editor').empty();
					
						$('.message-form .ace-file-input').closest('.file-input-container:not(:first-child)').remove();
						$('.message-form input[type=file]').ace_file_input('reset_input');
						
						$('.message-form').get(0).reset();
						
					}, 300 + parseInt(Math.random() * 300));
				}
			
			
			
			
				var form_initialized = false;
				function initialize_form() {
					if(form_initialized) return;
					form_initialized = true;
					
					//intialize wysiwyg editor
					$('.message-form .wysiwyg-editor').ace_wysiwyg({
						toolbar:
						[
							'bold',
							'italic',
							'strikethrough',
							'underline',
							null,
							'justifyleft',
							'justifycenter',
							'justifyright',
							null,
							'createLink',
							'unlink',
							null,
							'undo',
							'redo'
						]
					}).prev().addClass('wysiwyg-style1');
			
			
			
					//file input
					$('.message-form input[type=file]').ace_file_input()
					.closest('.ace-file-input')
					.addClass('width-90 inline')
					.wrap('<div class="form-group file-input-container"><div class="col-sm-7"></div></div>');
			
					//Add Attachment
					//the button to add a new file input
					$('#id-add-attachment')
					.on('click', function(){
						var file = $('<input type="file" name="attachment[]" />').appendTo('#form-attachments');
						file.ace_file_input();
						
						file.closest('.ace-file-input')
						.addClass('width-90 inline')
						.wrap('<div class="form-group file-input-container"><div class="col-sm-7"></div></div>')
						.parent().append('<div class="action-buttons pull-right col-xs-1">\
							<a href="#" data-action="delete" class="middle">\
								<i class="ace-icon fa fa-trash-o red bigger-130 middle"></i>\
							</a>\
						</div>')
						.find('a[data-action=delete]').on('click', function(e){
							//the button that removes the newly inserted file input
							e.preventDefault();
							$(this).closest('.file-input-container').hide(300, function(){ $(this).remove() });
						});
					});
				}
			
			});
		</script>
