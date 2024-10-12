Recipe App

This is a SwiftUI-based recipe app that displays a list of recipes fetched from a remote API. The app uses MVVM architecture and leverages modern Swift concurrency with async/await. Unit tests have been written to ensure robustness in key areas, including networking, repository handling, and view model logic.

Steps to Run the App

	1.	Clone the Repository:

git clone https://github.com/abdulrahim46/RecipeApp.git


	2.	Open the Project:
	•	Open the .xcodeproj or .xcworkspace file in Xcode.
	3.	Install Dependencies (if using external libraries):
	•	If using external libraries (like Kingfisher), ensure you have the required dependencies installed via Swift Package Manager. Xcode will handle this automatically if the packages are listed in the Package.swift file.
	4.	Run the App:
	•	Select your target simulator (or physical device).
	•	Press Cmd + R to build and run the app.
	5.	Run Tests:
	•	To run the unit tests, press Cmd + U or go to Product > Test in the menu bar.

Focus Areas

1. Architecture & Separation of Concerns:

	•	I focused heavily on the MVVM architecture to ensure a clear separation between the business logic, networking, and UI. This allows for better scalability, testability, and maintainability.

2. Network and Data Handling:

	•	I designed a modular and generic NetworkService to make the networking layer reusable across different feature modules. By abstracting the API calls into a generic network service, the project is ready for future scalability.

3. Testing:

	•	Unit tests were a primary focus to ensure that key components of the app are reliable. I made sure to cover the network layer, repository, and view model using dependency injection for mocking services.

4. Performance:

	•	I chose to use Kingfisher for image loading and caching to ensure that images are fetched efficiently and cached both in memory and on disk. This prevents unnecessary bandwidth usage and improves performance.

Time Spent

I spent approximately 4 - 5 hours on this project. Here’s how the time was allocated:

	•	Setup & Architecture Planning
	•	Implementing the Core Features
	•	Network Layer
	•	Repository
	•	ViewModel
	•	SwiftUI Views
	•	Writing Unit Tests
	•	Final Testing & Debugging

Trade-offs and Decisions

	•	AsyncImage vs Kingfisher: I opted to use Kingfisher for image caching instead of relying on SwiftUI’s native AsyncImage. While AsyncImage is simple to use, it lacks built-in caching capabilities. Kingfisher provides more control over caching and significantly boosts performance for image-heavy applications.
	•	UI Tests: Given the project guidelines, I chose to focus solely on unit tests and skipped UI and integration tests, as requested. UI tests would normally be an additional layer of verification, but I prioritized business logic validation due to time constraints.
	•	Networking Error Handling: The current implementation includes basic error handling, but in a production app, we could improve the user experience by showing more detailed error states in the UI.

Weakest Part of the Project

The weakest part of the project is the lack of complex UI error handling. While basic error messages are implemented, I did not have time to create detailed user-friendly error states or offline modes. This could be expanded upon for a better user experience in a real-world app.

External Code and Dependencies

I used Kingfisher for image caching:

	•	Kingfisher: Kingfisher is a popular image downloading and caching library that is highly efficient and integrates well with SwiftUI.

No other external dependencies were used.

Additional Information

	•	Concurrency: Swift concurrency (async/await) was used to fetch data from the API, making it easier to handle network operations in a non-blocking manner.
	•	Scalability: The project is built with scalability in mind, especially the network service, which can be reused in other feature modules or future API endpoints.

Overall, this project serves as a foundation for a scalable and performant recipe app. Future enhancements could focus on more advanced UI features, additional tests, and further user-friendly error handling.

You can adjust this README as needed based on your actual approach and any additional features or information you may have. Let me know if you’d like any more adjustments!
