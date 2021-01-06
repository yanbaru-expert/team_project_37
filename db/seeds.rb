Text.destroy_all
ImportCsv.text_data

Movie.destroy_all
ImportCsv.movie_data

EMAIL = 'test@example.com'
ADMIN_EMAIL = 'admin@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
  admin_user.password = PASSWORD 
  puts 'adminユーザーの初期データインポートに成功しました。'
end