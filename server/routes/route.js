const express = require('express');
const router = express.Router();
const statusController = require('../controller/statusController');
const loginController = require('../controller/loginController');

router.get('/', statusController.view);
router.post('/', statusController.format);

router.get('/login', loginController.view);
router.post('/login', loginController.form);

module.exports = router;
