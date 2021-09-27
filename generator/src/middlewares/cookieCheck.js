module.exports = function(req,res,next){
    if(req.cookies.RecipesCookie){
        req.session.user = req.cookies.RecipesCookie;
        next()
    }else{
        next()
    }
}