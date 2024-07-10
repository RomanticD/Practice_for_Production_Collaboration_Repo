import { promptAction, router } from '@kit.ArkUI'
import { ListModel, listModel } from '../models/listModel'

@Entry
@Component
struct Favorites {

  @State
  favoritesList: ListModel[] = [] as ListModel[]

  build() {
    Column() {
      Stack() {
        Row() {
          Image($rawfile('back.png')).width(28)
            .onClick(() => {
              router.back()
            })
          Text('Cancel all')
            .fontColor('#fff')
            .height('100%')
            .onClick(() => {
              // TODO: 添加确认框
              AppStorage.setOrCreate('favorites', [])
              this.favoritesList = []
            })
        }
        .width('100%').zIndex(1)
        .height('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({left: 10, right: 10})

        Text('My favorites')
          .width('100%').textAlign(TextAlign.Center)
          .fontSize(18).fontColor('#fff')
      }
      .height(44)
      .backgroundColor('#ee7700')
      .width('100%')

      List({space: 16}) {
        ForEach(this.favoritesList, (item: ListModel) => {
          ListItem() {
            Column() {
              //Image(item.img)
              //.width('100%')
              Row() {
                Text(item.name).fontSize(18)
                //Image($rawfile('like_fill.png')).width(24)
              }
              .height(50)
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .padding({left: 10, right: 10})
              .backgroundColor('#fff')
            }
            .onClick(() => {
              router.pushUrl({
                url: 'pages/Details',
                params: {
                  id: item.id
                }
              })
            })
          }
        })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
    }
    .height('100%')
    .backgroundColor('#f5f5f5')
  }

  aboutToAppear(): void {
    const ids: string[] = AppStorage.get('favorites') || []
    for(let id of ids) {
      let result = listModel.find((item: ListModel) => item.id == id)
      if (result) {
        this.favoritesList.push(result)
      }
    }
  }
}