class Hash

    def store_values(k,v)
        x = {}
        for i in 0...k.size
            x.store(k[i],v[i])
            puts x
        end
    end

    def insert_values(k,v)
        x = {}
        for i in 0...k.size
            x[k[i]] = v[i]
            puts x
        end
    end

end

Hash.new.insert_values([1,2,3],[4,5,6])