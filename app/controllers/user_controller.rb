class UserController < ActionController::API
  def logs
    user_id = 2
    logs = Log.where(user_id: user_id)
    result_hash = {}
    result_hash['total_count'] = logs.length
    logs_array = []
    logs.each do |log|
      hash = {}
      hash['user_id']    = log.user_id
      hash['product_id'] = log.product_id
      logs_array.push(hash)
    end
    result_hash['logs'] = logs_array

    render json: result_hash
  end
end
