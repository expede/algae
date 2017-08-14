alias  Algae.Tree.Rose
alias  Witchcraft.Foldable
import TypeClass

definst Witchcraft.Foldable, for: Algae.Tree.Rose do
  def right_fold(%Rose{rose: rose, forrest: forrest}, acc, fun) do
    fun.(rose, Foldable.right_fold(forrest, acc, fun))
  end
end
