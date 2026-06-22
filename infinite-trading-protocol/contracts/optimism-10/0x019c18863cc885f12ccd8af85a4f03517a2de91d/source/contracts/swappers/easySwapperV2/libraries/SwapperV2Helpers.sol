// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma abicoder v2;

import {PancakeNonfungiblePositionGuard} from "../../../guards/contractGuards/pancake/PancakeNonfungiblePositionGuard.sol";
import {ICompoundV3Comet} from "../../../interfaces/compound/ICompoundV3Comet.sol";
import {IPancakeNonfungiblePositionManager} from "../../../interfaces/pancake/IPancakeNonfungiblePositionManager.sol";
import {IHasGuardInfo} from "../../../interfaces/IHasGuardInfo.sol";
import {IPoolLogic} from "../../../interfaces/IPoolLogic.sol";
import {IFToken} from "../../../interfaces/fluid/IFToken.sol";
import {IEasySwapperV2} from "../interfaces/IEasySwapperV2.sol";
import {IWithdrawalVault} from "../interfaces/IWithdrawalVault.sol";

library SwapperV2Helpers {
  function getUnrolledAssets(address _asset, address _dHedgeVault) internal view returns (address[] memory assets) {
    IWithdrawalVault.TrackedAsset[] memory trackedAssets = IEasySwapperV2(_asset).getTrackedAssets(_dHedgeVault);
    uint256 assetsLength = trackedAssets.length;
    assets = new address[](assetsLength);

    for (uint256 i; i < assetsLength; ++i) {
      assets[i] = trackedAssets[i].token;
    }
  }

  /// @dev It's possible to disable base token of CompoundV3Comet asset, while having positive balance of it,
  ///      hence this helper is required for WithdrawalVault to pick base token after withdrawing from CompoundV3Comet asset
  function getCompoundV3BaseAsset(address _compoundV3CometAsset) internal view returns (address baseAsset) {
    baseAsset = ICompoundV3Comet(_compoundV3CometAsset).baseToken();
  }

  function getPancakeCLPositionAssets(
    address _pool,
    address _pancakenNftPositionManager
  ) internal view returns (address[] memory assets) {
    uint256[] memory tokenIds = PancakeNonfungiblePositionGuard(
      IHasGuardInfo(IPoolLogic(_pool).factory()).getContractGuard(_pancakenNftPositionManager)
    ).getOwnedTokenIds(_pool);

    assets = new address[](tokenIds.length * 2);

    for (uint256 i; i < tokenIds.length; ++i) {
      (, , address token0, address token1, , , , , , , , ) = IPancakeNonfungiblePositionManager(
        _pancakenNftPositionManager
      ).positions(tokenIds[i]);

      assets[i * 2] = token0;
      assets[i * 2 + 1] = token1;
    }
  }

  function getFluidTokenUnderlying(address _fToken) internal view returns (address underlying) {
    underlying = IFToken(_fToken).asset();
  }
}
