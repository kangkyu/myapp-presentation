ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Myapp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Myapp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Myapp.Repo)

