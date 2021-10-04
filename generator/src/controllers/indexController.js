const fs = require('fs')
const db = require('../database/models')
module.exports = {
    index: (req, res) => {
       db.UserRecipes.findAll({
           include:[{association:'images'},{association:'user'}]
       })
       .then((recipes)=>{
        res.render('index',{
            title:'Bienvenidos',
            recipes,
            session: req.session ? req.session : ""
        })
       })
    },
    detail: (req, res) => {
        db.UserRecipes.findByPk(+req.params.id,{
            include:[{association:'images'},{association:'user'}]
        })
        .then((recipe)=>{
            res.render('detail',{
                title: recipe.name,
                recipe,
            })
        })
    },
    newRecipe: (req, res) => {
        
    },
        
    addRecipe: (req, res) => {
        res.render('addRecipe',{
            title:'Agrega tus recetas'
        })
    },
    editRecipe: (req, res) => {
        db.UserRecipes.findByPk(req.params.id)
            .then(recipe => {
                res.render("editRecipe",{
                    title:"Edicion de receta",
                    recipe
                })
            })
    },
    updateRecipe: (req, res) => {
       
    },
    deleteRecipe: (req, res) => {
        db.UserRecipes.destroy({
            where: {
                id: +req.params.id
            }
        }).then(() => {
            res.redirect('/')
        })
        .catch(error => console.log(error))
    },
    myRecipes: (req,res) => {
        db.UserRecipes.findAll({
            where:{
                user_id:req.session.user.id
            },
            include:[{association: 'images'},
            {association: 'user'}]
        }).then(recipes => {
            res.render('index',{
                title: `recetas de ${req.session.user.name}`,
                recipes,
                session: req.session ? req.session : ""
            })
        })
    }
}