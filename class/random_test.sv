/**
  ******************************************************************************
  *
  * @university UFCG (Universidade Federal de Campina Grande)
  * @lab        Embedded
  *
  * @file      random_test.sv
  *
  * @authors   Jose Iuri
  *            Pedro Cavalcante
  *
  ******************************************************************************
**/

class random_test extends uvm_test;
  env env_h;
  sequence_in seq;

  `uvm_component_utils(random_test)

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env_h = env::type_id::create("env_h", this);
    seq = sequence_in::type_id::create("seq", this);
  endfunction

  task run_phase(uvm_phase phase);
    seq.start(env_h.ag.sqr);
  endtask: run_phase

endclass