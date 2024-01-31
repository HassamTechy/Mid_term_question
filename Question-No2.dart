void main() {
  var student1 = Student('John Doe', '123456', ['Math', 'Science']);
  var student2 = Student('Jane Doe', '789012', ['English', 'History']);

  student1.addCourse('Art');
  student1.dropCourse('Science');
  student1.displayCourses();

  student2.addCourse('Music');
  student2.dropCourse('History');
  student2.displayCourses();
}

class Student {
  String name;
  String id;
  List<String> courses;

  Student(this.name, this.id, this.courses);

  void addCourse(String course) {
    courses.add(course);
  }

  void dropCourse(String course) {
    courses.remove(course);
  }

  void displayCourses() {
    print('Courses for $name: $courses');
  }
}