"""Module for Writing/Reading Employees to CSV file"""


import datetime
from dataclasses import dataclass

import yaml

try:
    from yaml import CDumper as Dumper
    from yaml import CLoader as Loader
except ImportError:
    from yaml import Dumper, Loader


@dataclass
class Employee:
    """This is a dataclass to store employees in"""

    fname: str
    lname: str
    age: int
    email: str

    def __str__(self) -> str:
        return f"name: {self.fname} {self.lname}, age: {self.age}, email: {self.email}"

    def get_dict(self) -> dict:
        return {"employee": {"fname":self.fname, "lname":self.lname, "age":self.age, "email":self.email}}

    def write_file(self, file: str) -> dict:
        """Writes this Employee to file"""
        write_out = self.get_dict()
        with open(file, "at") as file:
            output = yaml.safe_dump(write_out,file, default_flow_style=False)
        return output


def read_file(file: str) -> list[Employee]:
    """Returns a list of Employee for each employee in file"""
    try:
        with open(file) as file:
            file.seek(0)
            output = yaml.safe_load(file)
            return output
    except FileNotFoundError:
        print("File not found")


def add_employee() -> Employee:
    """Gathers input for creating an Employee"""
    employee = {}
    while True:
        try:
            employee["fname"] = input(
                "Please enter the first name of employee: "
            ).capitalize()
            employee["lname"] = input(
                "Please enter the last name of employee: "
            ).capitalize()
            employee["age"] = int(input("Please enter the age of employee: "))
            year = datetime.datetime.today().year - employee["age"]
            employee[
                "email"
            ] = f"{employee['fname'].lower()}.{employee['lname'].lower()}{year}@company.com"
            return Employee(
                employee["fname"], employee["lname"], employee["age"], employee["email"]
            )
        except ValueError:
            print("I didn't understand that")


def main():
    """Test cases for reading/writing employees to file"""
    employee_lst = add_employee()
    print(employee_lst.write_file("./employees.yml"))
    print(read_file("./employees.yml"))


if __name__ == "__main__":
    main()
