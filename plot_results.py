#!/usr/bin/env python

import sys
import json
from os.path import basename

import matplotlib.pyplot as plt
import numpy as np


def plot_results_file(file_, label):
    d = json.load(open(file_, 'r'))
    x = np.array(list(filter(lambda x: x.isdigit(), d.keys())))
    y = np.array([d[n]['mean'] for n in x])
    e = np.array([d[n]['stdev'] for n in x])

    plt.errorbar(x, y, e, label=label)

if __name__ == "__main__":
    for n, f in enumerate(sys.argv[1:]):
        plot_results_file(f, f"{n}: {basename(f)}")

    plt.show()
