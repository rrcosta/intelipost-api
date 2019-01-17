require 'rails_helper'

RSpec.describe "webhooks/new", type: :view do
  before(:each) do
    assign(:webhook, Webhook.new(
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new webhook form" do
    render

    assert_select "form[action=?][method=?]", webhooks_path, "post" do

      assert_select "input[name=?]", "webhook[name]"

      assert_select "input[name=?]", "webhook[url]"
    end
  end
end
