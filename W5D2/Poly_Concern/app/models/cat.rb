class Cat < ApplicationRecord
  include Toyable
  # has_many :toys, as: :toyable


  # we don't need the ones below with polymorphic association
  # primary_key: :id,
  # foreign_key: :cat_id,
  # class_name: :Toy


end
