Types::AddressType = GraphQL::ObjectType.define do
 name "AddressType" 

 field :id, types.ID
 field :addres, types.String
 field :number, types.Int
 field :zipcode, types.String

end