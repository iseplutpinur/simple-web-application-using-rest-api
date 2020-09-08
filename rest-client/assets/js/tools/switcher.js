function mainPageSwitcher(menu = false){
	const loginLayer = `
	<style>
		.container #login-row #login-column #login-box {
		  margin-top: 120px;
		  max-width: 600px;
		  height: 350px;
		  background-color: #EAEAEA;
		}
		.container #login-row #login-column #login-box #login-form {
		  padding: 20px;
		}

		.clear{
			clear: both;
		}
	</style>
        <div class="container" class="shadow-lg">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="login-username-input" class="text-info">Username:</label><br>
                                <input type="text" name="login-username-input" id="login-username-input" class="form-control" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <label for="login-password-input" class="text-info">Password:</label><br>
								<div class="input-group mb-2">
									<input type="password" class="form-control" id="login-password-input" name="login-password-input" placeholder="Password">
									<div class="input-group-append" id="login-password-icon">
										<div class="input-group-text"><span class="far fa-eye-slash"></span></div>
									</div>
								</div>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-block btn-primary" id="login-btn">Login</button>
                            </div>
                            <div class="form-group">
                                <span id="login-alert" class="text-danger text-center"></span>
                            </div>
                        </form>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
		<script>
			$('#login-password-icon').on('click', ()=>{
				let login_password_input = $('#login-password-input');
				let login_password_icon  = $('#login-password-icon');
				if (login_password_input.attr('type') == 'password') {
					login_password_input.attr('type', 'text');
					login_password_icon.html('<div class="input-group-text"><span class="far fa-eye"></span></div>');
				} else if (login_password_input.attr('type') == 'text') {
					login_password_input.attr('type', 'password');
					login_password_icon.html('<div class="input-group-text"><span class="far fa-eye-slash"></span></div>');
				}
			});
			$('#login-btn').on('click', ()=>{
				loginAction({username: $('#login-username-input').val() ,password: $('#login-password-input').val(),alert:  $('#login-alert')});
			});
		</script>
	`;
	const mainLayer  = `
		<div class="wrapper">
		<nav class="main-header navbar navbar-expand navbar-dark">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
				</li>
			</ul>
			<span class="text-white">Aplikasi Catatan Progres Belajar</span>
		</nav>
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
		 <a href="#" class="brand-link">
		   <img src="assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
		   <span class="brand-text font-weight-light">CPB</span>
		 </a>
		 <div class="sidebar os-host os-theme-light os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition os-host-overflow os-host-overflow-y"><div class="os-resize-observer-host observed"><div class="os-resize-observer" style="left: 0px; right: auto;"></div></div><div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;"><div class="os-resize-observer"></div></div><div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 552px;"></div><div class="os-padding"><div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;"><div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
		   <nav class="mt-2">
			    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
			       <li class="nav-item">
			         <a href="" class="nav-link navigation active" id="dashboard">
			           <i class="nav-icon fas fa-tachometer-alt"></i>
			           <p>Dashboard</p>
			         </a>
			       </li>
			         <li class="nav-item">
			           <a href="" class="nav-link navigation" id="jenis">
			             <i class="fa fa-list-alt nav-icon"></i>
			             <p>Jenis</p>
			           </a>
			         </li>
			         <li class="nav-item">
			           <a href="" class="nav-link navigation" id="bahasa">
			             <i class="far fa-file-code nav-icon"></i>
			             <p>Bahasa</p>
			           </a>
			         </li>
			         <li class="nav-item">
			           <a href="" class="nav-link navigation" id="tingkat">
			             <i class="fas fa-layer-group nav-icon"></i>
			             <p>Tingkat</p>
			           </a>
			         </li>
			         <li class="nav-item">
			           <a href="" class="nav-link navigation" id="sign-out-nav">
			             <i class="fas fa-sign-out-alt nav-icon"></i>
			             <p>Signout</p>
			           </a>
			         </li>
			    </ul>
			    <hr style="color-background: white; color: white;">
			    <h4 class="text-center text-white">Kutipan</h4>
			    <div class="text-center text-white" id="kata-kata-container"><strong>Pengingat untuk Selalu Bersyukur</strong><br><span>Jangan terlalu mengejar kehidupan, materi, nanti kita lupa hakikat hidup ini sendiri, dan lupa melaluinya penuh kesyukuran. </span><br><strong>Tere Liye</strong><br><span>Hidup tak melulu tentang mengejar materi, jangan sampai hanya sibuk dengan materi namun lupa bagaimana mensyukuri apa yang telah kita dapatkan. Kata-kata bijak kehidupan ini bisa menjadi pengingat kita untuk selalu bersyukur.<br>Dengan bersyukur, kita bisa menjauhkan perasangka buruk dan bisa menilai segala sesuatu dengan positif. Hidup pun menjadi lebih bermakna jika kita tahu bagaimana caranya bersyukur.</span><b>(No. 58)</b></div>
			    <hr style="color-background: white; color: white;">
		   </nav>
		 </div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="height: 71.0128%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar-corner"></div></div>
		</aside>
		<div class="content-wrapper">
			<div id="main-content">
				<h1 class="text-center mt-5" id="loading-text">Loading...</h1>			
			</div>
			<div id="detali-data-lengkap" style="display: none;"></div>
		</div>
		<div id="toastsContainerTopRight" class="toasts-top-right fixed"></div>
		<footer class="main-footer">
			<strong>&copy; 2020 Isep Lutpi Nur </strong>
		</footer>
		<aside class="control-sidebar control-sidebar-dark"></aside>
		</div>
		<script>
			$(".navigation").on('click', function(event) {
				event.preventDefault();
				if (event.delegateTarget.id != 'sign-out-nav'){
					let allNav = $(".navigation");
					for(let i = 0; i < allNav.length; i++){
						if (this == allNav[i]) {
							allNav[i].setAttribute('class', 'nav-link navigation active');
							document.title = allNav[i].innerText + " | Catatan Progres Belajar";
							switchMenu(this.id);
						} else allNav[i].setAttribute('class', 'nav-link navigation');
					}
				} else mainPageSwitcher();
			});
		</script>
	`;
	if (menu) {
		document.body.setAttribute('class', 'sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed accent-navy');
		document.body.setAttribute('style', 'height: auto;');
		mainPageLayer.html(mainLayer);
		switchMenu('dashboard');
		kataKataRun();
		document.title = "Dashboard | Catatan Progres Belajar";
	} else {
		kataKataStop();
		mainPageLayer.html(loginLayer);
		document.body.setAttribute('style', 'margin: 0; padding: 0; background-color: #17a2b8; height: 100vh;');
		document.title = "Login";
	}

}

function switchMenu(id){
	layerSwitch();
	mainLoading();
	cekKoneksi = false;
	switch (id) {
		case 'dashboard':
			dashboard();
			break;
		case 'jenis':
			jenis();
			break;
		case 'bahasa':
			bahasa();
			break;
		case 'tingkat':
			tingkat();
			break;
		default:
			mainRender('error');
			break;
	}
}

function loginAction(data){
	if(enkripsi(data.username) == '0049007300650070006c0075007400700069' && enkripsi(data.password) == '0031003200330034'){
		mainPageSwitcher('0031003200330034');
	} else {
		data.alert.text('Username atau password yang anda masukan salah')
	}
}

function enkripsi(data){
	let hex, i;
	let result = "";

	for (i=0; i<data.length; i++) {
		hex = data.charCodeAt(i).toString(16);
		result += ("000"+hex).slice(-4);
	}
	return result;
}
mainPageSwitcher();