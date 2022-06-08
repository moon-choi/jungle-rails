require 'rails_helper'

describe Product, type: :model do
  describe 'Validations' do
    it 'creates a new product' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product).not_to be_nil
    end

    it 'validates name field' do
      params = { name: nil, description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.name).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
    end

    # price excluded from params
    it 'validates price field' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg' }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.price).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
    end

    it 'validates quantity field' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: nil, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.quantity).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
  
    end

    it 'validates category field' do
      params = { name: 'hello', description: 'hello', category_id: nil, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.category).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
  
    end
  end
end

  

