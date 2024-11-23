defmodule Firstapi.Repo do
  use Ecto.Repo,
    otp_app: :firstapi,
    adapter: Ecto.Adapters.SQLite3
end
