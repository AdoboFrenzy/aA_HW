class UserMailer < ApplicationMailer

  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: user.email, subject: 'Thank you for joining 99cats. Now you can rent any cats you want')

    attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
  end

  def deliver_now

  end

end
