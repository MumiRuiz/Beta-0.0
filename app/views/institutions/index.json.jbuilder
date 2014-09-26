json.array!(@institutions) do |institution|
  json.extract! institution, :id, :name, :email, :country, :region, :city, :telephone, :website, :address, :nit, :legal_representant
  json.url institution_url(institution, format: :json)
end
