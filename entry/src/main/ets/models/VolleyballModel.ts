export interface VolleyballModel {
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

export const volleyballModel: VolleyballModel[] = [
  {
    name: 'FIVB World Cup 2024 Brazil vs USA',
    id: '001',
    img1: 'Brazil.png',
    img2: 'America.png',
    date: '2024-07-15 00:00',
    cate: 'volleyball',
    part1: 'Brazil',
    part2: 'USA',
    audience: 15432,
    like: 893
  },
  {
    name: 'FIVB World Cup 2024 Russia vs Italy',
    id: '002',
    img1: 'Russia.png',
    img2: 'Italy.png',
    date: '2024-07-15 00:00',
    cate: 'volleyball',
    part1: 'Russia',
    part2: 'Italy',
    audience: 14321,
    like: 782
  }
];

export const searchVolleyballModel = (keyword: string): VolleyballModel[] => {
  return volleyballModel.filter(item =>
  item.name.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part1.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part2.toLowerCase().includes(keyword.toLowerCase())
  );
};
