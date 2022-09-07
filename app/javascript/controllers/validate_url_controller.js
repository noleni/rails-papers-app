import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="validate-url"
export default class extends Controller {
  static targets = ["form", "button"]

  connect() {
    console.log(this.formTarget)
  }

  check(event) {
    const regex = /https:\/\/www.socialter.fr\//
    let searchParams = new URLSearchParams(event.target.value.trim())
    if (regex.test(event.target.value)) {
      this.buttonTarget.classList.remove('d-none');
      this.buttonTarget.classList.remove('disabled');
    } else {
      this.buttonTarget.classList.remove('d-none');
      this.buttonTarget.classList.add('disabled');
    }
  }
}
