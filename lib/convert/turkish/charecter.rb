require "convert/turkish/charecter/version"

module Convert
  module Turkish
    module Charecter
      class Error < StandardError; end
      class TurkishChar

        def self.upcaseWord word
          word=word.gsub('ö','Ö').gsub('ü','Ü').gsub('ç','Ç').gsub('ı','I').gsub('i','İ').gsub('ğ','Ğ').gsub('ş','Ş')
          return word.upcase
        end

        def self.downcaseWord word
          word=word.gsub('Ö','ö').gsub('Ü','ü').gsub('Ç','ç').gsub('I','ı').gsub('İ','i').gsub('Ğ','ğ').gsub('Ş','ş')
          return word.upcase
        end

        def self.capitalizeWord word
          word=downcaseWord(word)
          if 'öüişğıçş'.include? word[0]
            ["ö","ü","ı","i","ç","ğ","ş"].each do |char|
              if char==word[0]
                word[0]=upcaseWord(char)
                break
              end
            end
          end

          return word.capitalize
        end


      end
    end
  end
end
