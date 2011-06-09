class PingApp
  def self.call(env)
    slug = env['action_dispatch.request.path_parameters'][:slug]
    res = Rails.cache.read(slug)
    [200, {}, res]
  end
end
