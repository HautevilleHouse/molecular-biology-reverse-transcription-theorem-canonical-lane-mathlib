import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheorem

structure MutationDynamics where
  reverseTranscriptionFidelity : ℝ
  templateSwitchingFrequency : ℝ
  recombinationRate : ℝ
  mutationRate : ℝ
  diversityLevel : ℝ

def effectiveMutationRate (m : MutationDynamics) : ℝ :=
  m.reverseTranscriptionFidelity * m.templateSwitchingFrequency * m.recombinationRate

end MolecularBiologyReverseTranscriptionTheorem
end HautevilleHouse