import { tabsModel, TabsModel } from '../models/tabsModel'
import { SportsComponent } from '../components/SportsComponent'
import { ListComponent } from '../components/ListComponent';
import { Mine } from '../components/MineComponent'

@Extend(Text) function mainStyle(){
  .fontSize(25)
  .fontColor('#ff2fb8')
  .width('100%')
  .textAlign(TextAlign.Center)
  .border({width: 2, color: '#fffcf7'})
  .fontWeight(FontWeight.Bold)
  .padding('10px')
}


@Entry
@Component
struct homePage {
  @State
  mainName: string = 'Bo Sports Center'
  @State
  currentIndex: number = 0
  @State
  cateIndex: number = 0

  private controller: TabsController = new TabsController()

  @Builder
  tabBuilder(item: TabsModel, index: number){
    Column(){
      Image($rawfile(item.image))
        .width(28)
        .height(28)
      Text(item.title).fontColor(this.currentIndex == index ? '#000' : '#999')
        .fontSize(18)
    }.backgroundColor(this.currentIndex == index ? '#ffeeeb2f' : '#adf6bd5a')
    .width('100%')
    .height('100%')
  }

  build() {
    Column(){
      Text(this.mainName)
        .mainStyle()

      Tabs({
        barPosition: BarPosition.End,
        index: this.currentIndex,
        controller: this.controller
      }){
        ForEach(tabsModel, (item: TabsModel, index: number) => {
          TabContent(){
            if(index == 0){
              SportsComponent({
                controller: this.controller,
                cateIndex: this.cateIndex
              })
            } else if(index == 1){
              ListComponent({
                cateIndex: this.cateIndex
              })
            } else {
              Mine()
            }
          }.tabBar(this.tabBuilder(item, index))
        })
      }
      .width('100%')
      .height('750')
      .backgroundColor('#adf6bd5a')
      .onChange((index) => {
        this.currentIndex = index
      })
    }
  }
}