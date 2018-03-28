class User
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :both, :friends, type: :friend, model_class: 'User'
end
