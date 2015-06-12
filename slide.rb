 class Slide < ActiveRecord::Base
   
   # Returns the object as a Hash.
  def to_hash
    {
      id: id,
      title: title,
      body: body
    }
  end
end