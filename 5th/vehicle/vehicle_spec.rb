# -*- coding: utf-8 -*-
require 'rspec'
require_relative './vehicle'

describe Vehicle do
	let(:vehicle){Vehicle.new}
	it 'spining nomal tireを返すかどうかをチェックする' do
		expect(vehicle.move_forward).to eq 'spinning nomal tire'
	end
end

describe Car do
	let(:car){Car.new}
	it 'spining car tireを返すかどうかをチェックする' do
		expect(car.move_forward).to eq 'spinning car tire'
	end
end

describe Truck do
	let(:truck){Truck.new}
	it 'spining truck tireを返すかどうかをチェックする' do
		expect(truck.move_forward).to eq 'spinning truck tire'
	end
end
