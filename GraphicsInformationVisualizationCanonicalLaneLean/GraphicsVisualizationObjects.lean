import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GraphicsInformationVisualizationCanonicalLaneLean

structure GraphicsVisualizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphicsVisualizationAdmittedObject where
  space : GraphicsVisualizationSpace
  visualizationEstablished : Prop
  informationContentBounded : Prop
  channelModel : Type
  channelTopology : TopologicalSpace channelModel
  capacityAchieved : Prop
  conclusion : capacityAchieved

structure GraphicsVisualizationEndgameState where
  object : GraphicsVisualizationAdmittedObject

def GraphicsVisualizationWitnessClosed (O : GraphicsVisualizationAdmittedObject) : Prop :=
  O.capacityAchieved

end GraphicsInformationVisualizationCanonicalLaneLean
end HautevilleHouse
