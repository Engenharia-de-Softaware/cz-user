defmodule CzUser.Repo.Migrations.CreateCheckInTable do
  use Ecto.Migration

  def change do

    create table :check_in do
      add :user_id, :string
      add :latitude, :string
      add :longitude, :string

      timestamps()
    end
  end
end
