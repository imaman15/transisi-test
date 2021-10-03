<?php

namespace App\Http\Controllers;

use App\Models\Companies;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;

use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;
use App\Imports\CompaniesImport;

class CompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies = Companies::with('employees')->paginate(5);
        return view('companies.index', compact('companies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('companies.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validateData($request);

        $pathLogo = $request->logo->store('company');

        $companies = Companies::create([
            'name' => $request->name,
            'email' => $request->email,
            'logo' => $pathLogo,
            'website' => $request->website,
        ]);

        if ($companies) {
            return redirect('/companies')->with('success', 'Data berhasil disimpan!');
        } else {
            return redirect('/companies')->with('error', 'Data gagal disimpan!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $companies = Companies::find($id);
        return view('companies.show', compact('companies'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $companies = Companies::find($id);
        return view('companies.edit', compact('companies'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validateData($request, $id);
        $companies = Companies::find($id);
        $companies->name = $request->name;
        $companies->email = $request->email;
        if ($request->logo) {
            if ($companies->logo !== 'company/default.png' && Storage::exists($companies->logo)) {
                Storage::delete($companies->logo);
            }
            $pathLogo = $request->logo->store('company');
            $companies->logo = $pathLogo;
        }
        $companies->website = $request->website;
        $companies->save();
        if ($companies) {
            return redirect('/companies')->with('success', 'Data berhasil disimpan!');
        } else {
            return redirect('/companies')->with('error', 'Data gagal disimpan!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $companies = Companies::find($id);
        if ($companies->logo !== 'company/default.png' && Storage::exists($companies->logo)) {
            Storage::delete($companies->logo);
        }
        $companies->delete();
        if ($companies) {
            return redirect('/companies')->with('success', 'Data berhasil dihapus!');
        } else {
            return redirect('/companies')->with('error', 'Data gagal dihapus!');
        }
    }

    private function validateData($request, $id = null)
    {
        $data = [
            'name' => 'required',
            'email' => ['required', Rule::unique('companies')->ignore($id)],
            'website' => 'required',
        ];

        if ($id) {
            $data['logo'] = 'image|max:2048|dimensions:min_width=100,min_height=100';
        } else {
            $data['logo'] = 'required|image|max:2048|dimensions:min_width=100,min_height=100';
        }

        return $request->validate($data);
    }

    public function import(Request $request)
    {

        $request->validate([
            'file' => 'required|mimes:xlsx'
        ]);

        $file = $request->file('file');

        Excel::import(new CompaniesImport, $file);

        return redirect('/companies')->with('success', 'File berhasil di import');
    }

    public function getCompanies(Request $request)
    {
        $search = $request->search;

        if ($search == "") {
            $companies = Companies::orderby('name', 'asc')->select('id', 'name')->paginate(5);
        } else {
            $companies = Companies::orderby('name', 'asc')->select('id', 'name')->where('name', 'like', '%' . $search . '%')->paginate(5);
        }

        return response()->json($companies);
    }
}
