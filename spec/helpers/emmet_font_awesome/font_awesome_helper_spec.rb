require 'rails_helper'

module EmmetFontAwesome
  RSpec.describe FontAwesomeHelper, type: :helper do
    describe 'fa_icon' do
      it 'generate icon without options' do
        expect(helper.fa_icon(:user)).to eq('<i class="fa fa-fw fa-user"></i>')
      end

      it 'generate icon with options' do
        expect(helper.fa_icon(:user, foo: :bar)).to eq('<i foo="bar" class="fa fa-fw fa-user"></i>')
      end

      it 'generate icon with class options' do
        expect(helper.fa_icon(:user, class: :'foo-bar')).to eq('<i class="fa fa-fw fa-user foo-bar"></i>')
      end
    end
  end
end
