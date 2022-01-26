import UIKit
import PlaygroundSupport
import CoreFoundation

class Elevator: UIViewController {
    
    
    var pushButton = 0 //行きたい階層のボタン
    var human = 0//人間が今いる階層
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
               timeInterval: 12,
               target: self,
               selector: #selector (self.movedEv),
               userInfo: nil,
               repeats: true)
    }
    

    @objc func movedEv(human:Int,thisisEv:Int)  {
        switch human  {
        case 1:
            if thisisEv == 1 {
                print("ドアが開きます")
            if humanWeight <= 300 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    print("何階へ行きますか?")
                    }}
                
            } else if thisisEv != 1 {
                print("エレベーターを1階へ移動させます")
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                    print("ドアが開きます")
            }
                
            }
        case 2:
            if thisisEv == 2 {
                print("ドアが開きます")
                if humanWeight <= 300 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    print("何階へ行きますか?")
                    }}
                
            }else if thisisEv != 2 {
                print("エレベーターを2階へ移動させます")
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    print("ドアが開きます")
                }
                
            }
        default:
            print("エレベーターを待機させています")
        }
    }
    
    func movedHuman(pushButton:Int) {
//        guard pushButton != human else {
//            print("指定のフロアーに到着しています")
//                return
//        }
        guard humanWeight <= 300 else {
        print("室内荷重が上限を超えています")
                return
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            print("\(pushButton)階へ行きます")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            print("ドアを閉じます")
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            print("\(pushButton)階に着きました")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            print("ドアを開けます")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.0) {
            print("ドアを閉めました")
        }

}
}
let elevator = Elevator()
elevator.humanWeight = 100
elevator.movedEv(human:1,thisisEv:2)
elevator.movedHuman(pushButton:2)
elevator.view.backgroundColor = UIColor.gray
 
  
