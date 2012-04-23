class CodePrename
  include Mongoid::Document
  field :code, :type => String
  field :name, :type => String
  field :use, :type => Boolean
end
