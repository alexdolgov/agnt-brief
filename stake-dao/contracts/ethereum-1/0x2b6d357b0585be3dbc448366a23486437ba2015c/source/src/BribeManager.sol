// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.17;

import {Owned} from "solmate/auth/Owned.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {Multicallable} from "solady/utils/Multicallable.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";

import {Constants} from "src/libraries/Constants.sol";
import {ICurvePool} from "src/interfaces/ICurvePool.sol";
import {IBalancerVault} from "src/interfaces/IBalancerVault.sol";

/// Version 1.0.0
/// @title  BribeManager
/// @notice Helper contract to swap bribes rewards for distribution.
/// @author Stake DAO
contract BribeManager is Owned, Multicallable {
    /// @notice Addresses of the approved managers.
    mapping(address => bool) public approvedManagers;

    ////////////////////////////////////////////////////////////////
    /// --- ERRORS
    ///////////////////////////////////////////////////////////////

    /// @notice Throwed when a call fails.
    error CALL_FAILED();

    /// @notice Throwed when a swap fails.
    error SWAP_FAILED();

    /// @notice Throwed the caller is not an approved manager.
    error NOT_APPROVED_MANAGER();

    ////////////////////////////////////////////////////////////////
    /// --- EVENTS
    ///////////////////////////////////////////////////////////////

    /// @notice Emitted when a manager is approved.
    /// @param manager The address of the manager.
    event ManagerApproved(address indexed manager);

    /// @notice Emitted when a manager is disowned.
    /// @param manager The address of the manager.
    event ManagerDisowned(address indexed manager);

    /// @notice Emitted when a trade is executed.
    /// @param srcToken The token to exchange from.
    /// @param destToken The token to exchange to.
    /// @param srcAmount The amount of srcToken to exchange.
    /// @param destAmount The amount of destToken received.
    event ExchangeAggregator(
        address indexed srcToken, address indexed destToken, uint256 srcAmount, uint256 destAmount
    );

    ////////////////////////////////////////////////////////////////
    /// --- MODIFIERS
    ///////////////////////////////////////////////////////////////

    modifier onlyApprovedManager() {
        if (!approvedManagers[msg.sender]) revert NOT_APPROVED_MANAGER();
        _;
    }

    constructor(address _owner) Owned(_owner) {
        approvedManagers[_owner] = true;
    }

    ////////////////////////////////////////////////////////////////
    /// --- EXTERNAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Execute trades when sdToken peg is below a certain threshold.
    /// @param market The market to trade.
    /// @param data The calldata to use for the trade.
    /// @param txData The calldata to use for the aggregator.
    /// @dev The calldata for the aggregator is an array of bytes, each bytes
    ///      is a tuple of (srcToken, destToken, underlyingAmount, callData).
    ///      We swap all the rewards tokens to the underlying token for the sdToken.
    function handleMarket(address market, bytes memory data, bytes[] calldata txData)
        external
        onlyApprovedManager
        returns (uint256 _received)
    {
        /// Convert rewards token to underlying token for sdToken.
        uint256 _lenght = txData.length;
        if (_lenght > 0) {
            address srcToken;
            address destToken;
            uint256 underlyingAmount;
            bytes memory callData;

            for (uint256 i = 0; i < _lenght;) {
                (srcToken, destToken, underlyingAmount, callData) =
                    abi.decode(txData[i], (address, address, uint256, bytes));

                _received += _handleAggregator(srcToken, destToken, underlyingAmount, callData);

                unchecked {
                    ++i;
                }
            }
        }

        /// Swap to sdToken
        if (market == Constants.SD_BAL) {
            (uint256 amount, uint256 minLiquidityAmount, uint256 minAmountOut, uint256 deadline) =
                abi.decode(data, (uint256, uint256, uint256, uint256));

            amount = _received > 0 ? _received : amount;
            _received = _handleBalancerTrade(amount, minLiquidityAmount, minAmountOut, deadline);
        } else {
            (address pool, address underlyingToken, uint256 amount, uint256 minAmountOut) =
                abi.decode(data, (address, address, uint256, uint256));

            amount = _received > 0 ? _received : amount;
            _received = _handleCurveTrade(pool, underlyingToken, market, amount, minAmountOut);
        }
    }

    /// @notice Exchanges tokens using 0x.
    /// @param srcToken The token to exchange from.
    /// @param destToken The token to exchange to.
    /// @param underlyingAmount The amount of srcToken to exchange.
    /// @param callData The calldata to use for the exchange.
    function exchange(address srcToken, address destToken, uint256 underlyingAmount, bytes memory callData)
        external
        payable
        onlyApprovedManager
        returns (uint256 received)
    {
        return _handleAggregator(srcToken, destToken, underlyingAmount, callData);
    }

    /// @notice Used to withdraw tokens from the contract.
    /// @param _tokens The tokens to withdraw.
    /// @param _amounts The amounts to withdraw.
    function withdraw(address[] calldata _tokens, uint256[] calldata _amounts) external onlyApprovedManager {
        for (uint256 i = 0; i < _tokens.length; i++) {
            SafeTransferLib.safeTransfer(_tokens[i], msg.sender, _amounts[i]);
        }
    }

    /// @notice Execute an arbitrary call to a contract.
    /// @param _target The contract to call.
    /// @param _data The calldata to use for the call.
    function execute(address _target, bytes memory _data) external onlyApprovedManager {
        (bool success,) = _target.call(_data);
        if (!success) revert CALL_FAILED();
    }

    ////////////////////////////////////////////////////////////////
    /// --- INTERNAL IMPLEMENTATION
    ///////////////////////////////////////////////////////////////

    /// @notice Swaps tokens to sdTokens.
    /// @param pool The Curve pool to use.
    /// @param underlyingToken The token to exchange from.
    /// @param underlyingAmount The amount of srcToken to exchange.
    /// @param minAmountOut The minimum amount of sdToken to receive.
    function _handleCurveTrade(
        address pool,
        address underlyingToken,
        address token,
        uint256 underlyingAmount,
        uint256 minAmountOut
    ) internal returns (uint256 _received) {
        // Approve the pool to spend the underlying token
        SafeTransferLib.safeApprove(underlyingToken, pool, underlyingAmount);

        _received = ERC20(token).balanceOf(address(this));

        // Swap the underlying token for the sdToken
        ICurvePool(pool).exchange(0, 1, underlyingAmount, minAmountOut);

        // Calculate the amount of sdToken received
        _received = ERC20(token).balanceOf(address(this)) - _received;
    }

    /// @notice Swaps BAL for sdBAL.
    /// @param minAmountOut The minimum amount of sdBAL to receive.
    /// @param deadline The deadline for the swap.
    function _handleBalancerTrade(
        uint256 underlyingAmount,
        uint256 minLiquidityAmount,
        uint256 minAmountOut,
        uint256 deadline
    ) internal returns (uint256 _received) {
        // Approve the pool to spend the underlying token
        SafeTransferLib.safeApprove(Constants.BAL, Constants.BALANCER_VAULT, underlyingAmount);

        address[] memory tokens = new address[](2);
        tokens[0] = Constants.BAL;
        tokens[1] = Constants.WETH;

        uint256[] memory maxAmountsIn = new uint256[](2);
        maxAmountsIn[0] = underlyingAmount;
        maxAmountsIn[1] = 0;

        IBalancerVault.JoinPoolRequest memory joinRequest = IBalancerVault.JoinPoolRequest({
            assets: tokens,
            maxAmountsIn: maxAmountsIn,
            userData: abi.encode(IBalancerVault.JoinKind.EXACT_TOKENS_IN_FOR_BPT_OUT, maxAmountsIn, minLiquidityAmount),
            fromInternalBalance: false
        });

        IBalancerVault(Constants.BALANCER_VAULT).joinPool(
            Constants.B_80BAL_20WETH_POOL_ID, address(this), address(this), joinRequest
        );

        underlyingAmount = ERC20(Constants.B_80BAL_20WETH).balanceOf(address(this));

        // Approve the pool to spend the underlying token
        SafeTransferLib.safeApprove(Constants.B_80BAL_20WETH, Constants.BALANCER_VAULT, underlyingAmount);

        IBalancerVault.SingleSwap memory singleSwap = IBalancerVault.SingleSwap({
            poolId: Constants.SD_BAL_80BAL_20WETH_POOL_ID,
            kind: IBalancerVault.SwapKind.GIVEN_IN,
            assetIn: Constants.B_80BAL_20WETH,
            assetOut: Constants.SD_BAL,
            amount: underlyingAmount,
            userData: ""
        });

        IBalancerVault.FundManagement memory fundManagement = IBalancerVault.FundManagement({
            sender: address(this),
            fromInternalBalance: false,
            recipient: payable(address(this)),
            toInternalBalance: false
        });

        // Swap the underlying token for the sdToken
        _received = IBalancerVault(Constants.BALANCER_VAULT).swap(singleSwap, fundManagement, minAmountOut, deadline);
    }

    /// @notice Swaps tokens using 0x.
    /// @param srcToken The token to exchange from.
    /// @param destToken The token to exchange to.
    /// @param underlyingAmount The amount of srcToken to exchange.
    /// @param callData The calldata to use for the exchange.
    function _handleAggregator(address srcToken, address destToken, uint256 underlyingAmount, bytes memory callData)
        internal
        returns (uint256 received)
    {
        bool success;
        /// Checkpoint the balance of the destination token before the swap.
        uint256 before = destToken == Constants._ETH ? address(this).balance : ERC20(destToken).balanceOf(address(this));

        if (srcToken == Constants._ETH) {
            (success,) = Constants.ZERO_EX_ROUTER.call{value: underlyingAmount}(callData);
        } else {
            SafeTransferLib.safeApprove(srcToken, Constants.ZERO_EX_ROUTER, underlyingAmount);
            (success,) = Constants.ZERO_EX_ROUTER.call(callData);
        }

        if (!success) revert SWAP_FAILED();

        /// Checkpoint the balance of the destination token after the swap.
        /// Get the amount of destination token received.
        if (destToken == Constants._ETH) {
            received = address(this).balance - before;
        } else {
            received = ERC20(destToken).balanceOf(address(this)) - before;
        }

        emit ExchangeAggregator(srcToken, destToken, underlyingAmount, received);
    }

    ////////////////////////////////////////////////////////////////
    /// --- AUTHORIZATION
    ///////////////////////////////////////////////////////////////

    /// @notice Approve a manager.
    /// @param _manager The manager to approve.
    function approveManager(address _manager) external onlyOwner {
        approvedManagers[_manager] = true;
        emit ManagerApproved(_manager);
    }

    /// @notice Disown a manager.
    /// @param _manager The manager to disown.
    function disownManager(address _manager) external onlyOwner {
        approvedManagers[_manager] = false;
        emit ManagerDisowned(_manager);
    }
}
