// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import "../../utils/TwoStepOwnable.sol";
import {IERC20Upgradeable as IERC20} from
    "@openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";
import "@interfaces/IQueue.sol";

/// @title Hourglass Index Token
/// @author Hourglass Foundation
/// @notice A liquid, asynchronous vault of time bound assets

contract HourglassIndex is ReentrancyGuardUpgradeable, ERC20Upgradeable, TwoStepOwnable {
    ///// External Addresses & Constants /////

    /// @notice Address of the underlying token
    address internal _depositAsset;

    uint256 internal _precision;
    uint256 internal _denominator;

    ///// Permissioned Addresses /////
    /// @notice The address of the ERC-1155 WithdrawalQueue contract
    IQueue internal _queue;

    ///// Tranche Tracking /////

    /// @notice The current tranche for deposits and withdrawals
    uint256 internal _queueTranche;
    /// @notice The conversion rate (in wei) for a tranche. Units are underlying / shares
    /// @dev A trancheToConversionRate[_queueTranche] == 1e18 this implies a 1:1 conversion between underlying and shares.
    mapping(uint256 => uint256) public trancheToConversionRate;

    ///// Deposit Tracking /////

    /// @notice user -> tranche -> underlying deposit request
    /// Tranche Settlement
    /// - When a tranche is settled, this represents a finalized deposit. This means the quantity of underlying within the mapping is
    ///     is then used to calculate the number of shares the user will receive at the settled tranche conversion rate (`finalizeDeposit`).
    ///     After `finalizeDeposit` is called, this mapping is cleared.
    /// - When a tranche is not settled, this represents a pending deposit. This number can be incremented (`requestDeposit`)
    ///     or decremented (`cancelDeposit`) by the user while the tranche remains unsettled.
    mapping(address => mapping(uint256 => uint256)) public addressToTrancheToDepositRequest;
    /// @notice Tracks the total amount of underlying awaiting deposit finalization. This is the sum of all values in
    ///    `addressToTrancheToDepositRequest` for the current tranche (the only unsettled tranche).
    uint256 public totalDepositedAssetsPending;

    ///// Withdrawal Tracking /////

    /*
        shares (HFXB tokens) held by users are referred to as liquid. 

        withdrawn share type breakdown 
        - pending (totalWithdrawnSharesPending): When a user requests a withdrawal, their shares are converted from liquid to pending. At this point, the real shares   
            (the ERC20 tokens) are burned and this is purely a conceptual designation. 
        - claimable (totalWithdrawnSharesClaimable): When a tranche is settled, pending shares become claimable shares. The shares themselves are not actually claimable, 
            but rather it is the corresponding underlying that is claimable. This is because the underlying is held in the contract and can be withdrawn by the user.
            The reason we refer to the shares as claimable is the combination of the request index and shares are the primary key for the 
            withdrawal request, as these two data items must be passed to `finalizeWithdrawal` to claim the underlying. 
        - claimed (totalWithdrawnSharesClaimed): When a withdrawal is finalized, claimable shares become claimed shares. At this point, the underlying corresponding to the 
            share denominated amount of the withdrawal request are withdrawn from the contract by the user. 

        invariant: requested = pending + claimable + claimed
    */

    /// @notice The last tranche where all withdrawals have been settled (underlying made claimable).
    uint256 public lastWithdrawalTrancheFullySettled;
    /// @notice tranche -> shares pending withdrawal (awaiting settlement before users can withdraw corresponding underlying).
    mapping(uint256 => uint256) public trancheToSharesPendingWithdrawal;
    /// @notice sum of all values across the mapping trancheToSharesPendingWithdrawal
    uint256 public totalWithdrawnSharesPending;
    /// @notice Total shares that are claimable (can be withdrawn from contract)
    uint256 public totalWithdrawnSharesClaimable;
    /// @notice Total shares that have been claimed (withdrawn from contract)
    uint256 public totalWithdrawnSharesClaimed;
    /// @notice Number of shares ever requested for withdrawal. requested = pending + claimable + claimed.
    uint256 public totalWithdrawnSharesRequested;
    //// @notice The total amount of underlying that has been earmarked as currently claimable for withdrawals.
    uint256 public totalWithdrawnAssetsClaimable;

    ///// Fees & Limiters /////

    /// @notice Fee for utilization of underlying buffer.
    uint256 public bufferFee;
    /// @notice Minimum request amount
    uint256 public minRequestAmount;
    /// @notice Pauses deposits
    bool public depositsPaused;
    /// @notice Pauses withdrawals
    bool public withdrawalsPaused;
    /// @notice When deposits are paused the pending deposited assets accounting is moved to store in this mapping.
    mapping(uint256 => uint256) public pausedTrancheAmounts;

    ////////// Modifiers //////////

    modifier depositsNotPaused() {
        if (depositsPaused) {
            revert DepositsPaused();
        }
        _;
    }

    modifier withdrawalsNotPaused() {
        if (withdrawalsPaused) {
            revert WithdrawalsPaused();
        }
        _;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////// Admin //////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////

    constructor() {
        _disableInitializers();
        // disable setting this on the implementation contract
        _queue = IQueue(address(1));
    }

    /// @notice Initialize the proxy contract
    /// @param _name The name of the token
    /// @param _symbol The symbol of the token
    /// @param _owner The address of the operator
    /// @param __depositAsset The address of the deposit token
    function initialize(string calldata _name, string calldata _symbol, address _owner, address __depositAsset)
        public
        initializer
    {
        __ERC20_init(_name, _symbol);
        __ReentrancyGuard_init();

        _setInitialOwner(_owner);

        // ensure that the deposit asset has 18 decimals
        if (ERC20Upgradeable(__depositAsset).decimals() != 18) {
            revert InvalidDecimals();
        }

        _depositAsset = __depositAsset;

        // initial minimum request amount is 1 ether for both deposits & withdrawals
        _precision = 1e18;
        _denominator = 10000;
        minRequestAmount = 1e18;
    }

    /// @notice Set the minter address
    /// @param withdrawalQueue The address of the minter (Hourglass Index)
    /// @dev Called by the factory at deployment - do not call this via deployment script
    function setDeployment(address withdrawalQueue) external {
        if (address(_queue) != address(0)) revert QueueAlreadySet();
        _queue = IQueue(withdrawalQueue);
    }

    /// @notice Updates conversion rate for tranche, settle deposits and withdrawals, and claim buffer fees
    /// @param conversionRate The conversion rate (in wei) for the tranche.
    /// @param maxAssetsNewlyClaimable The maximum amount of underlying that can be used to convert pending withdrawals to claimable withdrawals.
    /// if this amount is less than the amount to fullfill a tranche, the tranche is partially filled.
    /// if this amount is greater than the amount to fulfill a tranche, only the amount needed to fulfill the tranche is used.
    function stepTranche(uint256 conversionRate, uint256 maxAssetsNewlyClaimable)
        public
        onlyOwner
        returns (uint256 amountAssetsDeposited, uint256 amountAssetsNewlyClaimable)
    {
        if (conversionRate == 0) {
            revert InvalidConversionRate();
        }
        // This conversion rate is read in both `settleDeposits` and `settleWithdrawals`.
        trancheToConversionRate[_queueTranche] = conversionRate;

        bool doSettleDeposits = totalDepositedAssetsPending > 0;
        bool doSettleWithdrawals = totalWithdrawnSharesPending > 0 && maxAssetsNewlyClaimable > 0;

        // if there are no deposits or withdrawals to settle, then just update conversionRate & advance tranche (NAV update)
        if (doSettleDeposits) {
            amountAssetsDeposited = _settleDeposits();
        }
        if (doSettleWithdrawals) {
            amountAssetsNewlyClaimable = _settleWithdrawals(maxAssetsNewlyClaimable);
        }

        _queueTranche++;
    }

    /// @notice Settle deposits for the current tranche by converting pending deposits to claimable deposits (index shares)
    /// - Deposited underlying is sent to the owner.
    /// - Claimable deposits (HFXB) are claimed by calling `finalizeDeposit`.
    /// @dev If deposits are paused, the pending deposits should NOT be finalized & depositors should be allowed to cancel as there is likely a reason for the pause.
    function _settleDeposits() internal returns (uint256 assetsDeposited) {
        // Note We assume that `totalDepositedAssetsPending` > 0 given that `settleDeposits` is only called from `settleTranche`
        // and that we check this condition prior to calling this function.

        // pull in the pending deposit amount
        assetsDeposited = totalDepositedAssetsPending;

        // Pending deposits were converted to finalized deposits, so zero out.
        totalDepositedAssetsPending = 0;

        emit DepositTrancheSettled(
            _queueTranche,
            trancheToConversionRate[_queueTranche],
            assetsDeposited,
            (assetsDeposited * _precision) / trancheToConversionRate[_queueTranche]
        );

        // Transfer the finalized deposits to the operator
        IERC20(_depositAsset).transfer(owner(), assetsDeposited);
    }

    /// @notice Settle withdrawals for the current tranche by converting pending withdrawals to claimable withdrawals
    /// @param maxAssetsNewlyClaimable The max amount of underlying used to settle withdrawals.
    /// @return assetsNewlyClaimable The amount of depositAsset used to settle withdrawals
    /// @dev This method will only pull in underlyingNewlyClaimable units of underlying, which is <= maxUnderlyingNewlyClaimable.
    /// @dev Not callable when withdrawals are paused
    function _settleWithdrawals(uint256 maxAssetsNewlyClaimable)
        internal
        withdrawalsNotPaused
        returns (uint256 assetsNewlyClaimable)
    {
        // Note: Assumes that `maxAssetsNewlyClaimable` > 0 given that `settleWithdrawals` is only called from `settleTranche`
        // after checking this condition.

        // begin processing tranches from the last fully settled tranche - starting at "+1" causes off by one issues
        uint256 currTranche = lastWithdrawalTrancheFullySettled;
        // Accumulator for the total number of shares that become claimable (via call to `finalizeWithdrawal`) after executing the below loop.
        uint256 sharesNewlyClaimable;
        uint256 loopCounter;
        bool isPartialTranche;

        while ((assetsNewlyClaimable < maxAssetsNewlyClaimable) && (currTranche <= _queueTranche)) {
            /* Rough inductive proof that trancheConversionRate[currTranche] is valid for all possible values of currTranche: 
                Let 0 <= currTranche <= _queueTranche 
                1. _queueTranche starts at 0 and is only ever incremented in `settleTranche`. Whenever this value is incremented (i+1), we 
                can assume that the previous value (i) has a valid conversion rate (i.e. trancheConversionRate[i] is valid). 
                2. We set trancheConversionRate[_queueTranche] to some valid value in `settleTranche` before calling `settleWithdrawals`.
                3. Combining (1) and (2) we see that trancheConversionRate[currTranche] is valid for 0 <= currTranche <= _queueTranche 
            */
            uint256 conversionRate = trancheToConversionRate[currTranche];
            uint256 sharesNewlyClaimableForTranche = trancheToSharesPendingWithdrawal[currTranche];
            uint256 assetsToFulfillTranche;

            if (sharesNewlyClaimableForTranche > 0) {
                // calculate the _depositAsset needed to fill the entire tranche
                assetsToFulfillTranche = (sharesNewlyClaimableForTranche * conversionRate) / _precision;

                // check if there is enough _depositAsset to satisfy all requested redemptions for this tranche
                isPartialTranche = assetsNewlyClaimable + assetsToFulfillTranche > maxAssetsNewlyClaimable;

                if (isPartialTranche) {
                    // This tranche is partially settled.
                    assetsToFulfillTranche = maxAssetsNewlyClaimable - assetsNewlyClaimable;
                    sharesNewlyClaimableForTranche = (assetsToFulfillTranche * _precision) / conversionRate;
                }

                // local state update
                sharesNewlyClaimable += sharesNewlyClaimableForTranche;
                assetsNewlyClaimable += assetsToFulfillTranche;

                // global state update
                trancheToSharesPendingWithdrawal[currTranche] -= sharesNewlyClaimableForTranche;

                emit WithdrawalTrancheSettled(
                    currTranche,
                    conversionRate,
                    isPartialTranche,
                    assetsToFulfillTranche,
                    sharesNewlyClaimableForTranche
                );
            }

            currTranche++;

            // limit the number of loops executable to prevent gas exhaustion
            loopCounter++;
            if (loopCounter == 50) {
                break;
            }
        }

        // update the amount of currently available _depositAsset
        totalWithdrawnAssetsClaimable += assetsNewlyClaimable;
        // Convert pending shares to claimable shares
        totalWithdrawnSharesPending -= sharesNewlyClaimable;
        // update the accumulator for the total number of shares that have become claimable
        totalWithdrawnSharesClaimable += sharesNewlyClaimable;
        // update the last tranche fully satisfied
        lastWithdrawalTrancheFullySettled = isPartialTranche ? currTranche - 1 : currTranche;

        // pull in the _depositAsset (only the amount needed) to service the withdrawals
        IERC20(_depositAsset).transferFrom(owner(), address(this), assetsNewlyClaimable);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////// User Interactions //////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////

    /// @notice Initiates a user's deposit of underlying to receive shares
    /// @notice Deposits are placed in a queue and once the operator settles the queue, the user can mint their shares
    /// @param amount The amount of underlying to deposit (must be > `minRequestAmount`)
    /// @dev Not callable when deposits are paused
    function requestDeposit(uint256 amount) external depositsNotPaused nonReentrant {
        if (amount < minRequestAmount) {
            revert MinimumAmountNotMet();
        }

        // check the current balance of the asset
        uint256 currentBalance = IERC20(_depositAsset).balanceOf(address(this));

        // Pull in underlying from user
        IERC20(_depositAsset).transferFrom(msg.sender, address(this), amount);

        // prevent the use of a tax-on-transfer token
        if (IERC20(_depositAsset).balanceOf(address(this)) != currentBalance + amount) {
            revert DepositAssetTransferFailed();
        }

        // Create a pending deposit request for the user
        addressToTrancheToDepositRequest[msg.sender][_queueTranche] += amount;
        // Add `amount` to the pending deposits
        totalDepositedAssetsPending += amount;

        emit DepositRequested(msg.sender, _queueTranche, amount);
    }

    /// @notice Allows a user to cancel a pending deposit request to receive their SFRAX back
    /// @notice Cannot be called once the deposit has been settled
    function cancelDeposit() external depositsNotPaused nonReentrant {
        // Can only cancel the current tranche
        uint256 depositTranche = _queueTranche;

        // cannot cancel in this manner from a non-paused tranche
        if (pausedTrancheAmounts[depositTranche] > 0) {
            revert DepositTranchePaused(depositTranche);
        }

        // Sanity check. There is no possible way that the current tranche conversion rate can be > 0.
        if (trancheToConversionRate[depositTranche] > 0) {
            revert DepositAlreadySettled();
        }

        // cancel the deposit request
        uint256 amount = addressToTrancheToDepositRequest[msg.sender][depositTranche];

        if (amount == 0) revert DepositNotRequested();

        // remove the user's pending balance as it is being returned to them
        addressToTrancheToDepositRequest[msg.sender][depositTranche] = 0;

        // deduct `amount` from the pending deposits
        totalDepositedAssetsPending -= amount;

        // transfer the sfrax back to the user
        IERC20(_depositAsset).transfer(msg.sender, amount);

        emit DepositCancelled(msg.sender, depositTranche, amount);
    }

    /// @notice Allows users to cancel or roll/redeposit (if currently unpaused) a deposit made into a tranched that got paused
    /// @param depositTranche The tranche that the user has a pending deposit in
    /// @param rollDeposit If true AND if deposits are not currently paused, the deposit will be rolled into the current tranche
    function managePausedDeposit(uint256 depositTranche, bool rollDeposit) external nonReentrant {
        // The only cancellable tranche is the one at the time of pause
        // Previous tranches had been settled and must be finalized instead of cancelled
        if (pausedTrancheAmounts[depositTranche] == 0) {
            revert DepositsNotPaused();
        }

        // cancel the deposit request
        uint256 amount = addressToTrancheToDepositRequest[msg.sender][depositTranche];

        // remove the user's balance
        addressToTrancheToDepositRequest[msg.sender][depositTranche] = 0;

        // Deduct `amount` from the `pausedTrancheAmounts` instead of `totalDepositedSFraxPending`
        pausedTrancheAmounts[depositTranche] -= amount;

        // either roll deposit to the most current tranche (if not paused) or cancel the deposit for a refund
        if (rollDeposit) {
            // cannot roll a deposit from a paused tranche while still paused
            if (depositsPaused) revert DepositsPaused();

            // add the amount to the pending deposits
            totalDepositedAssetsPending += amount;

            // add the balance to the user's new deposit
            uint256 currentTranche = _queueTranche;
            addressToTrancheToDepositRequest[msg.sender][currentTranche] += amount;

            emit DepositRolled(msg.sender, depositTranche, currentTranche, amount);
        } else {
            // transfer the sfrax back to the user
            IERC20(_depositAsset).transfer(msg.sender, amount);

            emit DepositCancelled(msg.sender, depositTranche, amount);
        }
    }

    /// @notice Once deposits have been settled & conversion rate set, the user can mint their shares
    /// @param depositTranche The tranche the user requested in
    /// @dev Callable when deposits are paused as they've already been settled
    function finalizeDeposit(uint256 depositTranche) external depositsNotPaused nonReentrant {
        /**
         * Note:
         *   As setting a conversion rate during a deposit pause does not settle those deposits,
         *     nor can those deposits ever be finalized, even after the pause is lifted. Only the tranche
         *     at the time of the pause is not settled, therefore users can finalize any tranche where
         *     the pausedTrancheAmounts equals zero.
         *   The `pausedTrancheAmounts` value can be zero, even for a paused tranche, if and only if all pending deposits
         *     from that paused tranche have been cancelled, which means that there is no value for the user to settle anyway,
         *     which causes the transaction to revert when finalizing a zero amount.
         *   Because of this, a tranche's conversion rate being non-zero cannot be singularly relied upon for validation
         *     of deposit finalization eligibility, thought this must also be true for all deposit finalization.
         */
        if (pausedTrancheAmounts[depositTranche] > 0) {
            revert DepositTranchePaused(depositTranche);
        }

        // // Remove the user's deposit request
        uint256 sharesToMint = _executeDepositFinalization(depositTranche);

        // Mint the shares to the user
        _mint(msg.sender, sharesToMint);

        emit DepositFinalized(msg.sender, depositTranche, sharesToMint);
    }

    /// @notice Allows a user to finalize multiple deposit requests at once
    /// @param depositTranches The tranches the user is requesting to deposit in
    /// @dev Callable when deposits are paused as they've already been settled
    function finalizeDeposits(uint256[] calldata depositTranches) external nonReentrant {
        uint256 sharesToMint;
        uint256 numDeposits = depositTranches.length;
        for (uint256 i; i < numDeposits;) {
            // Check that the tranche was not from a paused tranche, as that tranche would need to be cancelled (see note in `finalizeDeposit`)
            if (pausedTrancheAmounts[depositTranches[i]] > 0) {
                revert DepositTranchePaused(depositTranches[i]);
            }

            // Calculate the shares mintable by this deposit
            sharesToMint += _executeDepositFinalization(depositTranches[i]);

            unchecked {
                ++i;
            }
        }

        emit DepositsFinalized(msg.sender, depositTranches, sharesToMint);

        // mint shares to the user
        _mint(msg.sender, sharesToMint);
    }

    function _executeDepositFinalization(uint256 tranche) internal returns (uint256 sharesToMint) {
        uint256 trancheConversionRate = trancheToConversionRate[tranche];
        if (trancheConversionRate == 0) {
            revert DepositsNotSettled();
        }
        uint256 assetsDeposited = addressToTrancheToDepositRequest[msg.sender][tranche];
        if (assetsDeposited == 0) {
            revert DepositNotRequested();
        }
        // Remove the user's deposit request
        addressToTrancheToDepositRequest[msg.sender][tranche] = 0;

        // Calculate the shares mintable by this deposit
        sharesToMint += (assetsDeposited * _precision) / trancheConversionRate;
    }

    /// @notice Allows a user to request withdrawing the HFXB shares for underlying - this is not atomic.
    /// @notice Withdrawal requests cannot be cancelled, but they can be transferred.
    /// @notice An undefined amount of time may pass between requesting a withdrawal and finalizing it.
    /// @param shares The amount of shares to cash out.
    /// @return requestIndex The index of the withdrawal request, which is the position in line for redemptions/finalization.
    /// @dev Not callable if withdrawals are paused
    function requestWithdrawal(uint256 shares)
        external
        withdrawalsNotPaused
        nonReentrant
        returns (uint256 requestIndex)
    {
        if (shares < minRequestAmount) {
            revert MinimumAmountNotMet();
        }

        _burn(msg.sender, shares);

        // The id of the users withdrawal request is the accumulated value of all previous requested amounts
        requestIndex = totalWithdrawnSharesRequested;

        // since the rate isn't known at the time of request, we need to know how many shares are in each tranche
        uint256 tranche = _queueTranche;
        trancheToSharesPendingWithdrawal[tranche] += shares;
        totalWithdrawnSharesPending += shares;
        totalWithdrawnSharesRequested += shares;

        _queue.mintQueuePosition(msg.sender, shares, tranche, requestIndex);

        emit WithdrawalRequested(msg.sender, tranche, requestIndex, shares);
    }

    /// @notice Once the Operator has set the redemption rate for the tranche, the user can finalize their withdrawal
    /// @param requestIndex The tranche the user is requesting to withdraw from
    /// @param shares The amount of shares to finalize
    /// @dev Not callable if withdrawals are paused
    function finalizeWithdrawal(uint256 requestIndex, uint256 shares) external withdrawalsNotPaused nonReentrant {
        // amount being finalized must meet the mininmum amount threshold
        if (shares < minRequestAmount) {
            revert MinimumAmountNotMet();
        }

        uint256 requestTranche = _queue.tokenTranche(requestIndex);

        // Ensure that user's withdrawal request has been settled. Subtract out already withdrawn shares from the request.
        if (
            requestIndex + shares + _queue.totalAmountBurned(requestIndex)
                > totalWithdrawnSharesClaimed + totalWithdrawnSharesClaimable
        ) {
            revert WithdrawalNotSettled();
        }

        // use up the redemption request
        _queue.burnQueuePosition(msg.sender, shares, requestIndex);

        // calculate the shares of _depositAsset the user will receive
        (uint256 amountDepositAssetsPayable, uint256 bufferFeeIncurred) =
            calculateDepositAssetForSharesAtTranche(shares, requestTranche);

        // sanity check since contract may hold _depositAsset not allocated for redemptions
        if (amountDepositAssetsPayable + bufferFeeIncurred > totalWithdrawnAssetsClaimable) {
            revert InsufficientBalanceForWithdrawal();
        }

        // update queue state
        _afterWithdraw(shares, amountDepositAssetsPayable + bufferFeeIncurred);

        emit WithdrawalFinalized(msg.sender, requestTranche, requestIndex);

        // if there is a buffer utilization fee incurred, send that portion to the fund
        if (bufferFeeIncurred > 0) {
            IERC20(_depositAsset).transfer(owner(), bufferFeeIncurred);
        }

        IERC20(_depositAsset).transfer(msg.sender, amountDepositAssetsPayable);
    }

    /// @notice Allows for finalization of multiple requests for a given user.
    /// @param requestIndices The requests to finalize
    /// @param shares The amount of shares to finalize for this user's request id
    function finalizeWithdrawals(uint256[] calldata requestIndices, uint256[] calldata shares)
        external
        withdrawalsNotPaused
        nonReentrant
    {
        // read from state once to save gas
        uint256 minAmount = minRequestAmount;
        uint256 numRequests = requestIndices.length;
        for (uint256 i; i < numRequests;) {
            // amount being finalized must meet the mininmum amount threshold
            if (shares[i] < minAmount) {
                revert MinimumAmountNotMet();
            }

            unchecked {
                ++i;
            }
        }

        // perform the withdrawals
        _finalizeWithdrawals(requestIndices, shares);
    }

    /// @notice Allows users to finalize the entire balance of their withdrawal requests
    /// @param requestIndices The requests to finalize
    function finalizeAllWithdrawals(uint256[] calldata requestIndices) external withdrawalsNotPaused nonReentrant {
        // obtain the user balances before calling down to _finalizeWithdrawals instead of checking against minAmount
        _finalizeWithdrawals(requestIndices, _queue.balancesOf(msg.sender, requestIndices));
    }

    /// @notice Allows for finalization of multiple requests for a given user.
    /// @param requestIndices The requests to finalize
    function _finalizeWithdrawals(uint256[] calldata requestIndices, uint256[] memory shares) internal {
        // obtain the tranches and amounts previously burned for each token id/request index
        (uint256[] memory requestTranches, uint256[] memory amountsBurned) = _queue.tranchesAndAmounts(requestIndices);

        // track the amount of _depositAsset to disburse
        uint256 depositAssetWithdrawn;
        // track any accrued buffer utilization fees
        uint256 bufferFeesIncurred;
        // track the total number of shares being redeemed
        uint256 sharesFinalized;

        // loop through each request to validate redeemability & calculate state changing values for later writes
        uint256 numRequests = requestIndices.length;
        for (uint256 i; i < numRequests;) {
            // check that enough _depositAsset is available to fulfill the request
            if (
                (requestIndices[i] + shares[i] + amountsBurned[i])
                    > totalWithdrawnSharesClaimed + totalWithdrawnSharesClaimable
            ) {
                revert NotEligibleForRedemption();
            }

            // add the amounts to total being settled
            sharesFinalized += shares[i];

            // calculate the amount of _depositAsset the user will receive
            (uint256 amountDepositAssetsPayable, uint256 thisBufferFee) =
                calculateDepositAssetForSharesAtTranche(shares[i], requestTranches[i]);
            depositAssetWithdrawn += amountDepositAssetsPayable;
            bufferFeesIncurred += thisBufferFee;

            unchecked {
                ++i;
            }
        }

        // sanity check since contract may hold sfrax not allocated for redemptions
        if ((depositAssetWithdrawn + bufferFeesIncurred) > totalWithdrawnAssetsClaimable) {
            revert InsufficientBalanceForWithdrawal();
        }

        // burn the queue tokens - note this is the first state changing operation
        _queue.burnBatchQueuePositions(msg.sender, requestIndices, shares);

        // update state to reflect the redemptions
        _afterWithdraw(sharesFinalized, depositAssetWithdrawn + bufferFeesIncurred);

        emit WithdrawalBatchFinalized(msg.sender, requestTranches, requestIndices);

        if (bufferFeesIncurred > 0) {
            IERC20(_depositAsset).transfer(owner(), bufferFeesIncurred);
        }

        // transfer funds to user
        IERC20(_depositAsset).transfer(msg.sender, depositAssetWithdrawn);
    }

    function _afterWithdraw(uint256 sharesFinalized, uint256 depositAssetUtilized) internal {
        totalWithdrawnSharesClaimable -= sharesFinalized;
        totalWithdrawnSharesClaimed += sharesFinalized;
        totalWithdrawnAssetsClaimable -= depositAssetUtilized;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////// Getters //////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////

    /// @notice Returns amount of underlying received (ignoring buffer fee) and buffer fee incurred for a given number of shares within a tranche.
    /// @param shares The amount of shares to calculate the conversion rate for.
    /// @param tranche The target tranche used
    /// @return amountDepositAssetsPayable The amount of deposit asset the user will receive for the given amount of shares
    /// @return bufferFeeIncurred The buffer fee incurred for the given amount of shares, subtract this from `amountUnderlyingIgnoringFee` to get the amount of deposit asset the user will receive
    function calculateDepositAssetForSharesAtTranche(uint256 shares, uint256 tranche)
        public
        view
        returns (uint256 amountDepositAssetsPayable, uint256 bufferFeeIncurred)
    {
        // Cannot check values for unsettled tranches
        if (trancheToConversionRate[tranche] == 0) {
            revert TrancheNotReady();
        }

        // Calculate the amount of underlying sfrax a user will receive for this request
        // Note: This does not subtract out the buffer fee.
        amountDepositAssetsPayable = (shares * trancheToConversionRate[tranche]) / _precision;

        if (bufferFee > 0) {
            bufferFeeIncurred = (amountDepositAssetsPayable * bufferFee) / _denominator;
            // deduct the buffer fee from the amount of sfrax the shares are worth
            amountDepositAssetsPayable -= bufferFeeIncurred;
        }
    }

    /// @notice Returns amount of _depositAsset an amount of shares are backed by at the most recent conversion rate
    /// @notice If redeemed for _depositAsset, the actual value withdrawn may be less depending on buffer fees and the present conversion rates
    function calculateMostRecentDepositAssetForShares(uint256 shares) external view returns (uint256) {
        (uint256 amountDepositAssetsIgnoringFee, uint256 bufferFeeIncurred) =
            calculateDepositAssetForSharesAtTranche(shares, _queueTranche - 1);
        return amountDepositAssetsIgnoringFee + bufferFeeIncurred;
    }

    /// @notice Obtains the number of shares a user has awaiting redemption for a given index
    /// @param user The user address that has an existing pending withdrawal request
    /// @param requestIndex The index/token id of the request
    /// @return The number of shares the user has awaiting redemption for the given index
    function getWithdrawalRequestShares(address user, uint256 requestIndex) external view returns (uint256) {
        return _queue.balanceOf(user, requestIndex);
    }

    /// @notice Returns the address of the Withdrawal Queue token (ERC-1155)
    /// @return The address of the Withdrawal Queue token
    function queue() external view returns (address) {
        return address(_queue);
    }

    /// @notice Returns the current queueTranche
    /// @return _queueTranche
    function queueTranche() external view returns (uint256) {
        return _queueTranche;
    }

    /// @notice Returns the address of the deposit/denomination token
    function depositAsset() external view returns (address) {
        return _depositAsset;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////// Setters //////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////

    /// @notice Sets the fee on withdrawn underlying
    /// @param newFee The new fee (in BPS)
    function setBufferFee(uint256 newFee) external onlyOwner {
        if (newFee > _denominator) {
            revert InvalidFee();
        }
        emit BufferFeeSet(bufferFee, newFee);
        bufferFee = newFee;
    }

    /// @notice Pauses deposits & deposit settlement/_queueTranche incrementing
    /// @param conversionRate Needed when pausing a tranche to preserve the paused tranche's conversion rate & deposits (without settling deposits)
    /// @dev This moves the `totalDepositedSFraxPending` to the `pausedTrancheAmounts` mapping to preserve the pending deposits for cancellation or later rolling.
    /// @dev Setting the conversion rate correctly at the time of pause is critical, just like all other times,
    ///      as there may be withdrawals requested in that tranche that rely upon this value being accurate.
    function setDepositPause(uint256 conversionRate) external onlyOwner {
        // if pausing deposits, must also increment tranche with the correct conversion rate & no settlements
        if (!depositsPaused) {
            depositsPaused = true;
            uint256 pausedTranche = _queueTranche;
            // can only do this once per tranche so setting equal to rather than incrementing is safe
            pausedTrancheAmounts[pausedTranche] = totalDepositedAssetsPending;
            totalDepositedAssetsPending = 0;
            emit DepositPauseSet(pausedTranche, totalDepositedAssetsPending);
            // must increment the tranche so the pending deposits & withdrawals are preserved, but not settled
            stepTranche(conversionRate, 0);
        } else {
            depositsPaused = false;
            emit DepositsUnpaused(false);
        }
    }

    /// @notice Pauses withdrawals & withdrawal settlement
    /// @param isPaused Whether to pause or unpause withdrawals
    function setWithdrawPause(bool isPaused) external onlyOwner {
        emit WithdrawPauseSet(isPaused, _queueTranche);
        withdrawalsPaused = isPaused;
    }

    /// @notice Sets the minimum amount a user can request to deposit or withdraw
    /// @param minAmount The new minimum amount (in wei)
    function setMinRequestAmount(uint256 minAmount) external onlyOwner {
        if (minAmount < _denominator) {
            revert MinimumAmountNotMet();
        }
        emit MinRequestAmountSet(minRequestAmount, minAmount);
        minRequestAmount = minAmount;
    }

    ////////// ERRORS //////////

    // admin errors
    error InvalidDecimals();
    error InvalidConversionRate();
    error TrancheNotReady();
    error InvalidFee();
    error QueueAlreadySet();

    // user errors
    error DepositsPaused();
    error DepositsNotPaused();
    error DepositTranchePaused(uint256 pausedTranche);
    error WithdrawalsPaused();
    error DepositNotRequested();
    error DepositAssetTransferFailed();
    error DepositsNotSettled();
    error DepositAlreadySettled();
    error WithdrawalNotSettled();
    error MinimumAmountNotMet();
    error InsufficientBalanceForWithdrawal();
    error NotEligibleForRedemption();

    ////////// EVENTS //////////

    // admin events
    event DepositPauseSet(uint256 pausedTranche, uint256 amountAssetsPending);
    event DepositsUnpaused(bool isPaused);
    event WithdrawPauseSet(bool isPaused, uint256 pausedTranche);
    event BufferFeeSet(uint256 oldFee, uint256 newFee);
    event MinRequestAmountSet(uint256 oldMin, uint256 newMin);

    // tranche settlement events
    event DepositTrancheSettled(
        uint256 tranche, uint256 conversionRate, uint256 amountDeposited, uint256 sharesConverted
    );
    event WithdrawalTrancheSettled(
        uint256 tranche, uint256 conversionRate, bool isPartial, uint256 assetsClaimable, uint256 sharesConverted
    );

    // user events
    event DepositRequested(address user, uint256 tranche, uint256 amount);
    event DepositCancelled(address user, uint256 tranche, uint256 amount);
    event DepositRolled(address user, uint256 oldTranche, uint256 newTranche, uint256 amount);
    event DepositFinalized(address user, uint256 tranche, uint256 sharesReceived);
    event DepositsFinalized(address user, uint256[] tranches, uint256 sharesReceived);
    event WithdrawalRequested(address user, uint256 tranche, uint256 requestIndex, uint256 shares);
    event WithdrawalFinalized(address user, uint256 tranche, uint256 requestIndex);
    event WithdrawalBatchFinalized(address user, uint256[] tranches, uint256[] requestIndices);
}
