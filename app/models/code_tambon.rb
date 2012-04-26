class CodeTambon
  include Mongoid::Document
  field :code_amphoe_id, :type => Integer
  field :code, :type => String
  field :name, :type => String
end
