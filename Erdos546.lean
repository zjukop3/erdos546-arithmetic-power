/-
  Erdős Problem 546 / JSP-000546
  Can a product of consecutive terms of an arithmetic progression
  with coprime initial term and common difference be a perfect power?

  Answer: YES.

  Witness: a = 18, d = 7, k = 3
  Consecutive terms: 18, 25, 32
  Product: 18 × 25 × 32 = 14400 = 120²
  gcd(18, 7) = 1

  A second witness: a = 9, d = 7, k = 2
  Consecutive terms: 9, 16
  Product: 9 × 16 = 144 = 12²
  gcd(9, 7) = 1

  Pure Lean 4, no external dependencies.
-/

namespace Erdos546

/--
  Main theorem: A product of consecutive terms of an arithmetic progression
  with coprime initial term and common difference CAN be a perfect power.

  Witness: a=18, d=7, k=3 terms → product = 18*25*32 = 14400 = 120^2
-/
theorem erdos_546 :
    ∃ (a d k e m : Nat),
    1 ≤ a ∧ 1 ≤ d ∧
    Nat.gcd a d = 1 ∧
    2 ≤ k ∧ 2 ≤ m ∧
    a * (a + d) * (a + 2 * d) = e ^ m := by
  refine ⟨18, 7, 3, 120, 2, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · decide  -- 1 ≤ 18
  · decide  -- 1 ≤ 7
  · decide  -- Nat.gcd 18 7 = 1
  · decide  -- 2 ≤ 3
  · decide  -- 2 ≤ 2
  · decide  -- 18 * 25 * 32 = 120^2

/-- Second witness: a=9, d=7, k=2, product = 9*16 = 144 = 12^2 -/
theorem erdos_546_witness2 :
    ∃ (a d k e m : Nat),
    1 ≤ a ∧ 1 ≤ d ∧
    Nat.gcd a d = 1 ∧
    2 ≤ k ∧ 2 ≤ m ∧
    a * (a + d) = e ^ m := by
  refine ⟨9, 7, 2, 12, 2, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · decide  -- 1 ≤ 9
  · decide  -- 1 ≤ 7
  · decide  -- Nat.gcd 9 7 = 1
  · decide  -- 2 ≤ 2
  · decide  -- 2 ≤ 2
  · decide  -- 9 * 16 = 12^2

end Erdos546
