<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Zakat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ZakatController extends Controller
{
    public function index()
    {
        //get data zakat
        $zakat = Zakat::with('category')->where('muzakki_id', auth()->guard('api')->user()->id)->latest()->paginate(5);

        //return with response JSON
        return response()->json([
            'success' => true,
            'message' => 'List Data : '. auth()->guard('api')->user()->name,
            'data'    => $zakat,
        ], 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'category_id'   => 'required',
            'amount'        => 'required',
            'struk'         => 'required|image|mimes:png,jpg,jpeg|max:2048'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        if($request->hasFile('struk')) {
            $file = $request->file('struk');
            $path = $file->store('struk/', 's3');
            $filename = pathinfo($path, PATHINFO_BASENAME);
        }

        DB::transaction(function() use ($request, $filename) {

            /**
             * algorithm create no invoice
             */
            $length = 10;
            $random = '';
            for ($i = 0; $i < $length; $i++) {
                $random .= rand(0, 1) ? rand(0, 9) : chr(rand(ord('a'), ord('z')));
            }

            $no_invoice = 'TRX-'.Str::upper($random);

            Zakat::create([
                'invoice'       => $no_invoice,
                'category_id'   => $request->category_id,
                'muzakki_id'    => auth()->guard('api')->user()->id,
                'amount'        => $request->amount,
                'pray'          => $request->pray,
                'status'        => 'pending',
                'struk'         => $filename,
            ]);
        });

        return response()->json([
            'success' => true,
            'message' => 'Data Berhasil Dibuat!',  
        ]);
    }

    public function update(Request $request, $invoice)
    {
        $zakat = Zakat::where('invoice', $invoice)->first();

        if ($zakat) {
            $zakat->update(['status' => $request->status]);
            return response()->json([
                'success' => true,
                'message' => 'Status berhasil diperbaharui',
            ]);
        }

        // Jika data tidak ditemukan
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }

    public function delete($invoice)
    {
        $zakat = Zakat::where('invoice', $invoice)->first();
        if($zakat) {
            $zakat->delete($invoice);
            return response()->json([
                'success' => true,
                'message' => 'Data berhasil dihapus',
            ]);
        }

        // Jika data tidak ditemukan
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }
}
