<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductSearch;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{

    public function index()
    {
        $categories = Product::distinct('category')->pluck('category');
        $brands = Product::distinct('brand')->pluck('brand');



        return view('products.index', compact('categories', 'brands'));
    }

    public function loadProducts(Request $request)
    {
        $page = $request->input('page', 1); // Get the page number from the request
        $perPage = $request->input('perPage', 13); // Get the items per page from the request, default to 10


        $category = $request['category'];
        $brand = $request['brand'];
        $search = $request['search'];

        $query = Product::query();

        if ($category) {
            $query->where('category', $category);
        }

        if ($brand) {
            $query->where('brand', $brand);
        }

        if ($search) {
            $query->where(function ($q) use ($search) {
                $q->whereRaw("MATCH(product, category, brand) AGAINST(? IN BOOLEAN MODE)", [$search]);
            });
        }

        $products = $query->paginate($perPage, ['*'], 'page', $page);
        return view('products.product_list', compact('products'))->render();
    }

    public function saveSearchCount(Request $request)
    {
        // Retrieve the count from the request
        $count = $request['count'];

        // Save the search count and the date/time to the database
        ProductSearch::create([
            'search_count' => $count,
        ]);

        // Respond with a success message or any other response as needed
        return response()->json(['message' => 'Search count saved successfully']);
    }
    public function getSearchDataForChart()
    {
        $searchData = ProductSearch::select(
            DB::raw("DATE_FORMAT(created_at, '%Y-%m-%d') as date"),
            DB::raw("COUNT(*) as count")
        )
            ->groupBy('date')
            ->orderBy('date')
            ->get();

        return response()->json($searchData);
    }
}
