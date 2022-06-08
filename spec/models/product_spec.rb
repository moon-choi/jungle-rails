require 'rails_helper'

describe Product, type: :model do
  describe 'Validations' do
    it 'validates name field' do
      params = { description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      expect(@product.name).to be_nil
    end

    it 'validates price field' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg' }
      @category = Category.new
      @product = Product.new params
      expect(@product.price).to be_nil
    end

    it 'validates quantity field' do
      params = { name: 'hello', description: 'hello', category_id: 1, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      expect(@product.quantity).to be_nil
    end

    it 'validates category field' do
      params = { name: 'hello', description: 'hello', quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      expect(@product.category).to be_nil
    end
  end
end

  

