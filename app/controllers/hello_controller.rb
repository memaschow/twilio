class HelloController < ApplicationController

  def index 


  end

  def outbound

	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+4915161003858"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

 
	@twilio_client.account.calls.create(
	:application_sid => 'AP79b6c85531f1aafaf6f8cfcde7f35aa3',
	:from => "+4972197795995",
	:to => "+4915161003858"
	
	)




  end

  def twimlet

  		  render xml:
          "<Response><Dial action='/forward?Dial=true' timeout='20'>+4915161003862</Dial></Response>"

  end
 

  def responder


	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+4915161003858"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
	@twilio_client.account.calls.create(
	:from => "+4972197795995",
	:to => "+4915161003858",
	:url => "http://twimlets.com/echo?Twiml=%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22UTF-8%22%3F%3E%0A%3CResponse%3E%0A%3CSay%20voice%3D%22man%22%3EMausi%2C%20I%20love%20you%20so%20much.%20So%20much.%20So%20much.%20Love%20you%20so%20much.%3C%2FSay%3E%0A%3C%2FResponse%3E&"
	)

  end



  def sms

 
	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+15077880701"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
	@twilio_client.account.sms.messages.create(
	:from => "+15077880701",
	:to => "+4915161003858",
	:body => "This is an message."
	)

  end

  def call 

  	twilio_sid = "AC8b529193ecf93b1132e81e62009dfa02"
	twilio_token = "3381411d6ff5d816d1b02f8d9d9c0e12"
	twilio_phone_number = "+4915161003858"
 
	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
	@twilio_client.account.calls.create(
	:from => "+4972197795995",
	:to => "+4915161003858",
	:url => "http://twimlets.com/forward?PhoneNumber=%2B4972197795995&"
	)


  end
end
