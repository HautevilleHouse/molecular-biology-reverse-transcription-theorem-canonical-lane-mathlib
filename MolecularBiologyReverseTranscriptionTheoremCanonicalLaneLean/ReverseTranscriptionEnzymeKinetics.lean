import HautevilleHouse.MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean

structure EnzymeKineticsPackage where
  kmValue : ℝ
  kcatValue : ℝ
  substrateAffinity : Prop
  catalyticEfficiency : Prop
  enzymeConcentration : ℝ
  reactionRate : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  substrateAffinityClosed : E.substrateAffinity
  catalyticEfficiencyClosed : E.catalyticEfficiency
  reactionRateClosed : E.reactionRate

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.substrateAffinity ∧ E.catalyticEfficiency ∧ E.reactionRate

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage) (Ev : EnzymeKineticsEvidence E) :
    EnzymeKineticsClosed E := by
  exact And.intro Ev.substrateAffinityClosed (And.intro Ev.catalyticEfficiencyClosed Ev.reactionRateClosed)

end MolecularBiologyReverseTranscriptionTheoremCanonicalLaneLean
end HautevilleHouse