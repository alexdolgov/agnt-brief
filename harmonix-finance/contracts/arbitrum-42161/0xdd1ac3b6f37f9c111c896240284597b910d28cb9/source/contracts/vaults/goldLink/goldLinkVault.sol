// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "../../lib/ShareMath.sol";
import "../../extensions/TransferHelper.sol";
import "../../interfaces/GoldLink/IStrategyAccount.sol";
import "../../interfaces/GoldLink/IGmxFrfStrategyAccount.sol";
import "../../interfaces/GoldLink/IStrategyBank.sol";
import "../../interfaces/IArbitrumReward.sol";
import "./structs/goldLinkStruct.sol";
import "../goldLink/baseGoldLinkVault.sol";
import "../../extensions/Utils.sol";
import "hardhat/console.sol";

contract GoldLinkVault is BaseGoldLinkVault {
    address private strategyAccount;
    address private strategyBank;

    function initialize(
        address _admin,
        address _usdc,
        uint256 _minimumSupply,
        uint256 _cap,
        address _strategyBank,
        uint256 _networkCost,
        address _swapAggregatorAddress
    ) public initializer {
        strategyBank = _strategyBank;
        base_initialize(
            _admin,
            _usdc,
            _minimumSupply,
            _cap,
            _networkCost,
            _swapAggregatorAddress
        );
    }

    /**
     * @notice Opens a new strategy account if one has not already been opened.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and is non-reentrant.
     */
    function openStrategyAccount() external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        require(strategyAccount == address(0), "ACCOUNT_OPPENED");

        strategyAccount = IStrategyBank(strategyBank).executeOpenAccount(
            address(this)
        );
    }

    /**
     * @notice Adds collateral to the strategy account.
     * @param amount The amount of collateral to add.
     */
    function _addCollateral(uint256 amount) internal override {
        TransferHelper.safeApprove(vaultParams.asset, strategyBank, amount);
        IStrategyAccount(strategyAccount).executeAddCollateral(amount);
    }

    /**
     * @notice Adds collateral to the strategy account.
     * @param amount The amount of collateral to add.
     */
    function addCollateral(uint256 amount) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        TransferHelper.safeTransferFrom(vaultParams.asset, msg.sender, address(this), amount);
        _addCollateral(amount);
    }

    /**
     * @notice Borrows funds from the strategy account.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and is non-reentrant.
     * @param borrowAmount The amount to borrow.
     */
    function borrowFunds(uint256 borrowAmount) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        IStrategyAccount(strategyAccount).executeBorrow(borrowAmount);
    }

    /**
     * @notice Creates an increase order for a specified market.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE. Requires a payable amount for execution fee.
     * @param market The address of the market in which to create the increase order.
     * @param amount The amount to increase in the specified market.
     * @param executionFee The execution fee required to process the increase order.
     */
    function increaseOrder(
        address market,
        uint256 amount,
        uint256 executionFee
    ) external payable {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        IGmxFrfStrategyAccount(strategyAccount).executeCreateIncreaseOrder{
            value: msg.value
        }(market, amount, executionFee);
    }

    /**
     * @notice Creates a decrease order for a specified market.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE, is non-reentrant, and requires a payable amount for the execution fee.
     * @param market The address of the market in which to create the decrease order.
     * @param amount The amount to decrease in the specified market.
     * @param executionFee The execution fee required to process the decrease order.
     */
    function decreaseOrder(
        address market,
        uint256 amount,
        uint256 executionFee
    ) external payable nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        IGmxFrfStrategyAccount(strategyAccount).executeCreateDecreaseOrder{
            value: msg.value
        }(market, amount, executionFee);
    }

    /**
     * @notice Repays a specified loan amount to the strategy account.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and is non-reentrant.
     * @param amount The amount to repay.
     */
    function repayLoan(uint256 amount) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        _repayLoan(amount);
    }

    /**
     * @notice Withdraws a specified amount of collateral from the strategy account.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and is non-reentrant.
     * @param amount The amount of collateral to withdraw.
     * @param useSoftWithdrawal Specifies if the withdrawal should be soft.
     */
    function withdrawCollateral(
        uint256 amount,
        bool useSoftWithdrawal
    ) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        _withdrawCollateral(amount, useSoftWithdrawal);
    }

    /**
     * @notice Repays a loan by transferring funds to the strategy account.
     * @param amount The amount to repay.
     */
    function _repayLoan(uint256 amount) private {
        IStrategyAccount(strategyAccount).executeRepayLoan(amount);
    }

    /**
     * @notice Withdraws collateral from the strategy account.
     * @param collateral The amount of collateral to withdraw.
     * @param useSoftWithdrawal Specifies if the withdrawal should be soft.
     */
    function _withdrawCollateral(
        uint256 collateral,
        bool useSoftWithdrawal
    ) private {
        IStrategyAccount(strategyAccount).executeWithdrawCollateral(
            address(this),
            collateral,
            useSoftWithdrawal
        );
    }

    function withdrawProfit(
        IERC20[] calldata tokens,
        uint256[] calldata amounts,
        bytes[] calldata swapCallDataArray
    ) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        // Withdraw all specified token assets to this contract
        IGmxFrfStrategyAccount(strategyAccount).executeWithdrawErc20Assets(
            address(this),
            tokens,
            amounts
        );

        uint256 totalUsdcAmount = 0;

        // Loop through each token and swap it to vaultParams.asset
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 tokenBalance = tokens[i].balanceOf(address(this));

            if (tokenBalance > 0) {
                // Approve the swap aggregator to spend the token
                TransferHelper.safeApprove(
                    address(tokens[i]),
                    address(swapAggregator),
                    tokenBalance
                );

                // Perform the swap for the current token to vaultParams.asset
                uint256 usdcAmount = swapAggregator.swapTo(
                    address(this),
                    address(tokens[i]),
                    tokenBalance,
                    address(vaultParams.asset),
                    swapCallDataArray[i]
                );

                // Accumulate the swapped amount
                totalUsdcAmount += usdcAmount;
            }
        }

        // Add the total swapped amount as collateral
        _addCollateral(totalUsdcAmount);
    }

    /**
     * @notice Claims funding fees for specified markets and assets.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and is non-reentrant.
     * @param markets The array of market addresses from which to claim funding fees.
     * @param assets The array of asset addresses associated with the specified markets.
     */
    function claim(
        address[] memory markets,
        address[] memory assets
    ) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        IGmxFrfStrategyAccount(strategyAccount).executeClaimFundingFees(
            markets,
            assets
        );
    }

    /**
     * @notice Claims Arbitrum rewards and swaps them to USDC, then adds as collateral.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and is non-reentrant.
     * @param arbitrumToken The address of the Arbitrum reward token.
     * @param _swapCallData Data required to perform the token swap.
     */
    function claimArbitrumReward(
        address arbitrumToken,
        bytes calldata _swapCallData
    ) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        IArbitrumReward(arbitrumToken).claimRewards();

        uint256 tokenBalance = IERC20(arbitrumToken).balanceOf(address(this));
        TransferHelper.safeApprove(
            arbitrumToken,
            address(swapAggregator),
            tokenBalance
        );

        uint256 usdcAmount = swapAggregator.swapTo(
            address(this),
            address(arbitrumToken),
            tokenBalance,
            address(vaultParams.asset),
            _swapCallData
        );

        _addCollateral(usdcAmount);
    }

    /**
     * @notice Gets the amount of collateral that can be withdrawn.
     * @return The withdrawable collateral amount.
     */
    function getWithdrawableCollateral() external view returns (uint256) {
        return _getWithdrawableCollateral();
    }

    /**
     * @notice Gets the withdrawable collateral amount from the strategy bank.
     * @return The withdrawable collateral amount.
     */
    function _getWithdrawableCollateral() private view returns (uint256) {
        return
            IStrategyBank(strategyBank).getWithdrawableCollateral(
                strategyAccount
            );
    }

    /**
     * @notice Gets the current holdings of the strategy account.
     * @return The holdings in the strategy account.
     */
    function getStrategyAccountHoldings()
        external
        view
        returns (IStrategyBank.StrategyAccountHoldings memory)
    {
        return
            IStrategyBank(strategyBank).getStrategyAccountHoldings(
                strategyAccount
            );
    }

    /**
     * @notice Gets the holdings of the strategy account after paying interest.
     * @return The holdings in the strategy account after interest payment.
     */
    function getStrategyAccountHoldingsAfterPayingInterest()
        external
        view
        returns (IStrategyBank.StrategyAccountHoldings memory)
    {
        return
            IStrategyBank(strategyBank)
                .getStrategyAccountHoldingsAfterPayingInterest(strategyAccount);
    }

    /**
     * @notice Get the total value of the account in terms of the `strategyAsset`.
     * @return strategyAssetValue The value of a position in terms of USDC.
     */
    function getAccountValue()
        external
        view
        returns (uint256 strategyAssetValue)
    {
        return IGmxFrfStrategyAccount(strategyAccount).getAccountValue();
    }

    /**
     * @notice Calculates the total value locked (TVL) in GoldLink terms.
     * @return The total value locked.
     */
    function _getGoldLinkTvl() private view returns (uint256) {
        IStrategyBank.StrategyAccountHoldings memory saHoldings = IStrategyBank(
            strategyBank
        ).getStrategyAccountHoldings(strategyAccount);
        uint256 accountAmount = IGmxFrfStrategyAccount(strategyAccount)
            .getAccountValue();
        uint256 profit = accountAmount > saHoldings.loan
            ? accountAmount - saHoldings.loan
            : 0;
        uint256 loss = accountAmount < saHoldings.loan
            ? saHoldings.loan - accountAmount
            : 0;
        return saHoldings.collateral + profit - loss;
    }

    /**
     * @notice Gets the loan amount of the strategy account.
     * @return The current loan amount.
     */
    function _getAccountLoan() private view returns (uint256) {
        IStrategyBank.StrategyAccountHoldings memory saHoldings = IStrategyBank(
            strategyBank
        ).getStrategyAccountHoldings(strategyAccount);
        return saHoldings.loan;
    }

    /**
     * @notice Gets the holdings of the strategy account.
     * @return The holdings in the strategy account.
     */
    function _getSAHoldings()
        private
        view
        returns (IStrategyBank.StrategyAccountHoldings memory)
    {
        return
            IStrategyBank(strategyBank).getStrategyAccountHoldings(
                strategyAccount
            );
    }

    /**
     * @notice Calculates the total value locked (TVL) including the withdraw pool amount.
     * @return The total value locked.
     */
    function _totalValueLocked() internal view override returns (uint256) {
        return IERC20(vaultParams.asset).balanceOf(address(this));
    }

    /**
     * @notice Acquires the requested amount of funds by withdrawing collateral or repaying loans as needed.
     * @param amount The amount to acquire.
     * @return The amount acquired.
     */
    function _acquireFunds(uint256 amount) internal override returns (uint256) {
        require(amount <= IERC20(vaultParams.asset).balanceOf(address(this)), "INSUFFICIENT_BALANCE");
        
        IStrategyBank.StrategyAccountHoldings
            memory saHolding = _getSAHoldings();
        uint256 withdrawableCollateral = _getWithdrawableCollateral();

        // If we have sufficient collateral, withdraw directly
        if (withdrawableCollateral >= amount) {
            _withdrawCollateral(amount, true);
            return amount;
        }

        // Calculate the required repayment to increase withdrawable collateral
        uint256 repayAmountRequired = amount - withdrawableCollateral;
        uint256 maxRepayableCollateral = Math.min(
            repayAmountRequired,
            saHolding.collateral
        );
        uint256 repayAmount = (maxRepayableCollateral * saHolding.loan) /
            (saHolding.collateral - withdrawableCollateral);
        repayAmount = Math.min(saHolding.loan, repayAmount);

        // Repay the calculated loan amount to free up additional collateral
        _repayLoan(repayAmount);

        // Re-evaluate withdrawable collateral after repayment
        withdrawableCollateral = _getWithdrawableCollateral();
        amount = Math.min(amount, withdrawableCollateral);

        // Withdraw the final determined amount
        _withdrawCollateral(amount, true);
        return amount;
    }

    function getWithdrawPoolAmount() external view returns (uint256) {
        return vaultState.withdrawPoolAmount;
    }

    function emergencyShutdown(
        address receiver,
        uint256 amount
    ) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        TransferHelper.safeTransfer(vaultParams.asset, receiver, amount);
    }
}
