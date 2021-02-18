class Comment < ApplicationRecord
  belongs_to :article
    before_save :is_this_an_anonymous_comment?
  after_create :increment_number_db
  @@number_db = 0

  validates :body, presence: true, length: { minimum: 5 }

	private
	  def is_this_an_anonymous_comment?
			self.commenter = 'Anonymous_' + (@@number_db + 1).to_s if self.commenter.empty?
		end

		def increment_number_db
			@@number_db += 1
		end
end
