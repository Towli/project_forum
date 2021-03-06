# == Schema Information
#
# Table name: discussions
#
#  id                 :integer          not null, primary key
#  subject            :string
#  replies            :integer          default("0")
#  discussion_starter :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  content            :text
#  user_id            :integer
#

class Discussion < ActiveRecord::Base
	belongs_to :user
	has_many :posts

	def self.filter(query)
		Discussion.where("subject LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")
	end

end
