class UsersController < ApplicationController
  def show
    id = params[:id].to_i
    cypher_query =  'MATCH (u:User { id:{id} })-[:contributes_in]->(l)'
    cypher_query << ' RETURN l'
    p $neo.execute_query(cypher_query, {id: id})
    render text: 'hello'
  end
end