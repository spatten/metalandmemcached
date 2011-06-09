class ProcessesApp  
  def self.call(env)  
    [200, {}, [`ps -axcr -o "pid,pcpu, pmem, time, comm"`]]  
  end  
end
