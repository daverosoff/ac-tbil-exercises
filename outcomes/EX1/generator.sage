class Generator(BaseGenerator):
    def data(self):
        x = var('x')
        a = randrange(2, 8)
        a *= choice([-1, 1])

        return {
            "sum": (a*x^p).add(b*x^p,hold=True),
            "result": (a+b)*x^p,
            "kind": (a < 1) ? "inverse" : "direct",
        }
