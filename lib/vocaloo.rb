require "vocaloo/version"

module Vocaloo
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
    new_chunk = []
    find_vocal = []
    str.split('').each do |a|
      if vowels.include? a.downcase 
        find_vocal << a
      else
        if find_vocal.empty?
          new_chunk << a
        else
          patch = (find_vocal.last.upcase?) ? "wr".upcase : "wr"
          new_chunk << "#{find_vocal.join}#{patch}#{a}"
          find_vocal = []
        end
      end
    end
    unless find_vocal.empty?
      patch = (find_vocal.last.upcase?) ? "wr".upcase : "wr"
      new_chunk << "#{find_vocal.join}#{patch}"
    end

    new_chunk.join
  end
end

String.send :include, Vocaloo::InstanceMethods
