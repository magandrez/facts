defmodule Facts do
  @moduledoc """
  Main OTP application entrypoint.
  """
  def greet(name), do: "Hello, #{name}!"

  def start(_, _) do
    # Returning `{:ok, pid}` will prevent the application from halting.
    # Use System.halt(exit_code) to terminate the VM when required
    args = Burrito.Util.Args.argv()
    case args do
      ["greet", name] ->
        IO.puts(greet(name))

      _ ->
        IO.puts("Usage: facts greet <name>")
    end

    System.halt(0)
  end
end
