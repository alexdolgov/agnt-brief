// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "../interfaces/ILoan.sol";
import "../interfaces/IPool.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../interfaces/IVault.sol";

library LoanLib {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    uint256 public constant RAY = 10 ** 27;

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    /**
     * @dev Emitted when loan is funded.
     */
    event LoanFunded(address asset, uint256 amount);

    /**
     * @dev Emitted when loan principal is repaid ahead of schedule.
     */
    event LoanPrincipalPaid(
        address asset,
        uint256 amount,
        address fundingVault
    );

    /**
     * @dev Emitted when a loan payment is made.
     */
    event LoanPaymentMade(address pool, address liquidityAsset, uint256 amount);

    /**
     * @dev See ILoan
     */

    /**
     * @dev Validate Loan constructor arguments
     */
    function validateLoan(
        IServiceConfigurationV3 config,
        IPool pool,
        ILoanSettings memory loanSettings,
        address liquidityAsset
    ) external view {
        require(
            loanSettings.durationDays > 0,
            "LoanLib: Duration cannot be zero"
        );

        require(
            config.isLiquidityAsset(liquidityAsset),
            "LoanLib: Liquidity asset not allowed"
        );
        require(
            pool.asset() == liquidityAsset,
            "LoanLib: Not allowed asset for pool"
        );
    }

    /**
     * @dev Called on loan fundings, pulls funds from the pool into the
     * loan's funding vault.
     */
    function fundRolloverLoan(
        address liquidityAsset,
        IVault borrowerVault,
        uint256 amount
    ) public returns (ILoanLifeCycleState) {
        if (amount > 0) {
            IERC20(liquidityAsset).safeTransferFrom(
                msg.sender,
                address(borrowerVault),
                amount
            );
        }

        emit LoanFunded(liquidityAsset, amount);
        return ILoanLifeCycleState.Funded;
    }

    function previewOriginationFee(
        ILoanSettings calldata settings,
        uint256 scalingValue
    ) public pure returns (uint256) {
        return
            settings
                .startingPrincipal
                .mul(settings.originationBps)
                .mul(settings.durationDays.mul(scalingValue).div(360))
                .div(RAY)
                .div(10000);
    }
}
