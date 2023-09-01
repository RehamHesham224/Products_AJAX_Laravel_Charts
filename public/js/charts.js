// Prepare your search times data and labels (replace with actual data)
const searchTimes = [10, 20, 30, 25, 40, 35, 50]; // Replace with your actual search times
const labels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul']; // labels for data (e.g., months)

const ctx = document.getElementById('searchTimesChart').getContext('2d');

const data = {
    labels: labels,
    datasets: [{
        label: 'Search Times',
        data: searchTimes,
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

const searchTimesChart = new Chart(ctx, config);
