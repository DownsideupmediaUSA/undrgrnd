rails final project: Undrgrnd

Music player featuring original works from bdc.

requirements:

1.Rails framework
 -rails new -X
2.Your models must include a has_many, a belongs_to, and a has_many :through relationship.
 -(models -  artist(h/m-songs, h/m -genres,), song(b/t artist, b/t genre), genre(b/t song, h/m artists through songs), song-genre(join))
3.The join model must also store an additional user submittable attribute (not just timestamps or auto-created fields) describing the relationship.
 -set up appropriate join-tables/models
4.Your models should include reasonable validations for the simple attributes.
 -write some private methods
5.You must include at least one class level ActiveRecord scope methods.
 -i.e.: post = Post.all, post.size, post.each {|p|puts p.name}
6.You must include a nested form that writes to an associated model through a custom attribute writer.

7.Your application must provide a standard user authentication, including signup, login, logout, and passwords.
 -try to build from scratch
8.Your authentication system should allow login from some other service. Facebook, twitter, foursquare, github, etc...
 -omniauth
9.You must make use of a nested resource with the appropriate RESTful URLs.
  -routes
10.Your forms should correctly display validation errors.
 -set up flash errors
11.Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
 -create/render partials where necessary


 -promo player
   -user authentication (signup/signin)
     -listeners(public)- can listen to and comment on(and in turn can download) all songs.
     -artists - can be searched by name, song, genre
     -songs - can be searched by title, artist, genre
     -genres - can be searched by song, & artist?


   tables:
   <!-- 1.artist - name, timestamps                                          -->
   2.song - title, artist id, star rating, timestamps                  -x
   3.genre - name, artist id, song id, timestamps                      -x
   4.song/genre - (join) song_id, genre_id                             -x
   5.user - username, password_digest,  timestamps                     -x
   6.comments - content, artist_id, song_id                            -x

   models/relationships:
   1.artist - h/m-songs, h/m -genres
   2.song - b/t artist, b/t genre                                      -x
   3.genre - b/t song, h/m artists through songs
   4.song/genre - (join) b/t song, b/t genre
(?) * USER CAN ONLY DL after COMMENTING.
  * User can create and edit comments ONLY    
   5.user(listener) - h/m comments
   6.comments - b/t listener, b/t song-genre

   controllers/views
   1.users
     -show
   2.songs
     -show, index, new, create (private- post params)
   3.genres
     -show
   4.comments
     -create, (private- comment params)
   5.artists
     -show
   6.sessions
     -destroy, new, create
   7.static (?)
