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
        let {user,pass} = req.body
        db.User.create({
            name :user,
            password : bcrypt.hashSync(pass,10)
        })
        .then(()=>{
            res.redirect('/')
        });
    
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
                name: req.body.user
            }
        })
        .then (user =>{
            if(bcrypt.compareSync(req.body.pass, user.password)){
                req.session.user ={
                    id:user.id,
                    name: user.name
                };
                if(req.body.remember){
                    res.cookie('RecipesCookie',req.session.user,{maxAge: 5000*60})
                }
                res.redirect('/')
            }
        })
    },
    userLogout:(req,res)=> {
        req.session.destroy();
        
        if(req.cookies.cookieTech){
            res.cookie('RecipesCookie','', {maxAge: -1})
        }
        res.redirect('/')
    }
}