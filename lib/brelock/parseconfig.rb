module Brelock
  class HostConfig < ConfigToolkit::BaseConfig
    add_required_param(:hostname, String)
    add_required_param(:users, ConfigToolkit::ConstrainedArray.new(String))
    add_optional_param(:tags,  ConfigToolkit::ConstrainedArray.new(String))
  end

  class HostsConfig < ConfigToolkit::BaseConfig
    add_required_param(:hosts,  ConfigToolkit::ConstrainedArray.new(HostConfig))

    def validate_all_values
      #if(contains_sensitive_data && !behind_firewall)
      #raise_error("only machines behind firewalls can contain sensitive data")
      #end
    end
  end
end

