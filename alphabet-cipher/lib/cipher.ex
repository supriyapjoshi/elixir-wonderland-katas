defmodule Cipher do
  def cipher(input, code) do
    _cipher([],to_char_list(input), List.duplicate(to_char_list(code),String.length(input))|> List.flatten) |> Enum.reverse |> to_string
  end
  defp _cipher(list, [input_head | input_tail], [code_head | code_tail]) do
    val = cal(code_head, input_head)
    cond do
      val <= ?z -> _cipher([val | list], input_tail, code_tail)
      val > ?z  ->  _cipher([val- 26 | list], input_tail, code_tail)
    end
  end
  defp _cipher(list, [], _), do: list
  defp cal(code, input), do: (code - ?a) + input

end
