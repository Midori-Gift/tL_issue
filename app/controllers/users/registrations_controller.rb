class Users::RegistrationsController < Devise::RegistrationsController
  # registration_confirmationを継承、createの振る舞いのみを変える
  # 登録後したメールアドレスにメールが届くようになる。
  def create
    super
    # new_user = User.new
    # resource = new_user.email
    UserMailer.registration_confirmation(params[:user][:name],params[:user][:name]).deliver unless resource.invalid?
    
     #WelcomeMailerクラスのsend_when_signupメソッドを呼び、POSTから受け取ったuserのemailとnameを渡す
  end
end
