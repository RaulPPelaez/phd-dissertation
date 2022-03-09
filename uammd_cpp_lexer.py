
from pygments.lexer import *
from pygments.token import *
from  pygments.lexers.c_cpp import *

__all__ = ['UAMMDCppLexer']

class UAMMDCppLexer(CppLexer):
    name = 'UAMMDC++'
    aliases = ['ucpp', 'uc++']

    tokens = {
        'statements': [
            (r'(Box|real4|real|real3|real2|int2|int3|int4|System|ParticleData)\b', Keyword.Type),
            (r'std::', Name.Namespace),
            (r'access::',Name.Namespace),
#            (r'(-\>)(\w+)', bygroups(Name.Label,Name.Function)),
#            (r'\>|\<', Name.Decorator),
#            (r'(-\>)(\w+)', bygroups(Name.Label,Generic.Emph)),
            (words(('__global__','__device__','__host__'), suffix=r'\b'), Keyword.Reserved),
            inherit,
        ]
    }
