import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "card-front" ]
  static classes = [ "card-front" ]

  click(event) {
    const card = event.target.parentElement
    const card_front = card.querySelector(".card-front")
    const card_answer = card.querySelector(".card-answer")
    if (card_front && card_answer) {
      card_front.classList.toggle("col_rotate")
      card_answer.classList.toggle("col_unrotate")
    }
  }
}

