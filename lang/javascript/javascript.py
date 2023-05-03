from talon import Context, Module, actions, settings

mod = Module()
ctx = Context()
ctx.matches = """
tag: user.javascript
"""

mod.list('react_hooks', desc='list of all react hooks')
ctx.lists['user.react_hooks'] = {
    'use state': 'Declare a new state variable using State Hook',
    'use translation' : 'useTranslation',
    'import use translation' : 'import useTranslation',
    'import use state' : 'import useState',
    'import react': 'Import React',
    'import use context': 'import useContext',
    'import use navigate': 'import useNavigate',
    'import navigate': 'import Navigate',
    'use navigate': 'Router useNavigate()',
    'use context': 'useContext',
    'class': 'Class Component',
    'funk': 'Function Syntax Component',
    'provider': 'Context Provider',
    'higher order': 'Higher Order Component',
    'use effect': 'useEffect'
}

@mod.capture(rule='{user.react_hooks}')
def react_hooks(m) -> str:
    """returns or react snipped name"""
    return m.react_hooks

@mod.action_class
class Actions:
    def insert_react_hook_snippet(react_hook: str):
        """Add all missing imports"""
        actions.user.vscode_with_plugin(
            "editor.action.insertSnippet",
            {"langId": "javascriptreact", "name": f"{react_hook}"},
        )
