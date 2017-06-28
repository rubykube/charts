RSpec.shared_examples "a installed helm package" do
  def get_pods
    JSON.parse(`kubectl --namespace #{namespace} get pods -o json`)
  end

  def all_pods_ready?
    all_ready = true
    get_pods["items"].each do |item|
      expect(item["kind"]).to eq("Pod")
      all_ready = false unless item["status"]["containerStatuses"].last["ready"]
    end
    all_ready
  end

  context "after helm install" do
    it "all pods should be running within 5 minutes" do
      expect(get_pods["kind"]).to eq("List")
      wait_for(all_pods_ready?).to be true
    end
  end
end
