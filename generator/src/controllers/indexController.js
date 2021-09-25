const fs = require('fs')
const db = require('../database/models')

module.exports = {
    index: (req, res) => {
        db.UserRecipes.findAll({           
        include:[{association: 'images'},
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
                {association: 'user'}]
        })
        .then(recipe=>{
            res.render('detail',{
                title:recipe.name,
                recipe
            })
        })
    },
    newRecipe: (req, res) => {
        let arrayImages = [];
        if(req.files){
            req.files.forEach(image=>{
                arrayImages.push(image.filename)
            })
        }
        let {
            name,
            description,
            ingredients
        }= req.body

        db.UserRecipes.create({
            name,
            description,
            ingredients,
            user_id:req.session.user.id
        })
        .then(recipe =>{
            
            if(arrayImages.length > 0){
                let images = arrayImages.map(image =>{
                    return {
                        image:image,
                        user_recipes_id :recipe.id
                    }
                })
                    db.images.bulkCreate(images)
                    .then(()=> res.redirect('/'))
                    .catch(err =>console.log(err))
             }else{
                db.images.create({
                    name:"default.image.png",
                    user_recipes_id :recipe.id
                })
                .then(()=> res.redirect('/'))
                .catch(err =>console.log(err))
             }
        })
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
        let {
            name,
            description,
            ingredients
        }= req.body
        db.UserRecipes.update({
            name,
            description,
            ingredients
        },{
            where:{id:req.params.id}
        })
        .then(()=> res.redirect('/'))
    },
    deleteRecipe: (req, res) => {

    }
}