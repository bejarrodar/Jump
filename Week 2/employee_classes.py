import datetime


class CheapException(Exception):pass

class Department:
    department_count = 0
    
    def __init__(self,name:str) -> None:
        self.name = name
        self.department_id = Department.department_count
        Department.department_count += 1
        self.employee_count = 0
        self.employees = []
        
    def count_employees(self):
        return self.employee_count
    
    def add_employee(self, employee):
        if employee not in self.employees:
            self.employees.append(employee)
            self.employee_count +=1
            return True
        else:
            return False
    
    def remove_employee(self, employee):
        if employee in self.employees:
            self.employee_count -=1
            self.employees.remove(employee)
            return True
        else:
            return False
        
    def list_employees(self):
        for each in self.employees:
            print(each)
    
    
class Employee:
    
    employee_count = 0
    
    def __init__(self, name:str, age:int, email:str = None) -> None:
        self.employee_id = Employee.employee_count
        Employee.employee_count += 1
        self.name = name
        self.age = age
        if not email:
            self.create_email()
        else:
            self.email = email
            
    def set_department(self,department: Department):
        self.current_department = department
        department.add_employee(self)
        
    def create_email(self):
        self.birth_year = datetime.datetime.today().year - self.age
        self.email = f"{self.name.split(' ')[0]}.{self.name.split(' ')[1]}{str(self.birth_year)[-2:]}@company.com"
        
    def __str__(self) -> str:
        return self.name
    
    def __add__(self,other:Department):
        self.set_department(other)
    
    def __sub__(self,other:Department):
        other.remove_employee(self)
        self.current_department = None

    def set_salary(self, salary:int):
        self.salary = salary
        
        
class Developer(Employee):
    
    def __init__(self, name:str, age:int, programing_language:str, email:str = None) -> None:
        super().__init__(name, age, email)
        self.language = programing_language
    
    def set_salary(self, salary:int):
        try:
            if salary < 50000:
                raise CheapException("Developers should make at least 50k")
            else:
                self.salary = salary
        except CheapException as e:
            print(e)
        
        
if __name__ == "__main__":
    
    
    foo = Employee("Foo Bar",24)
    jarrod = Developer("Jarrod Caplan", 32, "Python")
    development = Department("developers")
    jarrod.set_department(development)
    development.list_employees()
    print(development.employee_count)
    print(Employee.employee_count)
    print(Department.department_count)
    jarrod.set_salary(25000)
    jarrod.set_salary(50000)
    
