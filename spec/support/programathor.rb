RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, "https://programathor.com.br/jobs/page/1")
      .with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'})
      .to_return(status: 200,
        body:
  '<html>
    <head></head>
    <body>
      <div class="wrapper-jobs-list">
        <div class="container">
            <div class="hidden-xs hidden-sm">
                <a href="/users/sign_up">
                    <div class="banner-signup background-gray">
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="text-center hidden-xs">
                                    <img style="width: 90px;" src="https://programathor.com.br/assets/thor-bca4248194317ab35a8036568b62ab0860ca7528fa374e5a32580e553f1f7ceb.png" alt="Thor">

                                </div>
                            </div>
                            <div class="col-sm-7">
                                <h4>Crie um perfil na ProgramaThor para
                                    <strong>ser notificado assim que acontecer um matching entre uma vaga e o seu perfil</strong>.
                                </h4>
                            </div>
                            <div class="col-sm-3">
                                <br class="hidden-xs">
                                <div class="text-center">
                                    <a class="btn btn-success btn-lg animated zoomIn" href="/users/sign_up">Me cadastrar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <!--  Desktop and Tablets -->
                    <div class="hidden-xs hidden-sm">
                        <p>
                            <strong>Filtrar: </strong>
                            <a href="/jobs">
                                <span class="tag-list background-gray tag-shadow">
        TODAS
                                    <i class="fa fa-repeat" aria-hidden="true"></i>
                                </span>
                            </a>
                            <br>
                            <br>

                        </p>
                        <h2 class="text-16">
                            <strong>Tipo de contrato</strong>
                        </h2>
                        <a class="contract-tag tag-list background-gray tag-shadow" href="/jobs?contract_type=CLT">CLT</a>
                        <a class="contract-tag tag-list background-gray tag-shadow" href="/jobs?contract_type=PJ">PJ</a>
                        <a class="contract-tag tag-list background-gray tag-shadow" href="/jobs?contract_type=Est%C3%A1gio">Estágio</a>
                        <br></br>
                        <h2 class="text-16">
                            <strong>Nível de experiência</strong>
                        </h2>
                        <a class="expertise-tag tag-list background-gray tag-shadow" href="/jobs?expertise=J%C3%BAnior">Júnior</a>
                        <a class="expertise-tag tag-list background-gray tag-shadow" href="/jobs?expertise=Pleno">Pleno</a>
                        <a class="expertise-tag tag-list background-gray tag-shadow" href="/jobs?expertise=S%C3%AAnior">Sênior</a>
                        <br></br>
                        <h2 class="text-16">
                            <strong>Tamanho da empresa</strong>
                        </h2>
                        <a class="company-tag tag-list background-gray tag-shadow" href="/jobs?company_type=Startup">Startup</a>
                        <br>
                        <a class="company-tag tag-list background-gray tag-shadow" href="/jobs?company_type=Pequena+ou+M%C3%A9dia+empresa">Pequena ou Média empresa</a>
                        <br>
                        <a class="company-tag tag-list background-gray tag-shadow" href="/jobs?company_type=Grande+empresa">Grande empresa</a>
                        <br>
                        <br>
                        <h2 class="text-16">
                            <strong>Localização da vaga</strong>
                        </h2>
                        <form action="/jobs" method="get">
                            <input type="text" name="place" class="form-control pull-left width-75p" placeholder="Cidade">
                            <button type="submit" class="btn btn-default">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </button>
                        </form>
                        <br>
                        <a class="remote-tag tag-list background-gray tag-shadow" href="/jobs?remoto=true">Remoto</a>
                        <br>
                    </div>
                    <!-- Mobile -->
                    <div class="hidden-md hidden-lg">
                        <div class="filter-menu mobile">
                            <form>
                                <div class="panel panel-mobile">
                                    <div class="panel-heading" role="tab" id="headingFiltersMobile">
                                        <a class="panel-title accordion-toggle collapsed" style="color: #2A3F54!important" role="button" data-toggle="collapse" href="#collapseFiltersMobile" aria-expanded="false" aria-controls="collapseFiltersMobile">
                                            <i class="fa fa-filter" aria-hidden="true"></i>
                                            <strong>Filtrar</strong>
                                        </a>
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div id="collapseFiltersMobile" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFiltersMobile">
                                        <div class="panel-body">
                                            <div class="panel-group" id="filter-menu-mobile" role="tablist" aria-multiselectable="true">
                                                <div class="panel panel-mobile">
                                                    <div class="panel-heading" role="tab" id="headingOneMobile">
                                                        <a class="panel-title accordion-toggle collapsed" role="button" data-toggle="collapse" data-parent="#filter-menu-mobile" href="#collapseOneMobile" aria-expanded="false" aria-controls="collapseOneMobile">
        Tipo de contrato
        </a>
                                                        <!-- /.panel-title -->

                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div id="collapseOneMobile" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOneMobile">
                                                        <div class="panel-body">
                                                            <a class="contract-tag tag-list background-gray tag-shadow" href="/jobs?contract_type=CLT">CLT</a>
                                                            <a class="contract-tag tag-list background-gray tag-shadow" href="/jobs?contract_type=PJ">PJ</a>
                                                            <a class="contract-tag tag-list background-gray tag-shadow" href="/jobs?contract_type=Est%C3%A1gio">Estágio</a>
                                                        </div>
                                                        <!-- /.panel-body -->

                                                    </div>
                                                    <!-- /.panel-collapse -->

                                                </div>
                                                <!-- /.panel -->
                                                <div class="panel panel-mobile">
                                                    <div class="panel-heading" role="tab" id="headingTwoMobile">
                                                        <a class="panel-title accordion-toggle collapsed" role="button" data-toggle="collapse" data-parent="#filter-menu-mobile" href="#collapseTwoMobile" aria-expanded="false" aria-controls="collapseTwoMobile">
        Nível de experiência
        </a>
                                                        <!-- /.panel-title -->

                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div id="collapseTwoMobile" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwoMobile">
                                                        <div class="panel-body">
                                                            <a class="expertise-tag tag-list background-gray tag-shadow" href="/jobs?expertise=J%C3%BAnior">Júnior</a>
                                                            <a class="expertise-tag tag-list background-gray tag-shadow" href="/jobs?expertise=Pleno">Pleno</a>
                                                            <a class="expertise-tag tag-list background-gray tag-shadow" href="/jobs?expertise=S%C3%AAnior">Sênior</a>
                                                        </div>
                                                        <!-- /.panel-body -->

                                                    </div>
                                                    <!-- /.panel-collapse -->

                                                </div>
                                                <!-- /.panel -->
                                                <div class="panel panel-mobile">
                                                    <div class="panel-heading" role="tab" id="headingThreeMobile">
                                                        <a class="panel-title accordion-toggle collapsed" role="button" data-toggle="collapse" data-parent="#filter-menu-mobile" href="#collapseThreeMobile" aria-expanded="false" aria-controls="collapseThreeMobile">
        Tamanho da empresa
        </a>
                                                        <!-- /.panel-title -->

                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div id="collapseThreeMobile" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThreeMobile">
                                                        <div class="panel-body">
                                                            <a class="company-tag tag-list background-gray tag-shadow" href="/jobs?company_type=Startup">Startup</a>
                                                            <br>
                                                            <a class="company-tag tag-list background-gray tag-shadow" href="/jobs?company_type=Pequena+ou+M%C3%A9dia+empresa">Pequena ou Média empresa</a>
                                                            <br>
                                                            <a class="company-tag tag-list background-gray tag-shadow" href="/jobs?company_type=Grande+empresa">Grande empresa</a>
                                                            <br>

                                                        </div>
                                                        <!-- /.panel-body -->

                                                    </div>
                                                    <!-- /.panel-collapse -->

                                                </div>
                                                <!-- /.panel -->
                                                <div class="panel panel-mobile">
                                                    <div class="panel-heading" role="tab" id="headingFourMobile">
                                                        <a class="panel-title accordion-toggle collapsed" role="button" data-toggle="collapse" data-parent="#filter-menu-mobile" href="#collapseFourMobile" aria-expanded="false" aria-controls="collapseFourMobile">
        Remoto
        </a>
                                                        <!-- /.panel-title -->

                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div id="collapseFourMobile" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFourMobile">
                                                        <div class="panel-body">
                                                            <a class="remote-tag tag-list background-gray tag-shadow" href="/jobs?remoto=true">Sim</a>
                                                        </div>
                                                        <!-- /.panel-body -->

                                                    </div>
                                                    <!-- /.panel-collapse -->

                                                </div>
                                                <!-- /.panel -->

                                            </div>
                                            <!-- /.panel-group -->

                                        </div>
                                        <!-- /.panel-body -->

                                    </div>
                                    <!-- /.panel-collapse -->

                                </div>
                                <!-- /.panel -->

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="cell-list ">
                        <a href="/jobs/2747-programador-laravel-remoto">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="cell-logo hidden-xs">
                                        <img src="https://programathor.com.br/assets/company_avatar-d1dce866939c838eba0b8ca892cc73cd59f7616fa1efaeb2e3596cb242fe3d77.png" alt="Startup Suiça" class="logo-list">
                                    </div>
                                </div>
                                <div class="col-sm-9">
                                    <div class="cell-list-content">
                                        <h3>Programador Laravel - Remoto
                                            <span class="new-label">NOVA</span>
                                        </h3>
                                        <div class="cell-list-content-icon" >
                                            <span>
                                                <i class="fa fa-briefcase"></i>Startup Suiça
                                            </span>
                                            <span>
                                                <i class="fas fa-map-marker-alt"></i>Remoto
                                            </span>
                                            <span>
                                                <i class="fa fa-building"></i>Startup
                                            </span>
                                            <span>
                                                <i class="far fa-money-bill-alt"></i>Até R$1.500
                                            </span>
                                            <span>
                                                <i class="far fa-chart-bar"></i>Júnior
                                            </span>
                                            <span>
                                                <i class="far fa-file-alt"></i>Estágio / PJ / CLT
                                            </span>
                                        </div>
                                        <div>
                                            <span class="tag-list background-gray">CSS</span>
                                            <span class="tag-list background-gray">PHP</span>
                                            <span class="tag-list background-gray">API</span>
                                            <span class="tag-list background-gray">Laravel</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="cell-list ">
                        <a href="/jobs/2739-desenvolvedor-ruby-senior-e-especialista-5-vagas">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="cell-logo hidden-xs">
                                        <div class="logo-list">
                                            <img alt="Locaweb" src="https://res.cloudinary.com/programathor/image/upload/c_fit,h_100,w_100/v1532699190/egzpb8xwki3lqwhprmdt.png" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-9">
                                    <div class="cell-list-content">
                                        <h3>Desenvolvedor Ruby Sênior e Especialista (5 Vagas)
                                            <span class="new-label">NOVA</span>
                                        </h3>
                                        <div class="cell-list-content-icon" >
                                            <span>
                                                <i class="fa fa-briefcase"></i>Locaweb
                                            </span>
                                            <span>
                                                <i class="fas fa-map-marker-alt"></i>SP
                                            </span>
                                            <span>
                                                <i class="fa fa-building"></i>Grande empresa
                                            </span>
                                            <span>
                                                <i class="far fa-chart-bar"></i>Sênior
                                            </span>
                                            <span>
                                                <i class="far fa-file-alt"></i>CLT
                                            </span>
                                        </div>
                                        <div>
                                            <span class="tag-list background-gray">JavaScript</span>
                                            <span class="tag-list background-gray">Java</span>
                                            <span class="tag-list background-gray">CSS</span>
                                            <span class="tag-list background-gray">HTML</span>
                                            <span class="tag-list background-gray">Ruby on Rails</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="cell-list ">
                        <a href="/jobs/2766-desenvolvedor-a-c-net">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="cell-logo hidden-xs">
                                        <div class="logo-list">
                                            <img alt="Radix Engenharia e Software" src="https://res.cloudinary.com/programathor/image/upload/c_fit,h_100,w_100/v1525890694/ejey1asqa9mfxecspgsg.jpg" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-9">
                                    <div class="cell-list-content">
                                        <h3>Desenvolvedor(a) C#.NET
                                            <span class="new-label">NOVA</span>
                                        </h3>
                                        <div class="cell-list-content-icon" >
                                            <span>
                                                <i class="fa fa-briefcase"></i>Radix Engenharia e Software
                                            </span>
                                            <span>
                                                <i class="fas fa-map-marker-alt"></i>Rio de Janeiro
                                            </span>
                                            <span>
                                                <i class="fa fa-building"></i>Grande empresa
                                            </span>
                                            <span>
                                                <i class="far fa-chart-bar"></i>Pleno
                                            </span>
                                            <span>
                                                <i class="far fa-file-alt"></i>Estágio / CLT
                                            </span>
                                        </div>
                                        <div>
                                            <span class="tag-list background-gray">.NET</span>
                                            <span class="tag-list background-gray">Angular</span>
                                            <span class="tag-list background-gray">C#</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </body>
  </html>',
      headers: {})
  end
end
