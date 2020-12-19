void setup() {
  float[] primePair = {0, 0};
  float[] primeTrio = {0, 0, 0};
  int num = 0;
  float sum = 0;
  int i = 0;
  int place = 0;
  while (i<10) {
  while(primePair[1]==0) {
    
    if (isPrime(num)) {
      primePair[place]=num;
      place++;
    }
    num++;
  }

    if (isPrime(num)) {
      primePair[0] = primePair[1];
      primePair[1] = num;
      sum+=1/primePair[0]+1/primePair[1];
      if (num-primeTrio[1]<=6) {
        primeTrio[0] = primeTrio[1];
        primeTrio[1] = primeTrio[2];
        primeTrio[2] = num;
      }
    }
    println("Current Pair: " + (int)primePair[0] + "," + (int)primePair[1]);
    println("Current Trio: " + (int)primeTrio[0] + "," + (int)primeTrio[1] + "," + (int)primeTrio[2]);
    println("Sum of Pairs: " + sum);
    println();

    num++;
    i++;
  }
}




boolean isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
