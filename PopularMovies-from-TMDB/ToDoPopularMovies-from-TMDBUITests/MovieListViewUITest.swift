//
//  MovieListViewUITest.swift
//  ToDoPopularMovies-from-TMDBUITests
//
//  Created by Consultant on 1/9/23.
//

import XCTest
/*
2. UI Test:-test the UI of your app

Structure to test
 Naming Structure: test_UnitofWork_StateUnderTest_ExpectedBehaviour
 Naming Structure: test_[struct]_[ui component]_[expected result]
 Testing Structure: Given, when, Then
 
 */

final class MovieListViewUITest: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func test_should_make_sure_popular_cell_chosen() {
        
        //Given
        let cell = app.collectionViews.scrollViews.otherElements.buttons["Avatar: The Way of Water"]
        
        //When
        cell.tap()

        //Then
        XCTAssertTrue(!cell.exists)
    }
    
    func test_should_make_sure_back_is_displayed() {
        
        //cells.scrollVIews
        //scrollViews
        //let scrollViews = app.collectionViews/*@START_MENU_TOKEN@*/.cells.scrollViews/*[[".cells.scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.otherElements
        
        //Given
        let scrollViews = app.collectionViews.cells.scrollViews.otherElements
        
        //when
        let selectCell = scrollViews.buttons["Avatar: The Way of Water"]
        selectCell.tap()
        
        let back = app.navigationBars["Avatar: The Way of Water"]
        let selected = back.buttons["The Movie DB"]
        
        //Then
        selected.tap()

        XCTAssertTrue(!selected.exists)
        
        
    }
    
    
    
}
