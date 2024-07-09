@Entry
@Component
struct Third {
  build() {
    Text(){
      Span('Hello')
    }
      .backgroundColor('#f9efd4')
      .width('100%')
      .height(50)
      .fontSize(20)
      .textOverflow({overflow: TextOverflow.Ellipsis})
      .maxLines(1)
      .textAlign(TextAlign.Center)
  }
}