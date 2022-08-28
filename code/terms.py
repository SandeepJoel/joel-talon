"""
Stores terms that are used in many different places
"""
from talon import Module

mod = Module()

OPERATOR = "make"

@mod.capture(rule=OPERATOR)
def operator(m) -> str:
    """Prefix for operators"""
    return str(m)
