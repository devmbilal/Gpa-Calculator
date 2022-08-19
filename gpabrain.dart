class GpaBrain
{
  List<double> credithour=[];
  List<double> subjectgpa=[];
  int coursenumber=0;
  void gpaadder(double marks,double gpa)
  {
    double sgpa=marks*gpa;
    subjectgpa.add(gpa);
  }
  void creditadder(double crhour)
  {
    credithour.add(crhour);
  }
  String gpa()
  {
    int i=0;
    double ch=0,sg=0;
    for(int i=0;i<credithour.length;i++)
      {
        ch+=credithour[i];
      }
    for(int i=0;i<subjectgpa.length;i++)
    {
      sg+=credithour[i];
    }
    return (sg/ch).toString();
  }

}

double gpacalculator(String m) {
  if (double.parse(m) < 50) {
    return 0.0;
  } else if (double.parse(m) <= 54) {
    return 1.0;
  } else if (double.parse(m) <= 59) {
    return 2.0;
  } else if (double.parse(m) <= 63) {
    return 2.5;
  } else if (double.parse(m) <= 67) {
    return 2.8;
  } else if (double.parse(m) <= 71) {
    return 3.0;
  } else if (double.parse(m) <= 75) {
    return 3.5;
  } else if (double.parse(m) <= 79) {
    return 3.8;
  } else {
    return 4.0;
  }
}