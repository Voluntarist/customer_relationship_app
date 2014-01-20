class Contact
  attr_accessor :name, :email, :age
  attr_reader :id

  def initialize(id, name, age, email)
    @id = id
    @name = name
    @age = age
    @email = email
  end
end



