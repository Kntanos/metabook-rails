require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        content: "MyText",
        likes: 2,
        user: nil
      ),
      Post.create!(
        content: "MyText",
        likes: 2,
        user: nil
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
