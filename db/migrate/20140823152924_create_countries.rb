class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :iso_code

      t.timestamps
    end

    countries = [
      {:name => 'Albania', :iso_code => 'AL'},
      {:name => 'Algeria', :iso_code => 'DZ'},
      {:name => 'American Samoa', :iso_code => 'AS'},
      {:name => 'Andorra', :iso_code => 'AD'},
      {:name => 'Angola', :iso_code => 'AO'},
      {:name => 'Anguilla', :iso_code => 'AI'},
      {:name => 'Antarctica', :iso_code => 'AQ'},
      {:name => 'Antigua and Barbuda', :iso_code => 'AG'},
      {:name => 'Argentina', :iso_code => 'AR'},
      {:name => 'Armenia', :iso_code => 'AM'},
      {:name => 'Aruba', :iso_code => 'AW'},
      {:name => 'Australia', :iso_code => 'AU'},
      {:name => 'Austria', :iso_code => 'AT'},
      {:name => 'Azerbaijan', :iso_code => 'AZ'}
    ]
    countries.each do |h|
      Country.create h
    end
  end
end
