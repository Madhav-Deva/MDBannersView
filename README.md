# MDBannersView
A swift package with an iOS UI component that loads and displays images from remote urls, local assets and displays in a slide-show form with an auto scroll feature. 



https://user-images.githubusercontent.com/6660695/152686693-72f8feed-7b64-4e95-858a-ef75fcf4ae3f.mov



### Supports iOS 13+


## Installation
### Swift Package Manager (SPM)

You can use The Swift Package Manager to install MDBannersView by adding it to your Package.swift file:

    import PackageDescription

    let package = Package(
        name: "Your App",
        targets: [],
        dependencies: [
            .Package(url: "https://github.com/Madhav-Deva/MDBannersView.git", .upToNextMajor(from: "1.0.2"))
        ]
    )
    
        
[OR]

- File > Swift Packages > Add Package Dependency
- Add `https://github.com/Madhav-Deva/MDBannersView.git`
- Select "Up to Next Major" with "1.0.2"
    



### CocoaPods

     pod 'MDBannersView'

    
    
    
## Usage
In Storyboard, add UIView of desired size. Change its Custom Class name to BannerView and Module to MDBannersView. Have this as reference in your viewcontroller. Below is the sample code, to load local assets you can create a function like loadLocalImages(). To download and display images from url, you can use a function like loadRemoteImages(). 


    import MDBannersView

    @IBOutlet weak var slidesView: BannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadRemoteImages()
    }

    // To Download images using image urls
    private func loadRemoteImages() {
        let remoteImageUrls = ["https://cdn.pixabay.com/photo/2017/01/18/16/46/hong-kong-1990268_1280.jpg",
        "https://cdn.pixabay.com/photo/2016/11/13/12/52/kuala-lumpur-1820944_1280.jpg",
        "https://cdn.pixabay.com/photo/2014/01/30/18/26/skyline-255116_1280.jpg",
        "https://cdn.pixabay.com/photo/2018/04/25/09/26/eiffel-tower-3349075_1280.jpg",
        "https://cdn.pixabay.com/photo/2021/10/28/09/59/city-6749295_1280.jpg"]
        self.slidesView.loadImages(imageUrls: remoteImageUrls)
        self.slidesView.didSelectItemAt = { indexPath in
            debugPrint(indexPath)
        }
        
    }
    
    // To display images from assets
    private func loadLocalImages() {
        let imageNames = ["img_1", "img_2", "img_3", "img_4", "img_5"]  // Images names used in your assets
        self.slidesView.setImage(names: imageNames)
        self.slidesView.didSelectItemAt = { indexPath in
            debugPrint(indexPath)
        }
    }




BannersView component comes with default caching and shimmer animation(used when images are downloaded using urls). You can customise the component by accessing the public functions.
