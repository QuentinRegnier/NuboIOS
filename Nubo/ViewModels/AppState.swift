import Combine
import Foundation

class AppState: ObservableObject {
    @Published var isLoading = true
    @Published var isLoggedIn = false

    init() {
        preLoadApp()
    }

    func preLoadApp() {
        // Charger le squelette : MainTab, Messages, Profile, Settings
        //AppLoader.shared.prepareSkeleton {
        //    DispatchQueue.main.async {
        //        // Vérifier compte
        //        self.isLoggedIn = AuthService.shared.isUserLoggedIn()
        //        self.isLoading = false
        //    }
        //}
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.isLoggedIn = false // ou true, juste pour test
            self.isLoading = false
        }
    }
}
