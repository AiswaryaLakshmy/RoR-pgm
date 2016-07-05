class Article < ActiveRecord::Base

	has_many :comments, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 5 }

    after_save :display_msg

    	def display_msg
    		puts 'Saved successfully'
    	end

    before_save :set_text

    def set_text
    	self.text = self.title if text.blank?
    end
end
