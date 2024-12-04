import { readFileSync } from "fs";

const input: string[] = readFileSync("/dev/stdin", "utf8").split("\n");
const [n, d]: number[] = Array.from(input[0].split(" "), Number);
const s: string = input[1];
const i = (s.match(/@/g) || []).length;
// console.log([n, d, s, i])

const ans: number = n - i + d;
console.log(ans);