json.array!(@rpcs) do |rpc|
  json.extract! rpc, :id, :agent, :action, :timeout, :discovery_timeout
  json.url rpc_url(rpc, format: :json)
end
