import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var audioPlayer: AVAudioPlayer!
    let songArray = ["1 One Dream", "2 Love Two You", "3 Mikazuki no veil", "4 Four Leaf Ring", "5 maybe", "6 June is natural", "7 SEPTET for", "8 Up to the Nines", "9 Associate", "10 my 10plate", "11 100 Happiness", "12 Sennen Saki mo Zutto"]
    var selectMusicFile = ""
    
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playSongButton(_ sender: UIButton) {
        selectMusicFile = songArray[sender.tag]
        let name:String = " "
        let music:String = " "
        switch (sender.tag) {
        case 0:
            play()
            musicLabel.text = "One Dream"
            artistLabel.text = "Izumi Iori"
            print("\(name) , \(music)")
        case 1:
            play()
            artistLabel.text = "Nikaido Yamato"
            musicLabel.text = "Love Two You"
            print("\(name) , \(music)")
        case 2:
            play()
            artistLabel.text = "Izumi Mitsuki"
            musicLabel.text = "Mikazuki no veil"
            print("\(name) , \(music)")
        case 3:
            play()
            artistLabel.text = "Yotsuba Tamaki"
            musicLabel.text = "Four Leaf Ring"
            print("\(name) , \(music)")
        case 4:
            play()
            artistLabel.text = "Osaka Sougo"
            musicLabel.text = "Maybe"
            print("\(name) , \(music)")
        case 5:
            play()
            artistLabel.text = "Rokuya Nagi"
            musicLabel.text = "June is Natural"
            print("\(name) , \(music)")
        case 6:
            play()
            artistLabel.text = "Nanase Riku"
            musicLabel.text = "SEPTET for..."
            print("\(name) , \(music)")
        case 7:
            play()
            artistLabel.text = "Kujou Tenn"
            musicLabel.text = "Up to the Nine"
            print("\(name) , \(music)")
        case 8:
            play()
            artistLabel.text = "Yaotome Gaku"
            musicLabel.text = "Associate"
            print("\(name) , \(music)")
        case 9:
            play()
            artistLabel.text = "Tsunashi Ryunosuke"
            musicLabel.text = "My 10 plate"
            print("\(name) , \(music)")
        case 10:
            play()
            artistLabel.text = "Momo"
            musicLabel.text = "Mikazuki no veil"
            print("\(name) , \(music)")
        case 11:
            play()
            artistLabel.text = "Yuki"
            musicLabel.text = "Sennen Saki mo Zutto"
            print("\(name) , \(music)")
        default:
            break
        }
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        if audioPlayer.isPlaying == true{
            audioPlayer.pause()
        }else if audioPlayer.isPlaying == false{
            audioPlayer.play()
        }
    }

    func play(){
        let musicURL = Bundle.main.url(forResource: selectMusicFile, withExtension: ".mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: musicURL!)
            guard let audioPlayer = audioPlayer else {
                return
            }
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }catch let error as Error{
            print(error)
        }
    }
}

