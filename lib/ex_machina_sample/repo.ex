defmodule ExMachinaSample.Repo do
  use Ecto.Repo,
    otp_app: :ex_machina_sample,
    adapter: Ecto.Adapters.Postgres
end
