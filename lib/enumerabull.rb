module Kernel
  Enumerable.instance_methods.each do |meth|
    define_method(meth) do |*args|
      obj = args.pop
      case pred = args.first
      when Proc, Symbol
        obj.send meth, *args.drop(1), &pred
      else
        obj.send meth, *args
      end
    end
  end

  alias each   each_entry
  alias filter select
  alias remove reject
end
