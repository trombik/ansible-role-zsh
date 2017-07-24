require "spec_helper"
require "serverspec"

package = "zsh"
additional_packages = []

case os[:family]
when "redhat"
  additional_packages = ["zsh-html"]
when "ubuntu"
  additional_packages = ["zsh-lovers"]
when "freebsd"
  additional_packages = ["zsh-navigation-tools"]
end

describe package(package) do
  it { should be_installed }
end

describe command("zsh --version") do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/^zsh\s+/) }
  its(:stderr) { should eq "" }
end

additional_packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end
