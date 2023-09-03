//
//  ViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 01/09/2023.
//

import UIKit


class OnboardingViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnNext: UIButton!
    
    var objects: [OnboardingScreens] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == objects.count - 1 {
                btnNext.setTitle("Get Started", for: .normal)
            } else {
                btnNext.setTitle("Next", for: .normal)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func pageControl(_ sender: Any) {
       // pageControl.currentPage = currentPage

    }
    
    @IBAction func btnNext(_ sender: Any) {
        if currentPage == objects.count - 1 {
            let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
            vc?.push()
            
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage , section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
            
    }
    
}

extension OnboardingViewController {
    func setupView(){
        collectionView.registerXib(cell: OnboardingCollectionViewCell.self)
        objects.append(OnboardingScreens.init(title: "Delicious Dishes", descriptions: "Experience a variety of amazing dishes from different cultures around the world.", image: "bgBurger"))
        objects.append(OnboardingScreens.init(title: "World-Class Chefs", descriptions: "Our dishes are prepared by only the best.", image: "bgHat"))
        objects.append(OnboardingScreens.init(title: "Instant World-Wide Delivery", descriptions: "Your orders will be delivered instantly irrespective of your location around the world.", image: "bgDelivery"))
        pageControl.numberOfPages = objects.count 
    }
    
    func localized(){
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: OnboardingCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.id, for: indexPath) as! OnboardingCollectionViewCell
        let object = self.objects[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell
    }
}
    extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout ,sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let width: CGFloat = (collectionView.frame.width - 10 )
//            let hight: CGFloat = 644
            let size: CGSize = CGSize.init(width: collectionView.frame.width, height: collectionView.frame.height)
            return size
            
        }
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let width = scrollView.frame.width
            currentPage = Int(scrollView.contentOffset.x / width)

        }
    
    
    
    
}

