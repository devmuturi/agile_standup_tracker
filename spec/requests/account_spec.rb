require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  login_user

  describe "GET #new" do
    it "returns http success" do
      get "/accounts/new"
      expect(response).to have_http_status(:success)
    end

    it "renders new template" do
      get "/accounts/new"
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    it "creates an account and redirects" do
      expect {
        post "/accounts", params: { account: FactoryBot.attributes_for(:account) }
      }.to change(Account, :count).by(1)

      expect(response).to redirect_to(root_path)
    end

    it "re-renders :new when validation fails" do
      post "/accounts", params: { account: FactoryBot.attributes_for(:account, name: nil) }
      expect(response).to render_template(:new)
      # Optional:
      expect(response).to have_http_status(:unprocessable_content)
    end
  end
end
