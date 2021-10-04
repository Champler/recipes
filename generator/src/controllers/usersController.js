const fs = require('fs')
const db = require('../database/models')
const bcrypt = require('bcryptjs')

module.exports = {
    register: (req, res) => {
        //vista
        res.render('register',{
            title:'registrate careta'
            
        })
    },
    registerProcess: (req, res) => {
        let  {user,pass}=req.body
        db.User.create({
            name:user,
            password: bcrypt.hashSync(pass,10)
        })
        .then(()=>{
            res.redirect('/users/login')
        })
    },
    login: (req, res) => {
        //vista
        res.render('login',{
            title: 'Logueate campion'
        })
    },
    loginProcess: (req, res) => {
       db.User.findOne({
           where: {
               name:req.body.user
           }
       })
       .then(user =>{
           if(bcrypt.compareSync(req.body.pass,user.password)){
               req.session.user={
                   id: user.id,
                   name: user.name
               }
               if(req.body.remember){
                   res.cookie('RecipesCookie', req.session.user,{maxAge:5000*60})
               }
               res.redirect('/')
           }else{
               res.send('logeate de nuevo')
           }
       })
    },
    userLogout:(req,res)=> {
<<<<<<< HEAD
       req.session.destroy()
       if(req.cookies.RecipesCookie){
           res.cookie('RecipesCookie',"",{maxAge:-1})
       }
=======
        req.session.destroy();
        
        if(req.cookies.RecipesCookie){
            res.cookie('RecipesCookie','', {maxAge: -1})
        }
        res.redirect('/')
>>>>>>> a117fbc332f952037abd1dc519367c5dc9e74f27
    }
}