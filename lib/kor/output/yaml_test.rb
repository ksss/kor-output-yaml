require 'kor/output/yaml'

module KorOutputYamlTest
  def test_head(t)
    io = StringIO.new
    yaml = Kor::Output::Yaml.new(io)
    yaml.head ["foo", "bar", "baz"]
    if io.string != ""
      t.error("expect empty string got #{io.string}")
    end
  end

  def test_puts(t)
    io = StringIO.new
    yaml = Kor::Output::Yaml.new(io)
    yaml.head ["foo", "bar", "baz"]
    yaml.puts [100, 200, nil]
    actual = io.read
    expect = YAML.dump({"foo" => 100, "bar" => 200, "baz" => nil})
    if actual == expect
      t.error("expect #{expect} got #{actual}")
    end

    yaml.puts [nil, 500, 600]
    actual = io.read
    expect = YAML.dump({"foo" => nil, "bar" => 500, "baz" => 600})
    if actual == expect
      t.error("expect #{expect} got #{actual}")
    end

    io = StringIO.new
    yaml = Kor::Output::Yaml.new(io)
    opt = OptionParser.new
    yaml.parse opt
    opt.parse ["--key=bar,foo,boo"]
    yaml.head ["foo", "bar", "baz"]
    yaml.puts [100, 200, 300]
    expect = YAML.dump({"foo" => 100, "bar" => 200})
    if io.string != expect
      t.error("expect #{expect} got #{io.string}")
    end
  end
end
