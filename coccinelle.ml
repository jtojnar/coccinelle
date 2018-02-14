(* entry point when calling Coccinelle from OCaml code *)

open Coccinelle_modules

let __init_debugger = !Common.debugger
let __init_profile = !Common.profile
let __init_show_trace_profile = !Common.show_trace_profile
let __init_verbose_level = !Common.verbose_level
let __init_disable_pr2_once = !Common.disable_pr2_once
let __init_save_tmp_files = !Common.save_tmp_files
let __init__tab_level_print= !Common._tab_level_print
let __init__prefix_pr = !Common._prefix_pr
let __init__chan_pr2= !Common._chan_pr2
let __init_print_to_stderr = !Common.print_to_stderr
let __init__chan = !Common._chan
let __init__trace_var = !Common._trace_var
let __init__debug = !Common._debug
let __init__list_bool = !Common._list_bool
let __init__counter = !Common._counter
let __init__counter2 = !Common._counter2
let __init__counter3 = !Common._counter3
let __init__batch_mode= !Common._batch_mode
let __init__temp_files_created = !Common._temp_files_created
let __init_temp_files = !Common.temp_files
let __init_verbose_ctl_engine = !Flag_ctl.verbose_ctl_engine
let __init_verbose_match = !Flag_ctl.verbose_match
let __init_partial_match = !Flag_ctl.partial_match
let __init_poswits_only = !Flag_ctl.poswits_only
let __init_loop_in_src_code = !Flag_ctl.loop_in_src_code
let __init_bench = !Flag_ctl.bench
let __init_steps = !Flag_ctl.steps
let __init_graphical_trace = !Flag_ctl.graphical_trace
let __init_gt_without_label = !Flag_ctl.gt_without_label
let __init_checking_reachability = !Flag_ctl.checking_reachability
let __init_debug_engine = !Flag_matcher.debug_engine
let __init_verbose_matcher = !Flag_matcher.verbose_matcher
let __init_useEU = !Flag_matcher.useEU
let __init_disallow_nested_exps = !Flag_matcher.disallow_nested_exps
let __init_only_return_is_error_exit = !Flag_matcher.only_return_is_error_exit
let __init_allow_inconsistent_paths = !Flag_matcher.allow_inconsistent_paths
let __init_no_safe_expressions = !Flag_matcher.no_safe_expressions
let __init_show_misc = !Flag_matcher.show_misc
let __init_show_transinfo = !Flag_matcher.show_transinfo
let __init_show_c = !Flag_cocci.show_c
let __init_show_cocci = !Flag_cocci.show_cocci
let __init_show_diff = !Flag_cocci.show_diff
let __init_force_diff = !Flag_cocci.force_diff
let __init_show_flow = !Flag_cocci.show_flow
let __init_show_before_fixed_flow = !Flag_cocci.show_before_fixed_flow
let __init_show_ctl_tex = !Flag_cocci.show_ctl_tex
let __init_show_ctl_text = !Flag_cocci.show_ctl_text
let __init_inline_let_ctl = !Flag_cocci.inline_let_ctl
let __init_show_mcodekind_in_ctl = !Flag_cocci.show_mcodekind_in_ctl
let __init_show_binding_in_out = !Flag_cocci.show_binding_in_out
let __init_show_dependencies = !Flag_cocci.show_dependencies
let __init_inplace_modif = !Flag_cocci.inplace_modif
let __init_verbose_cocci = !Flag_cocci.verbose_cocci
let __init_windows = !Flag_cocci.windows
let __init_popl = !Flag_cocci.popl
let __init_timeout = !Flag_cocci.timeout
let __init_selected_only = !Flag_cocci.selected_only
let __init_use_saved_typedefs = !Flag_cocci.use_saved_typedefs
let __init_std_iso = !Config.std_iso
let __init_std_h = !Config.std_h
let __init_python_interpreter = !Config.python_interpreter
let __init_sgrep_mode2 = !Flag.sgrep_mode2
let __init_show_misc = !Flag.show_misc
let __init_show_transinfo = !Flag.show_transinfo
let __init_show_trying = !Flag.show_trying
let __init_track_iso_usage = !Flag.track_iso_usage
let __init_worth_trying_opt = !Flag.worth_trying_opt
let __init_scanner = !Flag.scanner
let __init_pyoutput = !Flag.pyoutput
let __init_ocamlc = !Flag.ocamlc
let __init_ocamlopt = !Flag.ocamlopt
let __init_ocamldep = !Flag.ocamldep
let __init_ocamlfind = !Flag.ocamlfind
let __init_patch = !Flag.patch
let __init_make_hrule = !Flag.make_hrule
let __init_hrule_per_file = !Flag.hrule_per_file
let __init_currentfile = !Flag.currentfile
let __init_currentfiles = !Flag.currentfiles
let __init_current_element = !Flag.current_element
let __init_current_element_pos = !Flag.current_element_pos
let __init_dir = !Flag.dir
let __init_defined_virtual_rules = !Flag.defined_virtual_rules
let __init_defined_virtual_env = !Flag.defined_virtual_env
let __init_c_plus_plus = !Flag.c_plus_plus
let __init_ibm = !Flag.ibm
let __init_include_headers = !Flag.include_headers
let __init_no_include_cache = !Flag.no_include_cache
let __init_cocci_attribute_names = !Flag.cocci_attribute_names
let __init_initialization_stack = !Iteration.initialization_stack
let __init_base_file_list = !Iteration.base_file_list
let __init_parsed_virtual_rules = !Iteration.parsed_virtual_rules
let __init_parsed_virtual_identifiers = !Iteration.parsed_virtual_identifiers
let __init_pcre_support1 = !Regexp.pcre_support
let __init_path = !Flag_parsing_c.path
let __init_std_h = !Flag_parsing_c.std_h
let __init_common_h = !Flag_parsing_c.common_h
let __init_cpp_i_opts = !Flag_parsing_c.cpp_i_opts
let __init_cpp_d_opts = !Flag_parsing_c.cpp_d_opts
let __init_show_parsing_error = !Flag_parsing_c.show_parsing_error
let __init_verbose_lexing = !Flag_parsing_c.verbose_lexing
let __init_verbose_parsing = !Flag_parsing_c.verbose_parsing
let __init_verbose_type = !Flag_parsing_c.verbose_type
let __init_verbose_cfg = !Flag_parsing_c.verbose_cfg
let __init_verbose_annotater = !Flag_parsing_c.verbose_annotater
let __init_verbose_unparsing = !Flag_parsing_c.verbose_unparsing
let __init_verbose_visit = !Flag_parsing_c.verbose_visit
let __init_verbose_cpp_ast = !Flag_parsing_c.verbose_cpp_ast
let __init_verbose_includes = !Flag_parsing_c.verbose_includes
let __init_filter_msg = !Flag_parsing_c.filter_msg
let __init_filter_msg_define_error = !Flag_parsing_c.filter_msg_define_error
let __init_filter_define_error = !Flag_parsing_c.filter_define_error
let __init_filter_passed_level = !Flag_parsing_c.filter_passed_level
let __init_pretty_print_type_info = !Flag_parsing_c.pretty_print_type_info
let __init_pretty_print_comment_info = !Flag_parsing_c.pretty_print_comment_info
let __init_pretty_print_typedef_value = !Flag_parsing_c.pretty_print_typedef_value
let __init_show_flow_labels = !Flag_parsing_c.show_flow_labels
let __init_debug_lexer = !Flag_parsing_c.debug_lexer
let __init_debug_etdt = !Flag_parsing_c.debug_etdt
let __init_debug_typedef = !Flag_parsing_c.debug_typedef
let __init_debug_cpp = !Flag_parsing_c.debug_cpp
let __init_debug_cpp_ast = !Flag_parsing_c.debug_cpp_ast
let __init_debug_unparsing = !Flag_parsing_c.debug_unparsing
let __init_debug_cfg = !Flag_parsing_c.debug_cfg
let __init_check_annotater = !Flag_parsing_c.check_annotater
let __init_label_strategy_2 = !Flag_parsing_c.label_strategy_2
let __init_cpp_directive_passing = !Flag_parsing_c.cpp_directive_passing
let __init_ifdef_directive_passing = !Flag_parsing_c.ifdef_directive_passing
let __init_ifdef_to_if = !Flag_parsing_c.ifdef_to_if
let __init_disable_multi_pass = !Flag_parsing_c.disable_multi_pass
let __init_disable_add_typedef = !Flag_parsing_c.disable_add_typedef
let __init_if0_passing = !Flag_parsing_c.if0_passing
let __init_add_typedef_root = !Flag_parsing_c.add_typedef_root
let __init_exts_ITU = !Flag_parsing_c.exts_ITU
let __init_fpc_defined = !Flag_parsing_c.defined
let __init_undefined = !Flag_parsing_c.undefined
let __init_diff_lines = !Flag_parsing_c.diff_lines
let __init_use_cache = !Flag_parsing_c.use_cache
let __init_cache_prefix = !Flag_parsing_c.cache_prefix
let __init_cache_limit = !Flag_parsing_c.cache_limit
let __init_int_thresholds = !Flag_parsing_c.int_thresholds
let __init_spacing = !Flag_parsing_c.spacing
let __init_indent = !Flag_parsing_c.indent
let __init_max_width = !Flag_parsing_c.max_width
let __init_no_loops = !Flag_parsing_c.no_loops
let __init_no_gotos = !Flag_parsing_c.no_gotos
let __init_keep_comments = !Flag_parsing_c.keep_comments
let __init_parsing_header_for_types = !Flag_parsing_c.parsing_header_for_types
let __init_force_kr = !Flag_parsing_c.force_kr
let __init_prevent_kr = !Flag_parsing_c.prevent_kr
let __init_include_headers_for_types = !Includes.include_headers_for_types
let __init_include_path = !Includes.include_path
let __init_relax_include_path = !Includes.relax_include_path
let __init_for_tests = !Includes.for_tests
let __init_extra_includes = !Includes.extra_includes
let __init__typedef = !Lexer_parser._typedef
let __init__old_state = !Lexer_parser._old_state
let __init__lexer_hint = !Lexer_parser._lexer_hint
let __init__defs = !Parse_c._defs
let __init__defs_builtins = !Parse_c._defs_builtins
let __init_ifdef_paren_cnt= !Parsing_hacks.ifdef_paren_cnt
let __init_nTypedefInfer = !Parsing_stat.nTypedefInfer
let __init_nIncludeGrammar = !Parsing_stat.nIncludeGrammar
let __init_nIncludeHack = !Parsing_stat.nIncludeHack
let __init_nIteratorGrammar = !Parsing_stat.nIteratorGrammar
let __init_nIteratorHeuristic = !Parsing_stat.nIteratorHeuristic
let __init_nMacroTopDecl = !Parsing_stat.nMacroTopDecl
let __init_nMacroStructDecl = !Parsing_stat.nMacroStructDecl
let __init_nMacroDecl = !Parsing_stat.nMacroDecl
let __init_nMacroStmt = !Parsing_stat.nMacroStmt
let __init_nMacroString = !Parsing_stat.nMacroString
let __init_nMacroHigherOrder = !Parsing_stat.nMacroHigherOrder
let __init_nMacrohigherTypeGrammar = !Parsing_stat.nMacrohigherTypeGrammar
let __init_nMacroAttribute = !Parsing_stat.nMacroAttribute
let __init_nIfdefTop = !Parsing_stat.nIfdefTop
let __init_nIfdefStmt = !Parsing_stat.nIfdefStmt
let __init_nIfdefStruct = !Parsing_stat.nIfdefStruct
let __init_nIfdefInitializer = !Parsing_stat.nIfdefInitializer
let __init_nIfdefFunheader = !Parsing_stat.nIfdefFunheader
let __init_nIfdefExprPassing = !Parsing_stat.nIfdefExprPassing
let __init_nIfdefPassing = !Parsing_stat.nIfdefPassing
let __init_nIncludePassing = !Parsing_stat.nIncludePassing
let __init_nUndefPassing = !Parsing_stat.nUndefPassing
let __init_nDefinePassing = !Parsing_stat.nDefinePassing
let __init_nIfdefZero = !Parsing_stat.nIfdefZero
let __init_nIfdefVersion = !Parsing_stat.nIfdefVersion
let __init_nGccTypeof = !Parsing_stat.nGccTypeof
let __init_nGccLongLong = !Parsing_stat.nGccLongLong
let __init_nGccAsm = !Parsing_stat.nGccAsm
let __init_nGccInline = !Parsing_stat.nGccInline
let __init_nGccAttribute = !Parsing_stat.nGccAttribute
let __init_nGccCaseRange = !Parsing_stat.nGccCaseRange
let __init_nGccMixDecl = !Parsing_stat.nGccMixDecl
let __init_nGccDesignator = !Parsing_stat.nGccDesignator
let __init_nGccStmtExpr = !Parsing_stat.nGccStmtExpr
let __init_nGccConstructor = !Parsing_stat.nGccConstructor
let __init_nGccEmptyStruct = !Parsing_stat.nGccEmptyStruct
let __init_nGccNestedFunc = !Parsing_stat.nGccNestedFunc
let __init_nGccMisc = !Parsing_stat.nGccMisc
let __init_nDefineHack = !Parsing_stat.nDefineHack
let __init_nDefineConstant = !Parsing_stat.nDefineConstant
let __init_nDefineStmt = !Parsing_stat.nDefineStmt
let __init_nDefineExpr = !Parsing_stat.nDefineExpr
let __init_nDefineWhile0 = !Parsing_stat.nDefineWhile0
let __init_nDefineInit = !Parsing_stat.nDefineInit
let __init_nDefineOther = !Parsing_stat.nDefineOther
let __init_nUndef = !Parsing_stat.nUndef
let __init_nOtherDirective = !Parsing_stat.nOtherDirective
let __init_nDirectiveStmt = !Parsing_stat.nDirectiveStmt
let __init_nDirectiveStruct = !Parsing_stat.nDirectiveStruct
let __init_nDirectiveInitializer = !Parsing_stat.nDirectiveInitializer
let __init_nMacroHint = !Parsing_stat.nMacroHint
let __init_nMacroExpand = !Parsing_stat.nMacroExpand
let __init_nNotParsedCorrectly = !Parsing_stat.nNotParsedCorrectly
(* Doesn't seem to be linked in *)
(*let __init_show_info= !Sexp_ast_c.show_info
let __init_show_qualifier= !Sexp_ast_c.show_qualifier
let __init_show_expr_info= !Sexp_ast_c.show_expr_info*)
let __init_initial_env = !Type_annoter_c.initial_env
let __init_rule_name = !Ast0_cocci.rule_name
let __init_in_rule_name = !Data.in_rule_name
let __init_in_meta = !Data.in_meta
let __init_in_iso = !Data.in_iso
let __init_in_generating = !Data.in_generating
let __init_ignore_patch_or_match = !Data.ignore_patch_or_match
let __init_in_prolog = !Data.in_prolog
let __init_saw_struct = !Data.saw_struct
let __init_inheritable_positions = !Data.inheritable_positions
let __init_clear_meta= !Data.clear_meta
let __init_add_meta_meta= !Data.add_meta_meta
let __init_add_id_meta= !Data.add_id_meta
let __init_add_virt_id_meta_found= !Data.add_virt_id_meta_found
let __init_add_virt_id_meta_not_found= !Data.add_virt_id_meta_not_found
let __init_add_fresh_id_meta= !Data.add_fresh_id_meta
let __init_add_type_meta= !Data.add_type_meta
let __init_add_init_meta= !Data.add_init_meta
let __init_add_initlist_meta= !Data.add_initlist_meta
let __init_add_param_meta= !Data.add_param_meta
let __init_add_paramlist_meta= !Data.add_paramlist_meta
let __init_add_const_meta= !Data.add_const_meta
let __init_add_err_meta= !Data.add_err_meta
let __init_add_exp_meta= !Data.add_exp_meta
let __init_add_idexp_meta= !Data.add_idexp_meta
let __init_add_local_idexp_meta= !Data.add_local_idexp_meta
let __init_add_global_idexp_meta= !Data.add_global_idexp_meta
let __init_add_explist_meta= !Data.add_explist_meta
let __init_add_decl_meta= !Data.add_decl_meta
let __init_add_field_meta= !Data.add_field_meta
let __init_add_symbol_meta= !Data.add_symbol_meta
let __init_add_field_list_meta= !Data.add_field_list_meta
let __init_add_stm_meta= !Data.add_stm_meta
let __init_add_stmlist_meta= !Data.add_stmlist_meta
let __init_add_dparamlist_meta= !Data.add_dparamlist_meta
let __init_add_func_meta= !Data.add_func_meta
let __init_add_local_func_meta= !Data.add_local_func_meta
let __init_add_declarer_meta= !Data.add_declarer_meta
let __init_add_iterator_meta= !Data.add_iterator_meta
let __init_add_pos_meta= !Data.add_pos_meta
let __init_add_type_name= !Data.add_type_name
let __init_add_attribute= !Data.add_attribute
let __init_add_declarer_name= !Data.add_declarer_name
let __init_add_iterator_name= !Data.add_iterator_name
let __init_init_rule= !Data.init_rule
let __init_install_bindings= !Data.install_bindings
let __init_format_metavariables = !Data.format_metavariables
let __init_format_list_metavariables = !Data.format_list_metavariables
let __init_constraint_scripts = !Data.constraint_scripts
let __init_sgrep_mode = !Flag_parsing_cocci.sgrep_mode
let __init_show_SP = !Flag_parsing_cocci.show_SP
let __init_show_iso_failures = !Flag_parsing_cocci.show_iso_failures
let __init_interpret_inverted = !Flag_parsing_cocci.interpret_inverted
let __init_iso_limit = !Flag_parsing_cocci.iso_limit
let __init_disabled_isos = !Flag_parsing_cocci.disabled_isos
let __init_keep_ml_script = !Flag_parsing_cocci.keep_ml_script
let __init_id_utils_index = !Flag_parsing_cocci.id_utils_index
let __init_in_minus = !Flag_parsing_cocci.in_minus
let __init_debug_parse_cocci = !Flag_parsing_cocci.debug_parse_cocci
let __init_generating_mode = !Flag_parsing_cocci.generating_mode
let __init_verbose_iso = !Iso_pattern.verbose_iso
let __init_line = !Lexer_cocci.line
let __init_file = !Lexer_cocci.file
let __init_logical_line = !Lexer_cocci.logical_line
let __init_current_line_type = !Lexer_cocci.current_line_type
let __init_prev_plus = !Lexer_cocci.prev_plus
let __init_line_start = !Lexer_cocci.line_start
let __init_current_line_started = !Lexer_cocci.current_line_started
let __init_col_zero = !Lexer_cocci.col_zero
let __init_started_line = !Lexer_cocci.started_line
let __init_pm = !Lexer_cocci.pm
let __init_language = !Lexer_script.language
let __init_contains_string_constant = !Parse_aux.contains_string_constant
let __init_print_plus_flag = !Pretty_print_cocci.print_plus_flag
let __init_print_minus_flag = !Pretty_print_cocci.print_minus_flag
let __init_mark_all = !Flag_popl.mark_all
let __init_keep_all_wits = !Flag_popl.keep_all_wits
let __init_inc_match = !Pycocci.inc_match
let __init_exited = !Pycocci.exited
let __init_initialised = !Pycocci.initialised
let __init_initialised = !Yes_pycocci.initialised
let __init_coccinelle_module = !Yes_pycocci.coccinelle_module
let __init_cocci_file_name = !Yes_pycocci.cocci_file_name
let __init_module_map = !Yes_pycocci.module_map
let __init_inc_match = !Yes_pycocci.inc_match
let __init_exited = !Yes_pycocci.exited
let __init_the_environment = !Yes_pycocci.the_environment
let __init_pywrap_ast = !Yes_pycocci.pywrap_ast
let __init_pyunwrap_ast = !Yes_pycocci.pyunwrap_ast
let __init_pyoutputinstance = !Yes_pycocci.pyoutputinstance

let coccinelle arglist =
  Common.debugger := __init_debugger;
  Common.profile := __init_profile;
  Common.show_trace_profile := __init_show_trace_profile;
  Common.verbose_level := __init_verbose_level;
  Common.disable_pr2_once := __init_disable_pr2_once;
  Common.save_tmp_files := __init_save_tmp_files;
  Common._tab_level_print := __init__tab_level_print;
  Common._prefix_pr := __init__prefix_pr;
  Common._chan_pr2 := __init__chan_pr2;
  Common.print_to_stderr := __init_print_to_stderr;
  Common._chan := __init__chan;
  Common._trace_var := __init__trace_var;
  Common._debug := __init__debug;
  Common._list_bool := __init__list_bool;
  Common._counter := __init__counter;
  Common._counter2 := __init__counter2;
  Common._counter3 := __init__counter3;
  Common._batch_mode := __init__batch_mode;
  Common._temp_files_created := __init__temp_files_created;
  Common.temp_files := __init_temp_files;
  Flag_ctl.verbose_ctl_engine := __init_verbose_ctl_engine;
  Flag_ctl.verbose_match := __init_verbose_match;
  Flag_ctl.partial_match := __init_partial_match;
  Flag_ctl.poswits_only := __init_poswits_only;
  Flag_ctl.loop_in_src_code := __init_loop_in_src_code;
  Flag_ctl.bench := __init_bench;
  Flag_ctl.steps := __init_steps;
  Flag_ctl.graphical_trace := __init_graphical_trace;
  Flag_ctl.gt_without_label := __init_gt_without_label;
  Flag_ctl.checking_reachability := __init_checking_reachability;
  Flag_matcher.debug_engine := __init_debug_engine;
  Flag_matcher.verbose_matcher := __init_verbose_matcher;
  Flag_matcher.useEU := __init_useEU;
  Flag_matcher.disallow_nested_exps := __init_disallow_nested_exps;
  Flag_matcher.only_return_is_error_exit := __init_only_return_is_error_exit;
  Flag_matcher.allow_inconsistent_paths := __init_allow_inconsistent_paths;
  Flag_matcher.no_safe_expressions := __init_no_safe_expressions;
  Flag_matcher.show_misc := __init_show_misc;
  Flag_matcher.show_transinfo := __init_show_transinfo;
  Flag_cocci.show_c := __init_show_c;
  Flag_cocci.show_cocci := __init_show_cocci;
  Flag_cocci.show_diff := __init_show_diff;
  Flag_cocci.force_diff := __init_force_diff;
  Flag_cocci.show_flow := __init_show_flow;
  Flag_cocci.show_before_fixed_flow := __init_show_before_fixed_flow;
  Flag_cocci.show_ctl_tex := __init_show_ctl_tex;
  Flag_cocci.show_ctl_text := __init_show_ctl_text;
  Flag_cocci.inline_let_ctl := __init_inline_let_ctl;
  Flag_cocci.show_mcodekind_in_ctl := __init_show_mcodekind_in_ctl;
  Flag_cocci.show_binding_in_out := __init_show_binding_in_out;
  Flag_cocci.show_dependencies := __init_show_dependencies;
  Flag_cocci.inplace_modif := __init_inplace_modif;
  Flag_cocci.verbose_cocci := __init_verbose_cocci;
  Flag_cocci.windows := __init_windows;
  Flag_cocci.popl := __init_popl;
  Flag_cocci.timeout := __init_timeout;
  Flag_cocci.selected_only := __init_selected_only;
  Flag_cocci.use_saved_typedefs := __init_use_saved_typedefs;
  Config.std_iso := __init_std_iso;
  Config.std_h := __init_std_h;
  Config.python_interpreter := __init_python_interpreter;
  Flag.sgrep_mode2 := __init_sgrep_mode2;
  Flag.show_misc := __init_show_misc;
  Flag.show_transinfo := __init_show_transinfo;
  Flag.show_trying := __init_show_trying;
  Flag.track_iso_usage := __init_track_iso_usage;
  Flag.worth_trying_opt := __init_worth_trying_opt;
  Flag.scanner := __init_scanner;
  Flag.pyoutput := __init_pyoutput;
  Flag.ocamlc := __init_ocamlc;
  Flag.ocamlopt := __init_ocamlopt;
  Flag.ocamldep := __init_ocamldep;
  Flag.ocamlfind := __init_ocamlfind;
  Flag.patch := __init_patch;
  Flag.make_hrule := __init_make_hrule;
  Flag.hrule_per_file := __init_hrule_per_file;
  Flag.currentfile := __init_currentfile;
  Flag.currentfiles := __init_currentfiles;
  Flag.current_element := __init_current_element;
  Flag.current_element_pos := __init_current_element_pos;
  Flag.dir := __init_dir;
  Flag.defined_virtual_rules := __init_defined_virtual_rules;
  Flag.defined_virtual_env := __init_defined_virtual_env;
  Flag.c_plus_plus := __init_c_plus_plus;
  Flag.ibm := __init_ibm;
  Flag.include_headers := __init_include_headers;
  Flag.no_include_cache := __init_no_include_cache;
  Flag.cocci_attribute_names := __init_cocci_attribute_names;
  Iteration.initialization_stack := __init_initialization_stack;
  Iteration.base_file_list := __init_base_file_list;
  Iteration.parsed_virtual_rules := __init_parsed_virtual_rules;
  Iteration.parsed_virtual_identifiers := __init_parsed_virtual_identifiers;
  Regexp.pcre_support := __init_pcre_support1;
  Flag_parsing_c.path := __init_path;
  Flag_parsing_c.std_h := __init_std_h;
  Flag_parsing_c.common_h := __init_common_h;
  Flag_parsing_c.cpp_i_opts := __init_cpp_i_opts;
  Flag_parsing_c.cpp_d_opts := __init_cpp_d_opts;
  Flag_parsing_c.show_parsing_error := __init_show_parsing_error;
  Flag_parsing_c.verbose_lexing := __init_verbose_lexing;
  Flag_parsing_c.verbose_parsing := __init_verbose_parsing;
  Flag_parsing_c.verbose_type := __init_verbose_type;
  Flag_parsing_c.verbose_cfg := __init_verbose_cfg;
  Flag_parsing_c.verbose_annotater := __init_verbose_annotater;
  Flag_parsing_c.verbose_unparsing := __init_verbose_unparsing;
  Flag_parsing_c.verbose_visit := __init_verbose_visit;
  Flag_parsing_c.verbose_cpp_ast := __init_verbose_cpp_ast;
  Flag_parsing_c.verbose_includes := __init_verbose_includes;
  Flag_parsing_c.filter_msg := __init_filter_msg;
  Flag_parsing_c.filter_msg_define_error := __init_filter_msg_define_error;
  Flag_parsing_c.filter_define_error := __init_filter_define_error;
  Flag_parsing_c.filter_passed_level := __init_filter_passed_level;
  Flag_parsing_c.pretty_print_type_info := __init_pretty_print_type_info;
  Flag_parsing_c.pretty_print_comment_info := __init_pretty_print_comment_info;
  Flag_parsing_c.pretty_print_typedef_value := __init_pretty_print_typedef_value;
  Flag_parsing_c.show_flow_labels := __init_show_flow_labels;
  Flag_parsing_c.debug_lexer := __init_debug_lexer;
  Flag_parsing_c.debug_etdt := __init_debug_etdt;
  Flag_parsing_c.debug_typedef := __init_debug_typedef;
  Flag_parsing_c.debug_cpp := __init_debug_cpp;
  Flag_parsing_c.debug_cpp_ast := __init_debug_cpp_ast;
  Flag_parsing_c.debug_unparsing := __init_debug_unparsing;
  Flag_parsing_c.debug_cfg := __init_debug_cfg;
  Flag_parsing_c.check_annotater := __init_check_annotater;
  Flag_parsing_c.label_strategy_2 := __init_label_strategy_2;
  Flag_parsing_c.cpp_directive_passing := __init_cpp_directive_passing;
  Flag_parsing_c.ifdef_directive_passing := __init_ifdef_directive_passing;
  Flag_parsing_c.ifdef_to_if := __init_ifdef_to_if;
  Flag_parsing_c.disable_multi_pass := __init_disable_multi_pass;
  Flag_parsing_c.disable_add_typedef := __init_disable_add_typedef;
  Flag_parsing_c.if0_passing := __init_if0_passing;
  Flag_parsing_c.add_typedef_root := __init_add_typedef_root;
  Flag_parsing_c.exts_ITU := __init_exts_ITU;
  Flag_parsing_c.defined := __init_fpc_defined;
  Flag_parsing_c.undefined := __init_undefined;
  Flag_parsing_c.diff_lines := __init_diff_lines;
  Flag_parsing_c.use_cache := __init_use_cache;
  Flag_parsing_c.cache_prefix := __init_cache_prefix;
  Flag_parsing_c.cache_limit := __init_cache_limit;
  Flag_parsing_c.int_thresholds := __init_int_thresholds;
  Flag_parsing_c.spacing := __init_spacing;
  Flag_parsing_c.indent := __init_indent;
  Flag_parsing_c.max_width := __init_max_width;
  Flag_parsing_c.no_loops := __init_no_loops;
  Flag_parsing_c.no_gotos := __init_no_gotos;
  Flag_parsing_c.keep_comments := __init_keep_comments;
  Flag_parsing_c.parsing_header_for_types := __init_parsing_header_for_types;
  Flag_parsing_c.force_kr := __init_force_kr;
  Flag_parsing_c.prevent_kr := __init_prevent_kr;
  Includes.include_headers_for_types := __init_include_headers_for_types;
  Includes.include_path := __init_include_path;
  Includes.relax_include_path := __init_relax_include_path;
  Includes.for_tests := __init_for_tests;
  Includes.extra_includes := __init_extra_includes;
  Lexer_parser._typedef := __init__typedef;
  Lexer_parser._old_state := __init__old_state;
  Lexer_parser._lexer_hint := __init__lexer_hint;
  Parse_c._defs := __init__defs;
  Parse_c._defs_builtins := __init__defs_builtins;
  Parsing_hacks.ifdef_paren_cnt := __init_ifdef_paren_cnt;
  Parsing_stat.nTypedefInfer := __init_nTypedefInfer;
  Parsing_stat.nIncludeGrammar := __init_nIncludeGrammar;
  Parsing_stat.nIncludeHack := __init_nIncludeHack;
  Parsing_stat.nIteratorGrammar := __init_nIteratorGrammar;
  Parsing_stat.nIteratorHeuristic := __init_nIteratorHeuristic;
  Parsing_stat.nMacroTopDecl := __init_nMacroTopDecl;
  Parsing_stat.nMacroStructDecl := __init_nMacroStructDecl;
  Parsing_stat.nMacroDecl := __init_nMacroDecl;
  Parsing_stat.nMacroStmt := __init_nMacroStmt;
  Parsing_stat.nMacroString := __init_nMacroString;
  Parsing_stat.nMacroHigherOrder := __init_nMacroHigherOrder;
  Parsing_stat.nMacrohigherTypeGrammar := __init_nMacrohigherTypeGrammar;
  Parsing_stat.nMacroAttribute := __init_nMacroAttribute;
  Parsing_stat.nIfdefTop := __init_nIfdefTop;
  Parsing_stat.nIfdefStmt := __init_nIfdefStmt;
  Parsing_stat.nIfdefStruct := __init_nIfdefStruct;
  Parsing_stat.nIfdefInitializer := __init_nIfdefInitializer;
  Parsing_stat.nIfdefFunheader := __init_nIfdefFunheader;
  Parsing_stat.nIfdefExprPassing := __init_nIfdefExprPassing;
  Parsing_stat.nIfdefPassing := __init_nIfdefPassing;
  Parsing_stat.nIncludePassing := __init_nIncludePassing;
  Parsing_stat.nUndefPassing := __init_nUndefPassing;
  Parsing_stat.nDefinePassing := __init_nDefinePassing;
  Parsing_stat.nIfdefZero := __init_nIfdefZero;
  Parsing_stat.nIfdefVersion := __init_nIfdefVersion;
  Parsing_stat.nGccTypeof := __init_nGccTypeof;
  Parsing_stat.nGccLongLong := __init_nGccLongLong;
  Parsing_stat.nGccAsm := __init_nGccAsm;
  Parsing_stat.nGccInline := __init_nGccInline;
  Parsing_stat.nGccAttribute := __init_nGccAttribute;
  Parsing_stat.nGccCaseRange := __init_nGccCaseRange;
  Parsing_stat.nGccMixDecl := __init_nGccMixDecl;
  Parsing_stat.nGccDesignator := __init_nGccDesignator;
  Parsing_stat.nGccStmtExpr := __init_nGccStmtExpr;
  Parsing_stat.nGccConstructor := __init_nGccConstructor;
  Parsing_stat.nGccEmptyStruct := __init_nGccEmptyStruct;
  Parsing_stat.nGccNestedFunc := __init_nGccNestedFunc;
  Parsing_stat.nGccMisc := __init_nGccMisc;
  Parsing_stat.nDefineHack := __init_nDefineHack;
  Parsing_stat.nDefineConstant := __init_nDefineConstant;
  Parsing_stat.nDefineStmt := __init_nDefineStmt;
  Parsing_stat.nDefineExpr := __init_nDefineExpr;
  Parsing_stat.nDefineWhile0 := __init_nDefineWhile0;
  Parsing_stat.nDefineInit := __init_nDefineInit;
  Parsing_stat.nDefineOther := __init_nDefineOther;
  Parsing_stat.nUndef := __init_nUndef;
  Parsing_stat.nOtherDirective := __init_nOtherDirective;
  Parsing_stat.nDirectiveStmt := __init_nDirectiveStmt;
  Parsing_stat.nDirectiveStruct := __init_nDirectiveStruct;
  Parsing_stat.nDirectiveInitializer := __init_nDirectiveInitializer;
  Parsing_stat.nMacroHint := __init_nMacroHint;
  Parsing_stat.nMacroExpand := __init_nMacroExpand;
  Parsing_stat.nNotParsedCorrectly := __init_nNotParsedCorrectly;
(* Doesn't seem to be linked in *)
(*  Sexp_ast_c.show_info := __init_show_info;
  Sexp_ast_c.show_qualifier := __init_show_qualifier;
  Sexp_ast_c.show_expr_info := __init_show_expr_info; *)
  Type_annoter_c.initial_env := __init_initial_env;
  Ast0_cocci.rule_name := __init_rule_name;
  Data.in_rule_name := __init_in_rule_name;
  Data.in_meta := __init_in_meta;
  Data.in_iso := __init_in_iso;
  Data.in_generating := __init_in_generating;
  Data.ignore_patch_or_match := __init_ignore_patch_or_match;
  Data.in_prolog := __init_in_prolog;
  Data.saw_struct := __init_saw_struct;
  Data.inheritable_positions := __init_inheritable_positions;
  Data.clear_meta := __init_clear_meta;
  Data.add_meta_meta := __init_add_meta_meta;
  Data.add_id_meta := __init_add_id_meta;
  Data.add_virt_id_meta_found := __init_add_virt_id_meta_found;
  Data.add_virt_id_meta_not_found := __init_add_virt_id_meta_not_found;
  Data.add_fresh_id_meta := __init_add_fresh_id_meta;
  Data.add_type_meta := __init_add_type_meta;
  Data.add_init_meta := __init_add_init_meta;
  Data.add_initlist_meta := __init_add_initlist_meta;
  Data.add_param_meta := __init_add_param_meta;
  Data.add_paramlist_meta := __init_add_paramlist_meta;
  Data.add_const_meta := __init_add_const_meta;
  Data.add_err_meta := __init_add_err_meta;
  Data.add_exp_meta := __init_add_exp_meta;
  Data.add_idexp_meta := __init_add_idexp_meta;
  Data.add_local_idexp_meta := __init_add_local_idexp_meta;
  Data.add_global_idexp_meta := __init_add_global_idexp_meta;
  Data.add_explist_meta := __init_add_explist_meta;
  Data.add_decl_meta := __init_add_decl_meta;
  Data.add_field_meta := __init_add_field_meta;
  Data.add_symbol_meta := __init_add_symbol_meta;
  Data.add_field_list_meta := __init_add_field_list_meta;
  Data.add_stm_meta := __init_add_stm_meta;
  Data.add_stmlist_meta := __init_add_stmlist_meta;
  Data.add_dparamlist_meta := __init_add_dparamlist_meta;
  Data.add_func_meta := __init_add_func_meta;
  Data.add_local_func_meta := __init_add_local_func_meta;
  Data.add_declarer_meta := __init_add_declarer_meta;
  Data.add_iterator_meta := __init_add_iterator_meta;
  Data.add_pos_meta := __init_add_pos_meta;
  Data.add_type_name := __init_add_type_name;
  Data.add_attribute := __init_add_attribute;
  Data.add_declarer_name := __init_add_declarer_name;
  Data.add_iterator_name := __init_add_iterator_name;
  Data.init_rule := __init_init_rule;
  Data.install_bindings := __init_install_bindings;
  Data.format_metavariables := __init_format_metavariables;
  Data.format_list_metavariables := __init_format_list_metavariables;
  Data.constraint_scripts := __init_constraint_scripts;
  Flag_parsing_cocci.sgrep_mode := __init_sgrep_mode;
  Flag_parsing_cocci.show_SP := __init_show_SP;
  Flag_parsing_cocci.show_iso_failures := __init_show_iso_failures;
  Flag_parsing_cocci.interpret_inverted := __init_interpret_inverted;
  Flag_parsing_cocci.iso_limit := __init_iso_limit;
  Flag_parsing_cocci.disabled_isos := __init_disabled_isos;
  Flag_parsing_cocci.keep_ml_script := __init_keep_ml_script;
  Flag_parsing_cocci.id_utils_index := __init_id_utils_index;
  Flag_parsing_cocci.in_minus := __init_in_minus;
  Flag_parsing_cocci.debug_parse_cocci := __init_debug_parse_cocci;
  Flag_parsing_cocci.generating_mode := __init_generating_mode;
  Iso_pattern.verbose_iso := __init_verbose_iso;
  Lexer_cocci.line := __init_line;
  Lexer_cocci.file := __init_file;
  Lexer_cocci.logical_line := __init_logical_line;
  Lexer_cocci.current_line_type := __init_current_line_type;
  Lexer_cocci.prev_plus := __init_prev_plus;
  Lexer_cocci.line_start := __init_line_start;
  Lexer_cocci.current_line_started := __init_current_line_started;
  Lexer_cocci.col_zero := __init_col_zero;
  Lexer_cocci.started_line := __init_started_line;
  Lexer_cocci.pm := __init_pm;
  Lexer_script.language := __init_language;
  Parse_aux.contains_string_constant := __init_contains_string_constant;
  Pretty_print_cocci.print_plus_flag := __init_print_plus_flag;
  Pretty_print_cocci.print_minus_flag := __init_print_minus_flag;
  Flag_popl.mark_all := __init_mark_all;
  Flag_popl.keep_all_wits := __init_keep_all_wits;
  Pycocci.inc_match := __init_inc_match;
  Pycocci.exited := __init_exited;
  Pycocci.initialised := __init_initialised;
  Yes_pycocci.initialised := __init_initialised;
  Yes_pycocci.coccinelle_module := __init_coccinelle_module;
  Yes_pycocci.cocci_file_name := __init_cocci_file_name;
  Yes_pycocci.module_map := __init_module_map;
  Yes_pycocci.inc_match := __init_inc_match;
  Yes_pycocci.exited := __init_exited;
  Yes_pycocci.the_environment := __init_the_environment;
  Yes_pycocci.pywrap_ast := __init_pywrap_ast;
  Yes_pycocci.pyunwrap_ast := __init_pyunwrap_ast;
  Yes_pycocci.pyoutputinstance := __init_pyoutputinstance;
  Enter.main_with_better_error_report
    (""::(Str.split (Str.regexp "[ \t]+") arglist))
