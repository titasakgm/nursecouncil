class CodeAmphoe
  include Mongoid::Document
  field :province, :type => String
  field :code, :type => String
  field :name, :type => String
end
