class DynosNotifer < ActionMailer::Base

  def notification(dynos_count, original_dynos, wait_time)

    @date = Time.now
    @dynos_count = dynos_count
    @original_dynos = original_dynos
    @wait_time = wait_time

    mail(:to => ::DynosNotifer::MailSetting[:to],
         :subject => "[Heroku] dynos changed - #{@dynos_count}",
         :from => ::DynosNotifer::MailSetting[:from])
  end
end
