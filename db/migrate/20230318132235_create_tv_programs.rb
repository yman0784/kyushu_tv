class CreateTvPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_programs do |t|
      t.string    :title
      t.string    :overview
      t.text      :detail
      t.string    :performer
      t.string    :time
      t.timestamps
    end
  end
end
