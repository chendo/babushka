require 'spec/spec_support'
require 'spec/dep_definer_support'
require 'spec/pkg_dep_definer_support'

describe "accepts_hash_for default values" do
  before {
    make_test_pkgs :pkg
  }

  it "should default installs and provides to the package name" do
    Dep('default pkg').definer.installs.should == ['default pkg']
    Dep('default pkg').definer.provides.should == ['default pkg']
    Dep('default provides').definer.provides.should == ['default provides']
    Dep('default installs').definer.installs.should == ['default installs']
  end

  after {
    Dep.clear!
  }
end
