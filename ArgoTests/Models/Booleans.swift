import Argo
import Curry

struct Booleans: Decodable {
  let bool: Bool
  let number: Bool

  static func decode(_ json: JSON) -> Decoded<Booleans> {
    return curry(Booleans.init)
      <^> json <| "realBool"
      <*> json <| "numberBool"
  }
}
