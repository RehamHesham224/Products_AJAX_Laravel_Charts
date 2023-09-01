$(document).ready(function () {
    let page = 1;

    $("#load-more-btn").click(function () {
        page++;
        loadProducts(page);
    });

    function loadProducts(page) {
        $.ajax({
            url: `/load-products?page=${page}`,
            type: "GET",
            success: function (data) {
                $("#product-list").append(data);
            }
        });
    }
});
