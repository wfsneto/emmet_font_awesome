require 'rails_helper'

module EmmetFontAwesome
  RSpec.describe FontAwesomeHelper, type: :helper do
    describe 'fa_icon' do
      it 'generate icon without options' do
        expect(helper.fa_icon(:user)).to eq('<i class="fa fa-user"></i>')
      end

      it 'generate icon with options' do
        expect(helper.fa_icon(:user, foo: :bar)).to eq('<i foo="bar" class="fa fa-user"></i>')
      end

      it 'generate icon with class options' do
        expect(helper.fa_icon(:user, class: :'foo-bar')).to eq('<i class="fa fa-user foo-bar"></i>')
      end
    end

    describe 'fa_fw_icon' do
      it 'generate fw icon without options' do
        expect(helper.fa_fw_icon(:user)).to eq('<i class="fa fa-user fa-fw"></i>')
      end

      it 'generate fw icon with options' do
        expect(helper.fa_fw_icon(:user, foo: :bar)).to eq('<i foo="bar" class="fa fa-user fa-fw"></i>')
      end

      it 'generate fw icon with class options' do
        expect(helper.fa_fw_icon(:user, class: :'foo-bar')).to eq('<i class="fa fa-user fa-fw foo-bar"></i>')
      end
    end

    describe 'fa_icon_text' do
      it 'generate icon text without options' do
        expect(helper.fa_icon_text(:user, 'my text')).to eq('<i class="fa fa-user fa-fw"></i> my text')
      end

      it 'generate icon text with options' do
        expect(helper.fa_icon_text(:user, 'my text', foo: :bar)).to eq('<i foo="bar" class="fa fa-user fa-fw"></i> my text')
      end

      it 'generate icon text with class options' do
        expect(helper.fa_icon_text(:user, 'my text', class: :'foo-bar')).to eq('<i class="fa fa-user fa-fw foo-bar"></i> my text')
      end
    end
  end
end
