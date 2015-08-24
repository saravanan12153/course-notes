class SaleMailer < ApplicationMailer

  def receipt(sale)
    @sale = sale
    mail(to: @sale.email, subject: "Your receipt")
  end

end
