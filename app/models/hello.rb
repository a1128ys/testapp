class Hello
  include Mongoid::Document
  field :greet, :type => String
  field :language, :type => String
  field :country, :type => String
  field :memo, :type => String
end
