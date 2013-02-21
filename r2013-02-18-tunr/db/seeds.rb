Artist.delete_all
Album.delete_all
Genre.delete_all
Mixtape.delete_all
Song.delete_all
User.delete_all

a1 = Album.create(:name => "Surfin' U.S.A.")
a2 = Album.create(:name => "(Pronounced 'Leh-'nerd 'Skin-'nerd)")
a3 = Album.create(:name => 'Straight Outta Compton')

r1 = Artist.create(:name => 'The Beach Boys')
r2 = Artist.create(:name => 'Lynyrd Skynyrd')
r3 = Artist.create(:name => 'N.W.A')

g1 = Genre.create(:name => '60s Pop')
g2 = Genre.create(:name => 'Classic Rock')
g3 = Genre.create(:name => 'Gangsta Rap')

m1 = Mixtape.create(:name => "Pet Sounds")
m2 = Mixtape.create(:name => 'Cool Tunes')
m3 = Mixtape.create(:name => 'Jams')

s1 = Song.create(:name => "Surfin' U.S.A.")
s2 = Song.create(:name => 'Freebird')
s3 = Song.create(:name => 'Fuck tha Police')

u1 = User.create(:name => 'Brian Wilson', :image => 'http://charmainesmusepallet.files.wordpress.com/2012/06/brianwilson1964.jpg', :password => 'disinfo', :password_confirmation => 'disinfo', :balance => '20.0')

u2 = User.create(:name => 'Ronnie Van Zant', :image => 'http://24.media.tumblr.com/tumblr_lwtn4pyKZP1qkkjhfo1_500.jpg', :password => 'disinfo', :password_confirmation => 'disinfo', :balance => '100.0')

u3 = User.create(:name => 'Easy-E', :image => 'http://theversed.com/files/2012/05/Eazy-E.jpg', :password => 'disinfo', :password_confirmation => 'disinfo', :balance => '500.0')

u3.is_admin = true
u3.save

r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
g3.songs = [s1, s2, s3]
u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]
u1.albums = [a1, a2]


