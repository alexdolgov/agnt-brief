// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IDelegateStrategy.sol";
import { IWithdrawQueue } from "contracts/Strategies/interfaces/IWithdrawQueue.sol";
import { IRestakeManager } from "contracts/Strategies/interfaces/IRestakeManager.sol";
import { CometMainInterface } from "./interfaces/CometMainInterface.sol";
import { ICachedRateProvider } from "contracts/Strategies/interfaces/ICachedRateProvider.sol";

/**
 * @author  .
 * @title   .
 * @dev     This contract is used to manage a Compound ezETH leverage strategy.
 *          The strategy will lever up by depositing ezETH and borrowing WETH.
 *          The strategy will lever down by withdrawing ezETH and repaying WETH.
 * @notice  .
 */

contract CompoundEzEthLoopStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    /// @dev ezETH and WETH tokens
    IERC20 public immutable ezEthToken;
    IERC20 public immutable wethToken;

    /// @dev Compound Comet contract - main contract for Compound protocol to borrow WETH - 0xA17581A9E3356d9A858b789D68B4d866e593aE94 for WETH mainnet
    CometMainInterface public immutable compoundWethComet;

    /// @dev Renzo ezETH Contracts
    ICachedRateProvider public immutable rateProvider;

    uint256 public constant CACHE_SECONDS = 60;

    constructor(
        address _compoundWethComet,
        address _ezEthToken,
        address _wethToken,
        address _rateProvider
    ) {
        if (_compoundWethComet == address(0)) revert InvalidZeroInput();
        compoundWethComet = CometMainInterface(_compoundWethComet);

        if (_ezEthToken == address(0)) revert InvalidZeroInput();
        ezEthToken = IERC20(_ezEthToken);

        if (_wethToken == address(0)) revert InvalidZeroInput();
        wethToken = IERC20(_wethToken);

        if (_rateProvider == address(0)) revert InvalidZeroInput();
        rateProvider = ICachedRateProvider(_rateProvider);
    }

    /**
     * @notice  Supply ezETH to Compound Come
     * @dev     This function will supply ezETH to Compound Comet.
     * @param   amount  The amount of ezETH to supply.
     */
    function supplyEzETH(uint256 amount) external {
        ezEthToken.forceApprove(address(compoundWethComet), amount);
        compoundWethComet.supply(address(ezEthToken), amount);
    }

    /**
     * @notice  Withdraw ezETH from Compound Comet
     * @dev     This function will withdraw ezETH from Compound Comet.
     * @param   amount  The amount of ezETH to withdraw.
     */
    function withdrawEzETH(uint256 amount) external {
        compoundWethComet.withdraw(address(ezEthToken), amount);
    }

    /**
     * @notice  Borrow WETH from Compound Comet
     * @dev     This function will borrow WETH from Compound Comet.
     * @param   amount  The amount of WETH to borrow.
     */
    function borrowWETH(uint256 amount) external {
        compoundWethComet.withdraw(address(wethToken), amount);
    }

    /**
     * @notice  Repay WETH to Compound Comet
     * @dev     This function will repay WETH to Compound Comet.
     * @param   amount  The amount of WETH to repay.
     */
    function repayWETH(uint256 amount) external {
        wethToken.forceApprove(address(compoundWethComet), amount);
        compoundWethComet.supply(address(wethToken), amount);
    }

    /**
     * @notice  Returns the value of assets managed by this strategy
     * @dev     Only calculates the value of ezETH collateral and WETH debt in compound protocol
     * @param   _asset  must be WETH
     * @return  uint256  the value of assets managed by this strategy in WETH terms
     */
    function underlyingValue(address _asset) external view returns (uint256) {
        // Enforce asset must be weth
        if (_asset != address(wethToken)) {
            revert InvalidAsset();
        }

        // Start with ETH value
        uint256 totalWeth = 0;

        // Get any WETH collateral that may be in the vault (over payment of debt?)
        uint256 totalWethSupply = compoundWethComet.balanceOf(address(this));
        totalWeth += totalWethSupply;

        // Get the ezETH rate
        uint256 ezEthRate = rateProvider.getRateView(CACHE_SECONDS);

        // Get the ezETH balance from the vault
        (uint256 totalEzEth, ) = compoundWethComet.userCollateral(
            address(this),
            address(ezEthToken)
        );

        // Convert the ezETH collateral to WETH
        totalWeth += (totalEzEth * ezEthRate) / 1e18;

        // Subtract the WETH debt converted to ezETH
        uint256 wethDebt = compoundWethComet.borrowBalanceOf(address(this));
        if (wethDebt > 0) {
            // Sanity check - we should never have more debt than collateral so revert if this is the case
            if (wethDebt > totalEzEth) revert InvalidDebtValue();

            // Subtract the WETH debt
            totalWeth -= wethDebt;
        }

        return totalWeth;
    }
}
