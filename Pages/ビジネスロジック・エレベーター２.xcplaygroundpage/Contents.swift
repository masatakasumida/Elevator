//仕様を考えてリスト化
//・階数は3階とする




class Elevator {
    //乗りたい階層
    var inputfloor = 0
    
    func pushButton(_ one:Int,_ two:Int,_ three:Int) -> String {
        if inputfloor == 1 {
           return ("1階に行きます")
        }
       
  return ("3階へ行きます")  }}

let elevator = Elevator()
print(elevator.pushButton()

