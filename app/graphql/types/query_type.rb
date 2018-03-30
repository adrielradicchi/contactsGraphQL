Types::QueryType = GraphQL::ObjectType.define do
 name "Query"

 # chamamos o field de "user" e ele terá um
 # namespace chamado "Types" que chamamos
 # de "UserType" e ficará em

 # app/graphql/types/user_type.rb
 field :contact, Types::ContactType do
   argument :id, types.ID 
   description "Identificação do Usuário"

   resolve -> (obj, args, ctx) {
     Contact.where(id: args[:id]).first
   }
 end

 field :allContacts, types[Types::ContactType] do
 	description "Todos os contatos"

 	resolve -> (obj, args, ctx){
 		Contact.all
 	}
 end 	
 #field :address, Types::AddressType do
 #	argument :id, types.ID
# 	description "Endereço do usuário"

 #	resol
end