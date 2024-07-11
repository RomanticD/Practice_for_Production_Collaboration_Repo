import { router } from '@kit.ArkUI'

@Component
export struct Mine {
  @Builder
  itemBuilder(icon: string, title: string, top:number,callback: () => void) {
    Column() {
      Row() {
        Image($rawfile(icon))
          .width(28)
          .margin({ left: 16, right: 10 })
        Row() {
          Text(title).fontSize(18)
            .layoutWeight(1)
          Image($rawfile('right.png'))
            .width(28)
            .margin({ right: 10 })
        }
        .height('100%')
        .layoutWeight(1)

      }
      .height(60)
      .onClick(callback)
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .backgroundColor('#fff')
  }

  build() {
    Column() {
      Column() {
        Stack() {
          Image($rawfile('头像.jpeg'))
            .height(100)
            .width(100)
            .objectFit(ImageFit.Cover)
            .clip(new Circle({ width: 100, height: 100 }))
        }
        .width(112)
        .height(112)
        .borderWidth(12)
        .borderColor(Color.Orange)
        .borderRadius(56)
        .margin(10)
        .padding(20)

        this.itemBuilder('070_喜欢.png', 'like',20, () => {
          router.pushUrl({
            url: 'pages/Favorites'
          })
        })
        this.itemBuilder('more.png', 'more',20, () => {
          router.pushUrl({
            url: 'pages/More'
          })
        })
        this.itemBuilder('070_银行卡.png', 'bank card', 40, () => {})
        this.itemBuilder('070_设置.png', 'setting',40, () => {})
        this.itemBuilder('070_我的.png', 'mine',  40,() => {})
      }
    }
    .justifyContent(FlexAlign.Start)
    .height('100%')
  }
}
