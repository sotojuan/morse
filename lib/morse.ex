defmodule Morse do
  @moduledoc """
  Encodes English into Morse code and decodes Morse code into English.
  """

  @to_morse %{
    "A" => ".-",
    "B" => "-...",
    "C" => "-.-.",
    "D" => "-..",
    "E" => ".",
    "F" => "..-.",
    "G" => "--.",
    "H" => "....",
    "I" => "..",
    "J" => ".---",
    "K" => "-.-",
    "L" => ".-..",
    "M" => "--",
    "N" => "-.",
    "O" => "---",
    "P" => ".--.",
    "Q" => "--.-",
    "R" => ".-.",
    "S" => "...",
    "T" => "-",
    "U" => "..-",
    "V" => "...-",
    "W" => ".--",
    "X" => "-..-",
    "Y" => "-.--",
    "Z" => "--..",
    "Á" => ".--.-",
    "Ä" => ".-.-",
    "É" => "..-..",
    "Ñ" => "--.--",
    "Ö" => "---.",
    "Ü" => "..--",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----.",
    "0" => "-----",
    "," => "--..--",
    "." => ".-.-.-",
    "?" => "..--..",
    ";" => "-.-.-",
    ":" => "---...",
    "/" => "-..-.",
    "-" => "-....-",
    "'" => ".----.",
    "(" =>:"'-.--.-",
    "_" => "..--.-",
    "@" => ".--.-.",
    " " => "......"
  }
  @from_morse @to_morse |> Enum.map(fn({k, v}) -> {v, k} end) |> Enum.into(%{})

  @doc """
  Encodes the given string to Morse code. Spaces are preserved and all characters are uppercased before encoding.

  Characters outside the Morse scope become `?`.

  ## Examples

      iex> Morse.encode("This is a doctest")
      "- .... .. ... ...... .. ... ...... .- ...... -.. --- -.-. - . ... -"
  """
  def encode(string) when is_binary(string) do
    string
    |> String.codepoints
    |> Stream.map(&String.upcase/1)
    |> Stream.map(fn(c) -> @to_morse[c] || "?" end)
    |> Enum.join(" ")
  end

  @doc """
  Decodes the given Morse string back to English. Spaces and `?` are preserved.

  ## Examples

      iex> Morse.decode("-... .- -. .- -. .-")
      "BANANA"
  """
  def decode(string) when is_binary(string) do
    string
    |> String.split(" ")
    |> Enum.map(fn(c) -> @from_morse[c] || "?" end)
    |> Enum.join("")
  end
end
