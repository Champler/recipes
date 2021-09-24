const fs = require('fs')
const db = require('../database/models')

module.exports = {
    index: (req, res) => {
        db.UserRecipes.findAll({           
        include:[{association : 'images'},
                {association: 'ingredients'},
                {association: 'user'}]
            })
        .then((recipes)=>{
<<<<<<< HEAD
           
=======
            /* res.send(recipes)  */
>>>>>>> 6087feeedee551b3da2012df2438c552e69ee3df
            res.render('index',{
                recipes,
                session: req.session ? req.session : ""
            })
        })
        .catch(err => console.log(err))
    },
    detail: (req, res) => {

    },
    newRecipe: (req, res) => {
        //vista
    },
    addRecipe: (req, res) => {
        //crud
    },
    editRecipe: (req, res) => {
        //vista
    },
    updateRecipe: (req, res) => {
        //crud
    },
    deleteRecipe: (req, res) => {

    }
}