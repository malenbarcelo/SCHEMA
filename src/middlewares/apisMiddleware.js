//Middleware de ruta
function apisMiddleware(req,res,next){
    if(req.session.userLogged){
        if(req.session.userLogged.id_user_categories == 4){
            return res.redirect('/courses/my-courses')
        }
    }else{
        return res.redirect('/users/login')
    }
    return next()
}
module.exports=apisMiddleware