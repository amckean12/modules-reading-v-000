require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

class Dancer
  #allow our classes to use all of the methods of the included module as *instance* methods.
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
