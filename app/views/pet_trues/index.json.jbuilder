json.array!(@pet_trues) do |pet_true|
  json.extract! pet_true, :id, :name, :age, :kind, :gender, :size, :story, :city, :country, :region, :user_id, :institution_id
  json.url pet_true_url(pet_true, format: :json)
end
