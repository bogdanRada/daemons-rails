#!/usr/bin/env ruby
# frozen_string_literal: true
# encoding: UTF-8

# warn_indent: true
require 'rails'
require 'daemons/rails/config'
require 'daemons/rails/monitoring'

module Daemons
  module Rails
    class Railtie < ::Rails::Railtie
      generators do
        require 'generators/daemon_generator.rb'
      end

      rake_tasks do
        load 'tasks/daemons.rake'
      end
    end
  end
end
