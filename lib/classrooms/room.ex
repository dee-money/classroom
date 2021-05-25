defmodule Hello.Classrooms.Room do
  @derive Jason.Encoder
  defstruct [:id, :number, :teacher, :pupils]

  def new(%{number: number, pupils: pupils}) do
    %__MODULE__{id: UUID.uuid4(), number: number, pupils: pupils}
  end

  def add_teacher(room, teacher) do
    %{room | teacher: teacher}
  end

  def add_pupils(room, pupils) do
    %{room | pupils: room.pupils ++ pupils}
  end
end