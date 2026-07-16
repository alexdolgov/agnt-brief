// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBaseManagedLeveragedVault {
    // --- Enums ------------------------------------------------
    enum Tolerance { ABOVE, BOTH }
    enum Operation { LEVERAGE, DELEVERAGE}

    struct BaseInitParams {
        IERC20 asset;
        string name;
        string symbol;
        address metaBeraborrowCore;
        address debtToken;
        address collateral;
        uint16 maxDeviationICRinBP;
        uint16 maxDeviationTotalAssetsInBP;
        uint16 maxSlippageSwapInBP;
        address keeper;
        address targetICRHook;
        address feeHook;
        address getters;
    }

    // --- Errors ------------------------------------------------
    error ZeroAmount();
    error ZeroAddress();
    error SurpassedPrecision(uint256 precision);
    error AlreadyOpened();
    error NotOwner(address caller);
    error NotSupportedMethod();
    error VaultSlippage(uint256 expected, uint256 actual);

    // --- Events -----------------------------------------------
    event NewTargetICRHook(address targetICRHook);
    event NewKeeper(address keeper);
    event NewMaxDeviationICRInBP(uint16 maxDeviationICRInBP);
    event NewMaxDeviationTotalAssetsInBP(uint16 maxDeviationTotalAssetsInBP);
    event NewMaxSlippageSwapInBP(uint16 maxSlippageSwapInBP);
    event NewFeeHook(address feeHook);
    event NewGetters(address getters);

    // --- Functions ---------------------------------------------
    function totalAssets() external view returns (uint256);
    function setMaxDeviationICRinBP(uint16 _maxDeviationICRinBP) external;
    function setMaxDeviationTotalAssetsInBP(uint16 _maxDeviationTotalAssetsInBP) external;
    function setMaxSlippageSwapInBP(uint16 _maxSlippageSwapInBP) external;
    function setKeeper(address _keeper) external;
    function setTargetICRHook(address _targetICRHook) external;
    function setFeeHook(address _feeHook) external;
    function setGetters(address _getters) external;
    function getPrice(address token) external view returns (uint256 scaledPriceInUsdWad);
    function extSloads(bytes32[] memory slots) external view returns (bytes32[] memory values);
}