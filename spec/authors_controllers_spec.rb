RSpec.describe AuthorsController, type: :request do
  describe 'GET #index' do
    it 'renders the index template' do
      get '/authors'
      expect(response).to render_template(:index)
    end

    it 'returns 200 ok status' do
      get '/authors'
      expect(response).to have_http_status(:ok)
    end
    it 'should display the body' do
      get '/authors/'
      expect(response.body).to include('Here is a list of users!')
    end

    # * Tests for the show action

    it 'should return 200 OK status' do
      get '/authors/2'
      expect(response).to have_http_status(:ok)
    end
    it 'should render the show template' do
      get '/authors/2'
      expect(response).to render_template(:show)
    end

    it 'should display the body' do
      get '/authors/2'
      expect(response.body).to include('This is the show template!')
    end
  end
end
