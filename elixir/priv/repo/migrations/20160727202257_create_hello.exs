defmodule ElixirApi.Repo.Migrations.CreateHello do
  use Ecto.Migration

  def change do
    create table(:hello) do

      timestamps()
    end

  end
end
