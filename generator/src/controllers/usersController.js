const fs = require('fs')
const db = require('../database/models')

module.exports = {
    register: (req, res) => {
        //vista
        res.render('register')
    },
    registerProcess: (req, res) => {
        //crud
    },
    login: (req, res) => {
        //vista
        res.render('login')
    },
    loginProcess: (req, res) => {
        //crud
    }
}