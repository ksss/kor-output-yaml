require 'yaml'

module Kor
  module Output
    class Yaml
      def initialize(io)
        @io = io
        @keys = []
        @selected = nil
      end

      def parse(opt)
        opt.on("--key=KEY", "select keys (e.g. foo,bar,baz)") do |arg|
          @selected = arg
        end
      end

      def head(keys)
        if @selected
          @selected = Hash[@selected.split(",").map { |key|
            [key, 1]
          }]
        end
        @keys = keys
      end

      def puts(values)
        hash = Hash[@keys.zip(values)]
        if @selected
          hash = hash.select { |k, v|
            @selected.key?(k)
          }
        end
        @io.puts YAML.dump(hash)
      end

      def finish
      end
    end

    require "kor/output/yaml/version"
  end
end
