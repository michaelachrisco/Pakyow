Pakyow::App.routes do
  default do
    # increment the counter
    data(:stats).view_default_post

    # render the stats
    view.scope(:stats).mutate(:post,
      with: data(:stats).for_default_post
    ).subscribe
  end

  # define application routes here
end
