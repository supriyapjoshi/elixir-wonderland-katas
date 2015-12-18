defmodule CipherTest do
  use ExUnit.Case
  doctest Cipher

  test "m with cipher aaaaaaaaa will return moremoney" do
    assert Cipher.cipher("m","a") == "m"
  end

  test "meetmebythetree with cipher scones will return egsgqwtahuiljgs" do
    assert Cipher.cipher("meetmebythetree","scones") == "egsgqwtahuiljgs"
  end

  test "preparedinnernow with cipher dinnertime will return " do
    assert Cipher.cipher("prepareddinnernow","dinnertime") == "szrceixlpmqvrerfp"
  end
end
