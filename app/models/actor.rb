class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end 
  
  def list_roles 
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end 
  
   # TODO create a list_roles method
    # TODO: build a method on actor that will return an array of
    # strings in the form "#{character_name} - #{show_name}"
end