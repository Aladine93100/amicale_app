class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :file,      :attachment => true
  attribute :email
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "your.email@your.domain.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end