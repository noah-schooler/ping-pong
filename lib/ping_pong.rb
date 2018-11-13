def ping_pong(number)
  numbers_array = []
  current_number = 0
  number.times() do
    current_number += 1
    if (current_number.%(3).eql?(0)) & (current_number.%(5).eql?(0))
      numbers_array.push("ping pong")
    elsif current_number.%(3).eql?(0)
      numbers_array.push("ping")
    elsif current_number.%(5).eql?(0)
      numbers_array.push("pong")
    else
      numbers_array.push(current_number)
    end
  end
  numbers_array
end
