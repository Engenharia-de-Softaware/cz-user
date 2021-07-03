defmodule CzUser.CheckIn do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key{:id, :binary_id, autogenerate: true}
  @required_params [:longitude, :latitude, :user_id]
  @derive {Jason.Encoder, only: [:id, :longitude, :latitude, :user_id]}

  schema "check_in" do
    field :user_id, :string
    field :longitude, :string
    field :latitude, :string

  timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)

  end

end
