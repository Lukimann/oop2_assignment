class Student {
  String name;
  int age;
  String gradeLevel;
  Student(this.name, this.age, this.gradeLevel);
  void printStudentInfo() {
    print("Student Name: $name");
    print("Student Age: $age");
    print("Grade Level: $gradeLevel");
  }
}
class Teacher {
  String name;
  int age;
  String subject;
  Teacher(this.name, this.age, this.subject);
  void printTeacherInfo() {
    print("Teacher Name: $name");
    print("Teacher Age: $age");
    print("Subject Taught: $subject");
  }
}
class School {
  Student student;
  Teacher teacher;
  School({required this.student, required this.teacher});
  void printInfo() {
    student.printStudentInfo();
    print("--------------------");
    teacher.printTeacherInfo();
  }
}
void main() {
  var student = Student("Alice", 15, "Sophomore");
  var teacher = Teacher("Mr. Smith", 35, "Math");
  var school = School(student: student, teacher: teacher);
  school.printInfo();
}