require 'rails_helper'

describe Product, type: :model do
  describe 'Validations' do
    it 'validates name field' do
      params = { name: nil, description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      expect(@product.name).to be_nil
    end

    it 'validates price field' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: nil }
      @category = Category.new
      @product = Product.new params
      expect(@product.price.fractional).to be 0
    end

    it 'validates quantity field' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: nil, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      expect(@product.quantity).to be_nil
    end

    it 'validates category field' do
      params = { name: 'hello', description: 'hello', category_id: nil, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      expect(@product.category).to be_nil
    end
  end
end

  

