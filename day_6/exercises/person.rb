# Create a person class with at least 2 attributes and 2 behaviors.  Call all
# person methods below the class so that they print their result to the
# terminal.

class Person
  attr_reader :name, :id_number
  attr_accessor :nom_info

  def initialize(name, id)
    @name = name
    @id_number = id
    @nom_info = {None: "None"}
  end

  def nominate(deal, level)
    self.nom_info["#{deal}"] = "#{level}"
    p "Nomination submitted for: #{name}"
    p "For participation in: #{deal}"
    p "Level of influence: #{level}"
    p "-----------"
  end

  def remove_nomination(deal)
    self.nom_info.delete("#{deal}") { |nom| "#{deal} not found"}
    p "Nomination removed for #{deal}"
    p "-----------"
  end

  def info
    p "Name(ID): #{name}(#{id_number})"
    p self.nom_info
    p "-----------"
  end

end

jason_fryman = Person.new("Jason Fryman", "jdf5")
jason_fryman.info
jason_fryman.nominate("Project A", "medium")
jason_fryman.nominate("Project B", "high")
jason_fryman.info
jason_fryman.remove_nomination("Project B")
jason_fryman.info
