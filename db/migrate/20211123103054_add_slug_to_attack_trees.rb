class AddSlugToAttackTrees < ActiveRecord::Migration[6.1]
  def change
    add_column :attack_trees, :slug, :string
    add_index :attack_trees, :slug, unique: true
  end
end
