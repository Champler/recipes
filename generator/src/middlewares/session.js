module.exports=(req,res,next)=>{
    if(req.session){
        res.locals.session = req.session;
        next()
    }else{
        next()
    }
}