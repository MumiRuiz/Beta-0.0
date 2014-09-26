json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :description, :age, :breed, :type, :gender, :size, :special_reeds, :instituion_id
  json.url pet_url(pet, format: :json)
end
