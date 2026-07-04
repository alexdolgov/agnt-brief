// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IDeltaManager_PRD.sol";
import "./delta/Delta.sol";
import "./KYC.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

contract DeltaManager is
    UUPSUpgradeable,
    AccessControlEnumerableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    IDeltaManager
{
    using SafeERC20 for IERC20;

    // ERC20 token used to Mint DELTA with
    IERC20 internal _collateral;

    // DELTA contract
    Delta internal _delta;

    // KYC contract
    KYC internal _kyc;

    // The address to which the `collateral` is sent
    address internal _assetRecipient;

    // The address to which fees are sent
    address internal _feeRecipient;

    // The address from which redemptions are processed
    address internal _assetSender;

    // Nested mapping containing mint requests for an epoch
    // { <epoch> : {<user> : <collateralAmount> }
    mapping(uint256 => mapping(address => uint256))
        internal _mintRequestsPerEpoch;

    struct RedemptionRequest {
        address redeemer;
        uint256 amountDelta;
        uint256 epoch;
        bool processing;
    }

    RedemptionRequest[] internal _redemptionQueue;

    // Struct representing all redemption requests in an epoch
    struct RedemptionRequests {
        // Total DELTA burned in the epoch
        uint256 totalBurned;
        // Mapping from address to amount of DELTA address burned
        mapping(address => uint256) addressToBurnAmt; // Stores the amount of tokens burned for redemption
        mapping(address => uint256) redeemerToIndex; // Stores the index of the redeemer in the queue
        mapping(address => bool) redeemerToProcessing;
    }

    // Mapping from epoch to redemption info struct for that epoch
    mapping(uint256 => RedemptionRequests) internal _redemptionInfoPerEpoch;

    // Mapping used for getting the exchange rate during a given epoch
    mapping(uint256 => uint256) internal _epochToExchangeRate;

    mapping(address => mapping(address => uint256)) public transferPromises;
    // Minimum amount that must be deposited to mint DELTA
    // Denoted in decimals of `collateral`
    uint256 internal _minimumDepositAmount;

    // Minting fee specified in basis points
    uint256 public mintFee;

    // Limit for how far `exchangeRate` can stray from
    // `lastSetMintExchangeRate` within an epoch (in basis points)
    uint256 internal _exchangeRateDeltaLimit;

    // Minimum amount that must be redeemed for a withdraw request
    uint256 internal _minimumRedeemAmount;

    // Maximum amount that can be minted during an epoch
    uint256 public mintLimit;

    // Amount already minted during the `currentEpoch`
    uint256 internal _currentMintAmount;

    // Epoch that contract is currently in
    uint256 public currentEpoch;

    // Duration of an epoch in seconds
    uint256 internal _epochDuration;

    // Timestamp of the start of `currentEpoch`
    uint256 internal _currentEpochStartTimestamp;

    // Timestamp of the contract start
    uint256 private _contractStartTimestamp;

    // `exchangeRate` at start of `currentEpoch`
    uint256 public lastSetMintExchangeRate;

    // Maximum amount that can be redeemed during an epoch
    uint256 public redeemLimit;

    // Amount already redeemed during the `currentEpoch`
    uint256 internal _currentRedeemAmount;

    // Decimal multiplier representing the difference between `DELTA` decimals
    // In `collateral` token decimals
    uint256 internal _decimalsMultiplier;

    // Helper constant that allows us to specify basis points in calculations
    uint256 internal constant BPS_DENOMINATOR = 10_000;

    bytes32 internal constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    bytes32 internal constant OPERATOR_ADMIN = keccak256("OPERATOR_ADMIN");
    bytes32 internal constant OFFCHAIN_SERVICE = keccak256("OFFCHAIN_SERVICE");

    address public kycAddress;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address collateral,
        address delta,
        address operatorAdmin,
        address defaultAdmin,
        address minterAdmin,
        address offchainService,
        address kyc,
        address assetRecipient,
        address assetSender,
        uint256 epochDuration,
        address feeRecipient,
        uint256 _mintLimit,
        uint256 _redeemLimit,
        uint256 currentEpochStartTimestamp
    ) public initializer {
        __AccessControlEnumerable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        _deltaManagerInitUnchained(
            collateral,
            delta,
            operatorAdmin,
            defaultAdmin,
            minterAdmin,
            offchainService,
            kyc,
            assetRecipient,
            assetSender,
            epochDuration,
            feeRecipient,
            _mintLimit,
            _redeemLimit,
            currentEpochStartTimestamp
        );
    }

    function _deltaManagerInitUnchained(
        address collateral,
        address delta,
        address operatorAdmin,
        address defaultAdmin,
        address minterAdmin,
        address offchainService,
        address kyc,
        address assetRecipient,
        address assetSender,
        uint256 epochDuration,
        address feeRecipient,
        uint256 _mintLimit,
        uint256 _redeemLimit,
        uint256 currentEpochStartTimestamp
    ) internal initializer {
        require(collateral != address(0), "CollateralZeroAddress");
        require(delta != address(0), "DeltaZeroAddress");
        require(kyc != address(0), "KycZeroAddress");
        require(assetRecipient != address(0), "AssetRecipientZeroAddress");
        if (assetSender == address(0)) {
            assetSender = address(this);
        }

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(OPERATOR_ADMIN, operatorAdmin);
        _grantRole(MINTER_ADMIN, minterAdmin);
        _grantRole(OFFCHAIN_SERVICE, offchainService);

        _collateral = IERC20(collateral);
        _delta = Delta(delta);
        _kyc = KYC(kyc);
        _feeRecipient = feeRecipient;
        _assetRecipient = assetRecipient;
        _assetSender = assetSender;

        mintLimit = _mintLimit;
        redeemLimit = _redeemLimit;
        _epochDuration = epochDuration;

        _currentEpochStartTimestamp = currentEpochStartTimestamp;
        _contractStartTimestamp = currentEpochStartTimestamp;

        _decimalsMultiplier =
            10 **
                (IERC20Metadata(delta).decimals() -
                    IERC20Metadata(collateral).decimals());

        _minimumDepositAmount = 10_000;
        mintFee = 0;
        _exchangeRateDeltaLimit = 10000;
        lastSetMintExchangeRate = 1e6;
    }

    function _authorizeUpgrade(
        address /*newImplementation*/
    ) internal view override {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "DeltaManager: unauthorized"
        );
    }
    // Override grantRole to restrict to DEFAULT_ADMIN_ROLE
    function grantRole(bytes32 role, address account) public override(AccessControlUpgradeable, IAccessControlUpgradeable) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.grantRole(role, account);
    }

    // Override revokeRole to restrict to DEFAULT_ADMIN_ROLE
    function revokeRole(bytes32 role, address account) public override(AccessControlUpgradeable, IAccessControlUpgradeable) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.revokeRole(role, account);
    }


    /**
     * @notice Allows users to request the minting of DELTA tokens in exchange for collateral.
     * Users send collateral to the contract, and DELTA tokens will be minted after the promise is resolved by an admin
     *
     * @param collateralAmountIn Amount of collateral tokens to deposit.
     */
    function requestMint(
        uint256 collateralAmountIn
    )
        external
        override
        updateEpoch
        nonReentrant
        whenNotPaused
        checkKYC(msg.sender)
    {
        if (collateralAmountIn < _minimumDepositAmount) {
            revert MintRequestAmountTooSmall();
        }

        uint256 feesInCollateral = _getMintFees(collateralAmountIn);
        uint256 depositValueAfterFees = collateralAmountIn - feesInCollateral;

        _checkAndUpdateMintLimit(depositValueAfterFees);

        _mintRequestsPerEpoch[currentEpoch][
            msg.sender
        ] += depositValueAfterFees;

        if (feesInCollateral > 0) {
            _collateral.transferFrom(msg.sender, _feeRecipient, feesInCollateral);
        }
        _collateral.transferFrom(
            msg.sender,
            _assetRecipient,
            depositValueAfterFees
        );

        emit MintRequested(
            msg.sender,
            currentEpoch,
            collateralAmountIn,
            depositValueAfterFees,
            feesInCollateral
        );
    }

    /**
     * @dev Pauses all contract activities that are marked as `whenNotPaused`.
     * This function can only be called by an account with the `MANAGER_ADMIN` role.
     * Once called, it sets the contract state to paused, preventing execution of functions that require the contract to be in a non-paused state.
     * This is useful for emergency stops or maintenance tasks.
     *
     * Requirements:
     * - The caller must have the `MANAGER_ADMIN` role.
     *
     * Emits a `Paused` event.
     */
    function pause() external onlyRole(OPERATOR_ADMIN) {
        _pause();
    }

    /**
     * @dev Unpauses the contract, resuming activities that are marked as `whenNotPaused`.
     * This function can only be called by an account with the `MANAGER_ADMIN` role.
     * It reverses the effect of the `pause` function, allowing normal operations of the contract functions that were previously halted.
     * This is typically used after the reason for the pause has been resolved.
     *
     * Requirements:
     * - The caller must have the `MANAGER_ADMIN` role.
     * - The contract must be in a paused state.
     *
     * Emits an `Unpaused` event.
     */
    function unpause() external onlyRole(OPERATOR_ADMIN) {
        _unpause();
    }

    /**
     * @notice Allows admin to resolve promise and send DELTA tokens to investors earned based on their deposited amount and the current Net Asset Value (NAV) of the fund.
     * The number of tokens minted is determined by dividing the deposited amount by the scaled NAV of the fund for that day (scaled by a factor of 10,000 for four decimal places).
     *
     * @param users Address of the user claiming the DELTA tokens.
     * @param refundees Address of the user to refund the collateral to.
     * @param epochToClaim Epoch for which the user is claiming tokens.
     **/

    function resolveDeposit(
        address[] calldata users,
        address[] calldata refundees,
        uint256 epochToClaim
    ) external updateEpoch nonReentrant onlyRole(MINTER_ADMIN) {
        _checkAddressesKYC(users);
        _checkAddressesKYC(refundees);
        _processDepositRefund(refundees, epochToClaim);
        uint256 size = users.length;
        for (uint256 i = 0; i < size; ++i) {
            address user = users[i];
            uint256 collateralDeposited = _mintRequestsPerEpoch[epochToClaim][
                user
            ];
            if (collateralDeposited == 0) {
                continue;
            }

            // Compute the amount of DELTA tokens due based on the provided scaled NAV and the collateral deposited.
            uint256 deltaOwed = (collateralDeposited * BPS_DENOMINATOR) /
                _epochToExchangeRate[epochToClaim];

            _mintRequestsPerEpoch[epochToClaim][user] = 0;
            _delta.mint(user, deltaOwed);

            emit MintCompleted(
                user,
                deltaOwed,
                collateralDeposited,
                _epochToExchangeRate[epochToClaim],
                epochToClaim,
                msg.sender
            );
        }
    }

    /**
     * @dev Allows the owner to transfer out any ERC20 tokens hold in the contract
     * @param tokenAddress The address of the ERC20 token to transfer
     * @param to Address to transfer the tokens to
     * @param amount Amount of tokens to transfer
     */
    function transferCollateral(
        address tokenAddress,
        address to,
        uint256 amount
    ) external onlyRole(OPERATOR_ADMIN) nonReentrant {
        require(to != address(0), "MyContract: transfer to the zero address");
        bool success = IERC20(tokenAddress).transfer(to, amount);
        require(success, "MyContract: Transfer failed");
        emit CollateralTransfered(tokenAddress, to, amount, msg.sender);
    }

    /**
     * @dev Processes refunds of deposits to a list of addresses (refundees) for a specified epoch.
     * This is a private function that calculates and transfers the refund amounts in DELTA tokens to each address in the provided list.
     * The function iterates over each address in the `refundees` array and processes refunds based on the mint requests of the given `epochToService`.
     *
     * If the contract doesn't have sufficient collateral balance to fulfill a refund, it stops processing further refunds, reverting the state to before the failed refund attempt.
     * The function emits events for successful refunds or when a refund is skipped due to insufficient collateral.
     *
     * @param refundees An array of addresses to whom the refunds will be issued.
     * @param epochToService The epoch for which the refund is being processed.
     *
     * @return totalDeltaAmountRefunded The total amount of DELTA tokens refunded in this transaction.
     *
     * Requirements:
     * - The function requires that the contract has enough collateral balance to cover the refund.
     * - Refunds are processed until either all refundees are serviced or the collateral balance runs out.
     * - The function emits `DepositRefundIssued` event for each successful refund and `DepositRefundWithoutCollateral` event if refund cannot be processed due to insufficient collateral.
     */
    function _processDepositRefund(
        address[] calldata refundees,
        uint256 epochToService
    ) private returns (uint256 totalDeltaAmountRefunded) {
        uint256 size = refundees.length;
        uint256 collateralBalance = _collateral.balanceOf(_assetSender);
        for (uint256 i = 0; i < size; ++i) {
            address refundee = refundees[i];
            uint256 collateralRefund = _mintRequestsPerEpoch[epochToService][
                refundee
            ];
            _mintRequestsPerEpoch[epochToService][refundee] = 0;

            if (collateralBalance < collateralRefund) {
                // If not enough collateral, stop processing without errors
                _mintRequestsPerEpoch[epochToService][
                    refundee
                ] = collateralRefund;
                emit DepositRefundWithoutCollateral(
                    refundee,
                    epochToService,
                    collateralRefund
                );

                break;
            }
            require(
                collateralRefund <= _collateral.balanceOf(_assetSender),
                "Insufficient token balance"
            );
            bool success;
            // Check if assetSender is the same as the contract address or a wallet address
            if (_assetSender == address(this)) {
                success = _collateral.transfer(refundee, collateralRefund);
            } else {
                _collateral.transferFrom(
                    _assetSender,
                    refundee,
                    collateralRefund
                );
                success = true;
            }
            require(success, "Token transfer failed");

            totalDeltaAmountRefunded += collateralRefund;
            emit DepositRefundIssued(
                refundee,
                collateralRefund,
                epochToService,
                msg.sender
            );
            collateralBalance -= collateralRefund;
        }
        return totalDeltaAmountRefunded;
    }

    /**
     * @notice Creates a transfer promise to move tokens from one address to another.
     *
     * This function records a promise to transfer a specified amount of tokens from the `from` address to the `to` address.
     * It is restricted to being called only by the Delta contract. On successful execution, it emits a `TransferPromiseCreated` event.
     *
     * @param from The address from which the tokens are promised to be transferred.
     * @param to The address to receive the tokens.
     * @param amount The amount of tokens to be transferred.
     * @return True if the transfer promise is successfully created.
     *
     * Emits a `TransferPromiseCreated` event.
     */
    function createTransferPromise(
        address from,
        address to,
        uint256 amount
    ) external returns (bool) {
        require(
            msg.sender == address(_delta),
            "DeltaManager: Unauthorized call"
        ); // Ensure only Delta contract can call this

        transferPromises[from][to] += amount;

        emit TransferPromiseCreated(from, to, amount); // Emit the event
        return true;
    }
    /**
      * Function to change KYC Address
    */
    function setKYC(address kyc) external onlyRole(OPERATOR_ADMIN) nonReentrant {
        _kyc = KYC(kyc);
        kycAddress = kyc;
    }

    /**
     * @notice Fulfills a previously made transfer promise by transferring the specified amount of tokens.
     *
     * This external function is responsible for fulfilling a transfer promise. It checks if the promised amount
     * between the `from` and `to` addresses is sufficient and then proceeds to transfer the specified `amount` of tokens.
     * Access to this function is restricted to accounts with the `OFFCHAIN_SERVICE` role. It is also marked as `nonReentrant` for added security.
     *
     * @param from The address from which the promised tokens are transferred.
     * @param to The address to receive the tokens.
     * @param amount The amount of tokens to be transferred.
     *
     * Requirements:
     * - The caller must have the `MINTER_ADMIN` role.
     * - The promised amount must be equal to or greater than the specified `amount`.
     *
     * Emits a `TransferPromiseFulfilled` event on successful transfer.
     */
    function fulfillTransferPromise(
        address from,
        address to,
        uint256 amount
    ) external onlyRole(MINTER_ADMIN) nonReentrant {
        uint256 promisedAmount = transferPromises[from][to];
        require(
            promisedAmount >= amount,
            "DeltaManager: Amount exceeds promise"
        );

        transferPromises[from][to] -= amount; // Reduce the amount of tokens promised

        // Transfer the tokens to the recipient
        _delta.completeTransfer(to, amount);

        emit TransferPromiseFulfilled(from, to, amount);
    }

    /**
     * @notice Refunds a transfer promise by sending the promised DELTA back to the initial holder.
     * @param from The address that initially promised to transfer DELTA.
     * @param to The address that was supposed to receive the DELTA.
     * @param amount The amount of DELTA tokens to refund.
     */
    function refundTransferPromise(
        address from,
        address to,
        uint256 amount
    ) external onlyRole(OFFCHAIN_SERVICE) nonReentrant {
        uint256 promisedAmount = transferPromises[from][to];
        require(
            promisedAmount >= amount,
            "DeltaManager: Amount exceeds promise"
        );

        transferPromises[from][to] -= amount; // Reduce the amount of tokens promised

        // Transfer the tokens back to the initial holder
        _delta.completeTransfer(from, amount);

        emit TransferPromiseRefunded(from, to, amount);
    }

    /**
     * @notice Computes the minting fee for a given collateral amount.
     *
     * @param collateralAmount Amount of collateral deposited.
     * @return The calculated minting fee.
     */
    function _getMintFees(
        uint256 collateralAmount
    ) private view returns (uint256) {
        return (collateralAmount * mintFee) / BPS_DENOMINATOR;
    }
    



    /**
     * @notice Checks and updates the current mint limit.
     * Ensures that mint operations do not exceed the set rate limit.
     *
     * @param collateralAmountIn Amount of collateral deposited for minting.
     */
    function _checkAndUpdateMintLimit(uint256 collateralAmountIn) private {
        if (collateralAmountIn > mintLimit - _currentMintAmount) {
            revert MintExceedsRateLimit();
        }

        _currentMintAmount += collateralAmountIn;
    }

    /**
     * @notice Sets the minimum amount of collateral that can be deposited.
     * @dev Can only be called by an account with the `MANAGER_ADMIN` role.
     *
     * @param minimumDepositAmount The minimum amount of collateral to set.
     */
    function setMinimumDepositAmount(
        uint256 minimumDepositAmount
    ) external override onlyRole(OPERATOR_ADMIN) {
        if (minimumDepositAmount < BPS_DENOMINATOR) {
            revert MinimumDepositAmountTooSmall();
        }
        uint256 oldMinimumDepositAmount = minimumDepositAmount;
        _minimumDepositAmount = minimumDepositAmount;
        emit MinimumDepositAmountSet(
            oldMinimumDepositAmount,
            _minimumDepositAmount
        );
    }

    /**
     * @notice Sets the exchange rate for a given epoch.
     * @dev Can only be called by an account with the `MINTER_ADMIN` role. Epoch must have passed.
     *
     * @param navScaled The Net Asset Value (NAV) of the fund per Delta token for the day, scaled appropriately (e.g., scaled by a factor of 10000 for 4 decimal places).
     * This represents the value of one share in the fund or pool in scaled units.
     * @param epochsToSet The epoch for which the exchange rate is being set.
     **/
    function setNavForMultipleEpochs(
        uint256 navScaled,
        uint256[] memory epochsToSet
    ) external override updateEpoch onlyRole(MINTER_ADMIN) {
        require(navScaled != 0, "ZeroExchangeRate");

        for (uint256 i = 0; i < epochsToSet.length; i++) {
            uint256 epochToSet = epochsToSet[i];
            uint256 oldExchangeRate = lastSetMintExchangeRate;

            _epochToExchangeRate[epochToSet] = navScaled;

            emit MintExchangeRateSet(epochToSet, oldExchangeRate, navScaled);
        }

        lastSetMintExchangeRate = navScaled;
    }

    /**
     * @notice Overrides the exchange rate for a given epoch.
     * @dev Can only be called by an account with the `MINTER_ADMIN` role. Epoch must have passed.
     *
     * @param correctExchangeRate The corrected exchange rate.
     * @param epochToSet The epoch for which the exchange rate is being overridden.
     * @param _lastSetMintExchangeRate The last set mint exchange rate.
     */
    function overrideExchangeRate(
        uint256 correctExchangeRate,
        uint256 epochToSet,
        uint256 _lastSetMintExchangeRate
    ) external override updateEpoch onlyRole(MINTER_ADMIN) {
        if (epochToSet >= currentEpoch) {
            revert MustServicePastEpoch();
        }
        uint256 incorrectRate = _epochToExchangeRate[epochToSet];
        _epochToExchangeRate[epochToSet] = correctExchangeRate;
        if (_lastSetMintExchangeRate != 0) {
            lastSetMintExchangeRate = _lastSetMintExchangeRate;
        }
        emit MintExchangeRateOverridden(
            epochToSet,
            incorrectRate,
            correctExchangeRate,
            lastSetMintExchangeRate
        );
    }

    /**
     * @notice Allows a user to request redemption of tokens.
     * @dev Ensures user is KYC approved and contract is not paused.
     *
     * @param amountDeltaToRedeem Amount of tokens to redeem.
     */
    function requestRedemption(
        uint256 amountDeltaToRedeem
    )
        external
        override
        updateEpoch
        nonReentrant
        whenNotPaused
        checkKYC(msg.sender)
    {
        if (amountDeltaToRedeem < _minimumRedeemAmount) {
            revert WithdrawRequestAmountTooSmall();
        }

        _checkAndUpdateRedeemLimit(amountDeltaToRedeem);

        uint256 redeemerIndex = _redemptionInfoPerEpoch[currentEpoch]
            .redeemerToIndex[msg.sender];

        // Check if the redeemer already exists in the queue for the current epoch
        if (
            _redemptionQueue.length > redeemerIndex &&
            _redemptionQueue[redeemerIndex].redeemer == msg.sender &&
            _redemptionQueue[redeemerIndex].epoch == currentEpoch
        ) {
            // Update the existing request
            _redemptionQueue[redeemerIndex].amountDelta += amountDeltaToRedeem;

            // Update the addressToBurnAmt mapping
            _redemptionInfoPerEpoch[currentEpoch].addressToBurnAmt[
                    msg.sender
                ] += amountDeltaToRedeem;
        } else {
            // Add a new request
            RedemptionRequest memory newRequest = RedemptionRequest({
                redeemer: msg.sender,
                amountDelta: amountDeltaToRedeem,
                epoch: currentEpoch,
                processing: false
            });

            _redemptionQueue.push(newRequest);

            // Update the addressToBurnAmt and redeemerToIndex mappings
            _redemptionInfoPerEpoch[currentEpoch].addressToBurnAmt[
                    msg.sender
                ] = amountDeltaToRedeem;
            _redemptionInfoPerEpoch[currentEpoch].redeemerToIndex[msg.sender] =
                _redemptionQueue.length -
                1;
        }

        require(
            _delta.transferFromManager(
                msg.sender,
                address(this),
                amountDeltaToRedeem
            ),
            "Token transfer failed"
        );

        emit RedemptionRequested(msg.sender, amountDeltaToRedeem, currentEpoch);
    }

    /**
     * @notice Checks if a redemption amount is within the allowed limits and updates the current redemption amount.
     *
     * This private function is used to validate and track redemption requests. It ensures the requested amount is non-zero and does not exceed the set redemption limit when combined with pending redemptions.
     * It iterates through the redemption queue to calculate the total pending redemptions and then checks if the new redemption request plus the current and pending redemptions exceed the limit.
     *
     * @param amount The amount to be redeemed.
     *
     * Requirements:
     * - `amount` must be greater than zero.
     * - The sum of `amount`, `_currentRedeemAmount`, and pending redemptions must not exceed the `redeemLimit`.
     *
     * Reverts:
     * - If `amount` is zero, it reverts with `RedeemAmountCannotBeZero`.
     * - If the redemption amount exceeds the limit, it reverts with `RedeemExceedsRateLimit`.
     */
function _checkAndUpdateRedeemLimit(uint256 amount) private {
    require(amount > 0, "RedeemAmountCannotBeZero");

    uint256 pendingRedemption = 0;
    uint256 queueLength = _redemptionQueue.length; // Cache the array length
    for (uint256 i = 0; i < queueLength; i++) {
        if (!_redemptionQueue[i].processing) {
            pendingRedemption += _redemptionQueue[i].amountDelta;
            // Ensure no overflow occurs during accumulation
            require(pendingRedemption >= _redemptionQueue[i].amountDelta, "Overflow in pendingRedemption");
        }
    }

    // Ensure no overflow before performing the subtraction
    require(redeemLimit >= _currentRedeemAmount + pendingRedemption, "Redeem limit exceeded");
    
    uint256 remainingLimit = redeemLimit - (_currentRedeemAmount + pendingRedemption);
    require(amount <= remainingLimit, "RedeemExceedsRateLimit");

    // Safely increment the current redeem amount
    _currentRedeemAmount += amount;
    // Ensure no overflow occurred
    require(_currentRedeemAmount >= amount, "Overflow in _currentRedeemAmount");
}


    /**
     * @notice Sets a new mint limit for the contract.
     *
     * This external function allows updating the mint limit, which is the maximum amount of tokens that can be minted.
     * Only an account with the `OPERATOR_ADMIN` role can execute this function.
     * It records the old mint limit before updating to the new value and emits a `MintLimitSet` event after the update.
     *
     * @param _mintLimit The new mint limit to be set.
     *
     * Requirements:
     * - The caller must have the `OPERATOR_ADMIN` role.
     *
     * Emits a `MintLimitSet` event indicating the old and new mint limits.
     */
    function setMintLimit(uint256 _mintLimit) external onlyRole(OPERATOR_ADMIN) {
        uint256 oldMintLimit = mintLimit;
        mintLimit = _mintLimit;
        emit MintLimitSet(oldMintLimit, mintLimit);
    }

    /**
     * @notice Updates the redeem limit of the contract.
     *
     * This external function allows the modification of the redeem limit, which is the maximum amount of tokens that can be redeemed.
     * It is accessible only by an account with the `OPERATOR_ADMIN` role.
     * The function saves the previous redeem limit, updates it to the new value, and then emits a `RedeemLimitSet` event to record this change.
     *
     * @param _redeemLimit The new redeem limit to be set.
     *
     * Requirements:
     * - The caller must have the `OPERATOR_ADMIN` role.
     *
     * Emits a `RedeemLimitSet` event indicating the old and new redeem limits.
     */
    function setRedeemLimit(
        uint256 _redeemLimit
    ) external onlyRole(OPERATOR_ADMIN) {
        uint256 oldRedeemLimit = redeemLimit;
        redeemLimit = _redeemLimit;
        emit RedeemLimitSet(oldRedeemLimit, redeemLimit);
    }

    /**
     * @notice Processes redemption requests for a specific epoch.
     *
     * This external function handles the redemption requests of multiple redeemers for a given epoch.
     * It marks each redemption in the queue as processing and emits a `RedemptionProcessing` event for each.
     * Access is restricted to accounts with the `MINTER_ADMIN` role.
     *
     * @param redeemers An array of addresses of redeemers whose redemption requests are to be processed.
     * @param epochToClaim The epoch for which the redemptions are being processed.
     *
     * Requirements:
     * - The caller must have the `MINTER_ADMIN` role.
     * - Each redeemer must have a valid index in the redemption queue.
     * - Redemptions for the given index should not already be marked as processing.
     *
     * Emits a `RedemptionProcessing` event for each redeemer whose redemption is marked as processing.
     */
    function completeRedemptions(
        address[] calldata redeemers,
        uint256 epochToClaim
    ) external onlyRole(MINTER_ADMIN) {
        // Ensure NAV has been set for this epoch before processing
        require(_epochToExchangeRate[epochToClaim] != 0, "NAV not set for this epoch");

        RedemptionRequests storage requests = _redemptionInfoPerEpoch[
            epochToClaim
        ];

        for (uint256 i = 0; i < redeemers.length; i++) {
            address currentRedeemer = redeemers[i];
            uint256 index = requests.redeemerToIndex[currentRedeemer];

            require(
                index < _redemptionQueue.length,
                "Redeemer index out of bounds"
            );
            require(
                !_redemptionQueue[index].processing,
                "Redemption already marked as processing"
            );

            _redemptionQueue[index].processing = true;
            emit RedemptionProcessing(
                currentRedeemer,
                epochToClaim,
                msg.sender
            );
        }
    }

    /**
     * @notice Checks if the KYC (Know Your Customer) status for a given account is valid.
     *
     * This private view function queries the KYC status of an account by calling the `_kyc.isKYC` function.
     * It returns a boolean indicating whether the account has a valid KYC status.
     *
     * @param account The address of the account to check for KYC validity.
     * @return True if the account has a valid KYC status, false otherwise.
     */
    function _isKYCValid(address account) private view returns (bool) {
        return _kyc.isKYC(account);
    }

    /**
     * @notice Initiates the refund process for redemption requests of a specific epoch.
     *
     * This external function facilitates the refunding of redemptions for a given epoch. It delegates the actual refund processing
     * to the `_processRefunds` function. It is marked as `nonReentrant` to prevent re-entrancy attacks and is restricted to accounts
     * with the `OFFCHAIN_SERVICE` role.
     *
     * @param refundees An array of addresses that are to receive the refunds.
     * @param epochToRefund The epoch for which the refunds are being processed.
     *
     * Requirements:
     * - The caller must have the `OFFCHAIN_SERVICE` role.
     */
    function refundRedemptions(
        address[] calldata refundees,
        uint256 epochToRefund
    ) external nonReentrant onlyRole(MINTER_ADMIN) {
        _processRefunds(refundees, epochToRefund);
    }

    /**
     * @notice Handles the refund process for a set of addresses for a specific epoch.
     *
     * This private function manages the refunding process for redemption requests. It iterates through each address in the `refundees` array,
     * checking their validity and KYC status before proceeding with the refund. The function retrieves the amount to be refunded from the
     * redemption queue and executes the transfer, followed by emitting a `RedemptionRefunded` event.
     *
     * @param refundees An array of addresses to receive refunds.
     * @param epochToRefund The epoch for which the refunds are being processed.
     *
     * Requirements:
     * - Each refundee must have a valid index in the redemption queue.
     * - Each refundee must have a valid KYC status.
     *
     * Emits a `RedemptionRefunded` event for each successful refund.
     */
    function _processRefunds(
        address[] calldata refundees,
        uint256 epochToRefund
    ) private {
        RedemptionRequests storage requests = _redemptionInfoPerEpoch[
            epochToRefund
        ];

        for (uint256 i = 0; i < refundees.length; i++) {
            address currentRefundee = refundees[i];
            uint256 index = requests.redeemerToIndex[currentRefundee];

            require(
                index < _redemptionQueue.length,
                "Refundee index out of bounds"
            );
            require(_isKYCValid(currentRefundee), "Refundee KYC not valid");

            // New validation step
            RedemptionRequest storage request = _redemptionQueue[index];
            require(
                request.redeemer == currentRefundee &&
                    request.epoch == epochToRefund,
                "Invalid redemption request"
            );

            uint256 deltaAmountReturned = _redemptionQueue[index].amountDelta;

            _popRedeemerQueue(index);

            // Transfer the previously deposited DELTA tokens back to the refundee
            _delta.completeTransfer(currentRefundee, deltaAmountReturned);

            emit RedemptionRefunded(
                currentRefundee,
                deltaAmountReturned,
                epochToRefund
            );
        }
    }

    /**
     * @notice Initiates the redemption payout process.
     *
     * This external function is responsible for triggering the redemption process.
     * It is only accessible by accounts with the `OFFCHAIN_SERVICE` role and is protected against re-entrancy attacks.
     * Internally, it calls the `_processRedemption` function to handle the actual processing of redemptions.
     *
     * Requirements:
     * - The caller must have the `OFFCHAIN_SERVICE` role.
     */
    function payOutRedemptions(
        uint256 processLimit
    ) external onlyRole(OFFCHAIN_SERVICE) nonReentrant {
        _processRedemption(processLimit);
    }

    /**
     * @notice Processes queued redemption requests, transferring collateral and burning tokens.
     *
     * This private function iterates through the redemption queue, processing each request that is marked for processing.
     * It validates the KYC status of redeemers and calculates the collateral amount due based on the exchange rate.
     * The function handles token burning and collateral transfer, ensuring sufficient balance before each transfer.
     *
     * Emits a `RedemptionCompleted` event for each successfully processed redemption or `RedemptionFailedDueToKYC` if KYC is not valid.
     *
     * Requirements:
     * - Redeemers must have valid KYC status.
     * - Sufficient collateral balance for the payout.
     */
    function _processRedemption(uint256 processLimit) private {
        uint256 collateralBalance = _collateral.balanceOf(_assetSender);
        uint256 queueLength = _redemptionQueue.length;
        uint256 processedCount = 0;
        uint256[] memory processed = new uint256[](processLimit);
        uint256[] memory collateralDueArray = new uint256[](processLimit);
        address[] memory redeemers = new address[](processLimit);

        for (
            uint256 i = 0;
            i < queueLength && processedCount < processLimit;
            i++
        ) {
            RedemptionRequest storage currentRedeemer = _redemptionQueue[i];

            if (!currentRedeemer.processing) {
                continue;
            }
            // Ensure NAV has been set for this epoch before processing
            require(_epochToExchangeRate[currentRedeemer.epoch] != 0, "NAV not set for this epoch");


            if (!_isKYCValid(currentRedeemer.redeemer)) {
                emit RedemptionFailedDueToKYC(
                    currentRedeemer.redeemer,
                    currentRedeemer.epoch,
                    currentRedeemer.amountDelta
                );
                continue;
            }

            uint256 deltaAmountReturned = currentRedeemer.amountDelta;
            uint256 exchangeRate = _epochToExchangeRate[currentRedeemer.epoch];
            uint256 collateralAmountDue = (deltaAmountReturned * exchangeRate) /
                BPS_DENOMINATOR;

            if (collateralAmountDue == 0) {
                continue;
            }

            if (collateralBalance < collateralAmountDue) {
                break;
            }

            require(
                collateralAmountDue <= collateralBalance,
                "Insufficient token balance"
            );

            // Checks and state changes before the external calls
            collateralBalance -= collateralAmountDue;
            collateralDueArray[processedCount] = collateralAmountDue;
            redeemers[processedCount] = currentRedeemer.redeemer;

            processed[processedCount] = i;
            processedCount++;

            // Burn the previously deposited DELTA tokens
            _delta.burn(deltaAmountReturned);

            emit RedemptionCompleted(
                currentRedeemer.redeemer,
                deltaAmountReturned,
                collateralAmountDue,
                currentRedeemer.epoch
            );
        }

        // External interactions after all state changes
        for (uint256 i = 0; i < processedCount; i++) {
            if (_assetSender == address(this)) {
                bool success = _collateral.transfer(
                    redeemers[i],
                    collateralDueArray[i]
                );
                require(success, "Transfer failed");
            } else {
                _collateral.transferFrom(
                    _assetSender,
                    redeemers[i],
                    collateralDueArray[i]
                );
            }
        }

        _removeProcessedRedemptions(processed, processedCount);

        // if redemption queue is not empty, emit event to notify offchain service the amount of pending redemptions
            if (_redemptionQueue.length > 0) {
                uint256 remaining = 0;
                for (uint256 i = 0; i < _redemptionQueue.length; i++) {
                    if (_redemptionQueue[i].processing == true) {
                        remaining++;
                    }
                }

                // Emit only if there are remaining redemptions
                if (remaining > 0) {
                    emit PendingRedemptions(remaining);
                }
            }
            
        }

    /**
     * @notice Removes processed redemptions from the queue.
     *
     * This private function iterates through the array of processed redemption indices and removes each corresponding redemption request from the queue.
     * It is typically called after processing redemptions to clean up and update the redemption queue state.
     *
     * @param processed An array of indices representing the processed redemption requests in the queue.
     * @param count which is the number of redemptions actually processed, and removes only those redemptions from the queue.
     */
    function _removeProcessedRedemptions(
        uint256[] memory processed,
        uint256 count
    ) private {
        for (uint256 i = 0; i < count; i++) {
            _popRedeemerQueue(processed[i]);
        }
    }

    /**
     * @notice Removes a redemption request from the queue.
     *
     * This private function is used to remove a redemption request from the redemption queue based on the provided index.
     * It adjusts the queue by moving the last request to the position of the one being removed and then shifting other elements accordingly.
     * The function updates necessary mappings to reflect these changes. It is designed to maintain the integrity of the queue after a redemption request is processed or cancelled.
     *
     * @param index The index of the redemption request to remove, with 1-based indexing.
     *
     * Requirements:
     * - The redemption queue should not be empty.
     * - The provided index should be within the bounds of the redemption queue.
     */
    function _popRedeemerQueue(uint256 index) private {
        uint256 indexToUse;
        if (index < _redemptionQueue.length) {
            indexToUse = index;
        } else {
            indexToUse = _redemptionQueue.length - 1;
        }

        require(_redemptionQueue.length > 0, "No redeemers to pop");

        if (indexToUse != _redemptionQueue.length - 1) {
            address lastRedeemer = _redemptionQueue[_redemptionQueue.length - 1]
                .redeemer;
            uint256 lastEpoch = _redemptionQueue[_redemptionQueue.length - 1]
                .epoch;

            // Move the last element to the position of the one to be removed
            _redemptionQueue[indexToUse] = _redemptionQueue[
                _redemptionQueue.length - 1
            ];

            // Update indexToUse mapping for the moved element
            _redemptionInfoPerEpoch[lastEpoch].redeemerToIndex[
                lastRedeemer
            ] = indexToUse;
        }

        // Remove the last element
        _redemptionQueue.pop();

        emit RedemptionRemoved(indexToUse, _redemptionQueue.length);
    }

    /**
     * @notice Sets the asset sender address.
     * @dev Can only be called by an account with the `OPERATOR_ADMIN` role.
     *
     * @param newAssetSender The new asset sender address.
     */
    function setAssetSender(
        address newAssetSender
    ) external onlyRole(OPERATOR_ADMIN) {
        require(
            newAssetSender != address(0),
            "DeltaManager: newAssetSender is the zero address"
        );
        address oldAssetSender = _assetSender;
        _assetSender = newAssetSender;
        emit AssetSenderSet(oldAssetSender, newAssetSender);
    }

    /**
     * @notice Sets the asset recipient address.
     * @dev Can only be called by an account with the `OPERATOR_ADMIN` role.
     *
     * @param newAssetRecipient The new asset recipient address.
     */
    function setAssetRecipient(
        address newAssetRecipient
    ) external onlyRole(OPERATOR_ADMIN) {
        require(
            newAssetRecipient != address(0),
            "DeltaManager: newAssetRecipient is the zero address"
        );
        address oldAssetRecipient = _assetRecipient;
        _assetRecipient = newAssetRecipient;
        emit AssetRecipientSet(oldAssetRecipient, newAssetRecipient);
    }

    /**
     * @notice Sets the fee recipient address.
     * @dev Can only be called by an account with the `OPERATOR_ADMIN` role.
     *
     * @param newFeeRecipient The new fee recipient address.
     */
    function setFeeRecipient(
        address newFeeRecipient
    ) external onlyRole(OPERATOR_ADMIN) {
        require(
            newFeeRecipient != address(0),
            "DeltaManager: newFeeRecipient is the zero address"
        );
        address oldFeeRecipient = _feeRecipient;
        _feeRecipient = newFeeRecipient;
        emit FeeRecipientSet(oldFeeRecipient, newFeeRecipient);
    }

    /**
     * @notice Sets the minimum redeem amount.
     * @dev Can only be called by an account with the `OPERATOR_ADMIN` role.
     *
     * @param newRedeemMinimum The new minimum redeem amount.
     */
    function setRedeemMinimum(
        uint256 newRedeemMinimum
    ) external onlyRole(OPERATOR_ADMIN) {
        uint256 oldRedeemMin = _minimumRedeemAmount;
        _minimumRedeemAmount = newRedeemMinimum;
        emit MinimumRedeemAmountSet(oldRedeemMin, _minimumRedeemAmount);
    }

    /**
     * @notice Verifies if an account has passed the KYC (Know Your Customer) check.
     *
     * This private view function checks the KYC status of a given account using the `_kyc.isKYC` method.
     * If the account has not passed the KYC check, the function reverts with a `KYCNotApproved` error.
     *
     * @param account The address of the account to check for KYC approval.
     *
     * Reverts:
     * - If the account has not passed the KYC check.
     */
    function _checkKYC(address account) private view {
        if (!_kyc.isKYC(account)) {
            revert KYCNotApproved();
        }
    }

    /**
     * @notice Verifies the KYC status for a list of accounts.
     *
     * This private view function iterates through an array of account addresses and calls `_checkKYC` for each one.
     * It ensures that all provided accounts have passed the KYC verification.
     * If any account in the list fails the KYC check, the function will revert.
     *
     * @param accounts An array of addresses to check for KYC approval.
     */
    function _checkAddressesKYC(address[] calldata accounts) private view {
        uint256 size = accounts.length;
        for (uint256 i = 0; i < size; ++i) {
            _checkKYC(accounts[i]);
        }
    }

    /**
     * @notice Sets the duration of an epoch.
     * @dev Can only be called by an account with the `OPERATOR_ADMIN` role.
     *
     * @param epochDuration The new duration of an epoch.
     */
    function setEpochDuration(
        uint256 epochDuration
    ) external onlyRole(OPERATOR_ADMIN) {
        uint256 oldEpochDuration = epochDuration;
        _epochDuration = epochDuration;
        emit EpochDurationSet(oldEpochDuration, _epochDuration);
    }

    /**
     * @notice Transition to the next epoch if the duration for the current epoch has passed.
     */




    function _transitionEpoch() internal {
    uint256 timeSinceEpochStart = block.timestamp - _currentEpochStartTimestamp;
    uint256 epochDifference = timeSinceEpochStart / _epochDuration;
    if (epochDifference > 0) {
        uint256 prevEpoch = currentEpoch;
        // Reset current mint and redeem amounts
        _currentRedeemAmount = 0;
        _currentMintAmount = 0;
        currentEpoch += epochDifference;
        _currentEpochStartTimestamp += epochDifference * _epochDuration;
        uint256 targetCutoff = (_currentEpochStartTimestamp / 86400) * 86400 + 21600; // 06:00 UTC
        if (_currentEpochStartTimestamp % 86400 < 21600) {
            targetCutoff -= 86400;
        }
        _currentEpochStartTimestamp = targetCutoff;
        // Emit event to indicate the transition
        emit EpochTransition(prevEpoch, currentEpoch);
    } else {
        // no epoch transition
    }
}


    /**
     * @notice Transition to the next epoch if the duration for the current epoch has passed.
     */
    function transitionEpochExternal()
        external
        override
        onlyRole(OFFCHAIN_SERVICE)
    {
        _transitionEpoch();
    }

    /**
     * @notice Sets the fee for the minting process.
     *
     * @param _mintFee The fee value to set for minting.
     */
    function setMintFee(
        uint256 _mintFee
    ) external override onlyRole(OPERATOR_ADMIN) {
        if (_mintFee > 1000) {
            revert MintFeeTooLarge();
        }
        uint256 oldMintFee = mintFee;
        mintFee = _mintFee;
        emit MintFeeSet(oldMintFee, mintFee);
    }

    /**
     * @notice Gets contract start timestamp
     *
     * @return The contract start timestamp
     */
    function getContractStartTimestamp()
        external
        view
        override
        returns (uint256)
    {
        return _contractStartTimestamp;
    }

        /**
     * @notice Gets contract minimum deposit amount
     *
     * @return The contract minimum deposit amount
     */
    function getMinimumDepositAmount()
        external
        view
        override
        returns (uint256)
    {
        return _minimumDepositAmount;
    }

        /**
     * @notice Gets contract minimum Withdrawal amount
     *
     * @return The minimum Withdrawal amount
     */
    function getMinimumWithdrawal()
        external
        view
        override
        returns (uint256)
    {
        return _minimumRedeemAmount;
    }
    /**
     * @dev Ensures that the epoch is up-to-date before executing a function.
     */
    modifier updateEpoch() {
        _transitionEpoch();
        _;
    }

    /**
     * @dev Ensures that an account has passed KYC before executing a function.
     *
     * @param account The address to check for KYC.
     */
    modifier checkKYC(address account) {
        _checkKYC(account);
        _;
    }

    function setDeltaContract(address delta) external onlyRole(OPERATOR_ADMIN) {
    require(delta != address(0), "DeltaZeroAddress");
    _delta = Delta(delta);
    }

    function setCollateralContract(address collateral) external onlyRole(OPERATOR_ADMIN) {
    require(collateral != address(0), "CollateralZeroAddress");
    _collateral = IERC20(collateral);
    }
    
    function getTotalAndProcessingCount() external view returns (uint256 erc20Balance, uint256 totalDue, uint256 processingCount) {
        totalDue = 0;
        processingCount = 0;
        erc20Balance = _collateral.balanceOf(address(this));
        for (uint256 i = 0; i < _redemptionQueue.length; i++) {
            if (_redemptionQueue[i].processing == true) {
                uint256 exchangeRate = _epochToExchangeRate[_redemptionQueue[i].epoch];
                uint256 collateralDue = (_redemptionQueue[i].amountDelta * exchangeRate) / BPS_DENOMINATOR;
                totalDue += collateralDue;
                processingCount++;
            }
        }
}        

}
