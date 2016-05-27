Pakyow::App.after :init do
  redis.set(:active, 0)
end

Pakyow::App.mutable :stats do
  query :for_default_post do
    {
      total: redis.get(:total),
      active: redis.get(:active)
    }
  end

  action :view_default_post do
    redis.incr(:total)
  end

  action :viewer_joined do
    redis.incr(:active)
  end

  action :viewer_left do
    redis.decr(:active)
  end
end
