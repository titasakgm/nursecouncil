class NcModule
  include Mongoid::Document
  field :code, :type => String
  field :name, :type => String
  key :code
end
