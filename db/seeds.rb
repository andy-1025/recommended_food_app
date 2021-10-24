email = "test@example.com"
password = "password"

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

Food.create!(name: "たこ焼き", comment: "たこ焼きは、小麦粉の生地の中にタコ（主にマダコ）と薬味を入れて直径 3-5cmほどの球形に焼き上げた郷土料理。", user_id: user2.id)
Food.create!(name: "お好み焼き", comment: "お好み焼きは、小麦粉と鶏卵、キャベツなどを使用する鉄板焼きの一種である。鉄板の上で焼き上げ、ソース・マヨネーズ・青のり等の調味料をつけて食する。", user_id: user3.id)
Food.create!(name: "串カツ", comment: "串カツは、肉や野菜などを串に刺し、衣を付けて油で揚げた日本の料理。地域によって食材や調理法、飲食形態や呼称などが異なる場合がある。", user_id: user1.id)
User.create!(email: email, password: password)
puts "ユーザーの初期データインポートに成功しました。"
