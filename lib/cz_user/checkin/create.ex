defmodule CzUser.CheckIn.Create do
  alias CzUser.{CheckIn, Error, Repo}

  def call(params) do
    params
    |> CheckIn.changeset()
    # |> IO.inspect()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %CheckIn{}} = result), do: result

  defp handle_insert({:error, result}) do
      {:error, Error.build(:bad_request, result)}
  end
end
