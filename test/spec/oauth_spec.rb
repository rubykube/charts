require "spec_helper"

RSpec.describe "oauth", oauth: true do
  let(:namespace) { "test-oauth" }
  it_behaves_like "a installed helm package"
  it_behaves_like "a gerrit with any auth is ready"
end
