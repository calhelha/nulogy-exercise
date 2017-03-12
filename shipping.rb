def default_flat_fee
  0.05
end

def default_person_fee
  0.012
end

def default_shipping_fees
  {
    'drugs' => 0.075,
    'food' => 0.13,
    'electronics' => 0.02
  }
end

def calc_shipping_fee(original_price, number_persons, material_type)
  material_type_fee = default_shipping_fees.fetch(material_type, 0)

  number_persons_fee = number_persons * default_person_fee

  other_markups = material_type_fee + number_persons_fee

  price = (original_price + (original_price * default_flat_fee))
  final_price = (price + (price * other_markups))
end







