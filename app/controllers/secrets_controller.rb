class SecretsController < ApplicationController
    before_action :login_required

    def show
    end

    private

    def login_required
        redirect_to new_session_path if current_user.nil? || current_user == ""
    end
end
