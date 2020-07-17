const { Router } = require('express');

const db = require('../db/index');
const healthController = require('../controller/health');

const router = Router();

db.connect((err) => {
  if (err) throw err;

  console.log('MySQL is connected...');
});

router.get('/doctors', healthController.getDoctors);

router.post('/registerDoctor', healthController.registerDoctor);

router.get('/sendMail', healthController.sendMail);

module.exports = router;
