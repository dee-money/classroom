defmodule Hello.Classrooms.Teacher do
  @derive Jason.Encoder
  defstruct [:id, :name] 

  def new(%{name: name}) do
    %__MODULE__{id: UUID.uuid4(), name: name}
  end
end