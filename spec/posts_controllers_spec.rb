RSpec.describe PostsController, type: :request do
  describe 'GET #index' do
    it 'renders the index template' do
      get '/authors/123/posts'
      expect(response).to render_template(:index)
    end

    it 'returns 200 ok status' do
      get '/authors/1/posts'
      expect(response).to have_http_status(:ok)
    end
    it 'should display the body' do
      get '/authors/123/posts'
      expect(response.body).to include('Here are the user posts!')
    end

    # * Tests for the show action

    it 'should return 200 OK status' do
      get '/authors/212/posts/1123'
      expect(response).to have_http_status(:ok)
    end
    it 'should render the show template' do
      get '/authors/212/posts/1123'
      expect(response).to render_template(:show)
    end

    it 'should display the body' do
      get '/authors/212/posts/1123'
      expect(response.body).to include('This is the show template!')
    end
  end
end
