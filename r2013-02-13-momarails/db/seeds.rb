Artist.delete_all

Artist.create(:name => 'Salvador Dali', :nationality => 'Spanish', :dob => '5/11/1904', :period => 'Modern', :image => 'Dali.jpg')
Artist.create(:name => 'Vincent van Gogh', :nationality => 'Dutch', :dob => '3/30/1853', :period => 'Modern', :image => 'VanGogh.jpg')
Artist.create(:name => 'Pablo Picasso', :nationality => 'Spanish', :dob => '10/25/1881', :period => 'Modern', :image => 'Picasso.jpg')
Artist.create(:name => 'Jackson Pollock', :nationality => 'American', :dob => '1/28/1912', :period => 'Modern', :image => 'Pollock.jpg')
Artist.create(:name => 'Leonardo da Vinci', :nationality => 'Italian', :dob => '4/15/1452', :period => 'Renaissance', :image => 'daVinci.jpg')

Painting.delete_all

Painting.create(:title => 'The Persistence of Memory.jpg', :year => 1931, :image => 'PersistenceMemory.jpg')
Painting.create(:title => 'Starry Night', :year => 1889, :image => 'StarryNight.jpg')
Painting.create(:title => "Les Demoiselles d'Avignon.jpg", :year => 1907, :image => 'LesDemoiselles.jpg')
Painting.create(:title => 'No.5, 1948.jpg', :year => 1950, :image => 'No.5_1948.jpg')
Painting.create(:title => 'Mona Lisa', :year => 1519, :image => 'MonaLisa.jpg')
