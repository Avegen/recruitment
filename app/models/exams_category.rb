# frozen_string_literal: true

# == Schema Information
#
# Table name: exams_categories
#
#  id          :bigint(8)        not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint(8)
#  exam_id     :bigint(8)
#
# Indexes
#
#  index_exams_categories_on_category_id  (category_id)
#  index_exams_categories_on_exam_id      (exam_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (exam_id => exams.id)
#

class ExamsCategory < ApplicationRecord
  belongs_to :exam
  belongs_to :category
end