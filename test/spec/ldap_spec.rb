require "spec_helper"

RSpec.describe "ldap", ldap: true do
  let(:namespace) { "test-ldap" }
  it_behaves_like "a installed helm package"
  it_behaves_like "a gerrit with any auth is ready"
end
