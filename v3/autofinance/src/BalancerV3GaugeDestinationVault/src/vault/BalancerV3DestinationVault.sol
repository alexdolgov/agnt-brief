// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";
import { IPoolInfo } from "src/interfaces/external/balancer/v3/IPoolInfo.sol";
import { BalancerV3Adapter } from "src/destinations/adapters/BalancerV3Adapter.sol";
import { IVaultExplorer } from "src/interfaces/external/balancer/v3/IVaultExplorer.sol";
import { Errors } from "src/utils/Errors.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";
import { IncentiveCalculatorBase } from "src/stats/calculators/base/IncentiveCalculatorBase.sol";

/**
 * @title BalancerV3DestinationVault
 * @notice A destination vault for managing liquidity in Balancer V3 pools.
 * @dev This vault supports both regular and boosted Balancer V3 pools
 *
 * Overview:
 * - Interaction with Balancer V3 pools is routed through designated routers.
 * - Different pool types (regular or boosted) require specific routers.
 * - During initialization, each pool must be paired with the appropriate router.
 *
 * Boosted Pools:
 * - Boosted pools contain at least one wrapped token.
 * - Wrapped tokens must be explicitly identified during initialization using the `isWrappedToken` array.
 * - A valid `balancerVaultExplorer` address must be provided.
 * - Wrapped tokens must have been initialized (`balancerVaultExplorer.getBufferAsset` != address(0)).
 *
 * Regular Pools:
 * - No wrapped tokens are present.
 * - The `isBoosted` flag is set to `false`.
 * - The BalancerV3Adapter uses the regular router interface.
 */
contract BalancerV3DestinationVault is DestinationVault {
    error BufferNotInitialized(address token);

    string internal constant EXCHANGE_NAME = "balancerV3";

    /// @notice Address of the Balancer V3 router to use for liquidity operations
    address public balancerRouter;

    /// @notice Whether the underlying pool is a Balancer V3 boosted pool
    /// @dev Set to `true` if any token in the pool is wrapped.
    bool public isBoosted;

    /// @notice Tokens in the underlying pool
    /// @dev Exposed via wrappedUnderlyingTokens(). Can contain the wrapped versions of the tokens
    address[] internal _poolTokens;

    /// @notice Raw tokens in the underlying pool
    /// @dev Exposed via underlyingTokens(). Contains only the unwrapped versions of the tokens
    address[] internal _rawPoolTokens;

    /// @notice Whether the underlying tokens in pool are wrapped
    /// @dev Exposed via isWrappedToken
    bool[] internal _isWrappedToken;

    struct InitParamsBase {
        /// @notice Address of the Balancer V3 router
        address balancerRouter;
        /// @notice Address of the Balancer V3 vault explorer. Required for boosted pools. address(0) if not boosted
        address balancerVaultExplorer;
        /// @notice Array indicating which pool tokens are wrapped tokens
        bool[] isWrappedToken;
    }

    constructor(
        ISystemRegistry _systemRegistry
    ) DestinationVault(_systemRegistry) { }

    function initialize(
        IERC20Metadata baseAsset_,
        IERC20Metadata underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        InitParamsBase memory initParams = abi.decode(params_, (InitParamsBase));

        Errors.verifyNotZero(initParams.balancerRouter, "balancerRouter");
        // Initialize base contract
        super.initialize(baseAsset_, underlyer_, rewarder_, incentiveCalculator_, additionalTrackedTokens_, params_);

        balancerRouter = initParams.balancerRouter;
        _poolTokens = IPoolInfo(address(underlyer_)).getTokens();

        uint256 nTokens = _poolTokens.length;
        if (nTokens == 0) revert ArrayLengthMismatch();
        if (nTokens != initParams.isWrappedToken.length) revert ArrayLengthMismatch();

        _isWrappedToken = initParams.isWrappedToken;
        _rawPoolTokens = new address[](nTokens);

        bool hasWrappedToken = false;
        for (uint256 i = 0; i < nTokens; ++i) {
            address token = _poolTokens[i];
            address rawToken = token;

            if (initParams.isWrappedToken[i]) {
                hasWrappedToken = true;
                // Verify buffer is initialized for wrapped tokens
                if (initParams.balancerVaultExplorer == address(0)) {
                    revert Errors.InvalidParam("balancerVaultExplorer");
                }
                rawToken = IVaultExplorer(initParams.balancerVaultExplorer).getBufferAsset(IERC4626(token));
                if (rawToken == address(0)) {
                    revert BufferNotInitialized(token);
                }
            }

            _addTrackedToken(token);
            _addTrackedToken(rawToken);

            _rawPoolTokens[i] = rawToken;
        }

        isBoosted = hasWrappedToken;
    }

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure virtual override returns (string memory) {
        return EXCHANGE_NAME;
    }

    /// @inheritdoc IDestinationVault
    function poolType() public pure virtual override returns (string memory) {
        return "balV3";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure virtual override returns (string memory) {
        return "hold";
    }

    /// @inheritdoc IDestinationVault
    function poolDealInEth() external pure virtual override returns (bool) {
        return false;
    }

    /// @inheritdoc IDestinationVault
    function underlyingTotalSupply() public view virtual override returns (uint256) {
        return IERC20(_underlying).totalSupply();
    }

    /// @inheritdoc IDestinationVault
    function underlyingTokens() public view virtual override returns (address[] memory) {
        return _rawPoolTokens;
    }

    /// @notice Returns the wrapped underlying tokens. Includes Aave wrapped, Morpho wrapped, etc
    function wrappedUnderlyingTokens() external view virtual returns (address[] memory) {
        return _poolTokens;
    }

    /// @notice Whether the underlying tokens in pool are wrapped
    function isWrappedToken() external view virtual returns (bool[] memory) {
        return _isWrappedToken;
    }

    /// @inheritdoc IDestinationVault
    function underlyingReserves()
        external
        view
        virtual
        override
        returns (address[] memory tokens, uint256[] memory balances)
    {
        tokens = _rawPoolTokens;

        uint256 len = tokens.length;

        balances = new uint256[](len);

        // slither-disable-next-line unused-return
        (address[] memory queriedTokens,, uint256[] memory queriedBalances,) = IPoolInfo(_underlying).getTokenInfo();

        for (uint256 i = 0; i < len; ++i) {
            if (_isWrappedToken[i]) {
                balances[i] = IERC4626(queriedTokens[i]).convertToAssets(queriedBalances[i]);
            } else {
                balances[i] = queriedBalances[i];
            }
        }
    }

    /// @inheritdoc IDestinationVault
    function getPool() public view virtual override returns (address) {
        return _underlying;
    }

    /// @inheritdoc DestinationVault
    function _validateCalculator(
        address incentiveCalculator
    ) internal view virtual override {
        address calcLp = IncentiveCalculatorBase(incentiveCalculator).lpToken();
        address calcPool = IncentiveCalculatorBase(incentiveCalculator).pool();

        if (calcLp != _underlying) {
            revert InvalidIncentiveCalculator(calcLp, _underlying, "lp");
        }
        if (calcPool != _underlying) {
            revert InvalidIncentiveCalculator(calcPool, _underlying, "pool");
        }
    }

    /// @inheritdoc DestinationVault
    function _onDeposit(
        uint256
    ) internal virtual override {
        // Do nothing, Balancer V3 vault doesn't allow pool tokens change
    }

    /// @inheritdoc DestinationVault
    function _burnUnderlyer(
        uint256 underlyerAmount
    ) internal virtual override returns (address[] memory tokens, uint256[] memory amounts) {
        uint256[] memory minAmounts = new uint256[](_poolTokens.length);
        tokens = underlyingTokens();
        amounts = BalancerV3Adapter.removeLiquidity(
            balancerRouter, _underlying, tokens, minAmounts, underlyerAmount, isBoosted
        );
    }

    /// @inheritdoc DestinationVault
    function _ensureLocalUnderlyingBalance(
        uint256 amount
    ) internal virtual override {
        // Do nothing, LP balance exists
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal virtual override returns (uint256[] memory, address[] memory) {
        // Do nothing and return empty amounts and tokens
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

    /// @notice Get the balance of underlyer currently staked outside the Vault
    /// @return Return 0 as no LP token is deployed outside of vault
    function externalQueriedBalance() public view virtual override returns (uint256) {
        return 0;
    }
}
