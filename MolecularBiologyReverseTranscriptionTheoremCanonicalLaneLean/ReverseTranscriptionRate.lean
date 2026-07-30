import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionTheorem

structure ReverseTranscriptionRate where
  trnaConcentration : ℝ
  nucleotideTriphosphateLevel : ℝ
  genomicRNATemplate : ℝ
  rtEnzymeActivity : ℝ
  primerBindingEfficiency : ℝ
  extensionRate : ℝ
  transcriptionRate : ℝ

def estimateReverseTranscriptionRate (r : ReverseTranscriptionRate) : ℝ :=
  r.rtEnzymeActivity * r.primerBindingEfficiency * r.transcriptionRate

end MolecularBiologyReverseTranscriptionTheorem
end HautevilleHouse