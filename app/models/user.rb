class User < ActiveRecord::Base
  belongs_to :group

  def alert(message)
    TwilioManager.send_text({
      to: self.phone_number,
      body: message
      })
  end
end
