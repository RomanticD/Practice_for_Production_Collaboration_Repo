import { promptAction, router } from '@kit.ArkUI';
import { ParamsModel } from '../models/paramsModel';
import { ListModel, listModel } from '../models/listModel';
import { SupportRateComponent } from '../components/SupportRate';

@Entry
@Component
struct Details {
  @State currentColor: string = '#ee7700';
  @State r: ListModel = {} as ListModel;
  @State isLiked: boolean = false;
  @State favorites: string[] = [];

  aboutToAppear(): void {
    const params: ParamsModel = router.getParams() as ParamsModel;
    const result = listModel.find((item: ListModel) => item.id == params.id);
    this.r = result as ListModel;
    // Initialize the favorites list
    this.favorites = AppStorage.get('favorites') || [];
    this.isLiked = AppStorage.get(`isLiked_${this.r.id}`) ?? false;
  }

  build() {
      Column() {
        /*
       * 导航区
       */
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

          Text(this.r.name.length < 15 ? this.r.name : this.r.name.slice(14, this.r.name.length - 1))
            .textAlign(TextAlign.Center)
            .height('100%')
            .width('100%')
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
        Row() {
          Column() {
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
          Column() {
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

        Text(this.r.name).fontSize(20).fontWeight(900).margin({ top: 30 })
        Text(`Audience: ${this.r.audience}     Like: ${this.r.like}`).fontColor('#999').margin({ top: 5, bottom: 30 })

        /*
       * 支持率显示区
       */
        Column() {
          Row() {
            Column() {
              Text(this.r.part1+' Support Rate').fontSize(16).fontWeight(700).textAlign(TextAlign.Center);
            }
            .layoutWeight(1)
            .padding(5);

            Column() {
              Text(this.r.part2+' Support Rate').fontSize(16).fontWeight(700).textAlign(TextAlign.Center);
            }
            .layoutWeight(1)
            .padding(5);
          }
        }
        .padding(10);
        SupportRateComponent({});

        Button() {
          Text(this.isLiked ? "UnFavorite" : "Favorite").fontColor('#fff');
        }
        .width(130)
        .height(45)
        .type(ButtonType.Normal)
        .borderRadius(8)
        .backgroundColor(this.isLiked ? '#999999' : '#ee7700')
        .onClick(() => {
          this.isLiked = !this.isLiked;
          if (this.isLiked) {
            this.favorites = [...this.favorites, this.r.id];
            AppStorage.setOrCreate('favorites', this.favorites);
            promptAction.showToast({ message: 'Like successfully' });
            AppStorage.setOrCreate(`isLiked_${this.r.id}`, true);
          } else {
            this.favorites = this.favorites.filter((id: string) => id !== this.r.id);
            AppStorage.setOrCreate('favorites', this.favorites);
            promptAction.showToast({ message: 'Cancelled the like' });
            AppStorage.setOrCreate(`isLiked_${this.r.id}`, false);
          }
        });
      }
    }

}


