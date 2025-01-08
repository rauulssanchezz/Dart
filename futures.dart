void main() async {

  print('Inicio del main');

  try{
      final value = await httpGet(url: 'https://api.nasa.com/aliens');
    print('Éxito: $value');
  } on Exception catch(e){
    print('Tenemos una Exception: $e');

  } catch (e){
    print('Tenemos un error: $e');

  } finally {
    print('Fin del try catch');

  }
    
  print('Fin del main');

}

Future httpGet({String url=''}) async {

  await Future.delayed(const Duration(seconds: 1), () => 'Respuesta de la peticion http');

  throw Exception('No hay parámetros en el url');

  //return 'Tenemos un valor en la peticion';

}