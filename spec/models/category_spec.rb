require 'spec_helper'

describe Category do
  it "saves itself" do
    category = Category.new(name: "gatekeeper")
    category.save
    expect(Category.first).to eq(category)
  end
  
  it "has many scripts" do
    gatekeeper = Category.create(name: "gatekeeper")
    sample_script = Script.create(title: "Sample Script", body: "Hello there", category: gatekeeper)
    new_sample_script = Script.create(title: "New Sample Script", body: "Hey there", category: gatekeeper)
    expect(gatekeeper.scripts).to include(sample_script, new_sample_script)
  end
end