void main(){

  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  chargePhone(windPlant);
  chargePhone(nuclearPlant);

}

void chargePhone ( EnergyPlant plant){

  if ( plant.energyLeft < 10){
   print('Not enough energy left');

  } else {
    plant.consumeEnergy(10);
  }

}

enum PlanType { nuclear, wind, water}

abstract class EnergyPlant {

  double energyLeft;
  final PlanType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  }); 

  void consumeEnergy( double amount );

}

class WindPlant extends EnergyPlant{

  WindPlant({ required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlanType.wind);
    
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
    print('Wind plant has $energyLeft energy left');
  }
}

class NuclearPlant implements EnergyPlant{

  @override
  double energyLeft;

  @override
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
    print('Nuclear plant has $energyLeft energy left');
  }

}