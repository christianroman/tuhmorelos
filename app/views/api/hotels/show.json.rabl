object @hotel

attributes :id, :name, :street, :district, :zipcode, :phone, :website, :email, :fare_id, :video, :paypal, :description

child :photos do
    attributes :data
end

child :destination do
    attributes :id, :name
end

child :rooms do
    attributes :id, :name, :fare
end
