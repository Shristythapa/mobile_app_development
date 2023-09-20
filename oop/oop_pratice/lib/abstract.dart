abstract class Vehicle {
  // Abstract method
  void start();
  // Abstract method
  void stop();

  //normal method can be defined inside abstract class
  void go() {
    print("heyyyyy");
  }
}

class Car extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Car started');
  }

  // Implementation of stop()
  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Bike started');
  }

  // Implementation of stop()
  @override
  void stop() {
    print('Bike stopped');
  }

  @override
  void go();
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();
  bike.go();

  //can't be initialized
  // Vehicle vehicle = Vehicle();
}
