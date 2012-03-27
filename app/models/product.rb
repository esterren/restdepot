class Product < ActiveRecord::Base
	validates :title, :description, :image_url, :presence => true
	validates :title, :uniqueness =>true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.05}
	validates :price, :format => {
		:with		=> %r{^\d*\.\d[5]?$}
	}
	validates :image_url, :format => {
		:with		=> %r{\.(gif|jpg|png)$}i,
		:message	=> 'must be a URL for GIF, JPG or PNG image.'
	}
end
