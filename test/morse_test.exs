defmodule MorseTest do
  use ExUnit.Case
  doctest Morse

  test "encodes simple string" do
    expected = ".... . .-.. .-.. ---"
    assert Morse.encode("Hello") == expected
  end

  test "encodes complex string" do
    expected = ".--- ..-- .-.- --.--"
    assert Morse.encode("Jüäñ") == expected
  end

  test "decodes simple string" do
    expected = "HELLO"
    assert Morse.decode(".... . .-.. .-.. ---") == expected
  end

  test "decodes complex string" do
    expected = "JÜÄÑ"
    assert Morse.decode(".--- ..-- .-.- --.--") == expected
  end
end
