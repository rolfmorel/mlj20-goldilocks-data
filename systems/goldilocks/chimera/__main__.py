import sys 

from .main import main

if __name__ == "__main__":
    options = {'constrain_specializations': "--specs" in sys.argv}
    if options['constrain_specializations']:
        sys.argv.remove("--specs")

    task_path = sys.argv[1] if len(sys.argv) > 1 else "robo.pl"
    program = main(task_path, options)
    if program != None:
        print("congrats!")
        print(program) # TODO: straightforward
    else:
        print("better luck next time...")
