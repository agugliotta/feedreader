# == Schema Information
#
# Table name: feeds
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  url         :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Feed < ActiveRecord::Base
	belongs_to :user
	#####################################################
	# Validations
	#####################################################
	validates :user_id, presence: true

	# ensure that title is present and at least 10 chars long
	validates :name, length: { minimum: 10 }, presence: true

	# ensure the url is present, and respects the URL format for http/https
	#validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
end
