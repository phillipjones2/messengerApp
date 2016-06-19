# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

m1 = Movie.create(title:"Clerks",
                  release_year:"1994",
                  plot:"Dante (Brian O'Halloran) is called in to cover a shift at his New Jersey convenience store on his day off. His friend Randal (Jeff Anderson) helps him pass the time, neglecting his video-store customers next door to hang out in the Quick Stop. The uneventful day is disrupted by news that one of Dant…")

m2 = Movie.create(title:"Jay and Silent Bob Strike Back",
                  release_year:"2001",
                  plot:"When Jay and Silent Bob learn that a 'Bluntman and Chronic' movie is being made featuring their comic book counterparts, they drool at the thought of fat movie checks rolling in. But when the pair find that there won't be any royalties coming their way, they set out to sabotage the flick at all cost…")

m3 = Movie.create(title:"Dogma",
                  release_year:"1999",
                  plot:"Two fallen angels who were ejected from paradise find themselves banned in Wisconsin. They are now headed for New Jersey where they find a loophole that can get them back into heaven. The only catch is that it will destroy humanity. A group bands together to stop them.")

m4 = Movie.create(title:"Chasing Amy",
release_year:"1997",
plot:"Holden and Banky are best friends and authors of a popular comic book. Holden falls in love with Alyssa, who happens to be a lesbian. Holden's relationship with Alyssa strains his life-long friendship with Banky, and soon the relationship between Holden and Alyssa has problems when he cannot deal wi…")

m5 = Movie.create(title:"Mallrats",
release_year:"1995",
plot:"T.S. (Jeremy London) and his best friend, Brodie (Jason Lee), take a trip to the mall after their girlfriends break up with them. T.S.'s girlfriend, Brandi (Claire Forlani), is participating in a dating game show at the mall, which was the initial cause of their breakup. Meanwhile, Brodie's ex, Rene…")

a1= Actor.create(first_name: "Jason",
                 last_name: "Mewes",
                 bio:"Jason Edward Mewes is an American television and film actor, film producer and internet radio show host. He has played Jay, the vocal half of the duo Jay and Silent Bob, in longtime friend Kevin Smith's films.")

a2= Actor.create(first_name: "Kevin",
                 last_name: "Smith",
                 bio:"Kevin Patrick Smith is an American filmmaker, actor, comedian, public speaker, comic book writer, author, and podcaster.")

a3= Actor.create(first_name: "Ben",
                 last_name: "Affleck",
                 bio:"Benjamin Geza Affleck-Boldt, better known as Ben Affleck, is an American actor and filmmaker. He began his career as a child actor, starring in the PBS educational series The Voyage of the Mimi.")

a4= Actor.create(first_name: "Jason",
                 last_name: "Lee",
                 bio:"Jason Michael Lee is an American actor, comedian, television producer and skateboarder. He is best known for his role as Earl Hickey in the television comedy series My Name Is Earl, David Seville in ...")

a5= Actor.create(first_name: "Matt",
last_name: "Damon",
bio:"Matthew Paige 'Matt' Damon is an American actor, film producer and screenwriter. He is ranked among Forbes magazine's most bankable stars and is one of the highest-grossing actors of all time.")
a6= Actor.create(first_name: "Joey Lauren",
last_name: "Adams",
bio:"Joey Lauren Adams is an American actress and director who has appeared in more than 40 films. She appeared in Kevin Smith's View Askewniverse films, particularly Mallrats and Chasing Amy, receiving a ...")


m1.actors << [a1, a2]
m2.actors << [a1,a2,a3,a4]
m3.actors << [a1,a2,a3,a5]
m4.actors << [a1,a2,a3,a4,a5,a6]
m5.actors << [a1,a2,a3,a4,a6]
