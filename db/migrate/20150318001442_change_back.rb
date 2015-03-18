class ChangeBack < ActiveRecord::Migration
  def change
    change_column(:beers, :weight, 'float USING CAST(weight AS float)')
    change_column(:beers, :keg_weight, 'float USING CAST(keg_weight AS float)', default: 30.0, )
    change_column(:drinks, :amount, 'float USING CAST(amount AS float)')
  end
end
