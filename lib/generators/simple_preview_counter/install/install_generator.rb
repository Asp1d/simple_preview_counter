require "rails/generators/migration"

module SimplePreviewCounter
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      desc "add the migrations"

      argument :model_name, required: true, type: :string, desc: "The names of the model to add.",
                            banner: "Artilce"

      def self.source_root
        @source_root ||= File.expand_path("../templates", __FILE__)
      end

      def self.next_migration_number(path)
        if @prev_migration_nr
          @prev_migration_nr += 1
        else
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        end
        @prev_migration_nr.to_s
      end

      def generate_migration
        migration_template "add_preview_count_to_model.rb.erb", "db/migrate/#{migration_file_name}"
      end

      def migration_name
        "add_preview_count_to_#{model_name.underscore.pluralize}"
      end

      def migration_file_name
        "#{migration_name}.rb"
      end

      def migration_class_name
        migration_name.camelize
      end
    end
  end
end
