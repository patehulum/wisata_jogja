<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('{locale}/home', 'HomeController@index');

//Login Authentication
Route::get('/login', 'authController@login')->name('login');
Route::post('/postlogin', 'authController@postlogin');
Route::get('/logout','authController@logout');

Route::group(['middleware'=>'auth'],function(){

	//Dasboard 
	Route::get('/admin','DasboardController@index');

	//wisataadmin
	Route::get('/wisataadmin', 'DaftarWisataController@index');
	Route::get('/addwisata','DaftarWisataController@add');
	Route::post('wisataadmin/create','DaftarWisataController@create');
	Route::get('{id}/editwisata','DaftarWisataController@edit');
	Route::post('{id}/updatewisata','DaftarWisataController@update');
	Route::get('{id}/hapuswisata','DaftarWisataController@delete');

	//KulinerAdmin
	Route::get('/kulineradmin', 'KulinerAdminController@index');
	Route::get('addkuliner','KulinerAdminController@add');
	Route::post('kulinercreate','KulinerAdminController@create');
	Route::get('{id}/editkuliner','KulinerAdminController@edit');
	Route::post('{id}/updatekuliner','KulinerAdminController@update');
	Route::get('{id}/hapuskuliner','KulinerAdminController@delete');

	//PenginapanAdmin
	Route::get('/penginapanadmin','PenginapanAdminController@index');
	Route::get('addpenginapan','PenginapanAdminController@add');
	Route::post('penginapancreate','PenginapanAdminController@create');
	Route::get('{id}/editpenginapan','PenginapanAdminController@edit');
	Route::post('{id}/updatepenginapan','PenginapanAdminController@update');
	Route::get('{id}/hapuspenginapan','PenginapanAdminController@delete');

	//Touradmin
	Route::get('/touradmin','TourAdminController@index');
	Route::get('addtour','TourAdminController@add');
	Route::post('tourcreate','TourAdminController@create');
	Route::get('{id}/edittour','TourAdminController@edit');
	Route::post('{id}/updatetour','TourAdminController@update');
	Route::get('{id}/hapustour','TourAdminController@delete');
});

//destinasiuser
Route::get('{locale}/wisata-alam', 'destinasiController@wisata_alam');
Route::get('{locale}/wisata-pantai', 'destinasiController@wisata_pantai');
Route::get('{locale}/wisata-museum', 'destinasiController@wisata_museum');
Route::get('{locale}/wisata-sejarah', 'destinasiController@wisata_sejarah');
Route::get('{locale}/wisata-buatan', 'destinasiController@wisata_buatan');
//Detail wisata
Route::get('{locale}/destinasi/{id}/lihatwisata','destinasiController@lihat');

//kulineruser
Route::get('{locale}/kuliner', 'KulinerController@index');
Route::get('{locale}/{id}/lihatkuliner','KulinerController@lihat');

//penginapanuser
Route::get('{locale}/penginapan', 'PenginapanController@index');
Route::get('{locale}/{id}/lihatpenginapan','PenginapanController@lihat');

//kontakuser
Route::get('{locale}/kontak', 'KontakController@index');

//TourUSer
Route::get('{locale}/tourism','TourGuideController@index');
Route::get('{locale}/{id}/lihatour','TourGuideController@lihat');

//PetaUser
Route::get('{locale}/maps','PetaController@index');

//About User
Route::get('{locale}/tentang','TentangController@index');

//mail
Route::get('{locale}/kirimemail','KontakEmailController@index');
Route::post('kontak/sendemail','KontakEmailController@index');