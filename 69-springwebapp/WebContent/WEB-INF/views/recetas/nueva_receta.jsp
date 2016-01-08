         
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
								<a href="/">Home</a>
							</li>
							<li class="active">Nueva Receta </li>
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
					
					
					
					
									<sf:form action="${pageContext.request.contextPath}/receta/save" method="post" commandName="receta" class="form-horizontal message-form col-xs-12" id="id-message-form">
                                                           <div class="form-group has-info">
                                                               <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Nombre </label>
                                                                <div class="col-xs-12 col-sm-7">
                                                                    <span class="block input-icon input-icon-right">
                                                                        <sf:input path="nombre" type="text"/> 
                                                                        <span id="msgNombre"></span>
                                                                    </span>
                                                                </div>
                                                            </div>



                                                            <div class="form-group has-info">
                                                               <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> INGREDIENTES </label>

                                                                <div class="col-xs-12 col-sm-7">
                                                                    <span class="block input-icon input-icon-right">
                                                                    	<sf:input path="ingredientes" type="textarea"/>                                                                        
                                                                        <?=form_error('descripcion');?>
                                                                    </span>
                                                                </div>
                                                            </div>

                                                            <div class="form-group has-info">
                                                               <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Tiempos </label>

                                                                <div class="col-xs-12 col-sm-7">
                                                                    <span class="block input-icon input-icon-right">
																		<sf:input path="tiempos" type="textarea"/>   
                                                                    </span>
                                                                </div>
                                                            </div>







                                                    <div class="row">
                                                        <div class="col-sm-6">

                                                            <div class="form-group has-info">
                                                               <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Explicacion </label>

                                                               <div class="col-xs-12 col-sm-7">
                                                                    <span class="block input-icon input-icon-right">
                                                                     <sf:input path="explicacion" type="textarea"/>   
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            
                                                        </div>
                                                        
                                                    </div>



                                    <div class="align-center">
                                    	<input type="submit" value="Guardar cambios" class="btn btn-primary"/>
                                    	<input type="submit" value="Cancelar" class="btn "/>
                                                                                
                                    </div>
						  </sf:form>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
                    </div><!--  class="page-content" -->

		<%@include file="../include/footer.jsp" %>


		