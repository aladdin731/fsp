json.review do
  json.partial! '/api/reviews/review', review: @review
  json.author do
    json.partial! '/api/users/info', user: @review.author
  end
end





