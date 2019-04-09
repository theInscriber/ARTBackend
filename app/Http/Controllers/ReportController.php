<?php

namespace App\Http\Controllers;

use App\Concept;
use App\Exports\PatientsExport;
use App\Http\Resources\PatientResource;
use App\Patient;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ReportController extends Controller
{

    public function getReportCounts(Request $request)
    {
        $patients = Patient::all();
        $reportPayload = [];

        $data = $request->only('code','type');

        if ($data['code'] == 1)
        {
            $dueViralLoad = $this->dueViralLoad($patients);

            if ($data['type'] == 'due6Months')
                $reportPayload['counts'] = $dueViralLoad['due6Months']->count();
            elseif ($data['type'] == 'due12Months')
                $reportPayload['counts'] = $dueViralLoad['due12Months']->count();
            else
                $reportPayload['counts'] = $dueViralLoad['dueAfter12Months']->count();

        }elseif ($data['code'] == 2)
        {
            $nextAppointmentTomorrow = $this->nextAppointmentTomorrow($patients);
            $reportPayload['counts'] = $nextAppointmentTomorrow->count();
        }elseif ($data['code'] == 3)
        {
            $missedAppointments = $this->missedAppointments($patients);
            $reportPayload['counts'] = $missedAppointments->count();
        }elseif ($data['code'] == 4)
        {
            $lastViralLoad = $this->lastViralLoad($patients);
            $reportPayload['counts'] = $lastViralLoad->count();
        }elseif ($data['code'] == 5)
        {
            $everyoneOnDTG = $this->everyoneOnDTG($patients);
            $reportPayload['counts'] = $everyoneOnDTG->count();
        }elseif ($data['code'] == 6)
        {
            $defaulters = $this->defaulters($patients);
            if ($data['type'] == 'CDCDefaulters')
                $reportPayload['counts'] = $defaulters['CDCDefaulters']->count();
            else
                $reportPayload['counts'] = $defaulters['MOHDefaulters']->count();

        }elseif ($data['code'] == 7)
        {
            $txCurrent = $this->txCurrent($patients);

            if ($data['type'] == 'CDCTXCurrent')
                $reportPayload['counts'] = $txCurrent['CDCTXCurrent']->count();
            else
                $reportPayload['counts'] = $txCurrent['MOHTXCurrent']->count();
        }

        return response()->json(
            [
                'data' => [
                    'counts' => $reportPayload['counts'],
                ]
            ]
        );
    }

    public function getReportPatients(Request $request)
    {
        $patients = Patient::all();
        $reportPayload = [];

        $data = $request->only('code','type');

        if ($data['code'] == 1)
        {
            $dueViralLoad = $this->dueViralLoad($patients);

            if ($data['type'] == 'due6Months')
                $reportPayload['counts'] = PatientResource::collection($dueViralLoad['due6Months']);
            elseif ($data['type'] == 'due12Months')
                $reportPayload['counts'] = PatientResource::collection($dueViralLoad['due12Months']);
            else
                $reportPayload['counts'] = PatientResource::collection($dueViralLoad['dueAfter12Months']);

        }elseif ($data['code'] == 2)
        {
            $nextAppointmentTomorrow = $this->nextAppointmentTomorrow($patients);
            $reportPayload['counts'] = PatientResource::collection($nextAppointmentTomorrow);
        }elseif ($data['code'] == 3)
        {
            $missedAppointments = $this->missedAppointments($patients);
            $reportPayload['counts'] = PatientResource::collection($missedAppointments);
        }elseif ($data['code'] == 4)
        {
            $lastViralLoad = $this->lastViralLoad($patients);
            $reportPayload['counts'] = PatientResource::collection($lastViralLoad);
        }elseif ($data['code'] == 5)
        {
            $everyoneOnDTG = $this->everyoneOnDTG($patients);
            $reportPayload['counts'] = PatientResource::collection($everyoneOnDTG);
        }elseif ($data['code'] == 6)
        {
            $defaulters = $this->defaulters($patients);
            if ($data['type'] == 'CDCDefaulters')
                $reportPayload['counts'] = PatientResource::collection($defaulters['CDCDefaulters']);
            else
                $reportPayload['counts'] = PatientResource::collection($defaulters['MOHDefaulters']);

        }elseif ($data['code'] == 7)
        {
            $txCurrent = $this->txCurrent($patients);

            if ($data['type'] == 'CDCTXCurrent')
                $reportPayload['counts'] = PatientResource::collection($txCurrent['CDCTXCurrent']);
            else
                $reportPayload['counts'] = PatientResource::collection($txCurrent['MOHTXCurrent']);
        }

        return response()->json(
            [
                'data' => [
                    'patients' => $reportPayload['counts'],
                ]
            ]
        );
    }

    public function exportReportPatients(Request $request)
    {
        $patients = Patient::all();
        $reportPayload = [];

        $data = $request->only('code','type');

        if ($data['code'] == 1)
        {
            $dueViralLoad = $this->dueViralLoad($patients);

            if ($data['type'] == 'due6Months')
                $reportPayload['counts'] = $dueViralLoad['due6Months'];
            elseif ($data['type'] == 'due12Months')
                $reportPayload['counts'] = $dueViralLoad['due12Months'];
            else
                $reportPayload['counts'] = $dueViralLoad['dueAfter12Months'];

        }elseif ($data['code'] == 2)
        {
            $nextAppointmentTomorrow = $this->nextAppointmentTomorrow($patients);
            $reportPayload['counts'] = $nextAppointmentTomorrow;
        }elseif ($data['code'] == 3)
        {
            $missedAppointments = $this->missedAppointments($patients);
            $reportPayload['counts'] = $missedAppointments;
        }elseif ($data['code'] == 4)
        {
            $lastViralLoad = $this->lastViralLoad($patients);
            $reportPayload['counts'] = $lastViralLoad;
        }elseif ($data['code'] == 5)
        {
            $everyoneOnDTG = $this->everyoneOnDTG($patients);
            $reportPayload['counts'] = $everyoneOnDTG;
        }elseif ($data['code'] == 6)
        {
            $defaulters = $this->defaulters($patients);
            if ($data['type'] == 'CDCDefaulters')
                $reportPayload['counts'] = $defaulters['CDCDefaulters'];
            else
                $reportPayload['counts'] = $defaulters['MOHDefaulters'];

        }elseif ($data['code'] == 7)
        {
            $txCurrent = $this->txCurrent($patients);

            if ($data['type'] == 'CDCTXCurrent')
                $reportPayload['counts'] = $txCurrent['CDCTXCurrent'];
            else
                $reportPayload['counts'] = $txCurrent['MOHTXCurrent'];
        }

        return Excel::download(new PatientsExport($reportPayload['counts']), 'patient-report.xlsx');
    }

    public function dueViralLoad($patients)
    {
        $today = Carbon::today();
        $startDateConcept = Concept::find(23);
        $visitDateConcept = Concept::find(32);
        $viralLoadSampleTakenConcept = Concept::find(45);
        $adverseOutcomeConcept = Concept::find(48);

        $due6Months = collect();
        $due12Months = collect();
        $dueAfter12Months = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();

            #Get ConceptObs
            #StartDateObs
            $startDate = $patient->person->observations->where('concept_id', $startDateConcept->concept_id)->first();
            if (is_null($startDate))
                continue;

            if (empty($startDate->value))
            {
                $firstEncounter = $patient->encounters->first();
                if (is_null($firstEncounter))
                    continue;

                $startDate = $firstEncounter->observations->where('concept_id',$visitDateConcept->concept_id);
            }
            #VisitDateObs
            $visitDate = $lastEncounter->observations->where('concept_id', $visitDateConcept->concept_id)->first();

            #ViralLoadSampleTakenObs
            $viralLoadSampleTaken = $lastEncounter->observations->where('concept_id', $viralLoadSampleTakenConcept->concept_id)->first();

            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();
            if (is_null($visitDate))
                continue;
            #Get Month Difference for 6,12,After 12
            $parsedVisitDate = Carbon::parse($visitDate->value);
            $dateAfter6Months = Carbon::parse($startDate->value)->addMonth(6);
            $dateAfter12Months = Carbon::parse($startDate->value)->addMonth(12);
            $dateAfter13Months = $dateAfter12Months->addMonth(1);

            #Check if Past Today and if not Dead
            if (
                $dateAfter6Months->greaterThan($today) &&
                $dateAfter6Months->lessThanOrEqualTo($dateAfter12Months) &&
                $viralLoadSampleTaken->value == 'Bled' &&
                $adverseOutcome->value != 'D'
            )
               $due6Months->push($patient);
            elseif (
                $dateAfter12Months->greaterThan($today) &&
                $dateAfter13Months->lessThanOrEqualTo($today) &&
                $viralLoadSampleTaken->value == 'Bled' &&
                $adverseOutcome->value != 'D'

            )
                $due12Months->push($patient);
            elseif (
                $dateAfter13Months->greaterThan($today) &&
                $dateAfter13Months->greaterThan($parsedVisitDate) &&
                $viralLoadSampleTaken->value == 'Bled' &&
                $adverseOutcome->value != 'D'
            )
                $dueAfter12Months->push($patient);
        };

        return [
            'due6Months' => $due6Months,
            'due12Months' => $due12Months,
            'dueAfter12Months' => $dueAfter12Months
        ];
    }

    public function nextAppointmentTomorrow($patients)
    {
        $tomorrow = Carbon::tomorrow();
        $nextAppointmentDateConcept = Concept::find(47);
        $adverseOutcomeConcept = Concept::find(48);

        $tomorrowsAppointments = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();

            #Get ConceptObs
            #Next Appointment DateObs
            $nextAppointmentDate = $patient->person->observations->where('concept_id', $nextAppointmentDateConcept->concept_id)->first();

            if (is_null($lastEncounter))
                continue;
            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();

            if (is_null($nextAppointmentDate->value))
                continue;

            #Check for Time
            $parsedNextAppointmentDate = Carbon::parse($nextAppointmentDate->value);

            #Check if Past Today and if not Dead
            if (
                $parsedNextAppointmentDate->equalTo($tomorrow) &&
                is_null($adverseOutcome->value)
            )
                $tomorrowsAppointments->push($patient);
        };

        return $tomorrowsAppointments;
    }

    public function missedAppointments($patients, $days = 14)
    {
        $today = Carbon::today();
        $nextAppointmentDateConcept = Concept::find(47);
        $adverseOutcomeConcept = Concept::find(48);

        $missedAppointments = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();
            if (is_null($lastEncounter))
                continue;

            #Get ConceptObs
            #Next Appointment DateObs
            $nextAppointmentDate = $lastEncounter->observations->where('concept_id', $nextAppointmentDateConcept->concept_id)->first();

            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();

            if (is_null($nextAppointmentDate))
                continue;

            if (is_null($nextAppointmentDate->value))
                continue;

            #Check for Time
            $parsedNextAppointmentDate = Carbon::parse($nextAppointmentDate->value);

            #Check if Past Today and if not Dead
            if (
                $parsedNextAppointmentDate->addDays($days)->greaterThan($today) &&
                is_null($adverseOutcome->value)
            )
                $missedAppointments->push($patient);
        };

        return $missedAppointments;
    }

    public function lastViralLoad($patients)
    {
        $lastViralLoadConcept = Concept::find(46);
        $adverseOutcomeConcept = Concept::find(48);

        $lastViralLoadOver1000 = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();
            if (is_null($lastEncounter))
                continue;

            #Get ConceptObs
            #Last ViralLoad Obs
            $lastViralLoad = $lastEncounter->observations->where('concept_id', $lastViralLoadConcept->concept_id)->first();

            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();

            if (is_null($lastViralLoad))
                continue;

            if (is_null($lastViralLoad->value))
                continue;

            #Check if Past Today and if not Dead
            if (
                $lastViralLoad->value > 1000 &&
                is_null($adverseOutcome->value)
            )
                $lastViralLoadOver1000->push($patient);
        };

        return $lastViralLoadOver1000;
    }

    public function everyoneOnDTG($patients)
    {
        $ARTRegimenConcept = Concept::find(39);
        $adverseOutcomeConcept = Concept::find(48);

        $allOnDTG = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();
            if (is_null($lastEncounter))
                continue;

            #Get ConceptObs
            #ART RegimenObs
            $ARTRegimen = $lastEncounter->observations->where('concept_id', $ARTRegimenConcept->concept_id)->first();

            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();

            if (is_null($ARTRegimen))
                continue;
            if (is_null($ARTRegimen->value))
                continue;

            #Check if Past Today and if not Dead
            if (
                (
                    $ARTRegimen->value == '12A' ||
                    $ARTRegimen->value == '13A' ||
                    $ARTRegimen->value == '14A'
                ) &&
                is_null($adverseOutcome->value)
            )
                $allOnDTG->push($patient);
        };

        return $allOnDTG;
    }

    public function defaulters($patients)
    {
        $today = Carbon::today();
        $nextAppointmentDateConcept = Concept::find(47);
        $adverseOutcomeConcept = Concept::find(48);

        $defaultedBy31Days = collect();
        $defaultedBy61Days = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();
            if (is_null($lastEncounter))
                continue;

            #Get ConceptObs
            #Next Appointment DateObs
            $nextAppointmentDate = $lastEncounter->observations->where('concept_id', $nextAppointmentDateConcept->concept_id)->first();

            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();

            if (is_null($nextAppointmentDate))
                continue;

            if (is_null($nextAppointmentDate->value))
                continue;

            #Check for Time
            $parsedNextAppointmentDate = Carbon::parse($nextAppointmentDate->value);
            $defaultedBy31 = $parsedNextAppointmentDate->addDays(31);
            $defaultedBy61 = $parsedNextAppointmentDate->addDays(61);

            #Check if Past Today and if not Dead
            if (
                $defaultedBy31->greaterThan($today) &&
                is_null($adverseOutcome->value)
            )
                $defaultedBy31Days->push($patient);

            if (
                $defaultedBy61->greaterThan($today) &&
                is_null($adverseOutcome->value)
            )
                $defaultedBy61Days->push($patient);
        };

        return [
            'CDCDefaulters' => $defaultedBy31Days,
            'MOHDefaulters' => $defaultedBy61Days,
        ];
    }

    public function txCurrent($patients)
    {
        $defaulters = $this->defaulters($patients);

        $adverseOutcomeConcept = Concept::find(48);

        $patientsWithoutOutcome = $patients->filter(function ($patient) use ($adverseOutcomeConcept){
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();
            if (is_null($lastEncounter))
                return false;

            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();

            #Check if Past Today and if not Dead
            if (
            is_null($adverseOutcome)
            )
                return true;

            if (
            is_null($adverseOutcome->value)
            )
                return true;

            return false;
        });


        return [
            'CDCTXCurrent' => $patientsWithoutOutcome->diff($defaulters['CDCDefaulters']),
            'MOHTXCurrent' => $patientsWithoutOutcome->diff($defaulters['MOHDefaulters']),
        ];
    }

    public function outcomeSummary($patients)
    {
        $adverseOutcomeConcept = Concept::find(48);

        $outcomeD = collect();
        $outcomeDef = collect();
        $outcomeStop = collect();
        $outcomeTO = collect();

        foreach ($patients as $patient)
        {
            #Get Last Encounter
            $lastEncounter = $patient->encounters->last();

            #Get ConceptObs
            #AdverseOutcome
            $adverseOutcome = $lastEncounter->observations->where('concept_id', $adverseOutcomeConcept->concept_id)->first();


            #Check if Past Today and if not Dead
            if (
                $adverseOutcome->value == 'D'
            )
                $outcomeD->push($patient);
            elseif (
                $adverseOutcome->value == 'Def'
            )
                $outcomeDef->push($patient);
            elseif (
                $adverseOutcome->value == 'Stop'
            )
                $outcomeStop->push($patient);
            elseif (
                $adverseOutcome->value == 'TO'
            )
                $outcomeTO->push($patient);
        };


        return [
            'dead' => $outcomeD,
            'defaulted' => $outcomeDef,
            'stopped' => $outcomeStop,
            'to' => $outcomeTO,
        ];
    }


}
