require 'rails_helper'

RSpec.describe "webhooks/edit", type: :view do
  before(:each) do
    @webhook = assign(:webhook, Webhook.create!(
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit webhook form" do
    render

    assert_select "form[action=?][method=?]", webhook_path(@webhook), "post" do

      assert_select "input[name=?]", "webhook[name]"

      assert_select "input[name=?]", "webhook[url]"
    end
  end
end
