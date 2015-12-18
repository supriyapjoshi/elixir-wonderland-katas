defmodule CipherTest do
  use ExUnit.Case
  doctest Cipher

  test "m with cipher aaaaaaaaa will return moremoney" do
    assert Cipher.cipher("m","a") == "m"
  end

  test "meetmebythetree with cipher scones will return egsgqwtahuiljgs" do
    assert Cipher.cipher("meetmebythetree","scones") == "egsgqwtahuiljgs"
  end
end
