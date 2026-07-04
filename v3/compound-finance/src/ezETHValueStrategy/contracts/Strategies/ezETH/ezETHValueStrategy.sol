// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import { ICachedRateProvider } from "../interfaces/ICachedRateProvider.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IDelegateStrategy.sol";

/**
 * @author  Renzo Protocol
 * @title   ezETHValueStrategy
 * @dev     This contract provides ETH value for ezETH holdings.
 * @notice  Simple strategy that returns the ETH value of ezETH balance using a cached rate provider.
 *          This strategy only tracks value and does not perform any operations.
 */
contract ezETHValueStrategy is IDelegateStrategy {
    /// @notice ezETH token
    IERC20 public immutable ezEthToken;

    /// @notice WETH token (underlying asset)
    IERC20 public immutable wethToken;

    /// @notice Cached rate provider for ezETH/ETH exchange rate
    ICachedRateProvider public immutable cachedRateProvider;

    /// @notice Cache duration in seconds (60 seconds = 1 minute)
    uint256 public constant RATE_CACHE_DURATION = 60;

    /**
     * @notice Constructor
     * @param _ezEthToken Address of the ezETH token
     * @param _wethToken Address of the WETH token
     * @param _cachedRateProvider Address of the cached rate provider
     */
    constructor(address _ezEthToken, address _wethToken, address _cachedRateProvider) {
        if (_ezEthToken == address(0)) revert InvalidZeroInput();
        if (_wethToken == address(0)) revert InvalidZeroInput();
        if (_cachedRateProvider == address(0)) revert InvalidZeroInput();

        ezEthToken = IERC20(_ezEthToken);
        wethToken = IERC20(_wethToken);
        cachedRateProvider = ICachedRateProvider(_cachedRateProvider);
    }

    /**
     * @notice Returns the ETH value of ezETH holdings
     * @dev Converts ezETH balance to WETH value using the cached rate provider
     * @param _asset The underlying asset - must be WETH
     * @return uint256 The value of ezETH holdings in WETH terms
     */
    function underlyingValue(address _asset) external view returns (uint256) {
        // Enforce asset must be WETH
        if (_asset != address(wethToken)) {
            revert InvalidAsset();
        }

        // Get the ezETH balance in this contract
        uint256 ezEthBalance = ezEthToken.balanceOf(address(this));

        // If no ezETH balance, return 0
        if (ezEthBalance == 0) {
            return 0;
        }

        // Get the ezETH to ETH exchange rate with 60 second cache (rate is in 18 decimals)
        uint256 ezEthRate = cachedRateProvider.getRateView(RATE_CACHE_DURATION);

        // Convert ezETH to WETH value
        // ezETH has 18 decimals and WETH has 18 decimals
        // rate is in 18 decimals: 1 ezETH = ezEthRate ETH / 1e18
        uint256 wethValue = (ezEthBalance * ezEthRate) / 1e18;

        return wethValue;
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
