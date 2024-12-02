<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Appointment;
use App\Models\Doctor;
use App\Models\Specialist;
use Illuminate\Http\Request;

class AppointmentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $items = Appointment::all();
        return view('backend.appointment.index', compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $doctors = Doctor::all();
        $specialists = Specialist::all();
        return view('backend.appointment.create',  compact('doctors', 'specialists'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'doctor' => 'required',
            'date' => 'required',
            'remarks' => 'max:255 | min:10',
        ]);

        $appointment = new Appointment;

        $appointment->name = $request->name;
        $appointment->email = $request->email;
        $appointment->phone = $request->phone;
        $appointment->doctor_id = $request->doctor;
        $appointment->date = $request->date;
        $appointment->remarks = $request->remarks;

        $appointment->save();

        return redirect()->route('appointment.index')->with('msg', 'Successfully Created');
    }

    /**
     * Display the specified resource.
     */
    public function show(Appointment $appointment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Appointment $appointment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Appointment $appointment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Appointment $appointment)
    {
        $appointment->delete();
        return redirect()->route('appointment.index')->with('dlt', 'Successfully Deleted');
    }

    public function changeStatus($id)
    {
        $record = Appointment::find($id);
        $record->status == 'pending' ? $record->status = 'confirmed' : $record->status = 'pending' ;

        $record->update();

        return redirect()->back();
    }
}
