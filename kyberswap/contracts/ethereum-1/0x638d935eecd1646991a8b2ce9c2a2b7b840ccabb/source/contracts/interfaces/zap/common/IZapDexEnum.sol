// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IZapDexEnum {
  // There must be a slot for EMPTY
  enum DexType {
    UniswapV2,
    UniswapV3,
    EMPTY,
    Curve,
    Balancer,
    AlgebraV19,
    AlgebraV19DirFee,
    RamsesV2,
    AerodromeV1,
    RingV2,
    KoiV2,
    SolidlyV3,
    AerodromeCL,
    AlgebraIntegralV12BasePluginV2,
    Gamma,
    PancakeV3Staking,
    ArrakisV1,
    ArrakisV2,
    GyroECLP,
    AlgebraIntegralV10BasePluginV1,
    FluidVaultT4,
    SyncswapV2,
    ZKSwapV3Staking,
    GammaSwap,
    RamsesV3,
    ShadowLegacy,
    ZKSwapV2,
    UniswapV4,
    PancakeV4CL,
    Steer,
    BunniV2,
    SquadswapV3Staking,
    BalancerV3,
    DodoV2,
    CamelotV2,
    ZapForwarder,
    KatanaV2,
    KatanaV3,
    Maverick,
    Generic,
    Arbera,
    SeamlessLT,
    AlgebraIntegralV12BasePluginV1
  }

  enum SrcType {
    ERC20Token,
    ERC721Token,
    ERC1155Token
  }
}
