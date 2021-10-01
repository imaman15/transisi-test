<?php

namespace App\Http\Controllers;

use App\Models\Companies;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class CompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies = Companies::paginate(5);
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

        $companies = Companies::create([
            'name' => $request->name,
            'email' => $request->email,
            'logo' => $request->logo,
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
        $this->validateData($request, true);
        $companies = Companies::find($id);
        $companies->name = $request->name;
        $companies->email = $request->email;
        if ($request->logo) {
            $companies->logo = $request->logo;
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
        $companies->delete();
        if ($companies) {
            return redirect('/companies')->with('success', 'Data berhasil dihapus!');
        } else {
            return redirect('/companies')->with('error', 'Data gagal dihapus!');
        }
    }

    private function validateData($request, $edit = false)
    {
        $data = [
            'name' => 'required',
            'email' => ['required', Rule::unique('companies', 'email')->ignore($request->post('email'), 'id')],
            'website' => 'required',
        ];

        if ($edit) {
            $data['logo'] = 'mimes:jpeg,bmp,png|max:2048|dimensions:min_width=100,min_height=100';
        } else {
            $data['logo'] = 'required|mimes:jpeg,bmp,png|max:2048|dimensions:min_width=100,min_height=100';
        }

        return $request->validate($data);
    }
}
