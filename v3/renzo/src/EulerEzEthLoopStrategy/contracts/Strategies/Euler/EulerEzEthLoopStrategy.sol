// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import { IEVault } from "contracts/Strategies/Euler/interfaces/Euler/IEVault.sol";
import { IWithdrawQueue } from "contracts/Strategies/interfaces/IWithdrawQueue.sol";
import { ICachedRateProvider } from "contracts/Strategies/interfaces/ICachedRateProvider.sol";
import { IRestakeManager } from "contracts/Strategies/interfaces/IRestakeManager.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IDelegateStrategy.sol";
import "./EulerBaseStrategy.sol";

/**
 * @author  Renzo
 * @title   Euler ezETH Loop Strategy
 * @dev     This contract is used to manage a Euler ezETH leverage strategy.
 *          The strategy will lever up by depositing ezETH and borrowing WETH.
 *          The strategy will lever down by withdrawing ezETH and repaying WETH.
 * @notice  .
 */

contract EulerEzEthLoopStrategy is IDelegateStrategy, EulerBaseStrategy {
    using SafeERC20 for IERC20;

    /// @dev ezETH and WETH tokens
    IERC20 public immutable ezEthToken;
    IERC20 public immutable wethToken;

    /// @dev ezETH and WETH vaults where collateral is deposited and borrowed from
    IEVault public immutable ezEthVault;
    IEVault public immutable wethVault;

    /// @dev Renzo ezETH Contracts
    IWithdrawQueue public immutable withdrawQueue;
    IRestakeManager public immutable restakeManager;
    ICachedRateProvider public immutable rateProvider;

    constructor(
        address _eulerVaultConnector,
        address _ezEthToken,
        address _wethToken,
        address _ezEthVault,
        address _wethVault,
        address _withdrawQueue,
        address _restakeManager,
        address _rateProvider
    ) EulerBaseStrategy(_eulerVaultConnector) {
        if (_ezEthToken == address(0)) revert InvalidZeroInput();
        ezEthToken = IERC20(_ezEthToken);

        if (_wethToken == address(0)) revert InvalidZeroInput();
        wethToken = IERC20(_wethToken);

        if (_ezEthVault == address(0)) revert InvalidZeroInput();
        ezEthVault = IEVault(_ezEthVault);

        if (_wethVault == address(0)) revert InvalidZeroInput();
        wethVault = IEVault(_wethVault);

        if (_withdrawQueue == address(0)) revert InvalidZeroInput();
        withdrawQueue = IWithdrawQueue(_withdrawQueue);

        if (_restakeManager == address(0)) revert InvalidZeroInput();
        restakeManager = IRestakeManager(_restakeManager);

        if (_rateProvider == address(0)) revert InvalidZeroInput();
        rateProvider = ICachedRateProvider(_rateProvider);
    }

    /**
     * @notice  Enables borrowing from the WETH vault
     * @dev     Only WETH token is supported with ezETH collateral
     */
    function enableWethBorrow() external {
        EulerBaseStrategy.enableVaultBorrow(ezEthVault, wethVault);
    }

    /**
     * @notice  Deposits collateral into the ezETH vault
     * @dev     Only ezETH token is supported
     * @param   asset  the asset to deposit
     * @param   amount  the amount to deposit
     */
    function depositCollateral(address asset, uint256 amount) external {
        if (asset == address(ezEthToken)) {
            EulerBaseStrategy.depositCollateralToVault(ezEthToken, ezEthVault, amount);
        } else {
            revert InvalidAsset();
        }
    }

    /**
     * @notice  Withdraws collateral from the ezETH vault
     * @dev     Only ezETH token is supported
     * @param   asset  the asset to withdraw
     * @param   amount  the amount to withdraw
     */
    function withdrawCollateral(address asset, uint256 amount) external {
        if (asset == address(ezEthToken)) {
            EulerBaseStrategy.withdrawCollateralFromVault(ezEthVault, amount);
        } else {
            revert InvalidAsset();
        }
    }

    /**
     * @notice  Borrows from the WETH vault
     * @dev     Only WETH token is supported
     * @param   asset  the asset to borrow
     * @param   amount  the amount to borrow
     */
    function borrow(address asset, uint256 amount) external {
        if (asset == address(wethToken)) {
            EulerBaseStrategy.borrowFromVault(wethVault, amount);
        } else {
            revert InvalidAsset();
        }
    }

    /**
     * @notice  Repays the WETH debt
     * @dev     Only WETH token is supported
     * @param   asset  the asset to repay
     * @param   amount  the amount to repay
     */
    function repay(address asset, uint256 amount) external {
        if (asset == address(wethToken)) {
            EulerBaseStrategy.repayAssetToVault(wethToken, wethVault, amount);
        } else {
            revert InvalidAsset();
        }
    }

    /**
     * @notice  Returns the value of assets managed by this strategy
     * @dev     Only calculates the value of ezETH collateral and WETH debt in Euler protocol
     * @param   _asset  must be WETH
     * @return  uint256  the value of assets managed by this strategy in WETH terms
     */
    function underlyingValue(address _asset) external view returns (uint256) {
        // Enforce asset must be weth
        if (_asset != address(wethToken)) {
            revert InvalidAsset();
        }

        address eulerAccount = getEulerAccount();

        // Start with ETH value
        uint256 totalWeth = 0;

        // Get the ezETH rate
        uint256 ezEthRate = rateProvider.getRateView(60); // 60 seconds cache duration

        // Get the ezETH balance from the vault
        uint256 totalEzEth = ezEthVault.convertToAssets(ezEthVault.balanceOf(eulerAccount));

        // Convert the ezETH collateral to WETH
        totalWeth += (totalEzEth * ezEthRate) / 1e18;

        // Subtract the WETH debt converted to ezETH
        uint256 wethDebt = wethVault.debtOf(eulerAccount);
        if (wethDebt > 0) {
            // Sanity check - we should never have more debt than collateral so revert if this is the case
            if (wethDebt > totalEzEth) revert InvalidDebtValue();

            // Subtract the WETH debt
            totalWeth -= wethDebt;
        }

        return totalWeth;
    }
}
