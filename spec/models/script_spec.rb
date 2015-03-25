require 'spec_helper'

describe Script do
  it "saves itself" do
    script = Script.new(title: "Main Script", body: "Hello!")
    script.save
    expect(Script.first).to eq(script)
  end
end