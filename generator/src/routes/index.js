var express = require('express');
var router = express.Router();
let controller = require('../controllers/indexController')
/* GET home page. */
router.get('/', controller.index)
router.get('/detail/:id', controller.detail)

router.get('/addRecipe', controller.addRecipe)
router.post('/addRecipe', controller.newRecipe)

router.get('/editRecipe/:id', controller.editRecipe)
router.put('/editRecipe/:id', controller.updateRecipe)

router.delete('/delete/:id', controller.deleteRecipe)


module.exports = router;
