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
    name: 'UEFA Euro 2024 Spain vs Germany',
    id: '001',
    img1: 'Spain.png',
    img2: 'Germany.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Spain',
    part2: 'Germany',
    audience: 43289,
    like: 142183
  },
  {
    name: 'UEFA Euro 2024 France vs Portugal',
    id: '002',
    img1: 'France.png',
    img2: 'Portugal.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'France',
    part2: 'Portugal',
    audience: 45234,
    like: 1223
  },
  {
    name: 'UEFA Euro 2024 Netherlands vs England',
    id: '003',
    img1: 'Netherlands.png',
    img2: 'England.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Netherlands',
    part2: 'England',
    audience: 45254,
    like: 1323
  },
  {
    name: 'UEFA Euro 2024 Spain vs France',
    id: '004',
    img1: 'Spain.png',
    img2: 'France.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Spain',
    part2: 'France',
    audience: 45534,
    like: 1923
  },
  {
    name: 'UEFA Euro 2024 Germany vs Portugal',
    id: '005',
    img1: 'Germany.png',
    img2: 'Portugal.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Germany',
    part2: 'Portugal',
    audience: 45400,
    like: 1456
  },
  {
    name: 'UEFA Euro 2024 France vs England',
    id: '006',
    img1: 'France.png',
    img2: 'England.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'France',
    part2: 'England',
    audience: 45012,
    like: 1334
  },
  {
    name: 'UEFA Euro 2024 Spain vs Portugal',
    id: '007',
    img1: 'Spain.png',
    img2: 'Portugal.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Spain',
    part2: 'Portugal',
    audience: 45789,
    like: 1567
  },
  {
    name: 'UEFA Euro 2024 Netherlands vs Germany',
    id: '008',
    img1: 'Netherlands.png',
    img2: 'Germany.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Netherlands',
    part2: 'Germany',
    audience: 45345,
    like: 1345
  },
  {
    name: 'UEFA Euro 2024 Netherlands vs France',
    id: '009',
    img1: 'Netherlands.png',
    img2: 'France.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Netherlands',
    part2: 'France',
    audience: 45276,
    like: 1256
  },
  {
    name: 'UEFA Euro 2024 England vs Germany',
    id: '010',
    img1: 'England.png',
    img2: 'Germany.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'England',
    part2: 'Germany',
    audience: 45523,
    like: 1489
  }
];


export const searchListModel = (keyword: string): ListModel[] => {
  return listModel.filter(item =>
  item.name.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part1.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part2.toLowerCase().includes(keyword.toLowerCase())
  );
};