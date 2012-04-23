class CodeProvince
  include Mongoid::Document
  field :code, :type => String
  field :name, :type => String
end
