// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="notifications"
// export default class extends Controller {
//   connect() {
//   }
// }

// import { Controller } from "@hotwired/stimulus"
// import Notification from 'stimulus-notification'

// application.register('notification', Notification)

// // Connects to data-controller="notifications"
// export default class extends Controller {
//   connect() {
//   }
// }

// import { Application } from '@hotwired/stimulus'
// import Notification from 'stimulus-dropdown'

// const application = Application.start()
// application.register('notification', Notification)





import Notification from 'stimulus-notification'

export default class extends Notification {
  connect() {
    super.connect()
    console.log('Do what you want here.')
  }
}