class Generator(BaseGenerator):
    def data(self):
        ind_choices = [
            var('t'),
            var('d'),
            var('m'),
            ]
        dep_choices = [
            var('t'),
            var('d'),
            var('m'),
            ]
        ind_prefix_choices = [
            "k",
            "c",
            "m",
        ]
        dep_prefix_choices = [
            "k",
            "c",
            "m",
        ]
        i, j = sample([0, 1, 2], 2)
        ind = ind_choices[i]
        dep = dep_choices[j]
        slope = randrange(1, 10)
        slope *= choice([-1, 1])
        intercept = randrange(-10, 10)
        ind_units = choice(ind_prefix_choices)
        return {
            "prompt": x^b,
            "lhs": dep,
            "rhs": slope * ind + intercept,
            "kindly": "inversely" if a < 1 else "directly",
        }
