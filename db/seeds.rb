@user = User.create(email: "test@test.com",
                 password: "asdfasdf",
    password_confirmation: "asdfasdf", 
               first_name: "Jon", 
                last_name: "Snow",
                    phone: "4322386161")
puts "1 user created"

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
    password_confirmation: "asdfasdf", 
               first_name: "admin", 
                last_name: "user",
                    phone: "4322386161")
puts "1 Admin User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content.Lorem Ipsum，也称乱数假文或者哑元文本，
                                                    是印刷及排版领域所常用的虚拟文字。
                                                    由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书
                                                    ，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。
                                                    它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。
                                                    在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，
                                                    从而广泛普及了它的使用。
                                                    最近，计算机桌面出版软件”Aldus PageMaker”
                                                    也通过同样的方式使Lorem Ipsum落入大众的视野", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"
