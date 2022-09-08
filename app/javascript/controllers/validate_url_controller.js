import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="validate-url"
export default class extends Controller {
  static targets = ["form", "button", "hint"]

  connect() {
    console.log(this.formTarget)
  }

  check(event) {
    const regex = /https:\/\/www.socialter.fr\//
    if (regex.test(event.target.value.trim())) {
      this.buttonTarget.classList.remove('d-none');
      this.buttonTarget.classList.remove('disabled');
      this.hintTarget.classList.add('d-none');
    } else {
      this.buttonTarget.classList.remove('d-none');
      this.buttonTarget.classList.add('disabled');
      this.hintTarget.classList.remove('d-none');
    }
  }
}
