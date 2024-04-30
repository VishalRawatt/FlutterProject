class User {
  final String slug;
  final String id ;
  final ProfilePhoto profile_image ;
  final UserName user;
  User({
    required this.slug,
    required this.id ,
    required this.profile_image,
    required this.user ,
});
}

class UserName{
  final String username ;
  final String first_name ;
  final String last_name ;
  UserName({
    required this.username,
    required this.first_name ,
    required this.last_name ,
});
}

class ProfilePhoto{
  final String small ;
  final String medium ;
  final String large ;

  ProfilePhoto({
    required this.small ,
    required this.medium ,
    required this.large ,
  });
}