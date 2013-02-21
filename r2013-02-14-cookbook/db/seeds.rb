Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Gordon Ramsay Makes It Easy', :chef => 'Gordon Ramsay', :cuisine => 'Modern', :image => 'http://img1.imagesbn.com/p/9780764598784_p0_v2_s260x420.JPG')

r1 = Recipe.create(:name => 'Sea Bass with Pepper Sauce', :image => 'GrilledSeaBass.jpg')
r2 = Recipe.create(:name => 'Herb Crusted Rack of Lamb', :image => 'racklamb.jpg')
r3 = Recipe.create(:name => 'Sticky Baked Chicken Drumsticks', :image => 'drumsticks.jpg')

i1 = Ingredient.create(:name => 'Filet of Sea Bass', :image => 'http://www.fishfanatics.co.uk/dynimage/product-58-standard-640x480.jpg')
i2 = Ingredient.create(:name => 'Olive Oil', :image => 'http://static.ddmcdn.com/gif/how-olive-oil-works-3.jpg')
i3 = Ingredient.create(:name => 'Chicken Drumsticks', :image => 'http://cookingwhims.files.wordpress.com/2011/06/chicken-drumsticks.jpg')
i4 = Ingredient.create(:name => 'Black Pepper', :image => 'http://2.bp.blogspot.com/-XiOAFGTe5wM/Tq2pL9s3LuI/AAAAAAAAPhE/wObW6T_ttlk/s1600/black-pepper.jpg')
i5 = Ingredient.create(:name => 'Lamb', :image => 'http://1.bp.blogspot.com/-v58VyPnx6qU/TaAynaaOn-I/AAAAAAAAACg/jC7bRR8H6uw/s1600/lamb.jpg')
i6 = Ingredient.create(:name => 'Sprig Leaves', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Thyme-Bundle.jpg/640px-Thyme-Bundle.jpg')

b1.recipes = [r1, r2, r3]

r1.ingredients = [i1, i2, i6]
r2.ingredients = [i5, i6]
r3.ingredients = [i3, i4]

