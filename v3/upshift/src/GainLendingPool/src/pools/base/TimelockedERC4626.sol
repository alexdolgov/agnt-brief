// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../libraries/DateUtils.sol";
import "./BaseUpgradeableERC4626.sol";

/**
 * @title Represents a liquidity pool in which withdrawals can be time-locked or instantaneous.
 * @dev The liquidity pool accepts deposits in a single token only, per ERC-4626.
 */
abstract contract TimelockedERC4626 is BaseUpgradeableERC4626 {
    /// @dev A reasonable time-window for manipulating the block timestamp as a miner.
    uint256 constant internal _TIMESTAMP_MANIPULATION_WINDOW = 5 minutes;

    struct RedeemSummary {
        uint256 shares; // The number of shares to burn.
        uint256 assets; // The asset amount that was claimable at redemption time per current token price.
    }

    /// @notice The hour at which withdrawals are processed. It ranges from 0 to 23.
    uint8 public liquidationHour;

    /// @notice The duration of the time-lock for withdrawals.
    uint256 public lagDuration;

    /// @notice The total number of shares that need to be burned.
    uint256 public globalLiabilityShares;

    /// @notice The total amount of collectable fees, at any point in time.
    uint256 public totalCollectableFees;

    address public settlementAccount;

    /// @dev The liability (forecast) that needs to be fulfilled at a given point in time
    mapping (bytes32 => RedeemSummary) internal _dailyRequirement;

    /// @dev The list of addresses that can claim funds at a given point in time
    mapping (bytes32 => address[]) internal _uniqueReceiversPerCluster;

    /// @dev The index of each unique receiver per cluster
    mapping (bytes32 => mapping(address => uint256)) internal _receiverIndexes;

    /// @dev The amount of underlying tokens that can be claimed by a given address at a specific point in time
    mapping (bytes32 => mapping(address => uint256)) internal _receiverAmounts;

    /// @dev The number of shares that can be burned by a given address at a specific point in time
    mapping (bytes32 => mapping(address => uint256)) internal _burnableAmounts;

    /// @dev Tracks the applicable fee per receiver per period
    mapping (bytes32 => mapping(address => uint256)) internal _feeAmountsByReceiver;

    /// @dev Tracks the latest unix epoch of the redeem request for a given receiver
    mapping (bytes32 => mapping(address => uint256)) internal _traceableRequests;

    /**
     * @notice This event is triggered when a holder requests a withdrawal.
     * @param ownerAddr The address of the holder.
     * @param receiverAddr The address of the receiver.
     * @param shares The amount of shares (LP tokens) to burn.
     * @param assets The amount of underlying assets to transfer.
     * @param fee The fee applied to the withdrawal.
     * @param year The year component of the scheduled date.
     * @param month The month component of the scheduled date.
     * @param day The day component of the scheduled date.
     */
    event WithdrawalRequested (address ownerAddr, address receiverAddr, uint256 shares, uint256 assets, uint256 fee, uint256 year, uint256 month, uint256 day);

    /**
     * @notice This event is triggered when funds are effectively transferred to the receiving address specified by the holder.
     * @param assetsAmount The amount of underlying assets sent to the receiving address.
     * @param processedOn The unix epoch in which the claim was processed.
     * @param receiverAddr The address of the receiver.
     * @param requestedOn The unix epoch of the withdrawal request.
     * @param wasBlacklisted Indicates if the receiver was blacklisted. In this case the funds are sent to the settlement account.
     */
    event WithdrawalProcessed(uint256 assetsAmount, uint256 processedOn, address receiverAddr, uint256 requestedOn, bool wasBlacklisted);


    // ----------------------------------------
    // ERC-4626 endpoint overrides
    // ----------------------------------------
    function withdraw(
        uint256, 
        address, 
        address
    ) external override pure returns (uint256) {
        // Revert the call to ERC4626.withdraw(args) in order to stay compatible with the ERC-4626 standard.
        // Per ERC-4626 spec (https://eips.ethereum.org/EIPS/eip-4626):
        // - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner not having enough shares, etc).
        // - Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed. 
        //   Those methods should be performed separately.
        revert WithdrawalRequestRequired();

        // We could enqueue a withdrawal request from this endpoint, but it wouldn't compatible with the ERC-4626 standard.
        // Likewise, we could process the funds for the receiver sppecified but -again- it wouldn't compatible with the ERC-4626 standard.
        // Hence the tx revert. Provided we revert in all cases, the function becomes pure.
    }

    function redeem(
        uint256, 
        address, 
        address
    ) external override pure returns (uint256) {
        // Revert the call to ERC4626.redeem(args) in order to stay compatible with the ERC-4626 standard.
        // Per ERC-4626 spec (https://eips.ethereum.org/EIPS/eip-4626):
        // - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner not having enough shares, etc).
        // - Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed. 
        //   Those methods should be performed separately.
        revert WithdrawalRequestRequired();

        // We could enqueue a withdrawal request from this endpoint, but it wouldn't compatible with the ERC-4626 standard.
        // Likewise, we could process the funds for the receiver sppecified but -again- it wouldn't compatible with the ERC-4626 standard.
        // Hence the tx revert. Provided we revert in all cases, the function becomes pure.
    }

    // ----------------------------------------
    // Timelocked ERC-4626 features
    // ----------------------------------------
    /**
     * @notice Requests to redeem a given number of shares from the holder specified.
     * @dev The respective amount of assets will be made available in X hours from now, where "X" is the lag defined by the owner of the pool.
     * @param shares The number of shares to burn.
     * @param receiverAddr The address of the receiver.
     * @param holderAddr The address of the tokens holder.
     * @return assets The amount of assets that can be claimed for this specific withdrawal request.
     * @return claimableEpoch The date at which the assets become claimable. This is expressed as a Unix epoch.
     */
    function requestRedeem(
        uint256 shares, 
        address receiverAddr, 
        address holderAddr
    ) external nonReentrant ifConfigured ifWithdrawalsNotPaused returns (
        uint256 assets, 
        uint256 claimableEpoch
    ) {
        if (isBlacklisted[msg.sender] || isBlacklisted[receiverAddr] || isBlacklisted[holderAddr]) revert AddressBlacklisted();

        uint256 year;
        uint256 month;
        uint256 day;
        (claimableEpoch, year, month, day, assets) = _registerRedeemRequest(shares, holderAddr, receiverAddr, msg.sender);

        // If the pool is not time-locked then transfer the funds immediately.
        if (lagDuration == 0) {
            claimableEpoch = block.timestamp;
            _claim(year, month, day, receiverAddr);
        }
    }

    /**
     * @notice Allows any public address to process the scheduled withdrawal requests of the receiver specified.
     * @dev Throws if the receiving address is not the legitimate address you registered via "requestRedeem()"
     * @param year The year component of the claim. It can be a past date.
     * @param month The month component of the claim. It can be a past date.
     * @param day The day component of the claim. It can be a past date.
     * @param receiverAddr The address of the legitimate receiver of the funds.
     * @return uint256 The effective number of shares (LP tokens) that were burnt from the liquidity pool.
     * @return uint256 The effective amount of underlying assets that were transfered to the receiver.
     */
    function claim(
        uint256 year, 
        uint256 month, 
        uint256 day,
        address receiverAddr
    ) external nonReentrant ifConfigured ifWithdrawalsNotPaused returns (uint256, uint256) {
        if (isBlacklisted[msg.sender] || isBlacklisted[receiverAddr]) revert AddressBlacklisted();

        // This function is provided as a fallback.
        // If -for any reason- a third party does not process the scheduled withdrawals then the 
        // legitimate receiver can claim the respective funds on their own.
        // Thus as a legitimate receiver you can always claim your funds, even if the processing party fails to honor their promise.
        return _claim(year, month, day, receiverAddr);
    }

    /**
     * @notice Processes all of the withdrawal requests scheduled for the date specified.
     * @dev Throws if the date is earlier than the liquidation/processing hour.
     * @param year The year component of the claim. It can be a past date.
     * @param month The month component of the claim. It can be a past date.
     * @param day The day component of the claim. It can be a past date.
     * @param maxLimit The number of transactions to process. The maximum is defined by the function "getScheduledTransactionsByDate()"
     */
    function processAllClaimsByDate(
        uint256 year, 
        uint256 month, 
        uint256 day,
        uint256 maxLimit
    ) external nonReentrant ifConfigured ifWithdrawalsNotPaused {
        if (maxLimit == 0) revert LimitRequired();
        if (isBlacklisted[msg.sender]) revert AddressBlacklisted();
        if (settlementAccount == address(0)) revert SettlementAccountNotSet();

        bytes32 dailyCluster = _getDailyClusterHash(year, month, day);

        // Make sure we have pending requests to process.
        if (_dailyRequirement[dailyCluster].assets == 0) revert NothingToProcess();

        // Make sure withdrawals are processed at the expected epoch only.
        if (block.timestamp + _TIMESTAMP_MANIPULATION_WINDOW < DateUtils.timestampFromDateTime(year, month, day, liquidationHour, 0, 0)) revert TooEarly();

        // This is the number of unique ERC20 transfers we will need to make in this transaction
        uint256 workSize = (_uniqueReceiversPerCluster[dailyCluster].length > maxLimit) ? maxLimit : _uniqueReceiversPerCluster[dailyCluster].length;
        uint256 startingPos = _uniqueReceiversPerCluster[dailyCluster].length;

        address[] memory receivers = new address[](workSize);
        uint256[] memory amounts = new uint256[](workSize);
        uint256 totalFees;
        uint256 sharesToBurn;
        uint256 assetsToSend;
        uint256 x = workSize;
        address receiverAddr;

        for (uint256 i = startingPos; i > (startingPos - workSize); i--) {
            receiverAddr = _uniqueReceiversPerCluster[dailyCluster][i - 1];
            x--;
            receivers[x] = receiverAddr;
            amounts[x] = _receiverAmounts[dailyCluster][receiverAddr];
            assetsToSend += amounts[x];
            sharesToBurn += _burnableAmounts[dailyCluster][receiverAddr];
            totalFees += _feeAmountsByReceiver[dailyCluster][receiverAddr];
            _receiverAmounts[dailyCluster][receiverAddr] = 0;
            _burnableAmounts[dailyCluster][receiverAddr] = 0;
            _feeAmountsByReceiver[dailyCluster][receiverAddr] = 0;
            _uniqueReceiversPerCluster[dailyCluster].pop();
            _receiverIndexes[dailyCluster][receiverAddr] = 0;
        }

        globalLiabilityShares -= sharesToBurn;
        totalCollectableFees += totalFees;
        _dailyRequirement[dailyCluster].assets -= assetsToSend;
        _dailyRequirement[dailyCluster].shares -= sharesToBurn;

        // Make sure the pool has enough balance to cover withdrawals.
        uint256 balanceBefore = IERC20(_underlyingAsset).balanceOf(address(this));
        require(balanceBefore >= assetsToSend, "Insufficient balance");

        _burnErc20(address(this), sharesToBurn);

        // Untrusted external calls        
        _sendFunds(dailyCluster, receivers, amounts);

        // Balance check, provided the external asset is untrusted
        require(IERC20(_underlyingAsset).balanceOf(address(this)) == balanceBefore - assetsToSend, "Balance check failed");
    }

    // ----------------------------------------
    // Views
    // ----------------------------------------
    /**
     * @notice Gets the date at which your withdrawal request can be claimed.
     * @return year The year.
     * @return month The month.
     * @return day The day.
     * @return claimableEpoch The Unix epoch at which your withdrawal request can be claimed.
     */
    function getWithdrawalEpoch() external view returns (
        uint256 year, 
        uint256 month, 
        uint256 day,
        uint256 claimableEpoch
    ) {
        (year, month, day) = DateUtils.timestampToDate(block.timestamp + _TIMESTAMP_MANIPULATION_WINDOW + lagDuration);
        claimableEpoch = DateUtils.timestampFromDateTime(year, month, day, liquidationHour, 0, 0);
    }

    /**
     * @notice Gets the funding requirement of the date specified.
     * @dev This is a forecast on the amount of assets that need to be available at the pool on the date specified.
     * @param year The year.
     * @param month The month.
     * @param day The day.
     * @return shares The number of shares (LP tokens) that will be burned on the date specified.
     * @return assets The amount of assets that will be transferred on the date specified.
     */
    function getRequirementByDate(
        uint256 year, 
        uint256 month, 
        uint256 day
    ) external view returns (uint256 shares, uint256 assets) {
        bytes32 dailyCluster = _getDailyClusterHash(year, month, day);        
        shares = _dailyRequirement[dailyCluster].shares;
        assets = _dailyRequirement[dailyCluster].assets;
    }

    /**
     * @notice Gets the asset amount that can be claimed by a receiver at the date specified.
     * @dev This is a forecast on the amount of assets that can be claimed by a given party on the date specified.
     * @param year The year.
     * @param month The month.
     * @param day The day.
     * @param receiverAddr The address of the receiver.
     * @return uint256 The total amount of assets that can be claimed at a the date specified.
     */
    function getClaimableAmountByReceiver(
        uint256 year, 
        uint256 month, 
        uint256 day,
        address receiverAddr
    ) external view returns (uint256) {
        bytes32 dailyCluster = _getDailyClusterHash(year, month, day);
        return _receiverAmounts[dailyCluster][receiverAddr];
    }

    /**
     * @notice Gets the total number of shares to burn at the date specified for a given receiver.
     * @dev This is a forecast on the amount of assets that can be claimed by a given party on the date specified.
     * @param year The year.
     * @param month The month.
     * @param day The day.
     * @param receiverAddr The address of the receiver.
     * @return uint256 The total number of shares to burn at the date specified for a given receiver.
     */
    function getBurnableAmountByReceiver(
        uint256 year, 
        uint256 month, 
        uint256 day,
        address receiverAddr
    ) external view returns (uint256) {
        bytes32 dailyCluster = _getDailyClusterHash(year, month, day);

        return _burnableAmounts[dailyCluster][receiverAddr];
    }

    /**
     * @notice Gets the total number of transactions to run at a given date.
     * @param year The year.
     * @param month The month.
     * @param day The day.
     * @return totalTransactions The number of transactions to execute.
     * @return executionEpoch The Unix epoch at which these transactions should be submitted to the blockchain.
     */
    function getScheduledTransactionsByDate(
        uint256 year, 
        uint256 month, 
        uint256 day
    ) external view returns (uint256 totalTransactions, uint256 executionEpoch) {
        bytes32 dailyCluster = _getDailyClusterHash(year, month, day);

        totalTransactions = _uniqueReceiversPerCluster[dailyCluster].length;
        executionEpoch = DateUtils.timestampFromDateTime(year, month, day, liquidationHour, 0, 0);
    }

    // ----------------------------------------
    // Inner functions
    // ----------------------------------------
    function _registerRedeemRequest(
        uint256 shares, 
        address holderAddr, 
        address receiverAddr,
        address callerAddr
    ) internal returns (
        uint256 claimableEpoch, 
        uint256 year, 
        uint256 month, 
        uint256 day, 
        uint256 effectiveAssetsAmount
    ) {
        if (holderAddr == address(this)) revert InvalidHolder();
        if (shares == 0) revert SharesAmountRequired();
        if (_balances[holderAddr] < shares) revert InsufficientShares();

        // The number of assets the receiver will get at the current price/ratio, per ERC-4626.
        (uint256 assetsAmount, uint256 assetsAfterFee) = _previewRedeemWithFees(shares);
        if (assetsAmount > maxWithdraw(holderAddr)) revert WithdrawalLimitReached();
        if (assetsAfterFee == 0) revert AmountTooLow();

        // The withdrawal fee to apply
        uint256 applicableFee = assetsAmount - assetsAfterFee;
        effectiveAssetsAmount = assetsAfterFee;

        // The time slot (cluster) of the lagged withdrawal
        (year, month, day) = DateUtils.timestampToDate(block.timestamp + _TIMESTAMP_MANIPULATION_WINDOW + lagDuration);

        // The hash of the cluster
        bytes32 dailyCluster = _getDailyClusterHash(year, month, day);

        // The withdrawal will be processed at the following epoch
        claimableEpoch = DateUtils.timestampFromDateTime(year, month, day, liquidationHour, 0, 0);

        // ERC20 allowance scenario
        if (callerAddr != holderAddr) _spendAllowance(holderAddr, callerAddr, shares);

        // Transfer the shares from the token holder to this contract.
        // We transfer the shares to the liquidity pool in order to avoid fluctuations on the token price.
        // Otherwise, burning shares at this point in time would affect the number of assets (liability) 
        // of future withdrawal requests because the token price would increase.
        _executeErc20Transfer(holderAddr, address(this), shares);

        // Global metrics
        _dailyRequirement[dailyCluster].assets += assetsAmount;
        _dailyRequirement[dailyCluster].shares += shares;
        globalLiabilityShares += shares;

        // Unique receivers by date. We will transfer underlying tokens to this receiver shortly.
        if (_receiverAmounts[dailyCluster][receiverAddr] == 0) {
            _uniqueReceiversPerCluster[dailyCluster].push(receiverAddr);
            _receiverIndexes[dailyCluster][receiverAddr] = _uniqueReceiversPerCluster[dailyCluster].length;
        }

        // Track the amount of underlying assets we are required to transfer to the receiver address specified.
        _receiverAmounts[dailyCluster][receiverAddr] += assetsAfterFee;
        _burnableAmounts[dailyCluster][receiverAddr] += shares;
        _feeAmountsByReceiver[dailyCluster][receiverAddr] += applicableFee;

        // The unix epoch of the latest redeem request. It overrides any previous requests.
        // For example, if the holder submits 1000 requests then the mapping below gets updated based on the latest request.
        _traceableRequests[dailyCluster][receiverAddr] = block.timestamp;

        // Emit the event
        emit WithdrawalRequested(holderAddr, receiverAddr, shares, assetsAmount, applicableFee, year, month, day);
    }

    function _claim(
        uint256 year, 
        uint256 month, 
        uint256 day,
        address receiverAddr
    ) internal returns (uint256, uint256) {
        bytes32 dailyCluster = keccak256(abi.encode(year, month, day));

        uint256 shares = _burnableAmounts[dailyCluster][receiverAddr];
        if (shares == 0) revert NoSharesForReceiver();

        uint256 claimableAssets = _receiverAmounts[dailyCluster][receiverAddr];
        uint256 assetFee = _feeAmountsByReceiver[dailyCluster][receiverAddr];

        if (lagDuration > 0) {
            // Make sure withdrawals are processed at the expected epoch only.
            if (block.timestamp + _TIMESTAMP_MANIPULATION_WINDOW < DateUtils.timestampFromDateTime(year, month, day, liquidationHour, 0, 0)) revert TooEarly();
        }

        // Internal state changes (trusted)
        _receiverAmounts[dailyCluster][receiverAddr] = 0;
        _burnableAmounts[dailyCluster][receiverAddr] = 0;
        _feeAmountsByReceiver[dailyCluster][receiverAddr] = 0;
        _dailyRequirement[dailyCluster].shares -= shares;
        _dailyRequirement[dailyCluster].assets -= (claimableAssets + assetFee);
        globalLiabilityShares -= shares;
        totalCollectableFees += assetFee;

        _deleteReceiver(dailyCluster, receiverAddr);

        _burnErc20(address(this), shares);
        emit WithdrawalProcessed(claimableAssets, block.timestamp, receiverAddr, _traceableRequests[dailyCluster][receiverAddr], false);

        // Make sure the pool has enough balance to cover withdrawals.
        uint256 balanceBefore = IERC20(_underlyingAsset).balanceOf(address(this));
        SafeERC20.safeTransfer(_underlyingAsset, receiverAddr, claimableAssets);

        // Balance check, provided the external asset is untrusted
        if (balanceBefore - claimableAssets < IERC20(_underlyingAsset).balanceOf(address(this))) revert BalanceCheckFailed();

        return (shares, claimableAssets);
    }

    function _deleteReceiver(bytes32 dailyCluster, address addr) private {
        uint256 idx = _receiverIndexes[dailyCluster][addr] - 1;
        uint256 totalReceiversByDate = _uniqueReceiversPerCluster[dailyCluster].length;
        address lastItem = _uniqueReceiversPerCluster[dailyCluster][totalReceiversByDate - 1];

        if (addr != lastItem) {
            _uniqueReceiversPerCluster[dailyCluster][totalReceiversByDate - 1] = _uniqueReceiversPerCluster[dailyCluster][idx];
            _uniqueReceiversPerCluster[dailyCluster][idx] = lastItem;
            _receiverIndexes[dailyCluster][lastItem] = idx + 1;
        }
        
        _uniqueReceiversPerCluster[dailyCluster].pop();
        _receiverIndexes[dailyCluster][addr] = 0;
    }

    function _sendFunds(bytes32 dailyCluster, address[] memory receivers, uint256[] memory amounts) private {
        address recipientAddr;

        for (uint256 i; i < receivers.length; i++) {
            recipientAddr = (isBlacklisted[receivers[i]]) ? settlementAccount : receivers[i];
            
            emit WithdrawalProcessed(amounts[i], block.timestamp, receivers[i], _traceableRequests[dailyCluster][receivers[i]], isBlacklisted[receivers[i]]);

            SafeERC20.safeTransfer(_underlyingAsset, recipientAddr, amounts[i]);
        }
    }

    function _getDailyClusterHash(uint256 year, uint256 month, uint256 day) internal pure returns (bytes32) {
        return keccak256(abi.encode(year, month, day));
}
}
