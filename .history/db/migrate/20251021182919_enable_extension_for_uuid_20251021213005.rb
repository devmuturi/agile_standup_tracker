class EnableExtensionForUuid < ActiveRecord::Migration[8.0]
  def change
    enable_extensiion 'pgcrypto' unless extension_enabled?('pgcrypto')
  end
end
