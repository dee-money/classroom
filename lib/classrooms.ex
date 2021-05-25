defmodule Hello.Classrooms do
  defdelegate new_pupil(params), 
    to: __MODULE__.Pupil,
    as: :new

  defdelegate new_teacher(params), 
    to: __MODULE__.Teacher,
    as: :new

  defdelegate new_room(params), 
    to: __MODULE__.Room,
    as: :new

  defdelegate add_teacher_to_room(room, teacher), 
    to: __MODULE__.Room,
    as: :add_teacher

  defdelegate add_pupils_to_room(room, pupils), 
    to: __MODULE__.Room,
    as: :add_pupils
end