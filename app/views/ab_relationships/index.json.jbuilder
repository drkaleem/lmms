json.array!(@ab_relationships) do |ab_relationship|
  json.extract! ab_relationship, :id, :abmaster_id, :relatedto_id, :relationtype
  json.url ab_relationship_url(ab_relationship, format: :json)
end
