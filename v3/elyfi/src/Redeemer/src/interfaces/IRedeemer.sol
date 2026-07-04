// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Order, MintRedeemMode} from "src/MintRedeem/Structs.sol";

interface IRedeemer {
    function redeem(Order memory order) external returns (uint256);
    function quoteRedeem(address _token, uint256 _amount) external view returns (uint256);
    function getRedemptionMode(address _collateralAsset, uint256 _elusdAmount) external view returns (MintRedeemMode);
    function isAssetSupported(address _collateralAsset) external view returns (bool);
}
