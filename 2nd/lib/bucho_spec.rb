# -*- coding: utf-8 -*-
require 'rspec'
require_relative '../lib/shain'
require_relative '../lib/bucho'

describe Bucho do
	it '部長はだるそうに立あがる' do
		bucho = Bucho.new(100)
		expect(bucho.standup).to eq "部長がだるそうに立ちました"
	end
=begin
	let(:bucho){Bucho.new(100)}
	it '部長の給料は基本給の3倍なので、基本給が100なら給料は300' do
		expect(bucho.calculate_salary(100)).to eq 300
	end
=end
	it '部長の給料は基本(基本給×3)+手当(1)なので、基本給が100なら給料は301' do
		bucho = Bucho.new(100)
		expect(bucho.calculate_salary).to eq 301
	end	
end