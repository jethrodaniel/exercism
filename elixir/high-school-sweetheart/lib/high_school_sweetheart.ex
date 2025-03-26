defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim() |> String.at(0)
  end

  def initial(name) do
    name |> first_letter |> String.upcase() |> Kernel.<>(".")
  end

  def initials(full_name) do
    String.split(full_name)
    |> Enum.map(fn name -> initial(name) end)
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    middle =
      [full_name1, full_name2]
      |> Enum.map(fn full_name -> initials(full_name) end)
      |> Enum.join("  +  ")

    """
    ❤-------------------❤
    |  #{middle}  |
    ❤-------------------❤
    """
  end
end
