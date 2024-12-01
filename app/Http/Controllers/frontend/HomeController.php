<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Doctor;
use App\Models\Specialist;
use Illuminate\Http\Request;


class HomeController extends Controller
{
    public function index()
    {
        $doctors = Doctor::orderBy('name')->get();
        $specialists = Specialist::orderBy('name')->limit(5)->get();
        return view('frontend.home', compact('doctors', 'specialists'));
    }
}
