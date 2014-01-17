class Contact
  attr_accessor :name, :email, :age
  attr_reader :id

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
    @id = id
  end
end



