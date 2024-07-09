export interface ListModel {
  name: string
  id: string
  img1: string
  img2: string
  date: string
  cate: string
  part1: string
  part2: string
  audience: number
  like: number
  [props: string]: number | string
}

export const listModel: ListModel[] = [
  {
    name: '欧洲足球锦标赛2024 西班牙vs德国',
    id: '001',
    img1: 'Spain.png',
    img2: 'Germany.png',
    date: '2024年7月6日 00:00',
    cate: 'football',
    part1: '西班牙',
    part2: '德国',
    audience: 45678,
    like: 1234
  },
  {
    name: '欧洲足球锦标赛2024 法国vs葡萄牙',
    id: '002',
    img1: 'France.png',
    img2: 'Portugal.png',
    date: '2024年7月6日 00:00',
    cate: 'football',
    part1: '法国',
    part2: '葡萄牙',
    audience: 45234,
    like: 1223
  },
  {
    name: '欧洲足球锦标赛2024 荷兰vs英格兰',
    id: '003',
    img1: 'Netherlands.png',
    img2: 'England.png',
    date: '2024年7月6日 00:00',
    cate: 'football',
    part1: '荷兰',
    part2: '英格兰',
    audience: 45254,
    like: 1323
  },
  {
  name: '欧洲足球锦标赛2024 西班牙vs法国',
  id: '004',
  img1: 'Spain.png',
  img2: 'France.png',
  date: '2024年7月6日 00:00',
  cate: 'football',
  part1: '西班牙',
  part2: '法国',
  audience: 45534,
  like: 1923
  }
]