json.extract! question_type, :id, :name, :description, :num_of_answers_required, :created_at, :updated_at
json.url question_type_url(question_type, format: :json)