class OrderNotifier < ActionMailer::Base
  default from: "lisa@carpenta.vn"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    
    @order = order

    mail to: order.email, subject: 'Carpenta Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped

    @order = order

    mail to: order.email, subject: 'Carpenta Order Shipped'

  end


  def test
    mail to: "hotranminhkhang@gmail.com", subject: "Carpenta Test"
  end


end
