day = 'Sunday'



if day == 'Sunday'
  lunch = 'special'
end

p "At #{day} lunch is #{lunch} today"


day = 'Saturday'



if day == 'Sunday'
  lunch = 'special'
else
  lunch = 'normal'
end

p "At #{day} lunch is #{lunch} today"


day = 'Holiday'



if day == 'Sunday'
  lunch = 'special'
elsif day == 'Holiday'
  lunch = 'later'
else
  lunch = 'normal'
end

p "At #{day} lunch is #{lunch} today"

product_status = 'closed'

unless product_status == 'open'
  check_change = 'can'
else
  check_change = 'can not'
end

p "You #{check_change} change the product"


product_status = 'closed'

if not product_status == 'open'
  check_change = 'can'
else
  check_change = 'can not'
end

p "You #{check_change} change the product"
