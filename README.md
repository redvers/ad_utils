# AD.Utils

This is a collection of simple functions that I kept having to re-write on a fairly regular basis.  They are published on the offchance that they are useful.

Patches Welcome

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ad_utils` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ad_utils, "~> 0.1.0"}
  ]
end
```

## Function List

* AD.Utils.resolve(integer) - Converts the value from userAccountControl into an array of atoms that represent the flags that have been set.

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ad_utils](https://hexdocs.pm/ad_utils).

