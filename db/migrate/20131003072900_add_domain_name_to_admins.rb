class AddDomainNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :domain_name, :string
  end
end
