class Twilio
  
  private

  def self.get_client
    binding.pry
    @client = Twilio::REST::Client.new(TWILIO_SID, TWILIO_AUTH_TOKEN)
  end

end