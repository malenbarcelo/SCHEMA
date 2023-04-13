//Middleware de ruta
function admMiddleware(req,res,next){
    if(!req.session.userLogged){
        return res.redirect('/users/login')
    }else{
        if(req.session.userLogged.id_user_categories !=1){
            return res.redirect('/users/profile')
        }
        if(!req.session.userLogged){
            return res.redirect('/users/login')
        }
    }

    return next()
}
module.exports=admMiddleware