defmodule Algae.Tree.Binary do
  @moduledoc """
  Represent a binary tree.
  Nodes may be empty, a leaf, or a branch (recursive subtree).

  ## Examples

      %Algae.Tree.Branch{
        left:  %Algae.Tree.Empty{},
        right: %Algae.Tree.Leaf{leaf: 42}
      }

  """

  alias __MODULE__
  alias Algae.Tree.Binary.Empty

  import Algae

  defsum do
    defdata Empty :: none()

    defdata Branch do
      value :: any()
      left  :: Binary.t() \\ Empty.t()
      right :: Binary.t() \\ Empty.t()
    end
  end
end
