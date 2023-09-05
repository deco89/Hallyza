import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["link"];

  connect() {
    this.checkScrollPosition();
    window.addEventListener("scroll", () => this.checkScrollPosition());
  }

  disconnect() {
    window.removeEventListener("scroll", this.checkScrollPosition);
  }


  checkScrollPosition() {
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    const scrollHeight = document.documentElement.scrollHeight;
    const viewportHeight = document.documentElement.clientHeight;
    const bottomOffset = 10;

    if (scrollTop + viewportHeight >= scrollHeight - bottomOffset) {
      this.linkTarget.classList.remove("d-none");
    } else {
      this.linkTarget.classList.add("d-none");
    }
  }
}
