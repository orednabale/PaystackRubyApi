module Verification
	def self.resolve_bvn(body)
		puts "My secret key is: "
		puts ENV['PAYSTACK_SECRET_KEY']
		api = HTTParty.get("#{API::BASE_URL}" + "#{API::RESOLVE_BVN_PATH}/" + "#{body}",
			:headers => { "Authorization" => "Bearer "+ENV["PAYSTACK_SECRET_KEY"], "content-type" => "application/json"})
		return api
	end
end