get '/check-in' do
  # This is where we want to check the sender in to their group.
  # But only if this text is coming in after the time that this user was alerted and before the meditation start time.
  # @user = User.find_by(phone_number: params[:from])
  # @user.checked_in = true
  # @user.group.in_count += 1
  twiml = Twilio::TwiML::Response.new do |response|
    response.Message "You're in!"# #{group.in_count - 1} other friends are in already."
  end
  twiml.text
end