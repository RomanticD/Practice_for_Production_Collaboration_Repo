import { List } from '@kit.ArkTS'

export interface CCTVListModel {
  id: number
  extType: number
  shortName: string
  fullName: string
  season: string
  description: string
  leagueRule: string
  logoPath: string
  keywords: string
  itemName: string
  tabList: TabList[]
  [props: string]: number | string | TabList[]
}

interface TabList {
  name : string,
  url: string
}

export const cctvListModel: CCTVListModel[] = [
  {
    "id": 3394,
    "extType": 1,
    "shortName": "欧洲杯",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20240606/20240606063815779_280x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3394"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3394"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3394"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3394"
      }
    ]
  },
  {
    "id": 3488,
    "extType": 1,
    "shortName": "美洲杯",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20240606/20240606065649498_310x310.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3488"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3488"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3488"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3488"
      }
    ]
  },
  {
    "id": 3325,
    "extType": 1,
    "shortName": "中超",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/board/20160525/20160525150818883_280x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3325"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3325"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3325"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3325"
      }
    ]
  },
  {
    "id": 3238,
    "extType": 1,
    "shortName": "英超",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20210105/20210105123005133_280x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3238"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3238"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3238"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3238"
      }
    ]
  },
  {
    "id": 3246,
    "extType": 1,
    "shortName": "意甲",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20190904/20190904120549472_268x401.jpg",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3246"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3246"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3246"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3246"
      }
    ]
  },
  {
    "id": 3262,
    "extType": 1,
    "shortName": "法甲",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20210105/20210105115815799_300x300.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3262"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3262"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3262"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3262"
      }
    ]
  },
  {
    "id": 3253,
    "extType": 1,
    "shortName": "德甲",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/board/20160525/20160525150925866_280x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3253"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3253"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3253"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3253"
      }
    ]
  },
  {
    "id": 3241,
    "extType": 1,
    "shortName": "西甲",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/board/20160525/20160525150905764_280x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3241"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3241"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3241"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3241"
      }
    ]
  },
  {
    "id": 4314,
    "extType": 2,
    "shortName": "NBA",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20180605/20180605185711327_200x200.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "排行",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_ranking.html?leagueid=4314"
      },
      {
        "name": "得分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_score.html?leagueid=4314"
      },
      {
        "name": "篮板",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_rebound.html?leagueid=4314"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_assist.html?leagueid=4314"
      }
    ]
  },
  {
    "id": 3239,
    "extType": 1,
    "shortName": "欧冠",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/board/20160525/20160525164844588_280x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=3239"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=3239"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=3239"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=3239"
      }
    ]
  },
  {
    "id": 4315,
    "extType": 2,
    "shortName": "CBA",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/board/20161109/20161109142107589_281x280.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "排行",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_ranking.html?leagueid=4315"
      },
      {
        "name": "得分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_score.html?leagueid=4315"
      },
      {
        "name": "篮板",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_rebound.html?leagueid=4315"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_assist.html?leagueid=4315"
      }
    ]
  },
  {
    "id": 4338,
    "extType": 2,
    "shortName": "篮球世界杯",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20130918112115411.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "排行",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_ranking.html?leagueid=4338"
      },
      {
        "name": "得分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_score.html?leagueid=4338"
      },
      {
        "name": "篮板",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_rebound.html?leagueid=4338"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_assist.html?leagueid=4338"
      }
    ]
  },
  {
    "id": 12791,
    "extType": 1,
    "shortName": "欧国联",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20180919/20180919144947175_280x280.jpg",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=12791"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=12791"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=12791"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=12791"
      }
    ]
  },
  {
    "id": 4440,
    "extType": 1,
    "shortName": "中女超",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20200826/20200826104206396_300x300.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "积分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_ranking.html?leagueid=4440"
      },
      {
        "name": "进球",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_goals.html?leagueid=4440"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_assist.html?leagueid=4440"
      },
      {
        "name": "红黄牌",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/football_cards.html?leagueid=4440"
      }
    ]
  },
  {
    "id": 15926,
    "extType": 2,
    "shortName": "中国篮球",
    "fullName": "",
    "season": "",
    "description": "",
    "leagueRule": "",
    "logoPath": "https://cbs-img.sports.cctv.com/league/20220620/20220620145428335_200x200.png",
    "keywords": "",
    "itemName": "",
    "tabList": [
      {
        "name": "排行",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_ranking.html?leagueid=15926"
      },
      {
        "name": "得分",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_score.html?leagueid=15926"
      },
      {
        "name": "篮板",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_rebound.html?leagueid=15926"
      },
      {
        "name": "助攻",
        "url": "https://cbs-h5.sports.cctv.com/app_plus_new/league/basketball_assist.html?leagueid=15926"
      }
    ]
  }
]