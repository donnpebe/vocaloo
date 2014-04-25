require "vocaloo/version"

module Vocaloo
  class Saurus
    def transform(str)
      new_chunk = []
      stash = []
      str.split('').each do |a|
        if Vocaloo.vowels.include? a.downcase 
          stash << a; next
        elsif !stash.empty?
            new_chunk << vowels_transform(stash); stash=[]
        end
        new_chunk << a
      end
      new_chunk.tap { |n| n << vowels_transform(stash) unless stash.empty? }
               .join
    end

    private
      def vowels_transform(vowels)
        "#{vowels.join}#{(vowels.last.upcase?) ? "wr".upcase : "wr"}"
      end
  end

  module InstanceMethods
    def hyperbolize(opts={})
      Vocaloo.hyperbolize(self, opts)
    end

    def dramatize(opts={})
      Vocaloo.dramatize(self, opts)
    end

    def stringosaur
      Vocaloo.stringosaur(self)
    end

    def upcase?
      !!self.match(/\p{Upper}/)
    end

    def downcase?
      !!self.match(/\p{Lower}/)
    end
  end

  def self.vowels
    ['a','i','u','e','o']
  end

  def self.hyperbolize(str, opts={})
    length = (opts[:length] ||= 3)  
    new_chunk = []
    str.split('').each do |a|
      if vowels.include? a.downcase 
        new_chunk << a*length
      else
        new_chunk << a
      end
    end
    new_chunk.join
  end

  def self.dramatize(str, opts={})
    length = (opts[:length] ||= 3)
    return "#{str}#{'!'*length}"
  end

  def self.stringosaur(str)
    Saurus.new.transform(str)
  end
end

String.send :include, Vocaloo::InstanceMethods
