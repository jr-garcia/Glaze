from keyword import iskeyword

UNHANDLED_GL_TYPES = [None, 'GLhandleARB', 'GLsync']


class function:
    def __init__(self, func, types):
        self.name = func.proto.name
        self.ret = func.proto.ret
        self.params = [param(p, types) for p in func.params]

    def __repr__(self):
        return '{} {}({})'.format(self.ret, self.name, ', '.join([str(p) for p in self.params]))


class param:
    def __init__(self, p, types):
        self.name = self.safeIfKey(p.name)
        self.const = p.type.is_const
        self.pointerLen = p.type.is_pointer
        self.type = types.get(p.type.type)

    def __repr__(self):
        return '{}{}{} {}'.format('const ' if self.const else '', self.type, '*' * self.pointerLen, self.name)

    @staticmethod
    def safeIfKey(pName):
        if iskeyword(pName):
            return '_' + pName + '_'
        else:
            return pName
