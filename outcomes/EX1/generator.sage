class Generator(BaseGenerator):
    def data(self):
        x = var('x')
        y = var('y')
        a = randrange(2, 8)
        a *= choice([-1, 1])
        b = abs(a)
        k = var('C') if a < 1 else var('k')
        return {
            "prompt": x^b
            "lhs": y,
            "rhs": k * x^a,
            "kind": "inverse" if a < 1 else "direct",
            "kindly": kind + "ly"
        }
