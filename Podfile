# Uncomment the next line to define a global platform for your project
# platform :ios, '10.0'

workspace 'DataPersistenceWorkSpace.xcworkspace'

project 'SimpleExample/SimpleExample.xcodeproj'
project 'ComplexExample/ComplexExample.xcodeproj'
project 'MianProject/MianProject.xcodeproj'


abstract_target 'CommonPods' do  
    
    #公用pods
    use_frameworks!
    
    pod 'SnapKit'  
   

    #project分别处理

    target 'SimpleExample' do
        platform :ios, '10.0'
        project 'SimpleExample/SimpleExample.xcodeproj'
        
        
    end

    target 'ComplexExample' do
        platform :ios, '10.0'
        project 'ComplexExample/ComplexExample.xcodeproj'
        
        pod 'RealmSwift'
        pod 'FMDB'
        
    end
    
    target 'MianProject' do
        platform :ios, '10.0'
        project 'MianProject/MianProject.xcodeproj'
    end
    
end
