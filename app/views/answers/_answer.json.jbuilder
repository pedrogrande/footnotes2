json.extract! answer, :id, :question_id, :order, :title, :description, :image, :created_at, :updated_at
json.url answer_url(answer, format: :json)