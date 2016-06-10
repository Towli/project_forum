# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  title          :string
#  content        :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  discussion_id  :integer
#  user_id        :integer
#  parent_post_id :integer
#  reply_id       :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
