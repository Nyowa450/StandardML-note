### 2.1

(* 関数の基本定義 *)
fun f p = body ;

# fun f (x,y) = x * 2 + y;
val f = fn : int * int -> int
# f (2,3);
val it = 7 : int
(* このとき、関数型構成子の->は、他の組型構成子よりも結合力が弱い。 *)

### 2.2 
(* 関数適用 *)
(* 関数適用において、同一レベルの式が複数存在するときには、それらを左から順に評価する。
この評価方法を、適用順評価(applicative order evaluation)と呼ぶ。 *)

(* 再帰的関数は、関数定義文それ自体において自分自身である関数ｆそのものを使用する。 *)
fun factorial n = if n = 0 then 1
> else n * (factorial (n - 1));
val factorial = fn : int -> int
# factorial 7;
val it = 5040 : int

(* 問2.3 *)
(* 数列Snに対して、Snが満たすべき性質を漸化式として記述し、再帰的に定義せよ。 *)
①
漸化式を関数として定義すると、
fun f 0 = 0
  |f n = n + f(n - 1);
と定義できる。
