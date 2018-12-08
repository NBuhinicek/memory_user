require 'get_process_mem'

class MemoryUser
  def initialize()
    @mem = GetProcessMem.new
    @mems = []
    @start_mem
    @end_mem
  end

  def start
    start_mem = mem.mb
  end

  def end
    end_mem = mem.mb
  end

  def usage
    puts 'MemoryUser calculates'
    puts end_mem - start_mem
    puts '#####################'
  end

  private

  attr_accessor :mem, :mems, :start_mem, :end_mem

end
