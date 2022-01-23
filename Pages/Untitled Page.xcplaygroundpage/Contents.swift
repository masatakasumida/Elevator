//仕様を考えてリスト化
//・開けるボタンを押すとドアが開く
//・階数を選択→閉めるボタンを押すとドアが閉まる
//・乗りたい階層から乗る事が出来る
//・階数は3階とする
//・対象の階に着くとドアが開く
//・誰も乗っていない時には1階に行く


//例外ケースを考えてリスト化
//・室内の荷重が300キロ以上になるとエラー
//・誤って任意の階とは違う階を押した場合に、もう一度階のボタンを押すとキャンセルできる
//・ドアが開いて10秒以上何も操作がないと自動でドアが閉まる
//・ドアが閉まる際に何か人や物があるとドアが開く
class Elevator {
    
    var pushButton = 0 //行きたい階層のボタン
    let Human = 1...3 //人間が今いる階層
    var thisisEv = 0//エレベーターが現在いる階数
    var humanWeight = 85//キロ//載る人の積載重量
    enum floor {//階層の種別化
        case one
        case two
        case three
    }
//人間が今いる階層にエレベーターを移動させる。
    func moveEv(Human: Int) {
        switch Human {
        case 1:
            self.thisisEv = 1
            print("エレベーターを1階へ移動させます")
        case 2:
            self.thisisEv = 2
            print("エレベーターを2階へ移動させます")
        case 3:
            self.thisisEv = 3
            print("エレベーターを3階へ移動させます")
        default:
            print("この階にエレベーターは移動できません")
        }
    }
//エレベーターに乗ることが出来るメソッドを定義
//    func openDoor(Human: Int,thisisEv: Int)  {
//        if Human == thisisEv {
//            print("ドアが開きます")
//        }
//        else {
//            print("少々お待ちください。")
//        }
//    }

}
let elevator = Elevator()//インスタンス化
//let door = elevator.openDoor(Human: 1,thisisEv: 1)
elevator.moveEv(Human:4)
//print(door)
