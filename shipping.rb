Flat_fee = 0.5
Person_fee = 0.0012
Pharma_fee = 0.0075
Food_fee = 0.13
Electro_fee = 0.02
No_fee = 0

Pharma_type = 'pharma'
Food_type = 'food'
Electro_type = 'electro'

material_type_fee = 0.00
final_price = 0.00
number_persons_fee = 0
other_markups = 0.00



def calc_shipping_fee(original_price, number_persons, material_type)
  case material_type
  when Pharma_type
    material_type_fee = Pharma_fee
  when Food_type
    material_type_fee = Food_fee
  when Electro_type
    material_type_fee = Electro_fee
  end

  number_persons_fee = number_persons * Person_fee

  other_markups = material_type + number_persons_fee

  price = (original_price + (original_price * Flat_fee))
  final_price = price + (original_price * other_markups)

end







