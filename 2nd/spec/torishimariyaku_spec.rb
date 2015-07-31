# -*- coding: utf-8 -*-
require 'rspec'
require_relative 'Shain'
require_relative 'Torisimariyaku'

describe Torisimariyaku do
	let(:torisimariyaku){Torisimariyaku.new(100)}
	it '取締役の給料は基本給の4倍+2、基本給が100なら給料は402' do
		expect(torisimariyaku.calculate_salary).to eq 402
	end

	it '取締役はふんぞり返って立ち上がる' do
		expect(torisimariyaku.standup).to eq "ふんぞり返って立ち上がりました。"
	end
end