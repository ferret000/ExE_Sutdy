# -*- coding: utf-8 -*-
require 'rspec'
require_relative './shain'
require_relative './tanto'
require_relative './shain_factory'

describe ShainFactory do
	let(:shain_factory){ShainFactory.new}
	it '􏰄Tantoオブジェクトを生成しているかどうかをチェックする' do
		expect(shain_factory.create('Tanto',100)).to be_an_instance_of Tanto
	end
	it '􏰄Shuninオブジェクトを生成しているかどうかをチェックする' do
		expect(shain_factory.create('Shunin',100)).to be_an_instance_of Shunin
	end
	it '􏰄Buchoオブジェクトを生成しているかどうかをチェックする' do
		expect(shain_factory.create('Bucho',100)).to be_an_instance_of Bucho
	end
	it '􏰄Torishimairyakuオブジェクトを生成しているかどうかをチェックする' do
		expect(shain_factory.create('Torishimairyaku',100)).to be_an_instance_of Torishimairyaku
	end
end
