class Project < ActiveRecord::Base
  validates :name, :presence =>true, :uniqueness => true,
            :format => {:with => /\w|\s/i},
            :length => {:minimum =>6 }
   validates :description, :presence =>true
             
  has_and_belongs_to_many :users
  has_many :tasks
end
