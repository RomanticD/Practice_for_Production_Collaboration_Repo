export interface PingPongModel {
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

export const pingPongModel: PingPongModel[] = [
  {
    name: 'World Table Tennis Championships 2024 France vs Germany',
    id: '001',
    img1: 'France.png',
    img2: 'Germany.png',
    date: '2024-07-25 00:00',
    cate: 'pingpong',
    part1: 'France',
    part2: 'Germany',
    audience: 12543,
    like: 943
  },
  {
    name: 'World Table Tennis Championships 2024 Japan vs Sweden',
    id: '002',
    img1: 'Japan.png',
    img2: 'Sweden.png',
    date: '2024-07-25 00:00',
    cate: 'pingpong',
    part1: 'Japan',
    part2: 'Sweden',
    audience: 11321,
    like: 854
  }
];

export const searchPingPongModel = (keyword: string): PingPongModel[] => {
  return pingPongModel.filter(item =>
  item.name.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part1.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part2.toLowerCase().includes(keyword.toLowerCase())
  );
};
