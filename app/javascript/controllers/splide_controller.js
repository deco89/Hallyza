import { Controller } from '@hotwired/stimulus';
import Splide from '@splidejs/splide';

export default class extends Controller {
  connect() {
    const splide = new Splide(this.element, {
      // type: 'loop',
      perPage: 3,
      focus  : 'center',
      autoWidth: true,
      pauseOnHover: false,
      interval: 2000,
    });

    splide.mount();
  }
}
