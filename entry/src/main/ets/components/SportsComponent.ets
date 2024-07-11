import { cateModel, CateModel, searchCateModel } from '../models/cateModel'
import { listModel, ListModel, searchListModel } from '../models/listModel'
import { router } from '@kit.ArkUI'


@Extend(Text) function subTitleFontStyle () {
  .fontSize(25)
  .padding({left: 10, top: 5})
  .fontWeight(FontWeight.Medium)
}

@Component
export struct SportsComponent{
  @Link
  cateIndex: number

  controller: TabsController = {} as TabsController

  @State currentInputBoxContent: String = ""
  @State displayedCategories : CateModel[] = cateModel
  @State displayedMatches : ListModel[] = listModel
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

          TextInput({ placeholder: 'Search anything'})
            .height('40vp')
            .fontSize('20fp')
            .enterKeyType(EnterKeyType.Search)
            .placeholderColor(Color.Grey)
            .placeholderFont({ size: '14vp', weight: 400 })
            .width('90%')
            .padding({ left: '35vp', right: '35vp' })
            .borderStyle(BorderStyle.Solid)
            .borderWidth('1vp')
            .borderColor(Color.Red)
            .onChange((currentContent) => {
              this.currentInputBoxContent = currentContent
              if (this.currentInputBoxContent.length != 0) {
                this.displayedCategories = searchCateModel(currentContent)
                this.displayedMatches = searchListModel(currentContent)
                // this.searchButtonText = '搜索'
                // this.showThinkWord = true
                // this.simulatorThinkWord()
              } else {
                this.displayedCategories = cateModel
                this.displayedMatches = listModel
              }
            })
            .onSubmit((enterKey: EnterKeyType) => {
              // this.submitData(new HistoryWordModel(0, this.currentInputBoxContent));
            })
            .onClick(() => {
              router.pushUrl({
                url: 'pages/SearchPage',
                params: {
                  cateName: '',
                  currPage: 'index'
                }
              })
            })
        }
        .backgroundColor('#fff')
        // .border({width: 1, color: '#ee7700'})
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Start)
        .borderRadius(6)
      }
      .backgroundColor('#f5f5f5')
      .width('100%')
      .height(60)
      .padding(10)

        Column() {
          Text('Hot Categories')
            .fontSize(20)
            .fontColor('#000')
            .width('100%')
            .backgroundColor('#fff6c869')
            .textAlign(TextAlign.Start)
            .subTitleFontStyle()

          Grid() {
            ForEach(this.displayedCategories, (item: CateModel, index: number) => {
              GridItem() {
                Column() {
                  Image($rawfile(item.image)).borderRadius(8)
                    .width(30)
                    .height(30)
                    .margin({ top: 4 })
                  Text(item.title).margin({ top: 2 })
                }
                .backgroundColor('#fff')
                .width(100)
                .height(55)
                .borderRadius(6)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/SportsPage',
                  params: {
                    cate: item.title.toLowerCase()
                  }
                })
              })
            })
          }
          .margin({ top: 10 })
          .columnsTemplate('1fr 1fr 1fr')
          .rowsGap(10)
          .columnsGap(10)
          .padding({ left: 10, right: 10 })
          .width('100%')
          .height(130)

        Text('Hot Matches')
          .fontSize(20)
          .fontColor('#000')
          .width('100%')
          .backgroundColor('#fff6c869')
          .textAlign(TextAlign.Start)
          .subTitleFontStyle()
      }

      Scroll(){
          Column() {
            ForEach(this.displayedMatches.slice(0, 10), (item: ListModel) => {
              GridItem() {
                Column() {
                  Row(){
                    Column(){
                      Image($rawfile(item.img1))
                        .height(50)
                        .width(50)
                        .padding(5)
                      Text(item.part1)
                        .fontWeight(FontWeight.Bold)
                    }
                    .layoutWeight(2)
                    Text('VS')
                      .textAlign(TextAlign.Center)
                      .layoutWeight(1)
                      .fontWeight(FontWeight.Bolder)
                    Column(){
                      Image($rawfile(item.img2))
                        .height(50)
                        .width(50)
                        .padding(5)
                      Text(item.part2)
                        .fontWeight(FontWeight.Bold)
                    }
                    .layoutWeight(2)
                  }
                  .margin({bottom: 10})
                  .height(75)

                  Column() {
                    Text(item.name).fontSize(20)
                      .height(50)

                    Text(`Audience: ${item.audience}     Like: ${item.like}`)
                      .fontSize(14).fontColor('#666').margin({bottom:10})
                  }
                  .margin(10)
                  .backgroundColor('#fff')
                  .width('100%')
                  .height(70)
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



