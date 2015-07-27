# -*- coding: utf-8 -*-
require 'rspec'
require_relative 'Human'

describe Human do
	let(:human){Human.new}
	it 'テスト' do
		human.name=("へのへの")
		human.age=(99)
#		expect(human.print_name_age).to eq "名前はへのへのです。年は99歳です。"
	end
end