defmodule Cipher do
  def cipher(input, code) do
    _cipher([],to_char_list(input), _to_char_list(code, String.length(input))) |> Enum.reverse |> to_string
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

  defp _to_char_list(code ,n), do: List.duplicate(to_char_list(code),n) |> List.flatten 

  def decipher(input, code), do: _decipher([], to_char_list(input), _to_char_list(code, String.length(input))) |> Enum.reverse |> to_string

  defp _decipher(list, [input_head | input_tail], [code_head | code_tail]) do
    val = decal(code_head, input_head)
    cond do
      val < ?z -> _decipher([val+1  | list], input_tail, code_tail)
      val >= ?z -> _decipher([val - 25 | list], input_tail, code_tail)
    end
  end

  defp _decipher(list,[],_), do: list

  defp decal(code, input), do: (?z - code) + input 

end
