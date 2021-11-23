class AddHashidToAttackTrees < ActiveRecord::Migration[6.1]
  def change
    add_column :attack_trees, :hashid, :string
  end
end
