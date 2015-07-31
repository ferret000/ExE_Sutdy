# -*- coding: utf-8 -*-
require 'rspec'
require_relative 'Shain'
require_relative 'Shunin'

describe Shunin do
	let(:shunin){Shunin.new(100)}
	it '主任は素早く立ちあがる' do
		expect(shunin.standup).to eq "主任が素早く立ちました"
	end

	it '主任の給料は基本給の2倍+1、基本給が100なら給料は201' do
		expect(shunin.calculate_salary).to eq 201
	end
end