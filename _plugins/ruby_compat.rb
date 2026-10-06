# Ruby 3.2+ removed Object#taint/#tainted?/#untaint, but the `liquid` 4.0.x
# gem (a dependency of Jekyll) still calls them. Restore no-op versions so
# the site can build on current Ruby. Safe to remove once Jekyll/Liquid
# drop support for tainting entirely.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
