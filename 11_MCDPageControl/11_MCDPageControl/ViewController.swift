//
//  ViewController.swift
//  11_MCDPageControl
//
//  Created by 정건휘 on 03/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialPageControl

class ViewController: UIViewController {

   let pageControl = MDCPageControl()
   let scrollView = UIScrollView()
   let pages = NSMutableArray()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      scrollView.delegate = self as? UIScrollViewDelegate
      view.addSubview(scrollView)
      
      pageControl.numberOfPages = 3
      
      let pageControlSize = pageControl.sizeThatFits(view.bounds.size)
      pageControl.frame = CGRect(x: 0, y: view.bounds.height - pageControlSize.height, width: view.bounds.width, height: pageControlSize.height)
      
      pageControl.addTarget(self, action: #selector(didChangePage), for: .valueChanged)
      pageControl.autoresizingMask = [.flexibleTopMargin, .flexibleWidth]
      view.addSubview(pageControl)
   }
   
   @objc func didChangePage(sender: MDCPageControl){
      var offset = scrollView.contentOffset
      offset.x = CGFloat(sender.currentPage) * scrollView.bounds.size.width;
      scrollView.setContentOffset(offset, animated: true)
   }
   
   func scrollViewDidScroll(_ scrollView: UIScrollView) {
      pageControl.scrollViewDidScroll(scrollView)
   }
   
   func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
      pageControl.scrollViewDidEndDecelerating(scrollView)
   }
   
   func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
      pageControl.scrollViewDidEndScrollingAnimation(scrollView)
   }

}

