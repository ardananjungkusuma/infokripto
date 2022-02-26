<?php

namespace App\Http\Controllers;

use App\ArCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArCategoryController extends Controller
{
    public function getArCategory($id)
    {
        $result = DB::table('arcategory')
            ->where('id_artikel', $id)->get();
        echo json_encode($result);
    }

    public function deleteArCategory($id)
    {
        ArCategory::find($id)->delete();
    }
}
