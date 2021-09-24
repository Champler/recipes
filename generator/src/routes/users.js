var express = require('express');
var router = express.Router();
let controller = require('../controllers/usersController')
/* GET users listing. */
router.get('/register', controller.register);
router.post('/register', controller.registerProcess)

router.get('/login', controller.login)
router.post('/login', controller.loginProcess)
module.exports = router;
