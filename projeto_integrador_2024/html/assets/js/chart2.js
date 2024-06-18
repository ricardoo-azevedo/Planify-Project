const ctx2 = document.getElementById('gMensal');

new Chart(ctx2, {
  type: 'bar',
  data: {
    labels: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun'],
    datasets: [{
      label: ' Serviços concluídos',
      data: [12, 19, 30, 25, 22, 30],
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