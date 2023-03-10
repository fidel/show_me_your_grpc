# frozen_string_literal: true

class MmmInflector < Zeitwerk::Inflector
  def camelize(basename, abspath)
    if basename =~ /\A(.*)_pb/
      super($1, abspath)
    else
      super
    end
  end
end

Rails.autoloaders.each do |autoloader|
  autoloader.inflector = MmmInflector.new
end