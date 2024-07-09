import { cateModel, CateModel } from '../models/cateModel'
import { listModel, ListModel } from '../models/listModel'
import { router } from '@kit.ArkUI'

@Component
export struct SportsComponent{
  @Link
  cateIndex: number

  controller: TabsController = {} as TabsController

  build() {
    Column(){
      Swiper(){
        Image($rawfile('COPA.png')).width('100%').height(200)
        Image($rawfile('Esports.png')).width('100%').height(200)
        Image($rawfile('UEFA.png')).width('100%').height(200)
      }
      .autoPlay(true)
      .indicator(
        new DotIndicator()
          .itemWidth(8)
          .itemHeight(8)
          .selectedItemWidth(8)
          .selectedItemHeight(8)
          .color('#fff')
          .selectedColor('#ee742f')
      )

      Column() {
        Row() {
          Image($rawfile('search.png')).width(24)
            .padding(2)
          Text('Please input key words of matches.').fontColor('#999')
        }
        .backgroundColor('#fff')
        .border({width: 1, color: '#ee7700'})
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Start)
        .borderRadius(6)
      }
      .backgroundColor('#f5f5f5')
      .width('100%')
      .height(60)
      .padding(10)

      Column(){
        Text(' Hot Categories')
          .fontSize(20)
          .fontColor('#000')
          .width('100%')
          .backgroundColor('#fff6c869')
          .textAlign(TextAlign.Start)

        Grid(){
          ForEach(cateModel, (item: CateModel, index: number)=> {
            GridItem(){
              Column(){
                Image($rawfile(item.image)).borderRadius(8)
                  .width(30)
                  .height(30)
                  .margin({top: 4})
                Text(item.title).margin({top: 2})
              }
              .backgroundColor('#fff')
              .width(100)
              .height(55)
              .borderRadius(6)
            }
            .onClick(() => {
              this.cateIndex = index
              this.controller.changeIndex(1)
            })
          })
        }
        .margin({top: 10})
        .columnsTemplate('1fr 1fr 1fr')
        .rowsGap(10)
        .columnsGap(10)
        .padding({left: 10, right: 10})
        .width('100%')
        .height(130)

        Text(' Hot Matches')
          .fontSize(20)
          .fontColor('#000')
          .width('100%')
          .backgroundColor('#fff6c869')
          .textAlign(TextAlign.Start)
      }

      Scroll(){
          Column() {
            ForEach(listModel.slice(0, 10), (item: ListModel) => {
              GridItem() {
                Column() {
                  Row(){
                    Column(){
                      Image($rawfile(item.img1))
                        .height(50)
                        .width(50)
                        .padding(5)
                      Text(item.part1)
                    }
                    .layoutWeight(2)
                    Text('VS')
                      .textAlign(TextAlign.Center)
                      .layoutWeight(1)
                    Column(){
                      Image($rawfile(item.img2))
                        .height(50)
                        .width(50)
                        .padding(5)
                      Text(item.part2)
                    }
                    .layoutWeight(2)
                  }
                  .height(75)

                  Column() {
                    Text(item.name).fontSize(20)
                    Text(`Audience: ${item.audience}     Like: ${item.like}`)
                      .fontSize(14).fontColor('#666').margin({top: 3})
                  }
                  .backgroundColor('#fff')
                  .width('100%')
                  .height(60)
                  .justifyContent(FlexAlign.Center)
                  .borderRadius(6)
                }
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/Details',
                  params: {
                    id: item.id
                  }
                })
              })
              .backgroundColor('#ffe0dede')
              .margin(5)
              .borderRadius(6)
            })
          }
          .width('100%')
          .padding({left: 10, right: 10})
      }
      .height(250)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
    }
    .justifyContent(FlexAlign.Start)
    .height('100%')
    .width('100%')
  }
}