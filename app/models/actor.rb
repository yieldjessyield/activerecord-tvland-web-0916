class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    first = self.first_name
    last = self.last_name
    first + " " + last
  end

  def list_roles
    y = ""
    self.characters.each {|x| y <<"#{x.name} - #{x.show.name}"}
    y
  end

end
