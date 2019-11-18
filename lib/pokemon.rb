class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
<<<<<<< HEAD
  def initialize(keywords)
    
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    return new_pokemon
=======
  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
>>>>>>> 89b66c39b0411d3ea389838b2a5b95c7b8e6bf1d
  end
end
