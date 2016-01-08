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
								<a href="#">Forms</a>
							</li>
							<li class="active">Wizard &amp; Validation</li>
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
								Nuevo Usuario
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">


								<div class="hr hr-18 hr-double dotted"></div>

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Formulario para la creacion de usuarios</h4>

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
															<span class="title">Datos del usuario</span>
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
															
														
														
														<sf:form action="${pageContext.request.contextPath}/usuario/save" method="post" commandName="usuario" class="form-horizontal" id="validation-form">
												
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Nombre:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<sf:input path="nombre" name="nombre" id="nombre" class="col-xs-12 col-sm-5" /> 
																	</div>
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Apellidos:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<sf:input path="apellidos" name="apellidos" id="apellidos" class="col-xs-12 col-sm-5" /> 
																	</div>
																</div>
															</div>
															
															
															
															
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Correo electronico:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<sf:input path="correo" name="correo" id="correo" class="col-xs-12 col-sm-6" />   
																		
																	</div>
																</div>
															</div>
															
															
															<div class="space-2"></div>

															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="password">Password:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<sf:input path="password" name="password" id="password" class="col-xs-12 col-sm-4" />  
																		
																	</div>
																</div>
															</div>

			

															
															


															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="state">Perfil</label>

																<div class="col-xs-12 col-sm-9">
																<select id="perfil" name="perfil" class="select2" data-placeholder="Click to Choose...">
																		<option value="ROLE_ADMIN">Administrador</option>
																		<option value="ROLE_USER">Usuario</option>
																</select>		
	
																</div>
															</div>

															<div class="space-2"></div>

															<div class="space-2"></div>

														
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
																	El usuario se ha guardado correctamente
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
						    url: "${pageContext.request.contextPath}/usuario/save/json", 
							    data:JSON.stringify( {nombre: $("#nombre").val(),
							    	   apellidos:$("#apellidos").val(),
							    	   correo: $("#correo").val(),
							    	   password:$("#password").val(),
							    	   perfil:$("#perfil").val()
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
						correo: {
							required: true,
							email:true
						},
						password: {
							required: true,
							minlength: 5
						},
						
						nombre: {
							required: true
						},
						apellidos: {
							required: true
						}
						
					},
			
					messages: {
						email: {
							required: "Introduzca un email valido.",
							email: "Introduzca un email valido"
						},
						password: {
							required: "Introduzca una password valido",
							minlength: "Introduzca una password valido"
						},
						nombre:{
							
							required: "Introduzca un nombre valido"
						},
						apellidos: {
							required: "Introduzca un nombre valido"
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


