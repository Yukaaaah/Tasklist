class Task < ActiveRecord::Base
    has_many :children, dependent: :destroy
    # accepts_nested_attributes_for :children

    validates :due_date, presence: true
    # validates :status, acceptance: true

end
