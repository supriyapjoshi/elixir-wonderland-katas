defmodule Cipher do
  def cipher(input, code), do: _cipher([],to_char_list(input), List.duplicate(to_char_list(code),String.length(input))|> List.flatten) |> Enum.reverse |> to_string
  
  defp _cipher(list, [input_head | input_tail], [code_head | code_tail]) when (code_head - ?a)+input_head <= ?z, do: _cipher([(code_head - ?a) + input_head | list], input_tail, code_tail)
  defp _cipher(list, [input_head | input_tail], [code_head | code_tail]) when (code_head - ?a)+input_head > ?z, do: _cipher([(code_head - ?a) + input_head - 26 | list], input_tail, code_tail)
  defp _cipher(list, [], _), do: list
end
