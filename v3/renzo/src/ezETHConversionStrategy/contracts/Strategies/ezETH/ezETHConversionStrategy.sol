// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import { IWithdrawQueue, WithdrawRequest } from "../interfaces/IWithdrawQueue.sol";
import { IWeth } from "../interfaces/IWeth.sol";
import { IRestakeManager } from "../interfaces/IRestakeManager.sol";
import { ICachedRateProvider } from "../interfaces/ICachedRateProvider.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IDelegateStrategy.sol";

/**
 * @author  Renzo Protocol
 * @title   ezETHConversionStrategy
 * @dev     This contract manages bidirectional conversions between ezETH and WETH.
 * @notice  Strategy for converting between ezETH and WETH through Renzo's deposit and withdrawal processes.
 *          Tracks pending withdrawals and returns their value in WETH terms using a cached rate provider.
 */
contract ezETHConversionStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    /// @dev Renzo Address constant for Native ETH
    address public constant IS_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @notice ezETH token
    IERC20 public immutable ezEthToken;

    /// @notice WETH token (underlying asset)
    IERC20 public immutable wethToken;

    /// @notice Renzo withdraw queue for ezETH to ETH conversions
    IWithdrawQueue public immutable withdrawQueue;

    /// @notice Renzo restake manager for ETH to ezETH deposits
    IRestakeManager public immutable restakeManager;

    /// @notice Cached rate provider for ezETH/ETH exchange rate
    ICachedRateProvider public immutable cachedRateProvider;

    /// @notice Cache duration in seconds (60 seconds = 1 minute)
    uint256 public constant RATE_CACHE_DURATION = 60;

    /// @notice Emitted when WETH to ezETH conversion is initiated
    event WethToEzEthConversionStarted(uint256 wethAmount);

    /// @notice Emitted when ezETH to WETH withdrawal is started
    event EzEthToWethWithdrawalStarted(uint256 ezEthAmount);

    /// @notice Emitted when ezETH to WETH withdrawal is completed
    event EzEthToWethWithdrawalCompleted(uint256 withdrawIndex, uint256 wethAmount);

    /**
     * @notice Constructor
     * @param _ezEthToken Address of the ezETH token
     * @param _wethToken Address of the WETH token
     * @param _withdrawQueue Address of Renzo's withdraw queue
     * @param _restakeManager Address of Renzo's restake manager
     * @param _cachedRateProvider Address of the cached rate provider
     */
    constructor(
        address _ezEthToken,
        address _wethToken,
        address _withdrawQueue,
        address _restakeManager,
        address _cachedRateProvider
    ) {
        if (_ezEthToken == address(0)) revert InvalidZeroInput();
        if (_wethToken == address(0)) revert InvalidZeroInput();
        if (_withdrawQueue == address(0)) revert InvalidZeroInput();
        if (_restakeManager == address(0)) revert InvalidZeroInput();
        if (_cachedRateProvider == address(0)) revert InvalidZeroInput();

        ezEthToken = IERC20(_ezEthToken);
        wethToken = IERC20(_wethToken);
        withdrawQueue = IWithdrawQueue(_withdrawQueue);
        restakeManager = IRestakeManager(_restakeManager);
        cachedRateProvider = ICachedRateProvider(_cachedRateProvider);
    }

    /**
     * @notice Convert WETH to ezETH via Renzo deposit
     * @dev Unwraps WETH to ETH and deposits to Renzo restake manager
     * @param wethAmount Amount of WETH to convert to ezETH
     */
    function convertWethToEzEth(uint256 wethAmount) external {
        if (wethAmount == 0) revert InvalidZeroInput();

        // Convert WETH to ETH and then deposit ETH to restakeManager
        IWeth(address(wethToken)).withdraw(wethAmount);
        restakeManager.depositETH{ value: wethAmount }();

        emit WethToEzEthConversionStarted(wethAmount);
    }

    /**
     * @notice Start converting ezETH to WETH via withdraw queue
     * @dev Approves ezETH and initiates withdrawal for native ETH
     * @param ezEthAmount Amount of ezETH to withdraw
     */
    function startConvertEzEthToWeth(uint256 ezEthAmount) external {
        if (ezEthAmount == 0) revert InvalidZeroInput();

        // Start a withdrawal from the withdrawQueue
        // Approve ezETH first then trigger withdraw
        ezEthToken.forceApprove(address(withdrawQueue), ezEthAmount);
        withdrawQueue.withdraw(ezEthAmount, IS_NATIVE);

        emit EzEthToWethWithdrawalStarted(ezEthAmount);
    }

    /**
     * @notice Complete a withdrawal and convert received ETH to WETH
     * @dev Claims withdrawal from queue and wraps ETH to WETH
     * @param withdrawIndex The index of the withdrawal request to claim
     */
    function completeConvertEzEthToWeth(uint256 withdrawIndex) external {
        // Complete a withdrawal from the withdrawQueue
        withdrawQueue.claim(withdrawIndex, address(this));

        // Convert received ETH to WETH
        uint256 ethBalance = address(this).balance;
        if (ethBalance > 0) {
            IWeth(address(wethToken)).deposit{ value: ethBalance }();
        }

        emit EzEthToWethWithdrawalCompleted(withdrawIndex, ethBalance);
    }

    /**
     * @notice Get the total WETH value of pending ETH withdrawals
     * @dev Iterates through outstanding withdrawal requests and calculates their current value
     * @param ezEthRate The current ezETH to ETH exchange rate (18 decimals)
     * @return uint256 Total pending withdrawals value in WETH/ETH terms
     */
    function getPendingEthWithdrawals(uint256 ezEthRate) public view returns (uint256) {
        uint256 withdrawalCount = withdrawQueue.getOutstandingWithdrawRequests(address(this));

        // Iterate and get the withdrawal amounts
        uint256 totalPending = 0;
        for (uint256 i = 0; i < withdrawalCount; i++) {
            WithdrawRequest memory request = withdrawQueue.withdrawRequests(address(this), i);

            // Sanity check - we only support native ETH withdrawals
            if (request.collateralToken != IS_NATIVE) {
                revert InvalidAsset();
            }

            // Check the current rate of ezETH - if it is lower than the withdraw request,
            // then use that (handle slashing)
            uint256 currentAmountToRedeem = (request.ezETHLocked * ezEthRate) / 1e18; // Convert to WETH value
            if (currentAmountToRedeem < request.amountToRedeem) {
                totalPending += currentAmountToRedeem;
            } else {
                totalPending += request.amountToRedeem;
            }
        }
        return totalPending;
    }

    /**
     * @notice Returns the WETH value of pending withdrawals
     * @dev Calculates value of all outstanding withdrawal requests in WETH terms using cached rate
     * @param _asset The underlying asset - must be WETH
     * @return uint256 The value of pending withdrawals in WETH terms
     */
    function underlyingValue(address _asset) external view returns (uint256) {
        // Enforce asset must be WETH
        if (_asset != address(wethToken)) {
            revert InvalidAsset();
        }

        // Get the ezETH to ETH exchange rate with 60 second cache (rate is in 18 decimals)
        uint256 ezEthRate = cachedRateProvider.getRateView(RATE_CACHE_DURATION);

        // Get pending ETH withdrawals from withdrawQueue
        uint256 pendingWeth = getPendingEthWithdrawals(ezEthRate);

        return pendingWeth;
    }

    /**
     * @notice Forces an update of the cached rate
     * @dev Calls forceUpdate on the cached rate provider to refresh the cache immediately
     * @return uint256 The newly fetched rate
     */
    function forceRateUpdate() external returns (uint256) {
        return cachedRateProvider.forceUpdate();
    }
}
