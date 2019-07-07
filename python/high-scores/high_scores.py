def latest(scores):
    return scores[-1]


def personal_best(scores):
    return max(scores)


def personal_top_three(scores):
    return sorted(scores, reverse=True)[:3]


def report(scores):
    if latest(scores) is personal_best(scores):
        return f"Your latest score was {latest(scores)}." \
               f" That's your personal best!"
    else:
        delta = personal_best(scores) - latest(scores)

        return f"Your latest score was {latest(scores)}." \
               f" That's {delta} short of your personal best!"
