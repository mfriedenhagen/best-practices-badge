# frozen_string_literal: true

# Copyright 2015-2017, the Linux Foundation, IDA, and the
# CII Best Practices badge contributors
# SPDX-License-Identifier: MIT

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get home' do
    get :home
    assert_response :success
    assert_template 'home'

    get :home, params: { locale: 'fr' }
    assert_response :success
    assert_template 'home'

    get :home, params: { locale: 'zh-CN' }
    assert_response :success
    assert_template 'home'
  end

  test 'should get background' do
    get :background
    assert_response :success
  end

  test 'should get criteria' do
    get :criteria
    assert_response :success

    get :criteria, params: { locale: 'fr' }
    assert_response :success
    assert_template 'criteria.fr'

    get :criteria, params: { locale: 'zh-CN' }
    assert_response :success
    assert_template 'criteria.zh-CN'
  end
end
