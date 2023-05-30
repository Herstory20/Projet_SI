int compute(int a, int d) {
    int b, c = a + d * 5;
    

    while (!(a == 3)) {
    print(a);
    a= a-1;
    b=b+c;
    }
    return b;
}

void main(void) {
  int a;
  int e=5;
  if (!(a <= 3)) {
    print(a);
  } else {
    int b = compute(a, 2 * a);
    print(b);
  }
  if (b==10){
    e=b;
  } 
  e=0;
}

