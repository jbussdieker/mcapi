class Rpc < ActiveRecord::Base
  has_many :rpc_results

  def run
    cmd = "mco rpc #{agent} #{action} --timeout #{timeout} --discovery-timeout #{discovery_timeout} --json"
    `#{cmd}`.tap do |results_raw|
      Rails.logger.error "Failed to run `#{cmd}`" unless $?.to_i == 0

      JSON.parse(results_raw).tap do |results|
        results.each do |result|
          rpc_results.create(sender: result["sender"], statuscode: result["statuscode"], statusmsg: result["statusmsg"], data: result["data"].to_json)
        end
      end
    end
  end
end
