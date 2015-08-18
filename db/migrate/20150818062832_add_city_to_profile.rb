class AddCityToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :city, :string
    add_column :profiles, :phone_number, :string
    add_column :profiles, :age, :string
    add_column :profiles, :occupation, :string
    add_column :profiles, :describe_yourself, :text
    add_column :profiles, :sex, :string
    add_column :profiles, :physicality, :text
    add_column :profiles, :sexual_orientation, :text
    add_column :profiles, :lifestyle, :text
    add_column :profiles, :commitment, :text
    add_column :profiles, :marital_status, :text
    add_column :profiles, :country, :string
    add_column :profiles, :city_of_residence, :string
    add_column :profiles, :zodiac_sign, :string
    add_column :profiles, :birthdate, :date
  end
end
