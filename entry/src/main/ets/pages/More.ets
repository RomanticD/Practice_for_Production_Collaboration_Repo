import { RequestComponent } from '../components/RequestComponent';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct More {
  @State message: string = 'More Matches';

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Column() {
          Image($rawfile('back.png')).width(28)
        }
        .width(44)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .zIndex(1)
        .onClick(() => {
          router.back()
        })

        Text(this.message)
          .textAlign(TextAlign.Center)
          .height('100%')
          .width('100%')
          .fontSize(18)
          .fontColor('#fff')
      }
      .height(44)
      .backgroundColor('#ee7700')
      .width('100%')
      RequestComponent()
    }
    .height('100%')
    .width('100%')
  }
}