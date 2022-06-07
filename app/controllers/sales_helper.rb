# module SalesHelper
#   def active_sale?
#    Sale.where("sales.starts_on <= ? AND sales.end_on >= ?", Date.current, Date.current).any? 
#   end
# end

# module SaleshHelper
#   def active_sale?
#    Sale.active.any?
#   end
# end