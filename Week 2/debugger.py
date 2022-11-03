import functools


def debugger(func):
    @functools.wraps(func)
    def wrapper_decorator(*args, **kwargs):
        args_repr = [repr(a) for a in args]                      # list of args
        kwargs_repr = [f"{k}={v!r}" for k, v in kwargs.items()]  # list of kwargs
        signature = ", ".join(args_repr + kwargs_repr)           # join and turn into a string
        print(f"Calling {func.__name__}({signature})")           # print function name and args to console
        value = func(*args, **kwargs)
        print(f"{func.__name__!r} returned {value!r}")           # print return value
        return value
    return wrapper_decorator
