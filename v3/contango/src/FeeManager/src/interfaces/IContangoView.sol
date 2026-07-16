//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "erc7399/IERC7399.sol";

import "../moneymarkets/interfaces/IUnderlyingPositionFactory.sol";
import "../libraries/DataTypes.sol";
import "../core/PositionNFT.sol";
import "../interfaces/IFeeManager.sol";
import "../interfaces/IVault.sol";

struct Instrument {
    IERC20 base;
    uint256 baseUnit;
    IERC20 quote;
    uint256 quoteUnit;
    bool closingOnly;
}

struct DexData {
    address spender;
    address router;
}

interface IContangoView {
    function dex(Dex dex) external view returns (DexData memory);
    function positionFactory() external view returns (IUnderlyingPositionFactory);
    function flashLoanProviders(FlashLoanProvider flashLoanProvider) external view returns (IERC7399);
    function instrument(Symbol symbol) external view returns (Instrument memory);
    function positionNFT() external view returns (PositionNFT);
    function treasury() external view returns (address);
    function vault() external view returns (IVault);
    function remainingQuoteTolerance() external view returns (uint256);
    function feeManager() external view returns (IFeeManager);
}
