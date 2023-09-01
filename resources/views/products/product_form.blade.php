<form id="filter-form" class="bg-warning-subtle p-3 my-3">
    <div class="mb-3">
        <label class="form-label">Category:</label>
        @foreach($categories as $category)
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="category[]" id="category_{{ $category }}" value="{{ $category }}">
                <label class="form-check-label" for="category_{{ $category }}">{{ $category }}</label>
            </div>
        @endforeach
    </div>

    <div class="mb-3">
        <label class="form-label">Brand:</label>
        @foreach($brands as $brand)
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="brand[]" id="brand_{{ $brand }}" value="{{ $brand }}">
                <label class="form-check-label" for="brand_{{ $brand }}">{{ $brand }}</label>
            </div>
        @endforeach
    </div>

    <div class="mb-3">
        <label for="search" class="form-label">Search:</label>
        <input type="text" name="search" id="search" class="form-control">
    </div>

    <div class="mb-3">
        <button type="submit" id="apply-filters" class="btn btn-primary">Apply Filters</button>
    </div>
</form>
