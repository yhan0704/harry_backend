# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
Spell.destroy_all
User.destroy_all

get_characters  = RestClient.get('http://hp-api.herokuapp.com/api/characters')
characters_info = JSON.parse(get_characters)

#characters fetch
characters_info.each do |character|
Character.create(
    name:                 character["name"],
    species:              character["species"],
    image:                character["image"],
    ancestry:             character["ancestry"],
    hogwarts_student:     character["house"],
    dateBirth:            character["dateOfBirth"],
    actor:                character["actor"],
    role:                 character["gender"]
)
end


get_spells  = RestClient.get('https://www.potterapi.com/v1/spells?key=$2a$10$/zqt2JnFkXCtmuF6Scfvr.qPE4mh6lexsPp1XqP8J3Tql3dxKi5TO')

spells_info = JSON.parse(get_spells)

spells_info.each do |spell|
    Spell.create(
        name:     spell["spell"],
        category: spell["type"].downcase,
        effect:   spell["effect"]
     
    )
end

chiney = User.create(name: 'Chiney', house:'Ravenclaw')