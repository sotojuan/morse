# morse

> Morse code encoder and decoder

[![Build Status](https://travis-ci.org/sotojuan/morse.svg?branch=master)](https://travis-ci.org/sotojuan/morse)

## Install

In your `mix.exs`:

```elixir
defp deps do
  [
    {:morse, "~> 1.0.0"}
  ]
end
```

Then run `mix deps.get`.

## API

`Morse.encode(string)`

Encodes the given string to Morse code. Spaces are preserved and all characters are uppercased before encoding.

Characters outside the Morse scope become `?`.

`Morse.decode(string)`

Decodes the given Morse string back to English. Spaces and `?` are preserved.

## License

MIT © [Juan Soto](https://juansoto.me)
