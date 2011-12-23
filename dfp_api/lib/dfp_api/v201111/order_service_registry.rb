#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.1 on 2011-12-20 17:59:12.

require 'dfp_api/errors'

module DfpApi; module V201111; module OrderService
  class OrderServiceRegistry
    ORDERSERVICE_METHODS = {:update_orders=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_orders_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:orders}]}, :create_orders=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_orders_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:orders}]}, :get_order=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_order_response"}, :input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:order_id}]}, :get_orders_by_statement=>{:output=>{:fields=>[{:type=>"OrderPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_orders_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :perform_order_action=>{:output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_order_action_response"}, :input=>[{:type=>"OrderAction", :min_occurs=>0, :max_occurs=>1, :name=>:order_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :update_order=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_order_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:order}]}, :create_order=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_order_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:order}]}}
    ORDERSERVICE_TYPES = {:Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :Money=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}]}, :AppliedLabel=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:label_id}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_negated}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :ResumeAndOverbookOrders=>{:fields=>[], :base=>"ResumeOrders"}, :ArchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ApproveOrdersWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :OrderStatus=>{:fields=>[]}, :ResumeOrders=>{:fields=>[], :base=>"OrderAction"}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SubmitOrdersForApproval=>{:fields=>[], :base=>"OrderAction"}, :OrderAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:order_action_type}], :abstract=>true}, :DeleteOrders=>{:fields=>[], :base=>"OrderAction"}, :RetractOrders=>{:fields=>[], :base=>"OrderAction"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :SubmitOrdersForApprovalAndOverbook=>{:fields=>[], :base=>"SubmitOrdersForApproval"}, :Order=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:end_date_time}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:unlimited_end_date_time}, {:type=>"OrderStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_archived}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:notes}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:external_order_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:po_number}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:advertiser_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:agency_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creator_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:trafficker_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:secondary_trafficker_ids}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:salesperson_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:secondary_salesperson_ids}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_impressions_delivered}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_clicks_delivered}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:total_budget}, {:type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:applied_labels}, {:type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:effective_applied_labels}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:last_modified_by_app}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :DisapproveOrdersWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :RetractOrdersWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :OrderPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :ApproveAndOverbookOrders=>{:fields=>[], :base=>"ApproveOrders"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :DisapproveOrders=>{:fields=>[], :base=>"OrderAction"}, :DateTime=>{:fields=>[{:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:date}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:second}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone_id}]}, :UnarchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :SubmitOrdersForApprovalWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :PauseOrders=>{:fields=>[], :base=>"OrderAction"}, :ApproveOrders=>{:fields=>[], :base=>"OrderAction"}}
    ORDERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ORDERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ORDERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ORDERSERVICE_NAMESPACES[index]
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
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end