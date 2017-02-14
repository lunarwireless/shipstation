# Shipstation

[![Ebert](https://ebertapp.io/github/johnhamelink/shipstation.svg)](https://ebertapp.io/github/johnhamelink/shipstation)
[![Travis](https://img.shields.io/travis/johnhamelink/shipstation.svg)]()
[![Hex.pm](https://img.shields.io/hexpm/johnhamelink/shipstation.svg)](https://hexdocs.pm/shipstation)
[![Libraries.io for GitHub](https://img.shields.io/librariesio/github/johnhamelink/shipstation.svg)](https://libraries.io/github/johnhamelink/shipstation)

---

An API client library for [Shipstation](https://shipstation.com).

### Todo (PRs welcome):

 - [ ] Finish building out API
 - [ ] Configure base URL to connect to (for test/staging/production environments)
 - [ ] Create Model structs for each expected output
 - [ ] Handle throttling and respect exponential backoff

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `shipstation` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:shipstation, "~> 0.1.0"}]
    end
    ```

  2. Ensure `shipstation` is started before your application:

    ```elixir
    def application do
      [applications: [:shipstation]]
    end
    ```
