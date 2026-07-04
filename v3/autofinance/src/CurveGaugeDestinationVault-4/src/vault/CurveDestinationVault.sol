// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { Errors } from "src/utils/Errors.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";
import { IWETH9 } from "src/interfaces/utils/IWETH9.sol";
import { IPool } from "src/interfaces/external/curve/IPool.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { ICurveResolver } from "src/interfaces/utils/ICurveResolver.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { IStatsCalculator } from "src/interfaces/stats/IStatsCalculator.sol";
import { CurveV2FactoryCryptoAdapter } from "src/destinations/adapters/CurveV2FactoryCryptoAdapter.sol";

/// @notice Base Destination Vault for Curve pools
contract CurveDestinationVault is DestinationVault {
    struct InitParams {
        /// @notice Pool this vault proxies
        address curvePool;
        /// @notice Whether the pool is a new ng pool
        bool isNg;
    }

    /* ******************************** */
    /* State Variables                  */
    /* ******************************** */
    string private constant EXCHANGE_NAME = "curve";

    /// @notice Pool this vault proxies
    address private _curvePool;

    /// @notice Whether the pool deals in ETH
    /// @dev false by default
    /// @dev Exposed via `poolDealInEth()`
    /// @dev Set in `initialize()`
    bool private _poolDealInEth;

    /// @notice Whether the pool is a new ng pool
    /// @dev false by default
    /// @dev Set in `initialize()`
    bool private _isNg;

    /// @dev Tokens that make up the LP token. Meta tokens not broken up
    /// @dev Set in `initialize()`
    address[] private _constituentTokens;

    /// @notice True for Curve V1 (StableSwap), false for V2 (CryptoSwap).
    /// @dev Set in `initialize()`
    bool private _isStableSwap;

    constructor(
        ISystemRegistry sysRegistry
    ) DestinationVault(sysRegistry) { }

    ///@notice Support ETH operations
    receive() external payable { }

    function initialize(
        IERC20 baseAsset_,
        IERC20 underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        InitParams memory initParams = abi.decode(params_, (InitParams));
        Errors.verifyNotZero(initParams.curvePool, "curvePool");

        _curvePool = initParams.curvePool;

        // Base class has the initializer() modifier to prevent double-setup
        super.initialize(baseAsset_, underlyer_, rewarder_, incentiveCalculator_, additionalTrackedTokens_, params_);

        // We must configure a the curve resolver to setup the vault
        ICurveResolver curveResolver = systemRegistry.curveResolver();
        Errors.verifyNotZero(address(curveResolver), "curveResolver");

        // Setup pool tokens as tracked
        (address[8] memory tokens, uint256 numTokens, address lpToken, bool queriedIsStableSwap) =
            curveResolver.resolveWithLpToken(initParams.curvePool);

        Errors.verifyNotZero(numTokens, "numTokens");
        Errors.verifyNotZero(lpToken, "lpToken");

        bool memoryPoolDealInEth = false;
        for (uint256 i = 0; i < numTokens; ++i) {
            address weth = address(systemRegistry.weth());
            address token = tokens[i];
            if (!memoryPoolDealInEth && tokens[i] == LibAdapter.CURVE_REGISTRY_ETH_ADDRESS_POINTER) {
                token = weth;
                memoryPoolDealInEth = true;
            }

            _addTrackedToken(token);
            _constituentTokens.push(token);
        }

        _isStableSwap = queriedIsStableSwap;
        _isNg = initParams.isNg;
        _poolDealInEth = initParams.isNg ? false : memoryPoolDealInEth;
    }

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure override returns (string memory) {
        return EXCHANGE_NAME;
    }

    /// @inheritdoc IDestinationVault
    function poolType() external view virtual override returns (string memory) {
        if (_isNg) return "curveNG";
        return _isStableSwap ? "curveV1" : "curveV2";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure virtual override returns (string memory) {
        return "hold";
    }

    /// @inheritdoc IDestinationVault
    function poolDealInEth() external view virtual override returns (bool) {
        return _poolDealInEth;
    }

    /// @inheritdoc IDestinationVault
    function underlyingTotalSupply() external view virtual override returns (uint256) {
        return IERC20(_underlying).totalSupply();
    }

    /// @inheritdoc IDestinationVault
    function underlyingTokens() external view override returns (address[] memory result) {
        return _constituentTokens;
    }

    /// @inheritdoc IDestinationVault
    function underlyingReserves() external view override returns (address[] memory tokens, uint256[] memory amounts) {
        uint256 len = _constituentTokens.length;
        tokens = new address[](len);
        amounts = new uint256[](len);

        for (uint256 i = 0; i < len; ++i) {
            tokens[i] = _constituentTokens[i];
            amounts[i] = IPool(_curvePool).balances(i);
        }
    }

    /// @inheritdoc DestinationVault
    /// @notice In this vault no underlyer should be staked externally, so external debt should be 0.
    function internalDebtBalance() public view virtual override returns (uint256) {
        return totalSupply();
    }

    /// @inheritdoc DestinationVault
    /// @notice In this vault no underlyer should be staked.
    function externalDebtBalance() public view virtual override returns (uint256) {
        return 0;
    }

    /// @inheritdoc DestinationVault
    /// @notice Get the balance of underlyer currently staked outside the Vault
    /// @return Return 0 as no LP token is deployed outside of vault
    function externalQueriedBalance() public view virtual override returns (uint256) {
        return 0;
    }

    /// @inheritdoc DestinationVault
    function getPool() public view override returns (address) {
        return _curvePool;
    }

    // slither-disable-start dead-code
    function _validateCalculator(
        address incentiveCalculator
    ) internal view override {
        address calcAddressId = IStatsCalculator(incentiveCalculator).getAddressId();
        if (calcAddressId != _underlying) {
            revert InvalidIncentiveCalculator(calcAddressId, _underlying, "lp");
        }
    }

    /// @inheritdoc DestinationVault
    function _onDeposit(
        uint256
    ) internal virtual override {
        // No action needed for base vault
    }

    /// @inheritdoc DestinationVault
    function _ensureLocalUnderlyingBalance(
        uint256
    ) internal virtual override {
        // Do nothing, LP balance exists
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal virtual override returns (uint256[] memory amounts, address[] memory tokens) {
        // Do nothing and return empty amounts and tokens
    }

    /// @inheritdoc DestinationVault
    function _burnUnderlyer(
        uint256 underlyerAmount
    ) internal virtual override returns (address[] memory tokens, uint256[] memory amounts) {
        // Create minAmounts array in memory with zeros
        uint256[] memory minAmounts = new uint256[](_constituentTokens.length);

        // We withdraw everything in one coin to ease swapping
        // re: minAmount == 0, this call is only made during a user initiated withdraw where slippage is
        // controlled for at the router

        // We always want our tokens back in WETH so useEth false
        (tokens, amounts) = CurveV2FactoryCryptoAdapter.removeLiquidity(
            minAmounts, underlyerAmount, _curvePool, _underlying, IWETH9(systemRegistry.weth()), _isNg
        );
    }
    // slither-disable-end dead-code
}
