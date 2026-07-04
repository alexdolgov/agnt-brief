// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "../interfaces/ILoan.sol";
import "../interfaces/IPool.sol";
import "../interfaces/IPoolRegistry.sol";
import "../interfaces/ILoan.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../interfaces/IVault.sol";
import "../factories/LoanFactory.sol";

/**
 * @title Collection of functions used by the Pool and PoolController.
 */
library PoolLib {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant RAY = 10 ** 27;

    /**
     * @dev See IERC4626
     */
    event Deposit(
        address indexed sender,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev See IPoolController
     */
    event PoolSettingsUpdated();

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    /**
     * @dev Divide two numbers and round the result up
     */
    function divideCeil(
        uint256 lhs,
        uint256 rhs
    ) internal pure returns (uint256) {
        return (lhs + rhs - 1) / rhs;
    }

    /**
     * @dev Computes the exchange rate for converting assets to shares
     * @param input The input to the conversion
     * @param numerator Numerator of the conversion rate
     * @param denominator Denominator of the conversion rate
     * @param roundUp Whether it should be rounded up or down.
     * @return output The converted amount
     */
    function calculateConversion(
        uint256 input,
        uint256 numerator,
        uint256 denominator,
        bool roundUp
    ) public pure returns (uint256 output) {
        if (numerator == 0 || denominator == 0) {
            return input;
        }

        uint256 rate = numerator.mul(RAY).div(denominator);
        if (roundUp) {
            return divideCeil(rate.mul(input), RAY);
        } else {
            return rate.mul(input).div(RAY);
        }
    }

    /**
     * @dev Private method to determine if a pool is solvent given
     * the parameters.
     *
     * If the pool has assets, it is solvent. If no assets are available,
     * but no shares have been issued, it is solvent. Otherwise, it is insolvent.
     */
    function isSolvent(
        uint256 totalAssets,
        uint256 totalShares
    ) private pure returns (bool) {
        return totalAssets > 0 || totalShares == 0;
    }

    /**
     * @dev Calculates total assets held by Vault (including those marked for withdrawal)
     * @param asset Amount of total assets held by the Vault
     * @param vault Address of the ERC4626 vault
     * @param outstandingLoanPrincipals Sum of all outstanding loan principals
     * @return totalAssets Total assets
     */
    function calculateTotalAssets(
        address asset,
        address vault,
        uint256 outstandingLoanPrincipals,
        uint256 currentExpectedInterest
    ) public view returns (uint256 totalAssets) {
        totalAssets =
            IERC20(asset).balanceOf(vault) +
            outstandingLoanPrincipals +
            currentExpectedInterest;
    }

    /**
     * @dev Calculates total assets held by Vault (excluding marked for withdrawal)
     * @param asset Amount of total assets held by the Vault
     * @param vault Address of the ERC4626 vault
     * @param outstandingLoanPrincipals Sum of all outstanding loan principals
     * @param withdrawableAssets Sum of all withdrawable assets
     * @return totalAvailableAssets Total available assets (excluding marked for withdrawal)
     */
    function calculateTotalAvailableAssets(
        address asset,
        address vault,
        uint256 outstandingLoanPrincipals,
        uint256 withdrawableAssets,
        address loanAddr
    ) external view returns (uint256 totalAvailableAssets) {
        if (loanAddr != address(0)) {
            ILoan loan = ILoan(loanAddr);

            totalAvailableAssets =
                IERC20(asset).balanceOf(vault) +
                //loan.outstandingPrincipal() +
                outstandingLoanPrincipals +
                loan.interest() -
                withdrawableAssets;
        } else {
            totalAvailableAssets =
                calculateTotalAssets(
                    asset,
                    vault,
                    outstandingLoanPrincipals,
                    0
                ) -
                withdrawableAssets;
        }
    }

    /**
     * @dev Calculates total shares held by Vault (excluding marked for redemption)
     * @param vault Address of the ERC4626 vault
     * @param redeemableShares Sum of all withdrawable assets
     * @return totalAvailableShares Total redeemable shares (excluding marked for redemption)
     */
    function calculateTotalAvailableShares(
        address vault,
        uint256 redeemableShares
    ) external view returns (uint256 totalAvailableShares) {
        totalAvailableShares = IERC20(vault).totalSupply() - redeemableShares;
    }

    /**
     * @dev Calculates the max deposit allowed in the pool
     * @param poolLifeCycleState The current pool lifecycle state
     * @param poolMaxCapacity Max pool capacity allowed per the pool settings
     * @param totalAvailableAssets Sum of all pool assets (excluding marked for withdrawal)
     * @return Max deposit allowed
     */
    function calculateMaxDeposit(
        IPoolLifeCycleState poolLifeCycleState,
        uint256 poolMaxCapacity,
        uint256 totalAvailableAssets
    ) external pure returns (uint256) {
        uint256 remainingCapacity = poolMaxCapacity > totalAvailableAssets
            ? poolMaxCapacity - totalAvailableAssets
            : 0;
        return
            poolLifeCycleState == IPoolLifeCycleState.Active
                ? remainingCapacity
                : 0;
    }

    /**
     * @dev Executes a deposit into the pool
     * @param asset Pool liquidity asset
     * @param vault Address of ERC4626 vault
     * @param lender Address of receiver of shares
     * @param assets Amount of assets being deposited
     * @param shares Amount of shares being minted
     * @param maxDeposit Max allowed deposit into the pool
     * @param mint A pointer to the mint function
     * @return The amount of shares being minted
     */
    function executeDeposit(
        address asset,
        address vault,
        address lender,
        uint256 assets,
        uint256 shares,
        uint256 maxDeposit,
        function(address, uint256) mint,
        IPoolAccountings storage accountings
    ) internal returns (uint256) {
        require(shares > 0, "Pool: 0 deposit not allowed");
        require(assets <= maxDeposit, "Pool: Exceeds max deposit");

        IERC20(asset).safeTransferFrom(msg.sender, vault, assets);
        mint(lender, shares);

        emit Deposit(msg.sender, lender, assets, shares);
        accountings.totalAvailableAssets += assets;
        accountings.totalAssetsDeposited += assets;
        return shares;
    }

    /*//////////////////////////////////////////////////////////////
                    Withdrawal Request Methods
    //////////////////////////////////////////////////////////////*/

    function calculateRollover(
        address priorLoan,
        address _liquidityAsset,
        address pool,
        uint256 outstandingLoanPrincipals_
    )
        external
        view
        returns (
            uint256 outstandingLoanPrincipals,
            uint256 assetsFromPool,
            uint256 assetsFromPriorToNextLoan,
            uint256 totalSupply,
            uint256 assetToAReturnToPool
        )
    {
        require(
            address(IPool(pool).poolController()) != address(0) &&
                msg.sender == address(IPool(pool).poolController()),
            "PoolLib: caller is not pool controller"
        );
        if (priorLoan == address(0)) {
            outstandingLoanPrincipals = IERC20(_liquidityAsset).balanceOf(pool);
            require(
                IPool(pool).totalAvailableSupply() > 0,
                "No Funds to start loan"
            );

            assetsFromPool = outstandingLoanPrincipals;
            assetsFromPriorToNextLoan = 0;
            totalSupply = IPool(pool).totalAvailableSupply();
            assetToAReturnToPool = 0;
        } else {
            uint256 requestedAssets = (
                IPool(pool).withdrawController().totalRequestedShares().mul(
                    IPool(pool).exchangeRateAtMaturity()
                )
            ).div(1e18);
            uint256 poolBalance = IERC20(_liquidityAsset).balanceOf(pool);
            totalSupply =
                IPool(pool).totalAvailableSupply() -
                IPool(pool).withdrawController().totalRequestedShares();

            if (requestedAssets < poolBalance) {
                assetsFromPool = poolBalance - requestedAssets;
                assetsFromPriorToNextLoan =
                    ILoan(priorLoan).principal() +
                    ILoan(priorLoan).interest();

                assetToAReturnToPool = 0;
                outstandingLoanPrincipals =
                    outstandingLoanPrincipals_ +
                    assetsFromPool;
            } else {
                assetsFromPool = 0;
                assetsFromPriorToNextLoan =
                    poolBalance +
                    ILoan(priorLoan).principal() +
                    ILoan(priorLoan).interest() -
                    requestedAssets;

                assetToAReturnToPool =
                    requestedAssets -
                    IERC20(_liquidityAsset).balanceOf(pool);

                outstandingLoanPrincipals =
                    outstandingLoanPrincipals_ +
                    IERC20(_liquidityAsset).balanceOf(pool);
            }
        }
    }
}
