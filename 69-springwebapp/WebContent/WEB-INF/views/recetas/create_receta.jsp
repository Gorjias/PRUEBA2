<%@include file="../include/cabeceras.jsp" %>
<%@include file="../include/head.jsp" %>
<%@include file="../include/sidebar.jsp" %>   
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

							<li>
								<a href="#">Recetas</a>
							</li>
							<li class="active">Creacion de Recetas</li>
						</ul><!-- /.breadcrumb -->

						<!-- #section:basics/content.searchbox -->
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->

						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content">

						<!-- /section:settings.box -->
						<div class="page-header">
							<h1>
								Nueva Receta
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">


								<div class="hr hr-18 hr-double dotted"></div>

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Formulario para la creacion de recetas</h4>

									</div>

									<div class="widget-body">
										<div class="widget-main">
											<!-- #section:plugins/fuelux.wizard -->
											<div id="fuelux-wizard-container">
												<div>
													<!-- #section:plugins/fuelux.wizard.steps -->
													<ul class="steps">
														<li data-step="1" class="active">
															<span class="step">1</span>
															<span class="title">Ingredientes</span>
														</li>

														<li data-step="2">
															<span class="step">2</span>
															<span class="title">Final</span>
														</li>

													
													</ul>

													<!-- /section:plugins/fuelux.wizard.steps -->
												</div>

												<hr />

												<!-- #section:plugins/fuelux.wizard.container -->
												<div class="step-content pos-rel">
													<div class="step-pane active" data-step="1">
														<h3 class="lighter block green">Introduzca los datos del usuario</h3>
															
														
														
														<sf:form action="${pageContext.request.contextPath}/usuario/save" method="post" commandName="receta" class="form-horizontal" id="validation-form">
												
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Nombre:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<sf:input path="nombre" name="nombre" id="nombre" class="col-xs-12 col-sm-5" /> 
																	</div>
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="ingredientes">Ingredientes:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<sf:input path="ingredientes" name="ingredientes" id="ingredientes" class="col-xs-12 col-sm-5" /> 
																	</div>
																</div>
															</div>
															
															
															
															
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="tiempos">Tiempos:</label>

																<div class="row">
																	<div class="col-sm-5">
																		<div class="widget-box widget-color-green">
																			<div class="widget-header widget-header-small">  </div>
								
																			<div class="widget-body">
																				<div class="widget-main no-padding">
																					<div class="wysiwyg-editor" id="editor2"></div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															
															
															<div class="space-2"></div>

															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="explicacion">Explicacion:</label>
																<div class="row">
																	<div class="col-sm-5">

																	<div class="wysiwyg-editor" id="editor1"></div>
																		
																	</div>
																</div>
															</div>

						
														</sf:form>
													</div>

													<div class="step-pane" data-step="2">
														<div>
															<div class="alert alert-success">
																<button type="button" class="close" data-dismiss="alert">
																	<i class="ace-icon fa fa-times"></i>
																</button>

																<strong>
																	<i class="ace-icon fa fa-check"></i>
																	Has creado una nueva receta en el libro
																</strong>

																
																<br />
															</div>

															
														</div>
													</div>

				
												</div>

												<!-- /section:plugins/fuelux.wizard.container -->
											</div>

											<hr />
											<div class="wizard-actions">
												<!-- #section:plugins/fuelux.wizard.buttons -->
												<button class="btn btn-prev">
													<i class="ace-icon fa fa-arrow-left"></i>
													Atras
												</button>

												<button class="btn btn-success btn-next" data-last="Finish">
													Siguiente
													<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
												</button>

												<!-- /section:plugins/fuelux.wizard.buttons -->
											</div>

											<!-- /section:plugins/fuelux.wizard -->
										</div><!-- /.widget-main -->
									</div><!-- /.widget-body -->
								</div>

								
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->


		<%@include file="../include/footer.jsp" %>   
		<%@include file="../include/mostrarmsg.jsp" %>
		<!-- page specific plugin scripts -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/fuelux/fuelux.wizard.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.validate.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/additional-methods.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/bootbox.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.maskedinput.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/select2.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/dropzone.js"></script>
        
		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
	 
			
			
				var $validation = true;
				$('#fuelux-wizard-container')
				.ace_wizard({
					//step: 2 //optional argument. wizard will jump to step "2" at first
					//buttons: '.wizard-actions:eq(0)'
				})
				.on('actionclicked.fu.wizard' , function(e, info){
					if(info.step == 1 && $validation) {
						if(!$('#validation-form').valid()){
							e.preventDefault();
						}
						$.ajax({
			                type: "POST",
			                contentType: 'application/json',
						    url: "${pageContext.request.contextPath}/receta/save/json", 
							    data:JSON.stringify( {nombre: $("#nombre").val(),
							    	   ingredientes:$("#ingredientes").val(),
							    	   tiempos: $("#tiempos").val(),
							    	   explicacion:$("#explicacion").val()
					     		   		}),					     	
			                success: function( respuesta ){
			                     if(respuesta.status == 'OK'){
			         				var wizard = $('#fuelux-wizard-container').data('fu.wizard')
			        				wizard.currentStep = 2;
			        				wizard.setState();
			        				
			                     }else{
									$('#msgNombre').closest('.form-group').removeClass('has-success').addClass('has-error');
			                        $('#msgNombre').removeClass('libre').addClass('ocupado');
			                        $('#msgNombre').html('<div id="nombre-error" class="help-block">Nombre no disponible</div>');
			                     }
			                }
			            });
						
						
						
						
					}
				})
				.on('finished.fu.wizard', function(e) {
					//Cuando finalice mandar al listado de usuarios
				}).on('stepclick.fu.wizard', function(e){
					//e.preventDefault();//this will prevent clicking and selecting steps
				});
			
			
				//jump to a step
				/**
				var wizard = $('#fuelux-wizard-container').data('fu.wizard')
				wizard.currentStep = 3;
				wizard.setState();
				*/
			
				//determine selected step
				//wizard.selectedItem().step
			
				//documentation : http://docs.jquery.com/Plugins/Validation/validate
					
				$('#validation-form').validate({
					errorElement: 'div',
					errorClass: 'help-block',
					focusInvalid: false,
					ignore: "",
					rules: {
						tiempos: {
							required: true,
						},
						ingredientes: {
							required: true,
							minlength: 5
						},
						
						nombre: {
							required: true
						},
						explicacion: {
							required: true
						}
						
					},
			
					messages: {
						tiempos: {
							required: "Introduzca un tiempo valido.",
						},
						ingredientes: {
							required: "Introduzca unos ingredientes validos",
							minlength: "Introduzca unos ingredientes validos"
						},
						nombre:{
							
							required: "Introduzca un nombre valido para la receta"
						},
						explicacion: {
							required: "Introduzca una explicacion del proceso de la receta"
						}

					},
			
			
					highlight: function (e) {
						$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
					},
			
					success: function (e) {
						$(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
						$(e).remove();
					},
			
					errorPlacement: function (error, element) {
						if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
							var controls = element.closest('div[class*="col-"]');
							if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
							else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
						}
						else if(element.is('.select2')) {
							error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
						}
						else if(element.is('.chosen-select')) {
							error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
						}
						else error.insertAfter(element.parent());
					},
			
					submitHandler: function (form) {
					},
					invalidHandler: function (form) {
					}
				});
			
				
				
				
				$('#modal-wizard-container').ace_wizard();
				$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
				
				
					

			})
		</script>
	<script type="text/javascript">
			jQuery(function($){
	
	function showErrorAlert (reason, detail) {
		var msg='';
		if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
		else {
			//console.log("error uploading file", reason, detail);
		}
		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
		 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
	}

	//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons

	//but we want to change a few buttons colors for the third style
	$('#editor1').ace_wysiwyg({
		toolbar:
		[
			'font',
			null,
			'fontSize',
			null,
			{name:'bold', className:'btn-info'},
			{name:'italic', className:'btn-info'},
			{name:'strikethrough', className:'btn-info'},
			{name:'underline', className:'btn-info'},
			null,
			{name:'insertunorderedlist', className:'btn-success'},
			{name:'insertorderedlist', className:'btn-success'},
			{name:'outdent', className:'btn-purple'},
			{name:'indent', className:'btn-purple'},
			null,
			{name:'justifyleft', className:'btn-primary'},
			{name:'justifycenter', className:'btn-primary'},
			{name:'justifyright', className:'btn-primary'},
			{name:'justifyfull', className:'btn-inverse'},
			null,
			{name:'createLink', className:'btn-pink'},
			{name:'unlink', className:'btn-pink'},
			null,
			{name:'insertImage', className:'btn-success'},
			null,
			'foreColor',
			null,
			{name:'undo', className:'btn-grey'},
			{name:'redo', className:'btn-grey'}
		],
		'wysiwyg': {
			fileUploadError: showErrorAlert
		}
	}).prev().addClass('wysiwyg-style2');

	
	/**
	//make the editor have all the available height
	$(window).on('resize.editor', function() {
		var offset = $('#editor1').parent().offset();
		var winHeight =  $(this).height();
		
		$('#editor1').css({'height':winHeight - offset.top - 10, 'max-height': 'none'});
	}).triggerHandler('resize.editor');
	*/
	

	$('#editor2').css({'height':'200px'}).ace_wysiwyg({
		toolbar_place: function(toolbar) {
			return $(this).closest('.widget-box')
			       .find('.widget-header').prepend(toolbar)
				   .find('.wysiwyg-toolbar').addClass('inline');
		},
		toolbar:
		[
			'bold',
			{name:'italic' , title:'Change Title!', icon: 'ace-icon fa fa-leaf'},
			'strikethrough',
			null,
			'insertunorderedlist',
			'insertorderedlist',
			null,
			'justifyleft',
			'justifycenter',
			'justifyright'
		],
		speech_button: false
	});
	
	


	$('[data-toggle="buttons"] .btn').on('click', function(e){
		var target = $(this).find('input[type=radio]');
		var which = parseInt(target.val());
		var toolbar = $('#editor1').prev().get(0);
		if(which >= 1 && which <= 4) {
			toolbar.className = toolbar.className.replace(/wysiwyg\-style(1|2)/g , '');
			if(which == 1) $(toolbar).addClass('wysiwyg-style1');
			else if(which == 2) $(toolbar).addClass('wysiwyg-style2');
			if(which == 4) {
				$(toolbar).find('.btn-group > .btn').addClass('btn-white btn-round');
			} else $(toolbar).find('.btn-group > .btn-white').removeClass('btn-white btn-round');
		}
	});


	

	//RESIZE IMAGE
	
	//Add Image Resize Functionality to Chrome and Safari
	//webkit browsers don't have image resize functionality when content is editable
	//so let's add something using jQuery UI resizable
	//another option would be opening a dialog for user to enter dimensions.
	if ( typeof jQuery.ui !== 'undefined' && ace.vars['webkit'] ) {
		
		var lastResizableImg = null;
		function destroyResizable() {
			if(lastResizableImg == null) return;
			lastResizableImg.resizable( "destroy" );
			lastResizableImg.removeData('resizable');
			lastResizableImg = null;
		}

		var enableImageResize = function() {
			$('.wysiwyg-editor')
			.on('mousedown', function(e) {
				var target = $(e.target);
				if( e.target instanceof HTMLImageElement ) {
					if( !target.data('resizable') ) {
						target.resizable({
							aspectRatio: e.target.width / e.target.height,
						});
						target.data('resizable', true);
						
						if( lastResizableImg != null ) {
							//disable previous resizable image
							lastResizableImg.resizable( "destroy" );
							lastResizableImg.removeData('resizable');
						}
						lastResizableImg = target;
					}
				}
			})
			.on('click', function(e) {
				if( lastResizableImg != null && !(e.target instanceof HTMLImageElement) ) {
					destroyResizable();
				}
			})
			.on('keydown', function() {
				destroyResizable();
			});
	    }

		enableImageResize();

		/**
		//or we can load the jQuery UI dynamically only if needed
		if (typeof jQuery.ui !== 'undefined') enableImageResize();
		else {//load jQuery UI if not loaded
			$.getScript($path_assets+"/js/jquery-ui.custom.min.js", function(data, textStatus, jqxhr) {
				enableImageResize()
			});
		}
		*/
	}


});
		</script>

