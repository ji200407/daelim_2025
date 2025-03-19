void main(){
  try{
    throw Exception('error');
    print('Try');
  }catch(e){
    print('catch');
  }finally{
    print('finally');
  }
}