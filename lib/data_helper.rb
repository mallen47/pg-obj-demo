module DataHelper

  def self.user_data data_file
    user_data = CSV.read Dir.pwd + data_file
    descriptor = user_data.shift
    descriptor = descriptor.map { |key| key.to_sym }
    user_data.map { |user| Hash[ descriptor.zip(user) ] }
  end
end
