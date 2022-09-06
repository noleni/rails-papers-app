require "open-uri"
require "nokogiri"

Comment.destroy_all
puts "all comments destroyed"
Post.destroy_all
puts "all posts destroyed"
User.destroy_all
puts "all users destroyed"

user1 = User.create!(email: 'test@test.com', nickname: 'Julie', password: 'azerty')
user2 = User.create!(email: 'test2@test.com', nickname: 'Momo', password: 'azerty')
user3 = User.create!(email: 'test3@test.com', nickname: 'Enzo', password: 'azerty')
user4 = User.create!(email: 'test4@test.com', nickname: 'Gaby', password: 'azerty')
user5 = User.create!(email: 'test5@test.com', nickname: 'Batman', password: 'azerty')
user6 = User.create!(email: 'test6@test.com', nickname: 'Mononoke', password: 'azerty')
user7 = User.create!(email: 'test7@test.com', nickname: 'Bart', password: 'azerty')
user8 = User.create!(email: 'test8@test.com', nickname: 'Eli', password: 'azerty')

puts "Users created !"


post1 = Post.new(
  user: user1,
  title: "Faut-il planifier l’écologie ?",
  content: "Ça y est : promis-juré, maintenant il a compris. « Je fais le serment de léguer à la jeunesse une planète plus vivable », a lancé Emmanuel Macron du haut de son pupitre le 7 mai dernier, lors de son discours d’investiture. L’occasion de marteler son intention de « planifier » la transition écologique et de marquer un nouveau jalon dans l’opération de « ripolinage » vert-de-gris débutée trois semaines auparavant à Marseille pour séduire l’électorat de gauche : « Ce n’est pas simplement une politique, c’est la politique des politiques. » Top départ du ravalement de façade par un plâtrage institutionnel : le rattachement de la planification écologique à Matignon, sous la tutelle de qui se battront (on l’a appris depuis) Agnès Pannier-Runacher, la ministre chargée de la planification énergétique, et Amélie de Montchalin, qui aura la charge de la planification écologique et de la cohésion des territoires. ",
  url: "https://www.socialter.fr/article/faut-il-planifier-l-ecologie"
)
post1.photo.attach(
  io: URI.open('https://www.socialter.fr/images/article/t/eoliennesplanification_1655302196-1170x749.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
post1.save!

post2 = Post.new(
  user: user2,
  title: "Peut-on être militant et joyeux ?",
  content: "De la poésie, René-Guy Cadou, un poète qu’on lit encore à l’école, aimait dire qu’elle est « inutile comme la pluie » : vitale, ignorée, vaguement méprisée, pourtant aussi essentielle que l’air qu’on respire ou le feu qu’on rallume après l’orage. De la joie, on pourrait dire tout pareil. Mais qu’ont-elles en commun, ces deux drôles de fées, la poésie et la joie, qui pourraient justifier qu’on s’en préoccupe plutôt que d’en profiter comme d’un quelconque divertissement ? À première vue, même joliesse et même insignifiance. On laisse la poésie aux adolescents, la joie aux tout petits enfants. On saute de joie, on savoure des poèmes.",
  url: "https://www.socialter.fr/article/peut-on-etre-militant-et-joyeux"
)
post2.photo.attach(
  io: URI.open('https://www.socialter.fr/images/article/t/illudossier1_1655372457-1170x749.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
post2.save!

post3 = Post.new(
  user: user3,
  title: "Comment la SF est récupérée par les multinationales et l'armée",
  content: "À l’été 2019, l’Agence de l’innovation de défense (AID), émanant de l’armée française, annonçait la création d’une Red Team. Inspirée du modèle américain, cette équipe doit réunir plusieurs auteurs de science-fiction pour penser le futur de la guerre, avec la consigne de « s’affranchir le plus possible des moyens habituels de la prospective ». « Nous sommes prisonniers de notre mental quotidien, explique ­Emmanuel ­Chiva, directeur de l’AID. Pour percer le mur de l’imaginaire, il faut faire appel à des personnes qui pensent en dehors du cadre. Les auteurs de science-fiction sont de ceux-là. » Les médias français n’ont pas tardé à relayer l’affaire, présentant cette mise au pas de la science-fiction comme quelque peu ésotérique et originale.",
  url: "https://www.socialter.fr/article/comment-la-sf-est-recuperee-par-les-multinationales-et-l-armee"
)
post3.photo.attach(
  io: URI.open('https://www.socialter.fr/images/article/t/sfarmee_1654769371-1170x749.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
post3.save!

post4 = Post.new(
  user: user4,
  title: "Pourquoi les êtres humains se racontent-ils des histoires ?",
  content: "Il était une fois, dans un pays lointain, au beau milieu du désert, un peuple en proie à une sécheresse particulièrement redoutable. Son chef, âgé et vénérable, mena alors, des jours durant, les hommes et les femmes qui constituaient son clan vers des points d’eau toujours plus éloignés, constatant sans relâche que ceux-ci avaient été asséchés par l’absence de pluie. Parvenu aux derniers confins de son territoire, le patriarche sut qu’il ne pouvait plus compter sur les ressources du monde connu pour éviter la catastrophe et ne pas regarder, impuissant, son peuple mourir peu à peu de soif. Le vieil homme fit alors appel aux chants et aux mythes scandés lors des cérémonies rituelles qui constituaient sa tradition.",
  url: "https://www.socialter.fr/article/pourquoi-les-etres-humains-se-racontent-ils-des-histoires"
)
post4.photo.attach(
  io: URI.open('https://www.socialter.fr/images/article/t/illuhistoires_1653918496-1170x749.jpeg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
post4.save!

post5 = Post.new(
  user: user5,
  title: "Fictions du futur : le choc des imaginaires",
  content: "Les œuvres de fiction révèlent les nombreuses batailles qui se livrent dans notre imaginaire collectif. L’une d’entre elles, plus saillante, oppose le dépassement par l’humanité de toutes les limites grâce à la technologie d’un côté, la prise en compte écologique des limites de la planète de l’autre. S’il est crucial d’analyser la portée politique de ces fictions et leur capacité à nous influencer, faut-il pour autant rejeter leur caractère ambivalent ?
          Blade Runner 2049 débute par un gros plan sur un œil bleu-vert qui se transforme, via un fondu enchaîné, en un paysage de campagne californienne du futur aux reflets métalliques : une répétition à l’infini de serres d’agriculture synthétique. Le spectacle est celui d’une nature disparue, remplacée par une industrie purement consacrée à la survie humaine sur une planète dévastée. Dès les premières minutes de ce long-métrage, sorti fin 2017, le réalisateur ­Denis ­Villeneuve réanime l’imaginaire du ­Blade ­Runner de 1982, film culte de ­Ridley ­Scott et adaptation du roman de ­Philip K. ­Dick Les androïdes rêvent-ils de moutons électriques ? (1968), mêlant ambiance de fin du monde et hypertrophie technologique.",
  url: "https://www.socialter.fr/article/fictions-du-futur-le-choc-des-imaginaires"
)
post5.photo.attach(
  io: URI.open('https://www.socialter.fr/images/article/t/fictionimaginaires_1655118254-1170x749.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
post5.save!

post6 = Post.new(
  user: user6,
  title: "Que dit le dernier rapport du GIEC ?",
  content: "Les modélisations du climat passé permettent désormais de confirmer que l’origine anthropique du changement climatique est incontestable, les facteurs naturels ne permettant pas d’expliquer le récent réchauffement planétaire. Les puits de carbone océaniques et terrestres (forêts, tourbières…) sont de moins en moins efficaces pour ralentir l’accumulation de gaz à effet de serre dans l’atmosphère, en raison de leur détérioration (directe ou indirecte) par les activités industrielles. Sauf réaction immédiate et réduction des émissions mondiales de gaz à effet de serre de 45 % d’ici 2030, limiter le réchauffement à + 1,5 °C deviendra impossible. La hausse de la température planétaire va se poursuivre même dans les scénarios d’émissions les plus optimistes. Si la trajectoire actuelle se poursuit, « les émissions vont augmenter de 16 % d’ici à 2030, conduisant à un réchauffement de +2,7 °C d’ici la fin du siècle » 2. Pourtant, au-dessus de +2 °C, davantage de seuils de rupture (ou points de basculement) sont susceptibles d’être franchis dans le système climatique, avec des conséquences lourdes et irréversibles pour l’ensemble du climat 3.",
  url: "https://www.socialter.fr/article/rapport-du-giec-infographie"
)
post6.photo.attach(
  io: URI.open('https://www.socialter.fr/images/article/t/giec_1643367890-1170x749.jpeg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
post6.save!

puts "Posts created !"

comment1 = Comment.new(
  user: user3,
  post: post4,
  content: "super article"
)
comment1.save!

comment2 = Comment.new(
  user: user7,
  post: post4,
  content: "Très intéressant, merci pour le partage !"
)
comment2.save!

comment3 = Comment.new(
  user: user8,
  post: post1,
  content: "Wahou ! J'irai me coucher moins bête ce soir..."
)
comment3.save!

puts "Comments created !"
