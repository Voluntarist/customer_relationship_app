class Rolodex

  def initialize
    @contacts = []
    @id = 0
  end

  def new_contact(name, age, email)

    @id += 1
    @contacts << Contact.new(@id, name, age, email)

  end

  def index
    @contacts.each do |contact|
      return contact if contact.id == @id
    end
  end
end