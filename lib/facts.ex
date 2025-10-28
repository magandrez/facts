defmodule Facts do
  @moduledoc """
  Main OTP application entrypoint.
  """

  def search(_term) do

    :ok
  end

  def start(_, _) do
    # Returning `{:ok, pid}` will prevent the application from halting.
    # Use System.halt(exit_code) to terminate the VM when required
    args = Burrito.Util.Args.argv()

    case args do
      ["search", term] ->
        IO.puts(search(term))

      _ ->
        IO.puts("Usage: facts search <term>")
    end

    # Don't break mix REPL loop to allow for
    # testing and developing with the iex REPL
    # Is this a hack or a common pattern?
    if Mix.env() == :prod do
      System.halt(0)
    else
      {:ok, self()}
    end
  end
end
