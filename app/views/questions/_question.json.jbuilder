json.extract! question, :id, :question_type_id, :order, :title, :description, :created_at, :updated_at
json.url question_url(question, format: :json)