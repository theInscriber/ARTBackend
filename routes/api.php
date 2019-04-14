<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'auth', 'middleware' => 'api'], function () {
    Route::post('login', 'APIAuthController@login');
    Route::post('register', 'APIAuthController@register');
    Route::post('logout', 'APIAuthController@logout');
    Route::post('refresh', 'APIAuthController@refresh');
    Route::post('me', 'APIAuthController@me');
});


Route::group([
    'middleware' => 'auth:api'
], function ($router){

    $router->get('/master-cards', 'MasterCardController@getAll');
    $router->get('/master-cards/{masterCard}', 'MasterCardController@get');

    $router->get('/encounter-types', 'EncounterTypeController@getAll');
    $router->get('/encounter-types/{encounterType}', 'EncounterTypeController@get');

    $router->get('/concepts', 'ConceptController@getAll');
    $router->get('/concepts/{concept}', 'ConceptController@get');

    $router->get('/patients', 'PatientController@getAll');
    $router->post('/patients', 'PatientController@store');
    $router->post('/patients/search', 'PatientController@search');
    $router->get('/patients/{patient}', 'PatientController@get');
    $router->get('/patients/{patient}/cards', 'PatientController@getCards');

    $router->post('/patient-cards', 'PatientCardController@store');
    $router->get('/patient-cards/{patientCard}', 'PatientCardController@get');
    $router->post('/patient-cards/{patientCard}/data', 'PatientCardController@getData');

    $router->get('/people', 'PersonController@getAll');
    $router->get('/people/{person}', 'PersonController@get');

    $router->post('/observations', 'ObservationController@store');
    $router->get('/observations/{observation}', 'ObservationController@get');

    $router->get('/regions', 'RegionController@getAll');
    $router->get('/regions/{region}', 'RegionController@get');
    $router->get('/regions/{region}/districts', 'RegionController@getDistricts');

    $router->get('/districts', 'DistrictController@getAll');
    $router->get('/districts/{district}', 'DistrictController@get');
    $router->get('/districts/{district}/traditional-authorities', 'DistrictController@getTraditionalAuthorities');

    $router->get('/traditional-authorities', 'TraditionalAuthorityController@getAll');
    $router->get('/traditional-authorities/{traditionalAuthority}', 'TraditionalAuthorityController@get');
    $router->get('/traditional-authorities/{traditionalAuthority}/villages', 'TraditionalAuthorityController@getVillages');

    $router->get('/villages', 'VillageController@getAll');
    $router->get('/villages/{village}', 'VillageController@get');

    $router->get('/reports/counts', 'ReportController@getReportCounts');
    $router->get('/reports/patients', 'ReportController@getReportPatients');
    $router->get('/reports/export', 'ReportController@exportReportPatients');
});



