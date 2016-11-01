rails final project: Undrgrnd

Music player featuring original works from bdc.

requirements:

1.Rails framework
 -rails new -X
2.Your models must include a has_many, a belongs_to, and a has_many :through relationship.
 -(models - admin, artist, song, genre) 
3.The join model must also store an additional user submittable attribute (not just timestamps or auto-created fields) describing the relationship.
4.Your models should include reasonable validations for the simple attributes.
5.You must include at least one class level ActiveRecord scope methods.
6.You must include a nested form that writes to an associated model through a custom attribute writer.
7.Your application must provide a standard user authentication, including signup, login, logout, and passwords.
8.Your authentication system should allow login from some other service. Facebook, twitter, foursquare, github, etc...
9.You must make use of a nested resource with the appropriate RESTful URLs.
10.Your forms should correctly display validation errors.
11.Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
