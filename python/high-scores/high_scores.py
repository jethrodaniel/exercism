class HighScores(object):
    def __init__(self, scores):
        self.scores = scores

    def latest(self):
        return self.scores[-1]

    def personal_best(self):
        return max(self.scores)

    def personal_top(self):
        return sorted(self.scores, reverse=True)[:3]

    def report(self):
        if self.latest() is self.personal_best():
            return f"Your latest score was {self.latest()}." \
                   f" That's your personal best!"
        else:
            delta = self.personal_best() - self.latest()

            return f"Your latest score was {self.latest()}." \
                   f" That's {delta} short of your personal best!"
