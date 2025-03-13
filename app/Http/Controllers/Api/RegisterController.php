<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Muzakki;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{    
    /**
     * register
     *
     * @param  mixed $request
     * @return void
     */
    public function register(Request $request)
    {
        //set validasi
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'email'     => 'required|email|unique:donaturs',
            'password'  => 'required|min:8|confirmed'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $passwordInfo = password_get_info($request->password);
        if ($passwordInfo['algo'] === 0) {
            $password = Hash::make($request->password);
        } else { 
            $password = $request->password;
        }

        //create donatur
        $muzakki = Muzakki::create([
            'name'      => $request->name,
            'email'     => $request->email,
            'password'  => $password,
        ]);
        
        //return JSON
        return response()->json([
            'success' => true,
            'message' => 'Register Berhasil!',
            'data'    => $muzakki,
            'token'   => $muzakki->createToken('authToken')->accessToken  
        ], 201);
    }
}
