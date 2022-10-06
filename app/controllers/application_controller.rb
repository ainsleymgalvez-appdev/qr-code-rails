class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "my_templates/homepage.html.erb" })
  end

  def text_qr
    @user_text = params.fetch("content")

    @qr_code = RQRCode::QRCode.new(@user_text)

    render({:template => "my_templates/qr_for_text.html.erb"})
  end

  def wifi_qr

    @ssid = params.fetch("ssid")
    @pw = params.fetch("pw")

    @qr_code = RQRCode::QRCode.new("WIFI:T:WPA;S:" + @ssid + ";P:" + @pw)

    render({:template => "my_templates/qr_for_wifi.html.erb"})

  end

  def url_qr
  
    @url = params.fetch("page")

    @qr_code = RQRCode::QRCode.new(@url)

    render({:template => "my_templates/qr_for_url.html.erb"})

  end

  def sms_qr

    @phone = params.fetch("phone")
    @message = params.fetch("message")

    @qr_code = RQRCode::QRCode.new("SMSTO:+1" + @phone + ":" + @message)

    render({:template => "my_templates/qr_for_sms.html.erb"})

  end

end
