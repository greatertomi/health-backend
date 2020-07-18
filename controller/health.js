const nodemailer = require('nodemailer');
const sendgridTransport = require('nodemailer-sendgrid-transport');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const db = require('../db/index');

const secret = 'eHealth4Everyone373838';

const transporter = nodemailer.createTransport(
  sendgridTransport({
    auth: {
      api_key:
        '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'
    }
  })
);

exports.getDoctors = (request, response) => {
  db.query('select doctorName, email, phoneNumber from doctors', (err, res) => {
    if (err) throw err;

    response.status(200).send(res);
  });
};

exports.registerDoctor = (request, response) => {
  const { doctorName, email, phoneNumber, password } = request.body;
  if (password) {
    bcrypt.hash(password, 10, (error, hash) => {
      if (hash) {
        db.query(
          `insert into doctors (doctorName, email, phoneNumber, password) values
         (?, ?, ?, ?)`,
          [doctorName, email, phoneNumber, hash],
          (err, res) => {
            if (err) throw err;
            response.status(200).send({ message: 'New doctor created' });
          }
        );
      }
    });
  }
};

exports.login = (request, response) => {
  const { email, reqPassword } = request.body;
  db.query('SELECT * FROM doctors WHERE email = ?', [email], (err, res) => {
    if (err) throw err;
    if (res.length >= 1) {
      const { password, doctorId } = res[0];
      bcrypt.compare(reqPassword, password, (err2, res2) => {
        if (res2) {
          const payload = { subject: email };
          const token = jwt.sign(payload, secret);
          response.status(200).send({ token, doctorId });
        } else {
          response.status(401).send({ message: 'Password incorrect!' });
        }
      });
    } else {
      response.status(401).send({ message: 'User does not exit!' });
    }
  });
};

exports.getDoctorDetail = (request, response) => {
  const { doctorId } = request.params;
  db.query(
    'select doctorName, email, phoneNumber from doctors where doctorId = ?',
    [doctorId],
    (err, res) => {
      if (err) throw err;
      response.status(200).send(res[0]);
    }
  );
};

exports.bookAppointment = (request, response) => {
  const { fullName, email, phoneNumber, date, reason, note } = request.body;
  db.query(
    `INSERT INTO appointments (fullName, email, phoneNumber, date, reason, note)
    VALUES (?, ?, ?, ?, ?, ?)`,
    [fullName, email, phoneNumber, date, reason, note],
    (err, res) => {
      if (err) throw err;
      transporter
        .sendMail({
          to: email,
          from: 'oshalusijohn@gmail.com',
          subject: 'Appointment Booked Successfully',
          html: `<h3>BLK Health Center</h3> 
            <p>Just to tell you that your appointment has been book successfully. We'll be expecting you</p>
            <p>Enjoy your day!</p>`
        })
        .then(() => {
          response.status(200).send({
            message:
              'Appointment booked! A mail has being sent to your email address.'
          });
        })
        .catch((err2) => {
          response.status(200).send({
            message:
              'Appointment booked! A mail could not be sent to your email address.'
          });
        });
    }
  );
};

exports.appointmentReport = (request, response) => {
  const appointments = {};

  const combineResults = () => {
    const initialState = {
      diagnosis: 0,
      medication: 0,
      drugPrescription: 0,
      preNatal: 0,
      inquiry: 0,
      scanning: 0,
      monthlyCheckup: 0
    };

    const totalAppointments = { ...initialState, ...appointments };
    response.status(200).send(totalAppointments);
  };

  db.query(
    `SELECT reason, count(reason) reasonNum FROM appointments
    group by reason`,
    (err, res) => {
      if (err) throw err;
      for (const reason of res) {
        if (reason.reason === 'diagnosis') {
          appointments.diagnosis = reason.reasonNum;
        } else if (reason.reason === 'medication') {
          appointments.medication = reason.reasonNum;
        } else if (reason.reason === 'drugPrescription') {
          appointments.drugPrescription = reason.reasonNum;
        } else if (reason.reason === 'preNatal') {
          appointments.preNatal = reason.reasonNum;
        } else if (reason.reason === 'inquiry') {
          appointments.inquiry = reason.reasonNum;
        } else if (reason.reason === 'scanning') {
          appointments.scanning = reason.reasonNum;
        } else if (reason.reason === 'monthlyCheckup') {
          appointments.monthlyCheckup = reason.reasonNum;
        }
      }
      combineResults();
    }
  );
};

exports.sendMail = (request, response) => {
  transporter
    .sendMail({
      to: 'oluwalusijohn@gmail.com',
      from: 'oshalusijohn@gmail.com',
      subject: 'Mailing Worked',
      html: '<h2>Sending email in node js finally worked</h2>'
    })
    .then(() => {
      response.status(200).send({ msg: 'Mail sent' });
    })
    .catch((err) => {
      console.log(err);
    });
};
