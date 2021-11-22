class CreateAttackTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :attack_trees do |t|
      t.text :content

      t.timestamps
    end
  end
end
