class UserController < ActionController::API
  def logs
    user_id = 2
    product_ids = Log.where(user_id: user_id).pluck(:product_id)
    products = Product.where(id: product_ids)
    logs = Log.where(user_id: user_id)
    result_hash = {}
    result_hash['total_count'] = products.length
    product_array = []
    products.each do |product|
      hash = {}
      hash['product_id'] = product.id
      hash['name']       = product.name
      product_array.push(hash)
    end
    result_hash['products'] = product_array

    render json: result_hash
  end
end
