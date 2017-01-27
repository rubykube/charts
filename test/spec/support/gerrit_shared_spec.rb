RSpec.shared_examples "a gerrit with any auth is ready" do
  let(:kube_ip) { `minikube ip` }

  def get(uri)
    Net::HTTP.start(kube_ip, 80) do |http|
      request = Net::HTTP::Get.new(URI(uri))
      return http.request(request)
    end
  end

  context "gerrit should be alive" do
    it "respond an unauthorized response" do
      response = get("http://gerrit.#{namespace}.local/")
      expect(response.code.to_i).to be 200
    end
  end
end
