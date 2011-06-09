class PingApp
  def self.call(env)
    slug = env['action_dispatch.request.path_parameters'][:slug]
    res = CACHE.get(slug) || ''
    [200, {}, res]
  end
end
