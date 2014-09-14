class TwilioManager

  ACCOUNT_NUMBER = "+14158020148"

  def self.send_text(params)
    @client = self.get_client
    @text = @client.messages.create({
      from: ACCOUNT_NUMBER,
      to: params[:to],
      body: params[:body]
    })
  end

  def self.get_client
    @client = Twilio::REST::Client.new(TWILIO_SID, TWILIO_AUTH_TOKEN)
  end

end