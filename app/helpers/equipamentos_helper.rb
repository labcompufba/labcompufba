module EquipamentosHelper
    
 def valor_formatado(number)
    number_to_currency number,
    unit: "R$",
    separator: ",",
    delimiter: "."
 end
end
