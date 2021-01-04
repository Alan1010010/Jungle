class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!

  def stripe
    skip_authorization
    # if request.headers['Content-Type'] == 'application/json'
    #   data = JSON.parse(request.body.read)
    #   puts data
    # else
    #   #Covers application/x-www-form-urlencoded format
    #   data = params.as_json
    #   puts data["alert_id"]
    # end
      # You can use webhooks to receive information about asynchronous payment events.
      # For more about our webhook events check out https://stripe.com/docs/webhooks.
      Stripe.api_key = 'sk_test_51DS3tkD2MzrAHYeDIVPSDjnEt5yxI5pNebPpXecgeSq0aYoElAymjh0tNwhN1RZBzaORrNXlDpWDauufzIWbElGY00rugbl3vk'

      webhook_secret = ENV['STRIPE_WEBHOOK_SECRET']
      payload = request.body.read
      if !webhook_secret.empty?
        # Retrieve the event by verifying the signature using the raw body and secret if webhook signing is configured.
        sig_header = request.env['HTTP_STRIPE_SIGNATURE']
        event = nil

        begin
          event = Stripe::Webhook.construct_event(
            payload, sig_header, webhook_secret
          )
        rescue JSON::ParserError => e
          # Invalid payload
          status 400
          return
        rescue Stripe::SignatureVerificationError => e
          # Invalid signature
          puts '⚠️  Webhook signature verification failed.'
          status 400
          return
        end
      else
        data = JSON.parse(payload, symbolize_names: true)
        event = Stripe::Event.construct_from(data)
      end
      # Get the type of webhook event sent - used to check the status of PaymentIntents.
      event_type = event['type']
      data = event['data']
      data_object = data['object']

      # if event_type == 'invoice.paid'
      #   # Used to provision services after the trial has ended.
      #   # The status of the invoice will show up as paid. Store the status in your
      #   # database to reference when a user accesses your service to avoid hitting rate
      #   # limits.
      #   # puts data_object
      # end

      # if event_type == 'invoice.payment_failed'
      #   # If the payment fails or the customer does not have a valid payment method,
      #   # an invoice.payment_failed event is sent, the subscription becomes past_due.
      #   # Use this webhook to notify your user that their payment has
      #   # failed and to retrieve new card details.
      #   # puts data_object
      # end

      # if event_type == 'customer.subscription.deleted'
      #   # handle subscription cancelled automatically based
      #   # upon your subscription settings. Or if the user cancels it.
      #   # puts data_object
      # end

      # content_type 'application/json'
      # { status: 'success' }.to_json
    # end
      return head :ok
  end

end
