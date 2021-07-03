defmodule CzUser.Error do

  @keys [:status, :result]

  @enforce_keys @keys

  defstruct @keys

  def build(status, result) do
    %__MODULE__{
      status: status,
      result: result,
    }
  end

  def build_checkin_not_created_error, do: build(:not_created, "Check-in not created")

end
