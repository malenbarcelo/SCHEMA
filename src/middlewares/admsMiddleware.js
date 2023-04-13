//Middleware de ruta -- Routed that can be reached by general administrator and compnay administrators
function admsMiddleware(req,res,next){
    if(!req.session.userLogged){
        return res.redirect('/users/login')
    }else{
        if(req.session.userLogged.id_user_categories != 1 && req.session.userLogged.id_user_categories != 2){
            return res.redirect('/users/profile')
        }
    }
    return next()
}
module.exports=admsMiddleware