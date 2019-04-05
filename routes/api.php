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

Route::group([
    'middleware' => 'api'
], function ($router){

    $router->get('/master-cards', 'MasterCardController@getAll');
    $router->get('/master-cards/{masterCard}', 'MasterCardController@get');

    $router->get('/encounter-types', 'EncounterTypeController@getAll');
    $router->get('/encounter-types/{id}', 'EncounterTypeController@get');

    $router->get('/encounters', 'EncounterController@getAll');
    $router->get('/encounters/{id}', 'EncounterController@get');

    $router->get('/concepts', 'ConceptController@getAll');
    $router->get('/concepts/{id}', 'ConceptController@get');

    $router->get('/patients', 'PatientController@getAll');
    $router->post('/patients', 'PatientController@store');
    $router->post('/patients/search', 'PatientController@search');
    $router->get('/patients/{id}', 'PatientController@get');
    $router->get('/patients/{id}/cards', 'PatientController@getCards');

    $router->post('/patient-cards', 'PatientCardController@store');
    $router->get('/patient-cards/{id}', 'PatientCardController@get');
    $router->post('/patient-cards/{id}/data', 'PatientCardController@getData');

    $router->get('/people', 'PersonController@getAll');
    $router->get('/people/{id}', 'PersonController@get');

    $router->post('/observations', 'ObservationController@store');
    $router->get('/observations/{id}', 'ObservationController@get');
});

