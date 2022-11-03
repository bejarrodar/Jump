import random
from tkinter import *
from tkinter import ttk


class MainWindow:
    def __init__(self, root):

        root.title("Rock Paper Scissors")

        self.mainframe = ttk.Frame(root, padding="3 3 12 12")
        self.mainframe.grid(column=0, row=0, sticky=(N, W, E, S))
        root.columnconfigure(0, weight=1)
        root.rowconfigure(0, weight=1)

        self.wins = 0
        self.loses = 0
        self.ties = 0
        self.tieVar = StringVar()
        self.tieVar.set(str(self.ties))
        self.winVar = StringVar()
        self.loseVar = StringVar()
        self.winVar.set(str(self.wins))
        self.loseVar.set(str(self.loses))

        ttk.Button(self.mainframe, text="Rock", command=self.playRock).grid(
            column=1, row=1, sticky=(W)
        )
        ttk.Button(self.mainframe, text="Paper", command=self.playPaper).grid(
            column=2, row=1, sticky=(E, W)
        )
        ttk.Button(self.mainframe, text="Scissors", command=self.playScissors).grid(
            column=3, row=1, sticky=(E)
        )

        ttk.Label(self.mainframe, text="Wins:").grid(column=1, row=3, sticky=(W))
        self.winLabel = ttk.Label(self.mainframe, textvariable=self.winVar)
        self.winLabel.grid(column=2, row=3, sticky=(W))

        ttk.Label(self.mainframe, text="Loses:").grid(column=3, row=3, sticky=(W))
        self.loseLabel = ttk.Label(self.mainframe, textvariable=self.loseVar)
        self.loseLabel.grid(column=4, row=3, sticky=(W))

        ttk.Label(self.mainframe, text="Ties:").grid(column=5, row=3, sticky=(W))
        self.tieLabel = ttk.Label(self.mainframe, textvariable=self.tieVar)
        self.tieLabel.grid(column=6, row=3, sticky=(W))

        for child in self.mainframe.winfo_children():
            child.grid_configure(padx=5, pady=5)

    def playRock(self):
        self.results = ""
        x = random.randint(1, 3)  #  1 is rock 2 is paper 3 is scissors
        match x:
            case 1:
                self.results = "Tie"
                self.ties += 1
                self.tieVar.set(str(self.ties))
            case 2:
                self.results = "Lose"
                self.loses += 1
                self.loseVar.set(str(self.loses))
            case 3:
                self.results = "Win"
                self.wins += 1
                self.winVar.set(str(self.wins))

        ttk.Label(self.mainframe, text=self.results).grid(
            column=2, row=2, sticky=(E, W)
        )

    def playPaper(self):
        self.results = ""
        x = random.randint(1, 3)
        match x:
            case 1:
                self.results = "Win"
                self.wins += 1
                self.winVar.set(str(self.wins))
            case 2:
                self.results = "Tie"
                self.ties += 1
                self.tieVar.set(str(self.ties))
            case 3:
                self.results = "Lose"
                self.loses += 1
                self.loseVar.set(str(self.loses))

        ttk.Label(self.mainframe, text=self.results).grid(
            column=2, row=2, sticky=(E, W)
        )

    def playScissors(self):
        self.results = ""
        x = random.randint(1, 3)
        match x:
            case 1:
                self.results = "Lose"
                self.loses += 1
                self.loseVar.set(str(self.loses))
            case 2:
                self.results = "Win"
                self.wins += 1
                self.winVar.set(str(self.wins))
            case 3:
                self.results = "Tie"
                self.ties += 1
                self.tieVar.set(str(self.ties))

        ttk.Label(self.mainframe, text=self.results).grid(
            column=2, row=2, sticky=(E, W)
        )



