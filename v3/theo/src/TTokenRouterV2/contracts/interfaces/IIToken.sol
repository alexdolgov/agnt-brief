// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC4626MultiAsset} from "./IERC4626MultiAsset.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IIToken is IERC165, IERC4626MultiAsset {
    /// @notice Array Mismatch
    error ErrorArrayMismatch();
    /// @notice Ratios not 100
    error ErrorRatiosNot100();
    /// @notice contract is left with bad asset ratio
    error ErrorBadAssetRatio();
    /// @notice Asset not in config
    error ErrorAssetNotFound(address asset);
    /// @notice DepositAssets updated but value went down
    error ErrorDepositAssetsValueWentDown();
    /// @notice DepositAsset list is invalid
    error ErrorInvalidDepositAsset(address asset);
    /// @notice Asset cannot be rescued since it is a deposit asset
    error ErrorAssetCannotBeRescued(address asset);
    /// @notice Not enough shares left in contract
    error ErrorMinShares();

    struct ITokenParams {
        uint32[] assetRatiosBps;
        bool enforcedRatio;
        uint32 maxDeviationBps;
        uint256 minShares;
    }

    /// @notice returns the config of the iToken
    function getConfig() external view returns (ITokenParams memory);

    /// @notice sets the config of the iToken, only DEFAULT_ADMIN_ROLE
    function setConfig(ITokenParams calldata params) external;

    /// @notice returns the ratio of the vault this specific asset value is supposed to be
    function getAssetRatio(address asset) external view returns (uint32);

    /// @notice updates the depositAssets of the vault (must come with new config since list is different)
    function updateDepositAssets(address[] calldata newAssets, ITokenParams calldata newConfig) external;

    /// @notice rescues asset that is not in the depositAssets list, only DEFAULT_ADMIN_ROLE
    function rescueAsset(IERC20 rescuedAsset, address to) external;
}
