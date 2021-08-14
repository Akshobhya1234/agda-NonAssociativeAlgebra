{-# OPTIONS --without-K --safe #-}

open import Relation.Binary using (Rel; Setoid; IsEquivalence)
module Loop.Structures
  {a ℓ} {A : Set a}  -- The underlying set
  (_≈_ : Rel A ℓ)    -- The underlying equality relation
  where

open import Algebra.Core
open import Level using (_⊔_)
open import Data.Product using (_,_; proj₁; proj₂)
open import Algebra.Definitions _≈_
open import Algebra.Structures _≈_
open import Loop.Definitions _≈_

record IsLeftBolLoop (_∙_ : Op₂ A) (ε : A) (⁻¹ : Op₁ A) : Set (a ⊔ ℓ) where
  field
    isLoop  : IsLoop _∙_  ε ⁻¹
    leftBol : LeftBol _∙_

  open IsLoop isLoop public

record IsRightBolLoop (_∙_ : Op₂ A) (ε : A) (⁻¹ : Op₁ A) : Set (a ⊔ ℓ) where
  field
    isLoop   : IsLoop _∙_  ε ⁻¹
    rightBol : RightBol _∙_

  open IsLoop isLoop public

record IsMoufangLoop (_∙_ : Op₂ A) (ε : A) (⁻¹ : Op₁ A) : Set (a ⊔ ℓ) where
  field
    isLoop          : IsLoop _∙_  ε ⁻¹
    moufangIdentity : MoufangIdentity _∙_

  open IsLoop isLoop public
