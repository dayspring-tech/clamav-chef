# Encoding: UTF-8

require 'spec_helper'

describe 'clamav packages' do
  let(:packages) do
    case os[:family]
    when 'ubuntu'
      %w(clamav clamav-daemon clamav-freshclam)
    else
      %w(clamav clamav-db clamd)
    end
  end

  it 'is installed' do
    packages.each { |p| expect(package(p)).to be_installed }
  end
end
