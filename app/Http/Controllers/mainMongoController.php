<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mainMongo;

class mainMongoController extends Controller
{
    public function getAllData(){
        $users = mainMongo::all();
        return $users;
    }

    public function saveDataCon(Request $request)
    {
        $data = new mainMongo;
        
        $data->name = $request->name;
        $data->comment = $request->comment;
        $data->lat = $request->lat;
        $data->lng = $request->lng;
        $data->save();
 
        return $data;
    }
}
