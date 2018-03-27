class CreateUser < Neo4j::Migrations::Base
  def up
    add_constraint :User, :uuid
  end

  def down
    drop_constraint :User, :uuid
  end
end
