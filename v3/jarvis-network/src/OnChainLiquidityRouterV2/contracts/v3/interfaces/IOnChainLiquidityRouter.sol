// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import {
  ISynthereumMultiLpLiquidityPool
} from '@jarvis-network/synthereum-contracts/contracts/synthereum-pool/v6/interfaces/IMultiLpLiquidityPool.sol';
import {
  ISynthereumFinder
} from '@jarvis-network/synthereum-contracts/contracts/core/interfaces/IFinder.sol';

interface IOnChainLiquidityRouter {
  // Role structure
  struct Roles {
    address admin;
    address maintainer;
  }

  // return values from delegate call
  struct ReturnValues {
    address inputToken;
    address outputToken;
    address collateralToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 collateralAmountRefunded;
  }

  // input values for implementation
  struct RedeemSwapParams {
    bool isExactInput;
    bool unwrapToETH;
    uint256 exactAmount;
    uint256 minOutOrMaxIn;
    bytes extraParams;
    address msgSender; // meta-tx support
  }

  // input values for implementation
  struct SwapMintParams {
    bool isExactInput;
    uint256 exactAmount;
    uint256 minOutOrMaxIn;
    bytes extraParams;
    address msgSender; //meta-tx support
  }

  // synthereum variables
  struct SynthereumMintParams {
    ISynthereumFinder synthereumFinder;
    ISynthereumMultiLpLiquidityPool synthereumPool;
    ISynthereumMultiLpLiquidityPool.MintParams mintParams;
  }

  // synthereum variables
  struct SynthereumRedeemParams {
    ISynthereumFinder synthereumFinder;
    ISynthereumMultiLpLiquidityPool synthereumPool;
    ISynthereumMultiLpLiquidityPool.RedeemParams redeemParams;
  }

  /// @notice Performs a ERC20 swap through an OCLR implementation and a mint of a jSynth on a synthereum pool
  /// @param implementationId: identifier of the OCLR implementation to call
  /// @param inputParams: params involving the swap - see RedeemSwapParams struct
  /// @param synthereumPool: synthereum pool address to perform the mint
  /// @param mintParams: params to perform the mint on synthereum
  /// @return returnValues see ReturnValues struct
  function swapAndMint(
    string calldata implementationId,
    SwapMintParams memory inputParams,
    ISynthereumMultiLpLiquidityPool synthereumPool,
    ISynthereumMultiLpLiquidityPool.MintParams memory mintParams
  ) external payable returns (ReturnValues memory returnValues);

  /// @notice Performs a synthereum redeem of jSynth into collateral and then a swap through an OCLR implementation
  /// @param implementationId: identifier of the OCLR implementation to call
  /// @param inputParams: params involving the swap - see RedeemSwapParams struct
  /// @param synthereumPool: synthereum pool address to perform the redeem
  /// @param redeemParams: params to perform the mint on synthereum
  /// @param recipient: recipient address of output tokens
  /// @return returnValues see ReturnValues struct
  function redeemAndSwap(
    string calldata implementationId,
    RedeemSwapParams memory inputParams,
    ISynthereumMultiLpLiquidityPool synthereumPool,
    ISynthereumMultiLpLiquidityPool.RedeemParams memory redeemParams,
    address recipient
  ) external returns (ReturnValues memory returnValues);
}
