require 'mail'
require 'pstore'

module Devmail
  class Storage
    def initialize
      @store = PStore.new(File.join(Rails.root, "tmp", "devmail.pstore"))
      @store.transaction { @store[:messages] = [] }
    end

    def all
      @store.transaction { @store[:messages] }
    end

    def at(index)
      @store.transaction { @store[:messages][index] }
    end

    def add(message)
      @store.transaction { @store[:messages] << message }
    end

    def index(message)
      @store.transaction { @store[:messages].index(message) }
    end

    def remove(message)
      @store.transaction { @store[:messages].delete(message) }
    end

    def remove_at(index)
      @store.transaction { @store[:messages].delete_at(index) }
    end
  end
end
