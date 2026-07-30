import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheorem

structure ProviralLatency where
  transcriptionSilencingRate : ℝ
  chromatinRemodelingActivity : ℝ
  immuneEvasionFactor : ℝ
  latencyReactivationThreshold : ℝ
  proviralLoad : ℝ

def latencyPeriod (l : ProviralLatency) : ℝ :=
  l.latencyReactivationThreshold / (l.transcriptionSilencingRate * l.immuneEvasionFactor)

end MolecularBiologyReverseTranscriptionTheorem
end HautevilleHouse