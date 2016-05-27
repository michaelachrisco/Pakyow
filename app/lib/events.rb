Pakyow::Realtime::Websocket.on :join do
  data(:stats).viewer_joined
end

Pakyow::Realtime::Websocket.on :leave do
  data(:stats).viewer_left
end
