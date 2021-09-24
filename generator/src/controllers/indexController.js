const fs = require('fs')
const db = require('../database/models')

module.exports = {
    index: (req, res) => {
        db.UserRecipes.findAll({           
        include:[{association: 'images'},
                {association: 'ingredients'},
                {association: 'user'}]
            })
        .then((recipes)=>{
            
            res.render('index',{
                title: 'Bienvenidos',
                recipes,
                session: req.session ? req.session : ""
            })
        })
        .catch(err => console.log(err))
    },
    detail: (req, res) => {
        db.UserRecipes.findByPk(req.params.id,{
            include:[{association : 'images'},
                {association: 'ingredients'},
                {association: 'user'}]
        })
        .then(recipe=>{
            res.send(recipe)
            res.render('lavista',{
                recipe
            })
        })
    },
    newRecipe: (req, res) => {
        res.render('addRecipe',{
            title:'Agrega tus recetas'
        })
    },
    addRecipe: (req, res) => {
        let arrayImages = [];
        if(req.files){
            req.files.forEach(image=>{
                arrayImages.push(image.filename)
            })
        }
        let {
            name,
            description
        }= req.body

        db.UserRecipes.create({
            name,
            description,  
        })
        .then(recipe =>{
            if(arrayImages.length > 0){
                let images = arrayImages.map(image =>{
                    return {
                        image:image,
                        user_recipes_id :req.session.user.id
                    }
                })
                    db.images.bulkCreate(images)
                    .then(()=> res.redirect('/'))
                    .catch(err =>console.log(err))
             }
        })
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