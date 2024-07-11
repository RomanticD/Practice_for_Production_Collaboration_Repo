import { ListModel, listModel } from '../models/listModel';
import { router } from '@kit.ArkUI';
import { ParamsModel } from '../models/paramsModel';

@Entry
@Component
struct SportsPage{
  @State displayedMatches: ListModel[] = [];
  @State category: string = '';

  aboutToAppear(): void {
    const params: ParamsModel = router.getParams() as ParamsModel;
    this.category = params.cate;
    this.displayedMatches = listModel.filter(match => match.cate === this.category);
  }

  build() {
    Column() {
      // Title bar with category name and back button
      Stack({ alignContent: Alignment.TopStart }) {
        Column() {
          Image($rawfile('back.png')).width(28)
        }
        .width(44)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .zIndex(1)
        .onClick(() => {
          router.back();
        });

        Text(this.category)
          .textAlign(TextAlign.Center)
          .height('100%')
          .width('100%')
          .fontSize(18)
          .fontColor('#fff');
      }
      .height(44)
      .backgroundColor('#ee7700')
      .width('100%');

      // Match content
      List() {
        ForEach(this.displayedMatches, (item: ListModel) => {
          ListItem() {
            Column() {
              Row() {
                Column() {
                  Image($rawfile(item.img1))
                    .height(50)
                    .width(50)
                    .padding(5);
                  Text(item.part1)
                    .fontWeight(FontWeight.Bold);
                }
                .layoutWeight(2);

                Text('VS')
                  .textAlign(TextAlign.Center)
                  .layoutWeight(1)
                  .fontWeight(FontWeight.Bolder);

                Column() {
                  Image($rawfile(item.img2))
                    .height(50)
                    .width(50)
                    .padding(5);
                  Text(item.part2)
                    .fontWeight(FontWeight.Bold);
                }
                .layoutWeight(2);
              }
              .margin({ bottom: 5 })
              .height(75);

              Column() {
                Text(item.name)
                  .fontSize(20)
                  .height(50);

                Text(`Audience: ${item.audience}     Like: ${item.like}`)
                  .fontSize(14)
                  .fontColor('#666')
                  .margin({ bottom: 10 });
              }
              .backgroundColor('#fff')
              .width('100%')
              .height(60)
              .justifyContent(FlexAlign.Center)
              .borderRadius(6)
              .margin(10);
            }
          }
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Details',
              params: {
                id: item.id
              }
            });
          });
        });
      }
      .height('94%');
    }
  }
}
