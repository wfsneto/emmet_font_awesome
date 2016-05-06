require 'rails_helper'

module EmmetFontAwesome
  describe FontAwesomeHelper do
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
        expect(helper.fa_fw_icon(:user)).to eq('<i class="fa fa-fw fa-user"></i>')
      end

      it 'generate fw icon with options' do
        expect(helper.fa_fw_icon(:user, foo: :bar)).to eq('<i foo="bar" class="fa fa-fw fa-user"></i>')
      end

      it 'generate fw icon with class options' do
        expect(helper.fa_fw_icon(:user, class: :'foo-bar')).to eq('<i class="fa fa-fw fa-user foo-bar"></i>')
      end
    end

    describe 'fa_icon_text' do
      it 'generate icon text without options' do
        expect(helper.fa_icon_text(:user, 'my text')).to eq('<i class="fa fa-fw fa-user"></i> my text')
      end

      it 'generate icon text with options' do
        out = '<i foo="bar" class="fa fa-fw fa-user"></i> my text'
        expect(helper.fa_icon_text(:user, 'my text', foo: :bar)).to eq(out)
      end

      it 'generate icon text with class options' do
        out = '<i class="fa fa-fw fa-user foo-bar"></i> my text'
        expect(helper.fa_icon_text(:user, 'my text', class: :'foo-bar')).to eq(out)
      end
    end

    describe 'fa_classes' do
      it 'generate classes without options' do
        expect(helper.fa_classes('user')).to eq('fa fa-user')
      end

      it 'generate classes without options and two icon params' do
        expect(helper.fa_classes('user 2x', foo: :bar)).to eq('fa fa-user fa-2x')
      end

      it 'generate classes with options' do
        expect(helper.fa_classes('user', foo: :bar)).to eq('fa fa-user')
      end

      it 'generate icon text with class options' do
        expect(helper.fa_classes('user', class: :'foo-bar')).to eq('fa fa-user foo-bar')
      end
    end
  end
end
