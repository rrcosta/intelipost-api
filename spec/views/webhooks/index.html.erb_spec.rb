require 'rails_helper'

RSpec.describe "webhooks/index", type: :view do
  before(:each) do
    assign(:webhooks, [
      Webhook.create!(
        :name => "Name",
        :url => "Url"
      ),
      Webhook.create!(
        :name => "Name",
        :url => "Url"
      )
    ])
  end

  it "renders a list of webhooks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
