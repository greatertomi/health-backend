const { Router } = require('express');

const db = require('../db/index');
const healthController = require('../controller/health');

const router = Router();

db.getConnection((err) => {
  if (err) throw err;

  console.log('MySQL is connected...');
});

router.get('/doctors', healthController.getDoctors);

router.post('/registerDoctor', healthController.registerDoctor);

router.post('/bookAppointment', healthController.bookAppointment);

router.get('/doctors/:doctorId', healthController.getDoctorDetail);

router.get('/appointmentReport', healthController.appointmentReport);

router.post('/login', healthController.login);

router.get('/sendMail', healthController.sendMail);

module.exports = router;
