
import {  TeamSupportRate } from '../models/supportRateModel';
import request from '../utils/request';


@Component
export struct SupportRateComponent {
  @State supportRateData1: TeamSupportRate =  {id: 1, name: '', supportRate: 72 }
  @State supportRateData2: TeamSupportRate =  {id: 1, name: '', supportRate: 28 }


  async aboutToAppear() {
    try {
      console.log('Attempting to fetch support rate data...');

      let result = await request.get<string, TeamSupportRate>('/posts/1');
      console.log('Fetched data:', result);
      let result2 = await request.get<string, TeamSupportRate>('/posts/2');
      this.supportRateData1 = result;
      this.supportRateData2 = result2;


    } catch (error) {
      console.error('Failed to fetch support rate data:', error);
    }
  }

  build() {
    Column() {
      Row() {
        Column() {
          Text(`${this.supportRateData1.supportRate}%`).fontSize(16).textAlign(TextAlign.Center);
        }
        .layoutWeight(1)
        .padding(5);

        Column() {
          Text(`${this.supportRateData2.supportRate}%`).fontSize(16).textAlign(TextAlign.Center);
        }
        .layoutWeight(1)
        .padding(5);
      }
    }
    .padding(10);

  }
}
