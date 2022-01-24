class ReadWrite

    def read_whole_file
        file_data = @file.read
    end

    def split_file
        file_data = file.readlines.map(&:chomp)
    end

    def read(file)
        file = File.open("users.txt")
    end

    def close_file
        file.close
    end

    #ref https://www.rubyguides.com/2015/05/working-with-files-ruby/
end