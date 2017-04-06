class Child < ActiveRecord::Base
    belongs_to :task
    belongs_to :user
    # accepts_nested_attributes_for :task

    validates :due_date, presence: true
    # validates :status, acceptance: true
end
