import UIKit
import PlaygroundSupport

class Elevator: UIViewController {
    
    var pushButton = 0 //行きたい階層のボタン
    var Human = 0//人間が今いる階層
    var thisisEv = 0//エレベーターが現在いる階数
    var humanWeight = 0//キロ//載る人の積載重量
    //let evSpeed //エレベーターの移動速度
//    enum floor {//階層の種別化
//        case one
//        case two
//    }
    override func viewDidLoad() {
       evTimer()
    }

    func evTimer() {
               Timer.scheduledTimer(
               timeInterval: 3,
               target: self,
               selector: #selector (self.movedEv),
               userInfo: nil,
               repeats: true)
    }

    @objc func movedEv(Human:Int,thisisEv:Int)  {
        switch Human  {
        case 1:
            if thisisEv == 1  {
                print("ドアが開きます")
                print("何階へ行きますか?")
            }else if thisisEv != 1 {
                print("エレベーターを1階へ移動させます")
            }
        case 2:
            if thisisEv == 2 {
                print("ドアが開きます")
            }else if thisisEv != 2 {
                print("エレベーターを2階へ移動させます")
            }
        default:
            print("エレベーターを待機させています")
        }
    }
    func movedHuman(pushButton:Int) {
        guard humanWeight <= 300 else {
        print("室内荷重が上限を超えています")
                return
        }
        print("\(pushButton)階へ行きます\nドアを閉じます")

}
}
let elevator = Elevator()
elevator.humanWeight = 120
elevator.movedEv(Human:1,thisisEv:1)
elevator.movedHuman(pushButton:2)
elevator.view.backgroundColor = UIColor.gray

