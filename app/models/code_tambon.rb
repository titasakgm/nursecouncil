class CodeTambon
  include Mongoid::Document
  field :code_amphoe_id, :type => Integer
  field :code
  field :name
  field :zip
end
