class Generator(BaseGenerator):
    def data(self):
        ind_choices = [
            var('t'),
            var('x'),
            var('s'),
            var('u'),
        ]
        dep_choices = [
            var('y'),
            var('z'),
            var('v'),
            var('w'),
        ]
        x1 = randrange(1, 20)
        dx = randrange(1, 10)
        x2 = x1 + choice([1, -1]) * dx
        y1 = randrange(1, 20)
        dy = randrange(1, 10)
        y2 = y1 + choice([1, -1]) * dx
        slope = (y2 - y1) / (x2 - x1)
        intercept = y1 - slope * x1
        return {
            'x': x,
            'y': y,
            'x1': x1,
            'x2': x2,
            'y1': y1,
            'y2': y2,
            'slope': slope,
            'intercept': intercept,
        }
