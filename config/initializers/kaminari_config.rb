# frozen_string_literal: true

Kaminari.configure do |config|
  # config.default_per_page = 25
  # config.max_per_page = nil
  # config.window = 4
  # config.outer_window = 0
  # config.left = 0
  # config.right = 0
  # config.page_method_name = :page
  # config.param_name = :page
  # config.max_pages = nil
  # config.params_on_first_page = false
  
  # 一度に表示できる投稿数を10にした 2021/09/12
  config.default_per_page = 10
  
end
