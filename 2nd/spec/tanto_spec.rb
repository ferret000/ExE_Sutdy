# -*- coding: utf-8 -*-
require 'rspec'
require_relative 'shain'
require_relative 'tanto'

describe Tanto do
	let(:tanto){Tanto.new(100)}
	it '担当は慌てて立ち上がる' do
		expect(tanto.standup).to eq "担当は慌てて起立しました"
	end

	it '担当は給料は基本給と一緒。基本給が100なら給料も100' do
		expect(tanto.calculate_salary).to eq 100
	end
end