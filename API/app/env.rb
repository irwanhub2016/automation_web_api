# rubocop:disable Style/MixinUsage
require 'dotenv/load'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'pp'
require 'rspec/expectations'
require 'pry'
require 'byebug'
require 'os'
require 'imatcher'
require 'data_magic'
require 'yaml'
require 'chilkat'
require 'active_support'
require 'active_support/core_ext'
require 'active_support/core_ext/hash/indifferent_access'
require 'date'
require 'require_all'
require 'resolv-replace'
require 'open-uri'
require_rel './helpers'
require_rel './models'

include RSpec::Matchers
include DataMagic
include UsersModel
include ApiBaseHelper

SHORT_TIMEOUT = ENV['SHORT_TIMEOUT'].to_i
DEFAULT_TIMEOUT = ENV['DEFAULT_TIMEOUT'].to_i
$root_directory = Dir.pwd
$download_path = "#{$root_directory}/data/downloads/"

DataMagic.yml_directory = "#{$root_directory}/app/configs"
JsonHelper.yml_directory = "#{$root_directory}/data"

# clear report files
byebug
@report_root = File.absolute_path('./report')

# remove report directory when run localy,
puts ' ========Deleting old reports ang logs========='
FileUtils.rm_rf(@report_root, secure: true)

ENV['REPORT_PATH'] ||= Time.now.strftime('%F_%H-%M-%S')
path = "#{@report_root}/#{ENV['REPORT_PATH']}"
FileUtils.mkdir_p path
Faker::Config.locale = 'id'
# rubocop:enable Style/MixinUsage
