const express = require('express');
const app = express();
const PORT = process.env.PORT || 3001;

app.get('/appointments', (req, res) => {
  res.json([{ id: 101, time: '10:00 AM' }, { id: 102, time: '2:00 PM' }]);
});

app.listen(PORT, () => console.log(`Appointment service listening on ${PORT}`));
