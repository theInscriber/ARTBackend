<?php

namespace App\Http\Controllers;

use App\Concept;
use App\Exports\PatientsExport;
use App\Http\Resources\PatientResource;
use App\Http\Services\ReportService;
use App\Patient;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Maatwebsite\Excel\Facades\Excel;

class ReportController extends Controller
{
    public function getReportCounts(Request $request)
    {
        $data = [
            'code' => $request->code,
            'type' => $request->type
        ];

        $report = App::make(ReportService::class)->getReport($data);

        $reportPayload = $report->count();

        return response()->json(
            [
                'data' => [
                    'counts' => $reportPayload,
                ]
            ]
        );

    }

    public function getReportPatients(Request $request)
    {
        $data = [
            'code' => $request->code,
            'type' => $request->type
        ];

        $report = App::make(ReportService::class)->getReport($data);

        $reportPayload = PatientResource::collection($report);

        return response()->json(
            [
                'data' => [
                    'patients' => $reportPayload,
                ]
            ]
        );

    }

    public function exportReportPatients(Request $request)
    {
        $data = [
            'code' => $request->code,
            'type' => $request->type
        ];

        $report = App::make(ReportService::class)->getReport($data);

        return Excel::download(new PatientsExport($report),'patient-report.xlsx');
    }

}
