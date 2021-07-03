defmodule CzUser.Repo do
  use Ecto.Repo,
    otp_app: :cz_user,
    adapter: Ecto.Adapters.Postgres
end
