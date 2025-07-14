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
        ind_unit_choices = [
            "kg",
            "g",
            "mm",
            "cm",
            "m",
            "s",
            "min",
            "h",
        ]
        dep_unit_choices = [
            "kg",
            "g",
            "mm",
            "cm",
            "m",
            "s",
            "min",
            "h",
        ]
        i, j = sample([0, 1, 2], 2)
        ind = ind_choices[i]
        dep = dep_choices[j]
        slope = randrange(1, 10)
        slope *= choice([-1, 1])
        intercept = randrange(-10, 10)
        ind_units = choice(ind_unit_choices)
        dep_units = choice(dep_unit_choices)
        while dep_units[-1] == ind_units[-1]:
            dep_units = choice(dep_unit_choices)
        return {
            "ind": ind,
            "ind_units": ind_units,
            "dep": dep,
            "dep_units": dep_units,
            "lhs": dep,
            "rhs": slope * ind + intercept,
        }
