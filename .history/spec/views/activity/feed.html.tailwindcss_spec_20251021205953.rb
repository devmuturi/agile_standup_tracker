require 'rails_helper'

RSpec.describe "activity/feed.html.tailwindcss", type: :view do
  it "renders the word feed" do
    render template: "activity/feed"
    expect(rendered).to match root_path
  end
end
