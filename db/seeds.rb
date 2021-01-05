Text.destroy_all
ImportCsv.text_data

Movie.destroy_all
ImportCsv.movie_data

EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

AdminUser.find_or_create_by!(email: EMAIL) do |admin_user|
  admin_user.password = PASSWORD 
  admin_user.password_confirmation = PASSWORD 
  puts 'adminユーザーの初期データインポートに成功しました。'
end