class Devlog
  include Mongoid::Document
  field :request, :type => String
  field :fixing, :type => String
  field :url, :type => String
end
