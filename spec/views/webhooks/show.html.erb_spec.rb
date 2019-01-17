require 'rails_helper'

RSpec.describe "webhooks/show", type: :view do
  before(:each) do
    @webhook = assign(:webhook, Webhook.create!(
      :name => "Name",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
  end
end
