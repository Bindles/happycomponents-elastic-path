import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="item-sort"
export default class extends Controller {
  static targets = ["seltect"]
  connect() {
    console.log("Hi Stimulus", this.element);
  }
}
