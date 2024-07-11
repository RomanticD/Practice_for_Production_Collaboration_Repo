export interface TennisModel {
  name: string;
  id: string;
  img1: string;
  img2: string;
  date: string;
  cate: string;
  part1: string;
  part2: string;
  audience: number;
  like: number;
  [props: string]: number | string;
}

export const tennisModel: TennisModel[] = [
  {
    name: 'Wimbledon 2024 Nadal vs Federer',
    id: '001',
    img1: 'Spain.png',
    img2: 'Switzerland.png',
    date: '2024-07-20 00:00',
    cate: 'tennis',
    part1: 'Nadal',
    part2: 'Federer',
    audience: 20456,
    like: 1093
  },
  {
    name: 'Wimbledon 2024 Djokovic vs Murray',
    id: '002',
    img1: 'Serbia.png',
    img2: 'UnitedKingdom.png',
    date: '2024-07-20 00:00',
    cate: 'tennis',
    part1: 'Djokovic',
    part2: 'Murray',
    audience: 19432,
    like: 1034
  }
];

export const searchTennisModel = (keyword: string): TennisModel[] => {
  return tennisModel.filter(item =>
  item.name.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part1.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part2.toLowerCase().includes(keyword.toLowerCase())
  );
};
