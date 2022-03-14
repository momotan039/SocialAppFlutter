class UserModel{
  String? id,name,phone,mail;
  UserModel({
    this.id,this.name,this.phone,this.mail
});
  UserModel FromJson(Map<String,dynamic>user){
   return UserModel(
       id: user['id'],
       mail:user['mail'],
       phone:user['phone'],
       name:user['name'],
   );
 }

 static Map<String,dynamic> ToMap(UserModel user){
    return {
      'id':user.id,
      'name':user.name,
      'phone':user.phone,
      'mail':user.mail,
    };
  }

}