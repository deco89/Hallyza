import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["alert"]

  connect() {
    const delay = this.data.get("delay") || 1000
    setTimeout(() => {
      this.removeAlert()
    }, delay)
  }

  removeAlert() {
    this.element.remove()
  }

  dismiss() {
    this.removeAlert()
  }
}
