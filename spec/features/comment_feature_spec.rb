require 'spec_helper'

describe 'commenting on posts' do
  let!(:post) { create(:post) }

  it 'begins with no comments' do
    visit '/posts'
    expect(page).to have_content '0 comments'
  end

  it 'adds the new comment' do
    visit '/posts'
    click_link 'Add a comment'
    fill_in 'Comment', with: 'What a great picture'
    click_button 'Create Comment'

    expect(page).to have_content '1 comment'
  end

  it 'displays comments', js: true do
    create(:comment, post: post)

    visit '/posts'
    click_link '1 comment'
    expect(page).to have_content 'Awesome pic!'
  end
end