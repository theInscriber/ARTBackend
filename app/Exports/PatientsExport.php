<?php

namespace App\Exports;

use App\Patient;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;


class PatientsExport implements FromView
{
    protected  $patients;

    /**
    * @return \Illuminate\Support\Collection
    */
    public function __construct($patients)
    {
        $this->patients = $patients;
    }

    public function view(): View
    {
        return view('exports.patients', [
            'patients' => $this->patients->all()
        ]);
    }
}
