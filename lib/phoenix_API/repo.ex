defmodule Phoenix_API.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_API,
    adapter: Ecto.Adapters.Postgres
end
