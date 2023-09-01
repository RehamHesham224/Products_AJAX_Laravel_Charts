$(function() {
    //trace
    //1 get main items "variables"
    //2 click loadMore-> load, page++
    //3 Click Filter-> load, page=1, searchCount++, saveSearchCount
    //4 saveSearchCount
    //5 getSearchCount-> createChart
    //6 getProducts
    //7 getData->getSearchCount, getProducts


    var page = 1;
    var perPage=13;

    var searchCount = 0;

    var loadMoreButton = $('#load-more');
    var productList = $('#product-list');
    var applyFiltersButton = $('#apply-filters');



    loadMoreButton.on('click', function () {
        page++;
        getData(page);
    });

    applyFiltersButton.on('click', function (event) {
        event.preventDefault();
        page = 1;
        searchCount++;
        getData(page);
        saveSearchCount(searchCount);
    });

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    function saveSearchCount(count) {
        $.ajax({
            url: '/save-search-count',
            method: 'POST',
            data: {
                count: count
            },
            success: function(response) {
                // Handle the success response if needed
            },
            error: function(error) {
                console.error('Error:', error);
            }
        });
    }

    //--------------------GET DATA FOR CHART------------------------
    function getSearchCount(){
        $.ajax({
            url: '/get-search-data-for-chart',
            method: 'GET',
            success: function(response) {
                // Handle the response and create your chart here
                const searchData = response;
                createChart(searchData);
            },
            error: function(error) {
                console.error(error);
            }
        });
    }
    //--------------------LOAD PRODUCT DATA BASED ON SEARCH & FILTER------------------------
    function getProducts(){
        var search = $('#search').val();
        var selectedCategories = [];
        $('input[name="category[]"]:checked').each(function() {
            selectedCategories.push($(this).val());
        });
        var selectedBrands = [];
        $('input[name="brand[]"]:checked').each(function() {
            selectedBrands.push($(this).val());
        });
        $.ajax({
            url: '/load-products',
            method: 'GET',
            data: {
                page: page,
                category: selectedCategories,
                brand: selectedBrands,
                search: search,
                'perPage':perPage
            },
            success: function(response) {
                // console.log(response);
                if (page === 1) {
                    //
                    productList.html(response); // Replace existing content with new content
                } else {
                    productList.append(response); // Append new content
                }

                // Toggle Load More button visibility based on response
                if (response.trim() === '') {
                    loadMoreButton.hide();
                } else {
                    loadMoreButton.show();
                }
            },
            error:function (error){
                // console.log(error);
            }
        });

    }

    function getData(page) {
        //get search and filter values
        //call ajax for products
        //call ajax for searchCount "update chart"
        getProducts();
        getSearchCount();
    }
    // Initial load of products
    getData(page);
});
//----------------------CHART----------------
var myChart =null;
function createChart(searchData) {
    // If a chart instance already exists, destroy it
    if (myChart) {
        myChart.destroy();
    }
    const dates = searchData.map(entry => entry.date);
    const counts = searchData.map(entry => entry.count);
    const ctx = document.getElementById('searchTimesChart').getContext('2d');

    const data = {
        labels: dates,
        datasets: [{
            label: 'Search Times',
            data: counts,
            borderColor: 'rgba(75, 192, 192, 1)',
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            pointStyle: 'circle', // Point style
            pointRadius: 8, // Point radius
            pointHoverRadius: 10, // Point radius on hover
        }]
    };
    console.log(data);

    const config = {
        type: 'line',
        data: data,
    };
    myChart = new Chart(ctx, config);

}


