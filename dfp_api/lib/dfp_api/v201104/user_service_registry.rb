#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.3.1 on 2011-06-10 21:49:43.

module DfpApi; module V201104; module UserService
  class UserServiceRegistry
    USERSERVICE_METHODS = {:get_all_roles=>{:output=>{:name=>"get_all_roles_response", :fields=>[{:type=>"Role", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[]}, :get_user=>{:output=>{:name=>"get_user_response", :fields=>[{:type=>"User", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"long", :max_occurs=>1, :name=>:user_id, :min_occurs=>0}]}, :get_users_by_statement=>{:output=>{:name=>"get_users_by_statement_response", :fields=>[{:type=>"UserPage", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}]}, :perform_user_action=>{:output=>{:name=>"perform_user_action_response", :fields=>[{:type=>"UpdateResult", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"UserAction", :max_occurs=>1, :name=>:user_action, :min_occurs=>0}, {:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}]}, :create_user=>{:output=>{:name=>"create_user_response", :fields=>[{:type=>"User", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"User", :max_occurs=>1, :name=>:user, :min_occurs=>0}]}, :update_user=>{:output=>{:name=>"update_user_response", :fields=>[{:type=>"User", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"User", :max_occurs=>1, :name=>:user, :min_occurs=>0}]}, :create_users=>{:output=>{:name=>"create_users_response", :fields=>[{:type=>"User", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"User", :max_occurs=>nil, :name=>:users, :min_occurs=>0}]}, :update_users=>{:output=>{:name=>"update_users_response", :fields=>[{:type=>"User", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"User", :max_occurs=>nil, :name=>:users, :min_occurs=>0}]}}
    USERSERVICE_TYPES = {:TextValue=>{:base=>"Value", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :ActivateUsers=>{:base=>"UserAction", :fields=>[]}, :UserPage=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:total_result_set_size, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:start_index, :min_occurs=>0}, {:type=>"User", :max_occurs=>nil, :name=>:results, :min_occurs=>0}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}]}, :DeactivateUsers=>{:base=>"UserAction", :fields=>[]}, :Statement=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:query, :min_occurs=>0}, {:type=>"String_ValueMapEntry", :max_occurs=>nil, :name=>:values, :min_occurs=>0}]}, :Value=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value_type, :min_occurs=>0}]}, :UpdateResult=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:num_changes, :min_occurs=>0}]}, :Role=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:description, :min_occurs=>0}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:key, :min_occurs=>0}, {:type=>"Value", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :NumberValue=>{:base=>"Value", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :Authentication=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:authentication_type, :min_occurs=>0}]}, :UserAction=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:user_action_type, :min_occurs=>0}]}, :User=>{:base=>"UserRecord", :fields=>[{:type=>"boolean", :max_occurs=>1, :name=>:is_active, :min_occurs=>0}, {:type=>"boolean", :max_occurs=>1, :name=>:is_email_notification_allowed, :min_occurs=>0}]}, :BooleanValue=>{:base=>"Value", :fields=>[{:type=>"boolean", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:network_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:application_name, :min_occurs=>0}, {:type=>"Authentication", :max_occurs=>1, :name=>:authentication, :min_occurs=>0}]}, :UserRecord=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:email, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:role_id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:role_name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:preferred_locale, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:user_record_type, :min_occurs=>0}]}, :OAuth=>{:base=>"Authentication", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:parameters, :min_occurs=>0}]}, :ClientLogin=>{:base=>"Authentication", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:token, :min_occurs=>0}]}}

    def self.get_method_signature(method_name)
      return USERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return USERSERVICE_TYPES[type_name.to_sym]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields = [] if !defined?(@array_fields)
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end