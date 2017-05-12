get '/decks/:id' do
  round = Round.create(user_id: session[:user_id], deck_id: params[:id])
  redirect '/round/#{round.id}'
end

get '/round/:round_id/' do
    @round = Round.find(params[:round_id])
    @card = @round.unanswered_cards.sample
    erb :'cards/show'
end
