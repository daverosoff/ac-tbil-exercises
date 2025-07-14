class Generator(BaseGenerator):
    def data(self):
        x = choice([
            var('x'),
            var('w'),
            var('z'),
            var('t'),
            var('s'),
            var('p'),
            ])
        y = choice([
            var('y'),
            var('S'),
            var('A'),
            var('L'),
            var('d'),
            var('M'),
            ])
        a = randrange(2, 8)
        a *= choice([-1, 1])
        b = abs(a)
        k = var('C') if a < 1 else var('k')

        return {
            "prompt": x^b,
            "lhs": y,
            "rhs": k * x^a,
            "kindly": "inversely" if a < 1 else "directly",
        }
