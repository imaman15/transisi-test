<?php

namespace App\Http\Controllers;

use App\Models\Employees;
use Illuminate\Http\Request;

use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;
use App\Imports\EmployeesImport;
use App\Models\Companies;
use PDF;

class EmployeesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = Employees::with('companies')->paginate(5);
        return view('employees.index', compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function show(Employees $employees)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function edit(Employees $employees)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employees $employees)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employees $employees)
    {
        //
    }

    public function import(Request $request)
    {

        $request->validate([
            'file' => 'required|mimes:xlsx'
        ]);

        $file = $request->file('file');
        Excel::import(new EmployeesImport, $file);

        return redirect('/employees')->with('success', 'File berhasil di import');
    }

    public function pdf($id)
    {
        $companies = Companies::where('id', $id)->first();
        $companies->name = ucwords(strtolower($companies->name));
        $employees = Employees::where('company_id', $id)->get();
        $pdf = PDF::loadView('employees.pdf', ['employees' => $employees, 'company' => $companies]);
        return $pdf->stream($companies->name . '.pdf');
        // $pdf->download($companies->name . '.pdf');
    }
}
