exports.view = function(req, res){
    req.session.destroy(function(err){
        if(!err){
          console.log('Destroyed session');
        }else{
          console.log(err);
        }
        res.redirect('/');
      })
}
