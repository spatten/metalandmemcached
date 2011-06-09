# MEMCACHED = Dalli::Client.new('localhost:11211')
memcache_options = {
  :c_threshold => 10000,
  :compression => true,
  :debug => false,
  :namespace => 'leanpub',
  :readonly => false,
  :urlencode => false

}
CACHE = MemCache.new 'localhost:11211', memcache_options
