//
//  PopularMovies_from_TMDBUITestsLaunchTests.swift
//  PopularMovies-from-TMDBUITests
//
//  Created by Consultant on 1/8/23.
//


 /*
 2. UI Test
 -test the UI of your app
 
 /* Structure to test
  Naming Structure: test_UnitofWork_StateUnderTest_ExpectedBehaviour
  Naming Structure: test_[struct]_[ui component]_[expected result]
  Testing Structure: Given, when, Then
  
  */
 */

//COMMAND + SHIFT + k     :- to clean 


import XCTest

class when_add_new_task_screen_is_presented: XCTestCase {
    let app = XCUIApplication()
    
    func test_should_make_sure_screen_is_displayed() {
        
        //UI tests must lunch the application that they test
        func tearDownWithError() throws {
            app.launch()
        }
        //use recording to get started writing UI tests.
        //Use XCTAssert and related funcitons to verigy your tests produce the correct
        
        
        //In our App we have to get access to the tapped image, I need to tap on the image
        
        //Checking the image if is taped or not
       // let imageTapped = app.image["..."]
        //imageTapped.tap()
        
        //let addNavigationBarTitle = app.staticTexts["Popular"]
        //XCTAssert(addNavigationBarTitle.waitForExistance(timeout: 0.5))   //since it shows up, it takes time
        
        
    }
    
    
    
    
    
    
    
    
}
