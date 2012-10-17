module Brelock
  class Session
    include Celluloid

    def cat_file(host, user, file = '.ssh/authorized_keys')
      contents = []
      Net::SSH.start(host, user) do |ssh|
        ssh.sftp.connect do |sftp|
          sftp.file.open(file, "r") do |f|
            contents <<  f.gets
          end
        end
      end
      sleep 0
      {"#{user}@#{host}" => contents}
    end
  end
end
