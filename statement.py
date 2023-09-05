import sys
import cfile as C
import random

import copy

class Statement():
    def __init__(self, haslogic=True, hasdivs=True, max_const_values=1000, hasfloat=False, hasdouble=False) -> None:
        self._cond_operators = ['>', '>=', '<', '<=', '!=', '==']
        self._operators = ['+', '-', '*'] 
        self._types = ['int']
        if haslogic:
            self._operators.extend(['&', '^', '|', '~']) 
        if hasdivs:
            self._operators.extend(['/', '%'])
        if hasfloat:
            self._types.append('float')
        if hasdouble:
            self._types.append('double')
        self._max_const_values = max_const_values
        
    def is_binary(self, operator):
        if operator == '~':
            return False
        return True

    def var_defination_stmt(self, var, func):
        tp = random.choice(self._types)
        def_stmt = C.statement(f"{C.variable(var, tp)} = ({tp})({C.fcall(func)})")
        return def_stmt

    def const_defination_stmt(self, var):
        tp = random.choice(self._types)
        def_stmt = C.statement(f"{C.variable(var, tp)} = ({tp})({random.randint(1, self._max_const_values)})")
        return def_stmt

    def basicblock_inst(self, bb_index, indent, var_type='int'):
        fmt = '%d'
        if var_type == 'float' or var_type == 'double':
            fmt = '%f'
        inst_stmt = C.statement(C.fcall('printf', [f'"BB: {fmt}"', bb_index]), indent=indent)
        return inst_stmt

    def random_stmt(self, source:list, indent, max_depth=1, min_depth=1):
        expr = random.choice(source)
        expr_is_var = True
        for it in range(max_depth):
            end = random.choice([True, False])
            if end and it >= min_depth:
                break
            opc = random.choice(self._operators)
            var = random.choice(source)
            if expr_is_var:
                if self.is_binary(opc):
                    expr = f"{expr} {opc} {var}"
                else:
                    expr = f"{opc} {var}"
                expr_is_var = False
            else:
                if self.is_binary(opc):
                    expr = f"({expr}) {opc} {var}"
                else:
                    expr = f"{opc} ({var})"
        new_local_var = random.choice([True, False])
        stmt = ""
        new_var = None
        if new_local_var:
            new_var = f"v{len(source)}"
            # source.append(new_var)
            tp = random.choice(self._types)
            stmt = C.statement(f"{C.variable(new_var, tp)} = ({tp})({expr})", indent=indent)
        else:
            dest_var = random.choice(source)
            stmt = C.statement(f"{dest_var} = {expr}", indent=indent)
        return stmt, new_var

    def while_stmt(self, local_vars:list, indent):
        var_1 = random.choice(local_vars)
        var_2_tp = random.choice([0, 1])
        exp = None
        local_vars_bp = copy.deepcopy(local_vars)
        local_vars_bp.remove(var_1)
        if len(local_vars_bp) == 0:
            var_2_tp = 1
        if var_2_tp == 0:   # var
            var_2 = random.choice(local_vars_bp)
            operator = random.choice(self._cond_operators)
            exp = f"(int)({var_1}) {operator} (int)({var_2})"
        elif var_2_tp == 1:    # const
            var_2 = random.randint(1, self._max_const_values)
            operator = random.choice(self._cond_operators)
            exp = f"(int)({var_1}) {operator} (int)({var_2})"
        stmt = C.line(f"while({exp})", indent)
        return stmt

    def if_stmt(self, local_vars:list, indent):
        var_1 = random.choice(local_vars)
        var_2_tp = random.choice([0, 1])
        exp = None
        local_vars_bp = copy.deepcopy(local_vars)
        local_vars_bp.remove(var_1)
        if len(local_vars_bp) == 0:
            var_2_tp = 1
        if var_2_tp == 0:   # var
            var_2 = random.choice(local_vars_bp)
            operator = random.choice(self._cond_operators)
            exp = f"(int)({var_1}) {operator} (int)({var_2})"
        elif var_2_tp == 1:    # const
            var_2 = random.randint(1, self._max_const_values)
            operator = random.choice(self._cond_operators)
            exp = f"(int)({var_1}) {operator} (int)({var_2})"
        stmt = C.line(f"if({exp})", indent=indent)
        return stmt

    def else_stmt(self, indent):
        stmt = C.line("else", indent=indent)
        return stmt

    def ret_var_stmt(self, source:list, indent, max_depth, min_depth=1, ret_type='int'):
        expr  = random.choice(source)
        expr_is_var = True
        for it in range(max_depth):
            end = random.choice([True, False])
            if end and it >= min_depth:
                break
            opc = random.choice(self._operators)
            var = random.choice(source)
            if expr_is_var:
                if self.is_binary(opc):
                    expr = f"{expr} {opc} {var}"
                else:
                    expr = f"{opc} {var}"
                expr_is_var = False
            else:
                if self.is_binary(opc):
                    expr = f"({expr}) {opc} {var}"
                else:
                    expr = f"{opc} ({expr})"
        ret_var = "ret"
        stmt = C.statement(f"{C.variable(ret_var, ret_type)} = ({ret_type})({expr})", indent=indent)
        return stmt

    def ret_stmt(self, indent):
        stmt = C.statement(f"return ret", indent=indent)
        return stmt

    def call_expr(self, func , args:list):
        exp = C.fcall(func , args)
        return exp

    def nonvoid_call_stmt(self, var, func, args:list, indent, ret_type='int'):
        stmt = C.statement(f"{C.variable(var, ret_type)} = {self.call_expr(func, args)}", indent)
        return stmt

    def void_call_stmt(self, func, args:list, indent):
        stmt = C.statement(C.fcall(func, args), indent=indent)
        return stmt
