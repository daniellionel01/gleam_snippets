import gleam/io
import gleam/list

pub fn main() {
  io.println("hello snippets")
}

pub fn defer(cleanup: fn() -> Nil, body: fn() -> a) -> a {
  let res = body()
  cleanup()
  res
}

pub fn drop_index(lst: List(a), index: Int) -> List(a) {
  list.index_fold(lst, [], fn(acc, cur, idx) {
    case index == idx {
      True -> acc
      False -> list.append(acc, [cur])
    }
  })
}
