class Person < ApplicationRecord
    belongs_to :document
    belongs_to :role

    validates :identification, :first_name, :first_last_name, :document_id, :role_id, presence:true
    validates :identification, uniqueness:true
end
