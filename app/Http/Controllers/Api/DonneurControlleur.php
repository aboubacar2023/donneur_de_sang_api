<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\CreateDonneurRequest;
use App\Http\Requests\EditDonneurRequest;
use App\Models\Donneur;
use Illuminate\Http\Request;

class DonneurControlleur extends Controller
{ 
    public function index(Request $request) {
        
        $query = Donneur::query();
        $perpage = 5;
        $page = $request->input('page', 1);
        $search = $request->input('search');

        if($search){
            $query->whereRaw("nom LIKE '%".$search."%'");
        }

        $total = $query->count();

        $result = $query->offset(($page-1) *$perpage)->limit($perpage)->get();
        return response()->json([
            'status_code' => 200,
            'curret_page'=>$page,
            'last_page' => ceil($total / $perpage),
            'items'=> $result
        ]);
    }
    public function store(CreateDonneurRequest $request) {
        $donneur = new Donneur();
        $donneur->nom = $request->nom;
        $donneur->prenom = $request->prenom;
        $donneur->contact = $request->contact;
        $donneur->adresse = $request->adresse;
        $donneur->groupe_sanguin = $request->groupe_sanguin;
        $donneur->rhesus = $request->rhesus;
        $donneur->rdv = $request->rdv;
        $donneur->save();

        return response()->json([
            'status_code' => 200,
            'status_message' => 'Vous avez été ajouter. Nous serrons ravis de vous recevoir à la banque de sang',
            'data'=>$donneur
        ]);
    }
    public function update(EditDonneurRequest $request, Donneur $donneur) {
        $donneur->nom = $request->nom;
        $donneur->prenom = $request->prenom;
        $donneur->contact = $request->contact;
        $donneur->adresse = $request->adresse;
        $donneur->groupe_sanguin = $request->groupe_sanguin;
        $donneur->rhesus = $request->rhesus;
        $donneur->rdv = $request->rdv;
        $donneur->save();
    }
    public function delete(Donneur $donneur) {
        $donneur->delete();
        if($donneur){
            return response()->json([
                'status_code' => 200,
                'status_message' => 'Le donneur a été supprimer',
                'data'=>$donneur
            ]);
        }else{
            return response()->json([
                'status_code' => 422,
                'status_message' => 'Donneur introuvable',
                'data'=>$donneur
            ]);
        }
    }
}
