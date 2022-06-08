require 'spec_helper'

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'

describe Product, type: :model do
  describe 'Validations' do

    it 'name should be true' do
      @category = category.new
       @product = Product.new
      expect(@product.name).to be_true
    end

    it 'price should be true' do
      @product = Product.new
      expect(@product.price).to be_true
    end

    it 'quantity should be true' do
      @product = Product.new
      expect(@product.quantity).to be_true
    end

    it 'category should be trure' do
      @product = Product.new
      expect(@product.category).to be_true
    end  
  end
end

  

