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
            res.send(recipes)
            res.render('index',{
                recipes
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