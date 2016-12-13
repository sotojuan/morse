defmodule MorseTest do
  use ExUnit.Case

  test "encodes simple string" do
    expected = ".... . .-.. .-.. ---"
    assert Morse.encode("Hello") == expected
  end

  test "encodes complex string" do
    expected = ".--- ..-- .-.- --.--"
    assert Morse.encode("Jüäñ") == expected
  end
end
