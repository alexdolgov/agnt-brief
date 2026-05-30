// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

abstract contract ZapTypeHash {
  bytes32 public constant NONE_TYPE = keccak256('None');
  bytes32 public constant UNISWAP_V3_TYPE = keccak256('UniswapV3');
  bytes32 public constant ALGEBRA_V19_TYPE = keccak256('AlgebraV19');
  bytes32 public constant ALGEBRA_V19_DIRFEE_TYPE = keccak256('AlgebraV19DirFee');
  bytes32 public constant SOLIDLY_V3_TYPE = keccak256('SolidlyV3');
  bytes32 public constant ERC20_TYPE = keccak256('ERC20');
  bytes32 public constant PANCAKE_V4_CL_TYPE = keccak256('PancakeSwapV4CL');
  bytes32 public constant UNISWAP_V4_TYPE = keccak256('UniswapV4');
  bytes32 public constant FLUID_VAULT_TYPE = keccak256('FluidVault');
  bytes32 public constant MULTI_ERC20_TYPE = keccak256('MultiERC20');
  bytes32 public constant UNIVERSAL_CL_TYPE = keccak256('UniversalCL');
  bytes32 public constant MAVERICK_TYPE = keccak256('Maverick');
  bytes32 public constant PANCAKE_V4_BIN_TYPE = keccak256('PancakeV4Bin');
}
