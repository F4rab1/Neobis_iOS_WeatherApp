//
//  SearchView.swift
//  WeatherApp
//
//  Created by Фараби Иса on 20.05.2023.
//

import UIKit
import SnapKit

class SearchView: UIView {
    
    let gradientLayer = CAGradientLayer()
    
    let closeButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "ic-close"), for: .normal)
        return button
    }()
    
    let backgroundView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [
            UIColor(red: 48/255, green: 162/255, blue: 197/255, alpha: 1.0).cgColor,
            UIColor(red: 0/255, green: 36/255, blue: 47/255, alpha: 1.0).cgColor
        ]
        layer.addSublayer(gradientLayer)
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        backgroundView.addSubview(closeButton)
        addSubview(backgroundView)
    }
    
    func setupConstraints(){
        backgroundView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(350)
        }
        
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(backgroundView.snp.topMargin).offset(22)
            make.trailing.equalTo(backgroundView.snp.trailingMargin).offset(-17)
        }
    }

}
