Types::UserType = GraphQL::ObjectType.define do
 name "UserType" 

 field :id, types.ID
 field :name, types.String
 field :email, types.String
 field :phone, types.Int

end