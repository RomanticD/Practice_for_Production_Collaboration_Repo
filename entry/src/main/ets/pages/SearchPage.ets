import { router } from '@kit.ArkUI'
import { listModel, ListModel, searchListModel } from '../models/listModel'

@Entry
@Component
struct SearchPage {

  @State displayedMatches : ListModel[] = listModel
  @State cateName: string = ''
  @State currentInputBoxContent: String = ""

  build() {
    Column() {
      Column() {
        Row() {
          Column() {
            Image($rawfile('back.png')).width(30)
          }
          .width(44).height(44).justifyContent(FlexAlign.Center)
          .onClick(() => {
            router.back()
          })

          Image($rawfile('search.png')).width(24)
            .padding(2)

          TextInput({ placeholder: 'Search anything'})
            .margin(3)
            .backgroundColor('#fff')
            .height('40vp')
            .fontSize('20fp')
            .enterKeyType(EnterKeyType.Search)
            .placeholderColor(Color.Grey)
            .placeholderFont({ size: '14vp', weight: 400 })
            .width('80%')
            .padding({ left: '35vp', right: '35vp' })
            .borderStyle(BorderStyle.Solid)
            // .borderWidth('1vp')
            // .borderColor(Color.Black)
            .onChange((currentContent) => {
              this.currentInputBoxContent = currentContent
              if (this.currentInputBoxContent.length != 0) {
                this.displayedMatches = searchListModel(currentContent)
              } else {
                this.displayedMatches = listModel
              }
            })
            .onSubmit((enterKey: EnterKeyType) => {

            })

        }
        .backgroundColor('#D3D3D3')
        .width('100%')
        .padding({right: 10})
        // .border({width: 1, color: '#ee7700'})
        .justifyContent(FlexAlign.Start)
        .borderRadius(6)


        Column() {
          Text(this.currentInputBoxContent == "" ? 'All Matches' : `Matched Result: ${this.displayedMatches.length.toString()}`).width('100%').height(44).border({width: {bottom: 1}, color: '#eee'}).fontColor('#999')

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
                .padding({left: 4, right:4})
                .borderRadius(6)
              })
            }
            .width('100%')
            .padding({left: 10, right: 10})
          }

          .scrollBar(BarState.Off)
          .edgeEffect(EdgeEffect.Spring)
        }
        .backgroundColor('#fff')
        .padding({left: 10})
      }
    }
  }

  async aboutToAppear() {
    // const params = router.getParams() as ParamsSearchModel
    // this.cateName = params.cateName
  }
}