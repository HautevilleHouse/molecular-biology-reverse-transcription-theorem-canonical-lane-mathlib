import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheorem

structure IntegrationMechanism where
  integraseActivity : ℝ
  reverseTranscriptaseConcentration : ℝ
  viralDNAConcentration : ℝ
  hostGenomeAccessibility : ℝ
  integrationEfficiency : ℝ

def integrationSuccessProbability (i : IntegrationMechanism) : ℝ :=
  i.integraseActivity * i.integrationEfficiency

end MolecularBiologyReverseTranscriptionTheorem
end HautevilleHouse