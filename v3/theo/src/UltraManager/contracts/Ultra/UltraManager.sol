// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IUltraManager.sol";
import "./Ultra.sol";
import "./KYC.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

/**
 * @title UltraManager Production Contract
 * @notice This contract manages the minting, redemption, and transfer processes for the Ultra token in production
 * @dev Inherits from UUPSUpgradeable, AccessControlEnumerableUpgradeable, PausableUpgradeable, and ReentrancyGuardUpgradeable
 */
contract UltraManager is
    UUPSUpgradeable,
    AccessControlEnumerableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    IUltraManager
{
    using SafeERC20 for IERC20;

    // ERC20 token used to Mint ULTRA with
    IERC20 internal _collateral;

    // ULTRA contract
    Ultra internal _ultra;

    // Unused KYC contract, any KYC-related will rely on Ultra's KYC
    KYCUltra internal _kyc;

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
        uint256 amountUltra;
        uint256 epoch;
        bool processing;
    }

    // UNUSED VARIABLE
    RedemptionRequest[] internal _redemptionQueue;

    // UNUSED STRUCT DEF, REQUIRED FOR UNUSED VAR BELOW
    struct RedemptionRequests {
        // Total ULTRA burned in the epoch
        uint256 totalBurned;
        // Mapping from address to amount of ULTRA address burned
        mapping(address => uint256) addressToBurnAmt; // Stores the amount of tokens burned for redemption
        mapping(address => uint256) redeemerToIndex; // Stores the index of the redeemer in the queue
        mapping(address => bool) redeemerToProcessing;
    }

    // UNUSED VARIABLE
    mapping(uint256 => RedemptionRequests) internal _redemptionInfoPerEpoch;

    // Mapping used for getting the exchange rate during a given epoch
    mapping(uint256 => uint256) internal _epochToExchangeRate;

    mapping(address => mapping(address => uint256)) public transferPromises;
    // Minimum amount that must be deposited to mint ULTRA

    // Denoted in decimals of `collateral`
    uint256 public minimumDepositAmount;

    // Minting fee specified in basis points
    uint256 public mintFee;

    // Minimum amount that must be redeemed for a withdraw request
    uint256 public minimumRedeemAmountFiat;

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

    // Decimal multiplier representing the difference between `ULTRA` decimals
    // In `collateral` token decimals
    uint256 internal _decimalsMultiplier;

    bytes32 internal constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    bytes32 internal constant OPERATOR_ADMIN = keccak256("OPERATOR_ADMIN");
    bytes32 internal constant OFFCHAIN_SERVICE = keccak256("OFFCHAIN_SERVICE");

    // UNUSED VARIABLE
    address internal kycAddress;

    // Variable that allows us to specify basis points in calculations, this was upgraded from a constant to a variable
    uint256 public BPS_DENOMINATOR;

    mapping(uint256 => mapping(address => uint256)) internal _redemptionRequestsPerEpoch;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the UltraManager contract with core dependencies and configuration
     * @dev Sets up initial state including roles, contracts, and operational parameters
     * @param collateral Address of the ERC20 token used as collateral
     * @param ultra Address of the Ultra token contract
     * @param operatorAdmin Address that will receive the OPERATOR_ADMIN role
     * @param defaultAdmin Address that will receive the DEFAULT_ADMIN_ROLE
     * @param minterAdmin Address that will receive the MINTER_ADMIN role
     * @param offchainService Address that will receive the OFFCHAIN_SERVICE role
     * @param kyc Address of the KYC contract
     * @param assetRecipient Address that will receive deposited collateral
     * @param assetSender Address from which redemptions are processed
     * @param epochDuration Duration of each epoch in seconds
     * @param feeRecipient Address that will receive fees
     * @param _mintLimit Maximum amount that can be minted during an epoch
     * @param _redeemLimit Maximum amount that can be redeemed during an epoch
     * @param currentEpochStartTimestamp Timestamp when the first epoch starts
     */
    function initialize(
        address collateral,
        address ultra,
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
        __UUPSUpgradeable_init();
        
        _ultraManagerInitUnchained(
            collateral,
            ultra,
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

    /**
     * @notice Performs the core initialization logic for the UltraManager contract
     * @dev Internal function called by initialize to set up the contract state
     * @param collateral Address of the ERC20 token used as collateral
     * @param ultra Address of the Ultra token contract
     * @param operatorAdmin Address that will receive the OPERATOR_ADMIN role
     * @param defaultAdmin Address that will receive the DEFAULT_ADMIN_ROLE
     * @param minterAdmin Address that will receive the MINTER_ADMIN role
     * @param offchainService Address that will receive the OFFCHAIN_SERVICE role
     * @param kyc Address of the KYC contract
     * @param assetRecipient Address that will receive deposited collateral
     * @param assetSender Address from which redemptions are processed
     * @param epochDuration Duration of each epoch in seconds
     * @param feeRecipient Address that will receive fees
     * @param _mintLimit Maximum amount that can be minted during an epoch
     * @param _redeemLimit Maximum amount that can be redeemed during an epoch
     * @param currentEpochStartTimestamp Timestamp when the first epoch starts
     */
    function _ultraManagerInitUnchained(
        address collateral,
        address ultra,
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
    ) internal {
        require(collateral != address(0), "CollateralZeroAddress");
        require(ultra != address(0), "UltraZeroAddress");
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
        _ultra = Ultra(ultra);
        kycAddress = kyc;
        _feeRecipient = feeRecipient;
        _assetRecipient = assetRecipient;
        _assetSender = assetSender;

        mintLimit = _mintLimit;
        redeemLimit = _redeemLimit;
        _epochDuration = epochDuration;
        BPS_DENOMINATOR = 1_000_000;

        _currentEpochStartTimestamp = currentEpochStartTimestamp;
        _contractStartTimestamp = currentEpochStartTimestamp;

        _decimalsMultiplier =
            10 **
                (IERC20Metadata(ultra).decimals() -
                    IERC20Metadata(collateral).decimals());

        minimumDepositAmount = 10_000_000_000;
        mintFee = 0;
        lastSetMintExchangeRate = 1e6;
        minimumRedeemAmountFiat = 50_000_000_000;
    }

    function _authorizeUpgrade(
        address /*newImplementation*/
    ) internal view override {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "UltraManager: unauthorized"
        );
    }

    /**
     * @notice Allows users to request the minting of ULTRA tokens in exchange for collateral.
     * Users send collateral to the contract, and ULTRA tokens will be minted after the promise is resolved by an admin
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
        if (collateralAmountIn < minimumDepositAmount) {
            revert MintRequestAmountTooSmall();
        }

        uint256 feesInCollateral = _getMintFees(collateralAmountIn);
        uint256 depositValueAfterFees = collateralAmountIn - feesInCollateral;

        _checkAndUpdateMintLimit(depositValueAfterFees);

        _mintRequestsPerEpoch[currentEpoch][
            msg.sender
        ] += depositValueAfterFees;

        bool success = _collateral.transferFrom(msg.sender, address(this), depositValueAfterFees);
        require(success, "Initial transfer failed");

        if (feesInCollateral > 0) {
            success = _collateral.transferFrom(msg.sender, _feeRecipient, feesInCollateral);
            require(success, "Fee transfer failed");
        }

        // Transfer the deposit amount from the contract to the asset recipient
        success = _collateral.transfer(_assetRecipient, depositValueAfterFees);
        require(success, "Asset recipient transfer failed");

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
     * @notice Allows admin to resolve promise and send ULTRA tokens to an investor earned based on their deposited amount and the current Net Asset Value (NAV) of the fund.
     * The number of tokens minted is determined by dividing the deposited amount by the scaled NAV of the fund for that day (scaled by a factor of 1,000,000 for four decimal places).
     *
     * @param user Address of the user claiming the ULTRA tokens.
     * @param epochToClaim Epoch for which the user is claiming tokens
     * @param afterFeeAmount amount after fee
     */
    function resolveDeposit(
        address user,
        uint256 epochToClaim,
        uint256 afterFeeAmount
    ) external updateEpoch whenNotPaused nonReentrant onlyRole(MINTER_ADMIN) {
        require(_epochToExchangeRate[epochToClaim] != 0, "NAV not set for this epoch");
        
        // Process mint if user is not zero address
        require(user != address(0), "Cannot resolve deposit for zero address");
        _checkKYC(user);
        uint256 collateralDeposited = _mintRequestsPerEpoch[epochToClaim][user];
        require(collateralDeposited != 0, "User has no remaining collateral deposited");

        require(collateralDeposited >= afterFeeAmount, "Collateral amount mismatch");
        uint256 ultraOwed = (afterFeeAmount * BPS_DENOMINATOR) /
            _epochToExchangeRate[epochToClaim];

        _mintRequestsPerEpoch[epochToClaim][user] = 0;
        _ultra.mint(user, ultraOwed);

        emit MintCompleted(
            user,
            ultraOwed,
            collateralDeposited,
            _epochToExchangeRate[epochToClaim],
            epochToClaim,
            msg.sender
        );
    }

    /**
     * @notice Allows admin to refund collateral to an investor by canceling their mint request.
     * The collateral amount is returned to the refundee's address based on their original deposit.
     *
     * @param refundee Address of the user to refund the collateral to.
     * @param epochToClaim Epoch for which the refund is being processed.
     */
    function refundDeposit(
        address refundee,
        uint256 epochToClaim
    ) external updateEpoch whenNotPaused nonReentrant onlyRole(MINTER_ADMIN) {
        _checkKYC(refundee);
        _processDepositRefund(refundee, epochToClaim);
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
    ) external onlyRole(OPERATOR_ADMIN) whenNotPaused nonReentrant {
        require(to != address(0), "MyContract: transfer to the zero address");
        IERC20(tokenAddress).safeTransfer(to, amount);
        emit CollateralTransfered(tokenAddress, to, amount, msg.sender);
    }

    /**
     * @dev Processes refund of deposit for a specified epoch.
     * This is a private function that calculates and transfers the refund amount in ULTRA tokens to the provided address.
     * If the contract doesn't have sufficient collateral balance to fulfill the refund, it reverts the state.
     * @param refundee The address to whom the refund will be issued.
     * @param epochToService The epoch for which the refund is being processed.
     *
     * @return totalUltraAmountRefunded The amount of ULTRA tokens refunded in this transaction.
     *
     * Requirements:
     * - The function requires that the contract has enough collateral balance to cover the refund.
     * - The function emits `DepositRefundIssued` event for successful refund or `DepositRefundWithoutCollateral` event if refund cannot be processed due to insufficient collateral.
     */
    function _processDepositRefund(
        address refundee,
        uint256 epochToService
    ) private returns (uint256 totalUltraAmountRefunded) {
        // Skip refund processing if refundee is zero address
        require(refundee != address(0), "Refundee cannot be zero address");

        uint256 collateralRefund = _mintRequestsPerEpoch[epochToService][refundee];
        _mintRequestsPerEpoch[epochToService][refundee] = 0;

        uint256 collateralBalance = _collateral.balanceOf(_assetSender);

        require(collateralBalance >= collateralRefund, "Insufficient collateral to complete refund");

        require(
            collateralRefund <= _collateral.balanceOf(_assetSender),
            "Insufficient token balance"
        );

        bool success;
        if (_assetSender == address(this)) {
            success = _collateral.transfer(refundee, collateralRefund);
        } else {
            success = _collateral.transferFrom(
                _assetSender,
                refundee,
                collateralRefund
            );
        }
        require(success, "Transfer failed");

        totalUltraAmountRefunded = collateralRefund;
        emit DepositRefundIssued(
            refundee,
            collateralRefund,
            epochToService,
            msg.sender
        );
        return totalUltraAmountRefunded;
    }

    /**
     * @notice Creates a transfer promise to move tokens from one address to another.
     *
     * This function records a promise to transfer a specified amount of tokens from the `from` address to the `to` address.
     * It is restricted to being called only by the Ultra contract. On successful execution, it emits a `TransferPromiseCreated` event.
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
            msg.sender == address(_ultra),
            "UltraManager: Unauthorized call"
        ); // Ensure only Ultra contract can call this

        transferPromises[from][to] += amount;

        emit TransferPromiseCreated(from, to, amount); // Emit the event
        return true;
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
    ) external onlyRole(MINTER_ADMIN) whenNotPaused nonReentrant {
        uint256 promisedAmount = transferPromises[from][to];
        require(
            promisedAmount >= amount,
            "UltraManager: Amount exceeds promise"
        );

        transferPromises[from][to] -= amount; // Reduce the amount of tokens promised

        // Transfer the tokens to the recipient
        _ultra.completeTransfer(to, amount);

        emit TransferPromiseFulfilled(from, to, amount);
    }

    /**
     * @notice Refunds a transfer promise by sending the promised ULTRA back to the initial holder.
     * @param from The address that initially promised to transfer ULTRA.
     * @param to The address that was supposed to receive the ULTRA.
     * @param amount The amount of ULTRA tokens to refund.
     */
    function refundTransferPromise(
        address from,
        address to,
        uint256 amount
    ) external onlyRole(OFFCHAIN_SERVICE) whenNotPaused nonReentrant {
        uint256 promisedAmount = transferPromises[from][to];
        require(
            promisedAmount >= amount,
            "UltraManager: Amount exceeds promise"
        );

        transferPromises[from][to] -= amount; // Reduce the amount of tokens promised

        // Transfer the tokens back to the initial holder
        _ultra.completeTransfer(from, amount);

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
     * @param newMinimumDepositAmount The minimum amount of collateral to set.
     */
    function setMinimumDepositAmount(
        uint256 newMinimumDepositAmount
    ) external override onlyRole(OPERATOR_ADMIN) {
        if (newMinimumDepositAmount < BPS_DENOMINATOR) {
            revert MinimumDepositAmountTooSmall();
        }
        uint256 oldMinimumDepositAmount = minimumDepositAmount;
        minimumDepositAmount = newMinimumDepositAmount;
        emit MinimumDepositAmountSet(
            oldMinimumDepositAmount,
            minimumDepositAmount
        );
    }

    /**
     * @notice Sets the exchange rate for a given epoch.
     * @dev Can only be called by an account with the `MINTER_ADMIN` role.
     *
     * @param navScaled The Net Asset Value (NAV) of the fund per Ultra token for the day, scaled appropriately (e.g., scaled by a factor of 10000 for 4 decimal places).
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
            if (epochToSet > currentEpoch) {
                revert MustServicePastEpoch();
            }
            uint256 oldExchangeRate = lastSetMintExchangeRate;
            _epochToExchangeRate[epochToSet] = navScaled;

            emit MintExchangeRateSet(epochToSet, oldExchangeRate, navScaled);
        }

        for (uint256 i = currentEpoch; i > 0; i--) {
            if (_epochToExchangeRate[i] != 0) {
                lastSetMintExchangeRate = _epochToExchangeRate[i];
                break;
            }
        }
    }

    /**
     * @notice Overrides the exchange rate for a given epoch.
     * @dev Can only be called by an account with the `MINTER_ADMIN` role.
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
        if (epochToSet > currentEpoch) {
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
     * @param amountUltraToRedeem Amount of tokens to redeem.
     * @param fullWithdrawal If true, redeem entire balance
     */
    function requestRedemption(
        uint256 amountUltraToRedeem,
        bool fullWithdrawal
    )
        external
        updateEpoch
        nonReentrant
        whenNotPaused
        checkKYC(msg.sender)
    {
        uint256 amountToRedeem;
        // If full withdrawal is true, use entire balance regardless of amountUltraToRedeem parameter
        if (fullWithdrawal) {
            amountToRedeem = _ultra.balanceOf(msg.sender);
            require(amountToRedeem > 0, "No Ultra tokens to redeem");
        } else {
            // Calculate fiat value of redemption request
            uint256 fiatValue = (amountUltraToRedeem * lastSetMintExchangeRate) / BPS_DENOMINATOR;
            
            // Check if the fiat value meets the minimum requirement
            require(fiatValue >= minimumRedeemAmountFiat, "Fiat value below minimum");
            amountToRedeem = amountUltraToRedeem;
        }
        _checkAndUpdateRedeemLimit(amountToRedeem);

        // Check if user already has a redemption request for current epoch
        uint256 existingRequest = _redemptionRequestsPerEpoch[currentEpoch][msg.sender];
        if (existingRequest > 0) {
            // Update existing request by adding new amount
            _redemptionRequestsPerEpoch[currentEpoch][msg.sender] = existingRequest + amountToRedeem;
        } else {
            // Create new request
            _redemptionRequestsPerEpoch[currentEpoch][msg.sender] = amountToRedeem;
        }

        require(
            _ultra.transferFromManager(
                msg.sender,
                address(this),
                amountToRedeem
            ),
            "Token transfer failed"
        );

        emit RedemptionRequested(msg.sender, amountToRedeem, currentEpoch);
    }

    /**
     * @notice Processes redemption request for a specific epoch.
     * @param redeemer The address of redeemer whose redemption request is to be processed.
     * @param epochToClaim The epoch for which the redemption is being processed.
     */
    function completeRedemptions(
        address redeemer,
        uint256 epochToClaim,
        uint256 collateralAmountAfterFee
    ) external onlyRole(MINTER_ADMIN) whenNotPaused {
        require(_epochToExchangeRate[epochToClaim] != 0, "NAV not set for this epoch");
        
        uint256 ultraAmountRequested = _redemptionRequestsPerEpoch[epochToClaim][redeemer];
        require(ultraAmountRequested > 0, "No redemption request found");

        uint256 exchangeRate = _epochToExchangeRate[epochToClaim];
        uint256 ultraAmountRequestedValue = (ultraAmountRequested * exchangeRate) / BPS_DENOMINATOR; // convert requested ULTRA amount to USD value
        require(ultraAmountRequestedValue >= collateralAmountAfterFee, "Calculated redemption value is less than collateralAmountAfterFee");

        require(collateralAmountAfterFee > 0, "Invalid collateral amount");
        require(
            collateralAmountAfterFee <= _collateral.balanceOf(_assetSender),
            "Insufficient token balance"
        );

        // Clear the redemption request
        _redemptionRequestsPerEpoch[epochToClaim][redeemer] = 0;

        // Burn ULTRA tokens
        _ultra.burn(ultraAmountRequested);

        // Transfer collateral
        bool success;
        if (_assetSender == address(this)) {
            success = _collateral.transfer(redeemer, collateralAmountAfterFee);
        } else {
            success = _collateral.transferFrom(
                _assetSender,
                redeemer,
                collateralAmountAfterFee
            );
        }
        require(success, "Collateral transfer failed");

        emit RedemptionCompleted(
            redeemer,
            ultraAmountRequested,
            collateralAmountAfterFee,
            epochToClaim
        );
    }

    /**
     * @notice Refunds a redemption request.
     * @param refundee The address to refund the ULTRA tokens to.
     * @param epochToRefund The epoch for which to refund the redemption.
     */
    function refundRedemptions(
        address refundee,
        uint256 epochToRefund
    ) external onlyRole(MINTER_ADMIN) whenNotPaused nonReentrant {
        require(_isKYCValid(refundee), "Refundee KYC not valid");

        uint256 ultraAmount = _redemptionRequestsPerEpoch[epochToRefund][refundee];
        require(ultraAmount > 0, "No redemption request found");

        // Clear the redemption request
        _redemptionRequestsPerEpoch[epochToRefund][refundee] = 0;

        // Return ULTRA tokens to refundee
        _ultra.completeTransfer(refundee, ultraAmount);

        emit RedemptionRefunded(
            refundee,
            ultraAmount,
            epochToRefund
        );
    }

    /**
     * @notice Checks and updates the current redeem limit.
     * @param amount The amount to be redeemed.
     */
    function _checkAndUpdateRedeemLimit(uint256 amount) private {
        require(amount > 0, "RedeemAmountCannotBeZero");
        require(amount <= redeemLimit - _currentRedeemAmount, "RedeemExceedsRateLimit");
        _currentRedeemAmount += amount;
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
     * @notice Checks if the KYC (Know Your Customer) status for a given account is valid.
     *
     * This private view function queries the KYC status of an account by calling the `isKYC` function on the KYC contract from the Ultra token contract.
     * It returns a boolean indicating whether the account has a valid KYC status.
     *
     * @param account The address of the account to check for KYC validity.
     * @return True if the account has a valid KYC status, false otherwise.
     */
    function _isKYCValid(address account) private view returns (bool) {
        // Skip KYC checks if KYC contract is not set (zero address)
        address ultraKycAddress = address(_ultra.KYCContract());
        if (ultraKycAddress == address(0)) {
            return true;
        }
        return KYCUltra(ultraKycAddress).isKYC(account);
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
            "UltraManager: newAssetSender is the zero address"
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
            "UltraManager: newAssetRecipient is the zero address"
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
            "UltraManager: newFeeRecipient is the zero address"
        );
        address oldFeeRecipient = _feeRecipient;
        _feeRecipient = newFeeRecipient;
        emit FeeRecipientSet(oldFeeRecipient, newFeeRecipient);
    }

    /**
     * @notice Sets the minimum redeem amount.
     * @dev Can only be called by an account with the `OPERATOR_ADMIN` role.
     *
     * @param newMinimumFiat The new minimum redeem amount.
     */
    function setMinimumRedeemAmountFiat(
        uint256 newMinimumFiat
    ) external onlyRole(OPERATOR_ADMIN) {
        uint256 oldMinimumFiat = minimumRedeemAmountFiat;
        minimumRedeemAmountFiat = newMinimumFiat;
        emit MinimumRedeemAmountFiatSet(oldMinimumFiat, minimumRedeemAmountFiat);
    }

    /**
     * @notice Verifies if an account has passed the KYC (Know Your Customer) check.
     *
     * This private view function checks the KYC status of a given account using the `isKYC` function on the KYC contract from the Ultra token contract.
     * If the account has not passed the KYC check, the function reverts with a `KYCNotApproved` error.
     *
     * @param account The address of the account to check for KYC approval.
     *
     * Reverts:
     * - If the account has not passed the KYC check.
     */
    function _checkKYC(address account) private view {
        // Skip KYC checks if KYC contract is not set (zero address)
        address ultraKycAddress = address(_ultra.KYCContract());
        if (ultraKycAddress == address(0)) {
            return;
        }
        if (!KYCUltra(ultraKycAddress).isKYC(account)) {
            revert KYCNotApproved();
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
        require(epochDuration > 0, "Epoch must be positive");
        require(epochDuration % 86_400 == 0, "Epoch must be in multiples of days");
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
        require(_mintFee < BPS_DENOMINATOR, "Mint fee exceeds BPS");
        
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
    
    /**
     * @notice Updates the Ultra token contract address
     * @dev Can only be called by an account with the OPERATOR_ADMIN role
     * @param ultra The address of the new Ultra token contract
     */
    function setUltraContract(address ultra) external onlyRole(OPERATOR_ADMIN) {
    require(ultra != address(0), "UltraZeroAddress");
    _ultra = Ultra(ultra);
    }

    /**
     * @notice Sets the BPS denominator used for calculations
     * @dev Can only be called by an account with the OPERATOR_ADMIN role
     * @param newDenominator The new BPS denominator value to set
     */
    function setBPSDenominator(uint256 newDenominator) external onlyRole(OPERATOR_ADMIN) {
        require(newDenominator > 0, "Denominator must be greater than 0");
        require(newDenominator > mintFee, "New denominator invalidates current fee percentage");
        uint256 oldDenominator = BPS_DENOMINATOR;
        BPS_DENOMINATOR = newDenominator;
        emit BPSDenominatorSet(oldDenominator, newDenominator);
    }

    function getTotalAndProcessingCount() external view returns (uint256 erc20Balance, uint256 totalDue, uint256 processingCount) {
        totalDue = 0;
        processingCount = 0;
        erc20Balance = _collateral.balanceOf(_assetSender);
        
        // Since we can't iterate over mappings directly, we'll check the current epoch's redemption requests
        uint256 exchangeRate = _epochToExchangeRate[currentEpoch];
        
        // We need to track this through events or a separate counter since we can't iterate mappings
        // For now, we'll return the balance and total due based on current epoch
        if (exchangeRate > 0) {
            // The actual processing count would need to be tracked separately
            // This is a simplified implementation
            totalDue = erc20Balance;
            processingCount = 0;
        }
        
        return (erc20Balance, totalDue, processingCount);
    }


    /**
     * @notice Updates the collateral token contract address
     * @dev Can only be called by an account with the OPERATOR_ADMIN role
     * @param collateral The address of the new collateral token contract
     */
    function setCollateralContract(address collateral) external onlyRole(OPERATOR_ADMIN) {
    require(collateral != address(0), "CollateralZeroAddress");
        _collateral = IERC20(collateral);
        }
}
