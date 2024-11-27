defmodule IP2WhoisErlang.MixProject do
  use Mix.Project

  def project() do
    [
      app: :ip2whois_erlang,
      version: "1.0.1",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "ip2whois_erlang",
      source_url: "https://github.com/ip2whois/ip2whois-erlang"
    ]
  end

  def application() do
    []
  end

  defp deps() do
    [
      {:jiffy, "~> 1.1"},
      {:idna, "~> 6.1"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Query WHOIS information for a particular domain using the API from https://www.ip2whois.com"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "ip2whois_erlang",
      # These are the default files included in the package
      files: ~w(mix.exs README* LICENSE* *.erl),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ip2whois/ip2whois-erlang"}
    ]
  end
end