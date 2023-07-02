import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.footer = document.querySelector('.footer')
    this.observer = new IntersectionObserver(entries => {
      if (entries[0].isIntersecting) {
        this.footer.style.display = 'flex'
      } else {
        this.footer.style.display = 'none'
      }
    })

    this.observer.observe(document.querySelector('#page-bottom'))
  }

  disconnect() {
    this.observer.disconnect()
  }
}
