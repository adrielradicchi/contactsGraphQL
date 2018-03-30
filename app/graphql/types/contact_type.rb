Types::ContactType = GraphQL::ObjectType.define do
 name "ContactType" 

 field :id, types.ID
 field :name, types.String
 field :email, types.String

 
 field :user do

   type Types::UserType

   description "Contato que pertence ao usuário"

   resolve ->(contact, args, context){
     contact.user
   }

 end

 field :address, types[Types::AddressType] do 

 	description "Endereços pertencentes ao contato"

 	resolve ->(contact, args, context){
 		contact.address
 	}
  end
end