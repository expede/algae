import TypeClass

definst Witchcraft.Applicative, for: Algae.State do
  @force_type_instance true
  def of(_, value), do: %Algae.State{state: fn x -> {value, x} end}
end