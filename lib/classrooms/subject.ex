defmodule Hello.Classrooms.Subject do
  @derive Jason.Encoder
  defstruct [:teacher_id, :room_id, :name]
end