defmodule CzUser.Repo.Migrations.CreateCheckinTable do
  use Ecto.Migration

  def change do

    create table :checkin do
      add :user_id, :string
      add :latitude, :string
      add :longitude, :string

      timestamps()
    end
  end
end
