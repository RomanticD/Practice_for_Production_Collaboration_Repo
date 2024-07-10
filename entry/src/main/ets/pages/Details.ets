import { promptAction, router, } from '@kit.ArkUI'
import { ParamsModel } from '../models/paramsModel'
import { ListModel, listModel } from '../models/listModel'
import {ColorModel} from '../models/ColorModel'

@Entry
@Component
struct Details {
  @State r: ListModel = {} as ListModel
  @State currentColor: string = '#ee7700';
  @State favorites: Array<string> = [];
  @State buttonColor: Array<string> = [];
  @State result: string[] = []

  // 在页面渲染前，执行初始化逻辑
  aboutToAppear(): void {
    const params: ParamsModel = router.getParams() as ParamsModel
    const result = listModel.find((item: ListModel) => item.id == params.id)
    this.r = result as ListModel

  }

  build() {
    Column() {
      /*
       * 导航区
       */
      Stack({alignContent: Alignment.TopStart}) {
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

        Text(this.r.name.length < 15 ? this.r.name : this.r.name.slice(14,this.r.name.length - 1 ))
          .textAlign(TextAlign.Center)
          .height('100%').width('100%')
          .fontSize(18)
          .fontColor('#fff')
      }
      .height(44)
      .backgroundColor('#ee7700')
      .width('100%')


      Image($rawfile(`${this.r.cate}.jpeg`))
        .height(175)
        .width('100%')
      /*
       * 内容区
       */
      Row(){
        Column(){
          Image($rawfile(this.r.img1))
            .height(50)
            .width(50)
            .padding(5)
          Text(this.r.part1)
        }
        .layoutWeight(2)
        Text('VS')
          .textAlign(TextAlign.Center)
          .layoutWeight(1)
        Column(){
          Image($rawfile(this.r.img2))
            .height(50)
            .width(50)
            .padding(5)
          Text(this.r.part2)
        }
        .layoutWeight(2)
      }
      .backgroundColor('#ffe0dede')
      .height(100)

      Text(this.r.name).fontSize(20).fontWeight(900).margin({top: 30})
      Text(`Audience: ${this.r.audience}     Like: ${this.r.like}`).fontColor('#999').margin({top: 5, bottom: 30})
      Button() {
        Text('Like').fontColor('#fff')
      }
      .width(130).height(45)
      .type(ButtonType.Normal)
      .borderRadius(8)
      .backgroundColor(this.currentColor)
      .onClick(() => {
        const ids: string[] = AppStorage.get('favorites') || [];
        const result = ids.find((id: string) => id == this.r.id);
        if (!result) {
          this.favorites = [...ids, this.r.id];
          AppStorage.setOrCreate('favorites', this.favorites);
          promptAction.showToast({
            message: 'Like successfully'
          });
          this.currentColor = '#a9a9a9';
          AppStorage.setOrCreate('buttonColor', this.currentColor);
        } else {
          this.favorites = ids.filter((id: string) => id !== this.r.id);
          AppStorage.setOrCreate('favorites', this.favorites);
          promptAction.showToast({
            message: 'Cancelled the like'
          });
          this.currentColor = '#ee7700';
          AppStorage.setOrCreate('buttonColor', this.currentColor);
        }
      })
    }
  }
}
