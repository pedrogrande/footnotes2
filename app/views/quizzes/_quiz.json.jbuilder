json.extract! quiz, :id, :year_group_id, :name, :description, :image, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)