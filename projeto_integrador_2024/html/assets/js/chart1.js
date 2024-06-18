const ctx1 = document.getElementById('gSemanal');

new Chart(ctx1, {
  type: 'doughnut',
  data: {
    labels: ['Seg','Ter','Qua','Qui','Sex','Sáb'],
    datasets: [{
      label: '# of Votes',
      data: [12, 19, 3, 5, 2, 3],
      borderWidth: 1
    }]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});