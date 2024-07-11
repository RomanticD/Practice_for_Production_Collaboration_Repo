import { RequestComponent } from '../components/RequestComponent';

@Entry
@Component
struct More {
  @State message: string = 'More Matches';

  build() {
    Column() {
      Text(this.message)
        .id('MoreHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      RequestComponent()
    }
    .height('100%')
    .width('100%')
  }
}