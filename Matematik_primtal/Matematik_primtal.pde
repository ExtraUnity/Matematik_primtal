void setup() {
  float[] primePair = {0, 0};
  float[] primeTrio = {0, 0, 0};
  int num = 0;
  float sum = 0;
  int place = 0;
  int trios = 0;
  int pairs = 0;
  while (true) {
    
  while(primePair[1]==0) { //find first pair
    
    if (isPrime(num)) {
      primePair[place]=num;
      primeTrio[place]=num;
      place++;
    }
    if(place==2) {
      sum+=1/primePair[0]+1/primePair[1];
      pairs++;
    }
    num++;
  }
  while(primeTrio[2]==0) { //find first trio
    if (isPrime(num)) {
            primePair[0] = primePair[1];
      primePair[1] = num;
      primeTrio[place]=num;
            sum+=1/primePair[0]+1/primePair[1];
            pairs++;
            trios++;
            
    }
    num++;
  }

    if (isPrime(num)) {
      if (num-primePair[0]<=6) {
        primeTrio[0] = primePair[0];
        primeTrio[1] = primePair[1];
        primeTrio[2] = num;
        trios++;
      }
            primePair[0] = primePair[1];
      primePair[1] = num;
      pairs++;
      sum+=1/primePair[0]+1/primePair[1];
      
    println("Current Pair: " + (int)primePair[0] + "," + (int)primePair[1]);
    println("Current Trio: " + (int)primeTrio[0] + "," + (int)primeTrio[1] + "," + (int)primeTrio[2]);
    println("Sum of Pairs: " + sum);
    println("Total Pairs,Trios: " + pairs + "," + trios);
    println("");
    }
   

    num++;

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
