void main(arg) {
  Map persona = {
    'nombre': 'Fernando',
    'edad': 35,
    'soltero': false,
    true: false,
    1: 100,
    2: 300,
    3: 600,
    4: 1800,
  };

  persona.addAll({5: 'Se te apago la moto'});

  print(persona[5]);
}
