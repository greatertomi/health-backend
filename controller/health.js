const nodemailer = require('nodemailer');
const sendgridTransport = require('nodemailer-sendgrid-transport');

const db = require('../db/index');

const transporter = nodemailer.createTransport(
  sendgridTransport({
    auth: {
      api_key:
        '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',
    },
  })
);

exports.getDoctors = async (request, response) => {
  try {
    const res = await db.query('select * from doctors');
    console.log(res);
  } catch (err) {
    console.log(err);
  }
};

exports.sendMail = (request, response) => {
  transporter
    .sendMail({
      to: 'oluwalusijohn@gmail.com',
      from: 'oshalusijohn@gmail.com',
      subject: 'Mailing Worked',
      html: '<h2>Sending email in node js finally worked</h2>',
    })
    .then((res) => {
      response.status(200).send({ msg: 'Mail sent' });
    })
    .catch((err) => {
      console.log(err);
    });
};
