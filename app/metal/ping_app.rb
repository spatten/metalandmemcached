class PingApp
  def self.call(env)
    # dc = Dalli::Client.new('localhost:11211')
    
    slug = env['action_dispatch.request.path_parameters'][:slug]
    [200, {}, CACHE.get(slug)]
  end
end
