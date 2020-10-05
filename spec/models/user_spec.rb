require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    #空のパラメータを定義
    let(:params) {{}}

    #パラメータを使用してテスト
    it "年齢1:ユーザーの名前が取得できること" do
      # merge!メソッドを使用して氏名、年齢パラメータを追加
      params.merge!(name: "chibimaruko",age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "chibimarukoちゃん"
    end
    it "年齢15:ユーザーの名前が取得できること" do
      params.merge!(name: "aiba",age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "aiba君"
    end
    it "年齢20:ユーザーの名前が取得できること"do
      params.merge!(name: "saitou",age: 30)
      user = User.new(params)
      expect(user.disp_name).to eq "saitouさん"
   end
  end
end

