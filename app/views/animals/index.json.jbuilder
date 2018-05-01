json.array! @animals do |animal|
  json.extract! animal, :id, :name, :age, :category, :status
end