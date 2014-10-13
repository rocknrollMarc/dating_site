json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :description
  json.url member_url(member, format: :json)
end
