module Typelib
    # Class holding metadata information for types and compound fields
    class MetaData
        def each
            if !block_given?
                return enum_for(:each)
            end
            keys.each do |k|
                yield(k, get(k))
            end
        end
    end
end

