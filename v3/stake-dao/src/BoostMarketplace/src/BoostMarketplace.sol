// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IvlBoost} from "src/interfaces/IvlBoost.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SellListing, BuyOffer, CommittedBalanceCause, IBoostMarketplace} from "src/interfaces/IBoostMarketplace.sol";

/// @title BoostMarketplace
/// @notice On-chain order book for vlSDT boost delegation trading.
/// @dev WARNING: payment tokens are assumed to be standard ERC20s with exact transfer semantics.
///      Fee-on-transfer, rebasing, or other exotic token mechanics can break escrow accounting.
/// @custom:contact contact@stakedao.org
contract BoostMarketplace is IBoostMarketplace, Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    ////////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @notice Seconds in a week.
    uint256 public constant WEEK = 7 days;

    /// @notice vlSDT precision (18 decimals).
    uint256 public constant PRECISION = 1e18;

    /// @notice Maximum fee in basis points (10% = 1000).
    uint256 public constant MAX_FEE_BPS = 1000;

    /// @notice Boost registry for creating delegations.
    IvlBoost public immutable VL_BOOST;

    ////////////////////////////////////////////////////////////////
    /// --- STORAGE
    ///////////////////////////////////////////////////////////////

    /// @notice Fee collector address.
    address public feeCollector;

    /// @notice Fee in basis points (max 1000 = 10%).
    uint256 public feeBps;

    /// @notice Minimum order size in vlSDT.
    uint256 public minOrderAmount;

    /// @notice Minimum fill size in vlSDT.
    uint256 public minFillAmount;

    /// @notice Maximum duration in weeks.
    uint256 public maxDurationWeeks;

    /// @notice Sell listings by ID.
    mapping(uint256 => SellListing) internal _listings;

    /// @notice Buy offers by ID.
    mapping(uint256 => BuyOffer) internal _offers;

    /// @notice Next listing ID.
    uint256 public nextListingId;

    /// @notice Next offer ID.
    uint256 public nextOfferId;

    /// @notice Committed (listed but unfilled) vlSDT per seller.
    /// @dev This value can become stale if a seller delegates directly through vlBoost,
    ///      reducing their delegableBalance below their committedBalance. In that case
    ///      listings may fail to fill until the seller cancels and recreates them.
    ///      Integrators should cross-check against vlBoost.delegableBalance().
    mapping(address => uint256) public committedBalance;

    ////////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ///////////////////////////////////////////////////////////////

    constructor(
        address _boostRegistry,
        address _governance,
        address _feeCollector,
        uint256 _minOrderAmount,
        uint256 _minFillAmount,
        uint256 _maxDurationWeeks
    ) Ownable(_governance) {
        require(_boostRegistry != address(0), ZERO_ADDRESS());

        VL_BOOST = IvlBoost(_boostRegistry);
        require(_maxDurationWeeks <= VL_BOOST.MAX_DURATION_WEEKS(), EXCEEDS_VL_BOOST_MAX_DURATION());
        feeCollector = _feeCollector;
        minOrderAmount = _minOrderAmount;
        minFillAmount = _minFillAmount;
        maxDurationWeeks = _maxDurationWeeks;

        // Start IDs at 1 so 0 means "not found"
        nextListingId = 1;
        nextOfferId = 1;
    }

    ////////////////////////////////////////////////////////////////
    /// --- GOVERNANCE
    ///////////////////////////////////////////////////////////////

    /// @notice Set fee in basis points (max 10000).
    function setFee(uint256 _feeBps) external onlyOwner {
        require(_feeBps <= MAX_FEE_BPS, INVALID_FEE());
        emit FeeUpdated(feeBps, _feeBps);
        feeBps = _feeBps;
    }

    /// @notice Set fee collector.
    function setFeeCollector(address _feeCollector) external onlyOwner {
        emit FeeCollectorUpdated(feeCollector, _feeCollector);
        feeCollector = _feeCollector;
    }

    /// @notice Set minimum order amount.
    function setMinOrderAmount(uint256 _minOrderAmount) external onlyOwner {
        emit MinOrderAmountUpdated(minOrderAmount, _minOrderAmount);
        minOrderAmount = _minOrderAmount;
    }

    /// @notice Set minimum fill amount.
    function setMinFillAmount(uint256 _minFillAmount) external onlyOwner {
        emit MinFillAmountUpdated(minFillAmount, _minFillAmount);
        minFillAmount = _minFillAmount;
    }

    /// @notice Set maximum duration in weeks.
    /// @dev Capped at the registry's MAX_DURATION_WEEKS to prevent creating orders
    ///      that the registry would reject.
    function setMaxDurationWeeks(uint256 _maxDurationWeeks) external onlyOwner {
        require(_maxDurationWeeks <= VL_BOOST.MAX_DURATION_WEEKS(), EXCEEDS_VL_BOOST_MAX_DURATION());
        emit MaxDurationWeeksUpdated(maxDurationWeeks, _maxDurationWeeks);
        maxDurationWeeks = _maxDurationWeeks;
    }

    ////////////////////////////////////////////////////////////////
    /// --- VIEW FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Get a sell listing by ID.
    /// @param listingId The listing ID.
    /// @return The sell listing struct.
    function getListing(uint256 listingId) external view returns (SellListing memory) {
        return _listings[listingId];
    }

    /// @notice Get a buy offer by ID.
    /// @param offerId The offer ID.
    /// @return The buy offer struct.
    function getOffer(uint256 offerId) external view returns (BuyOffer memory) {
        return _offers[offerId];
    }

    /// @notice Get remaining unfilled amount for a listing.
    /// @param listingId The listing ID.
    /// @return Remaining amount available to fill.
    function getListingRemaining(uint256 listingId) external view returns (uint256) {
        SellListing storage listing = _listings[listingId];
        return listing.amount - listing.filled;
    }

    /// @notice Get remaining unfilled amount for an offer.
    /// @param offerId The offer ID.
    /// @return Remaining amount available to fill.
    function getOfferRemaining(uint256 offerId) external view returns (uint256) {
        BuyOffer storage offer = _offers[offerId];
        return offer.amount - offer.filled;
    }

    ////////////////////////////////////////////////////////////////
    /// --- SELL LISTINGS
    ///////////////////////////////////////////////////////////////

    /// @notice Create a sell listing.
    /// @dev Payment token should be a standard ERC20. Exotic token mechanics are unsupported.
    /// @param amount vlSDT boost amount to sell.
    /// @param pricePerWeek Price per vlSDT per week.
    /// @param maxDuration Maximum weeks buyer can purchase.
    /// @param paymentToken Token to receive payment in.
    /// @param expiry Expiry timestamp (0 for no expiry).
    /// @return listingId The ID of the created listing.
    function createListing(
        uint256 amount,
        uint256 pricePerWeek,
        uint256 maxDuration,
        address paymentToken,
        uint256 expiry
    ) external nonReentrant returns (uint256 listingId) {
        // 1. Validate listing parameters.
        require(amount != 0, ZERO_AMOUNT());
        require(paymentToken != address(0), ZERO_ADDRESS());
        _validateAmountAndPrice(amount, pricePerWeek);
        require(expiry <= type(uint64).max, VALUE_TOO_LARGE());
        require(expiry == 0 || expiry > block.timestamp, INVALID_EXPIRY());
        require(maxDuration != 0 && maxDuration <= maxDurationWeeks, INVALID_DURATION());

        // 2. Verify marketplace authorization and seller delegation capacity.
        require(VL_BOOST.isOperator(msg.sender, address(this)), NOT_OPERATOR());
        uint256 available = VL_BOOST.delegableBalance(msg.sender);
        require(available >= committedBalance[msg.sender] + amount, EXCEEDS_AVAILABLE_CAPACITY());

        // 3. Reserve seller capacity so it cannot be over-listed.
        uint256 oldCommitted = committedBalance[msg.sender];
        committedBalance[msg.sender] = oldCommitted + amount;
        emit CommittedBalanceUpdated(
            msg.sender, oldCommitted, oldCommitted + amount, CommittedBalanceCause.ListingCreated
        );

        // 4. Allocate a new listing ID and persist listing data.
        listingId = nextListingId++;

        _listings[listingId] = SellListing({
            seller: msg.sender,
            pricePerWeek: uint96(pricePerWeek),
            paymentToken: paymentToken,
            maxDuration: uint32(maxDuration),
            expiry: uint64(expiry),
            amount: uint128(amount),
            filled: 0
        });

        // 5. Emit the listing creation event.
        emit ListingCreated(listingId, msg.sender, amount, pricePerWeek, maxDuration, paymentToken);
    }

    /// @notice Cancel a sell listing.
    /// @param listingId The listing to cancel.
    function cancelListing(uint256 listingId) external nonReentrant {
        SellListing storage listing = _listings[listingId];

        // 1. Validate ownership (implicitly checks existence since msg.sender != address(0)).
        require(listing.seller == msg.sender, NOT_OWNER());

        // 2. Release only the unfilled committed capacity.
        uint256 remaining = listing.amount - listing.filled;
        uint256 oldCommitted = committedBalance[listing.seller];
        committedBalance[listing.seller] = oldCommitted - remaining;
        emit CommittedBalanceUpdated(
            listing.seller, oldCommitted, oldCommitted - remaining, CommittedBalanceCause.ListingCancelled
        );

        // 3. Remove listing from storage and emit cancellation.
        delete _listings[listingId];
        emit ListingCancelled(listingId);
    }

    /// @notice Update a sell listing (unfilled portion only).
    /// @param listingId The listing to update.
    /// @param newAmount New total amount (must be >= filled).
    /// @param newPricePerWeek New price per week.
    function updateListing(uint256 listingId, uint256 newAmount, uint256 newPricePerWeek) external nonReentrant {
        SellListing storage listing = _listings[listingId];

        // 1. Validate ownership and new listing parameters.
        require(listing.seller == msg.sender, NOT_OWNER());
        _validateAmountAndPrice(newAmount, newPricePerWeek);
        require(newAmount >= listing.filled, INSUFFICIENT_AMOUNT());

        // 2. If increasing amount, re-check available delegation capacity.
        if (newAmount > listing.amount) {
            uint256 delta = newAmount - listing.amount;
            uint256 available = VL_BOOST.delegableBalance(msg.sender);
            require(available >= committedBalance[msg.sender] + delta, EXCEEDS_AVAILABLE_CAPACITY());
        }

        // 3. Recompute and persist committed capacity for seller.
        uint256 oldCommitted = committedBalance[msg.sender];
        uint256 newCommitted = oldCommitted + newAmount - listing.amount;
        committedBalance[msg.sender] = newCommitted;
        emit CommittedBalanceUpdated(msg.sender, oldCommitted, newCommitted, CommittedBalanceCause.ListingUpdated);

        // 4. Persist updated listing price/amount and emit update.
        listing.amount = uint128(newAmount);
        listing.pricePerWeek = uint96(newPricePerWeek);
        emit ListingUpdated(listingId, newAmount, newPricePerWeek);
    }

    ////////////////////////////////////////////////////////////////
    /// --- BUY OFFERS
    ///////////////////////////////////////////////////////////////

    /// @notice Create a buy offer with escrowed funds.
    /// @dev Assumes payment token transfers exact amounts (standard ERC20 behavior).
    /// @param amount vlSDT boost amount wanted.
    /// @param pricePerWeek Price per vlSDT per week willing to pay.
    /// @param duration Weeks of boost wanted.
    /// @param paymentToken Token to pay with.
    /// @param expiry Expiry timestamp (required).
    /// @param recipient Address to receive the boost delegation (address(0) = msg.sender).
    /// @return offerId The ID of the created offer.
    function createOffer(
        uint256 amount,
        uint256 pricePerWeek,
        uint256 duration,
        address paymentToken,
        uint256 expiry,
        address recipient
    ) external nonReentrant returns (uint256 offerId) {
        if (recipient == address(0)) recipient = msg.sender;
        // 1. Validate offer parameters.
        require(amount != 0, ZERO_AMOUNT());
        require(paymentToken != address(0), ZERO_ADDRESS());
        _validateAmountAndPrice(amount, pricePerWeek);
        require(expiry > block.timestamp, INVALID_EXPIRY());
        require(expiry <= type(uint64).max, VALUE_TOO_LARGE());
        require(duration != 0 && duration <= maxDurationWeeks, INVALID_DURATION());

        // 2. Compute required escrow for full order (worst-case effective duration).
        uint256 totalEscrow = _maxEscrow(amount, pricePerWeek, duration);
        require(totalEscrow != 0, ZERO_PAYMENT());

        // 3. Transfer escrow funds from buyer into marketplace custody.
        IERC20(paymentToken).safeTransferFrom(msg.sender, address(this), totalEscrow);

        // 4. Allocate offer ID and persist offer with explicit escrow accounting.
        offerId = nextOfferId++;

        _offers[offerId] = BuyOffer({
            buyer: msg.sender,
            pricePerWeek: uint96(pricePerWeek),
            paymentToken: paymentToken,
            duration: uint32(duration),
            expiry: uint64(expiry),
            recipient: recipient,
            amount: uint128(amount),
            filled: 0,
            escrowRemaining: totalEscrow
        });

        // 5. Emit creation and escrow snapshot events.
        emit OfferCreated(offerId, msg.sender, recipient, amount, pricePerWeek, duration, paymentToken);
        emit OfferEscrowUpdated(offerId, 0, totalEscrow);
    }

    /// @notice Cancel a buy offer and reclaim escrowed funds.
    /// @param offerId The offer to cancel.
    function cancelOffer(uint256 offerId) external nonReentrant {
        BuyOffer storage offer = _offers[offerId];

        // 1. Validate ownership (implicitly checks existence since msg.sender != address(0)).
        require(offer.buyer == msg.sender, NOT_OWNER());

        // 2. Snapshot remaining escrow to refund exactly what is still unspent.
        uint256 refund = offer.escrowRemaining;
        address paymentToken = offer.paymentToken;

        emit OfferEscrowUpdated(offerId, refund, 0);

        // 3. Remove offer state before external token transfer.
        delete _offers[offerId];

        // 4. Refund remaining escrow, then emit cancellation.
        if (refund > 0) {
            IERC20(paymentToken).safeTransfer(msg.sender, refund);
        }

        emit OfferCancelled(offerId, refund);
    }

    /// @notice Update a buy offer (unfilled portion only).
    /// @dev Adjusts escrow: collects additional deposit or refunds excess.
    /// @param offerId The offer to update.
    /// @param newAmount New total amount (must be >= filled).
    /// @param newPricePerWeek New price per week.
    function updateOffer(uint256 offerId, uint256 newAmount, uint256 newPricePerWeek) external nonReentrant {
        BuyOffer storage offer = _offers[offerId];

        // 1. Validate ownership and new offer parameters.
        require(offer.buyer == msg.sender, NOT_OWNER());
        _validateAmountAndPrice(newAmount, newPricePerWeek);
        require(newAmount >= offer.filled, INSUFFICIENT_AMOUNT());

        // 2. Recompute escrow needed for remaining fillable amount at new price (worst-case duration).
        uint256 neededFunds = _maxEscrow(newAmount - offer.filled, newPricePerWeek, offer.duration);
        require(newAmount == offer.filled || neededFunds != 0, ZERO_PAYMENT());

        address paymentToken = offer.paymentToken;

        // 3. Adjust escrow: collect additional funds or refund excess.
        if (neededFunds > offer.escrowRemaining) {
            IERC20(paymentToken).safeTransferFrom(msg.sender, address(this), neededFunds - offer.escrowRemaining);
        } else if (neededFunds < offer.escrowRemaining) {
            IERC20(paymentToken).safeTransfer(msg.sender, offer.escrowRemaining - neededFunds);
        }

        // 4. Persist the new offer terms and escrow balances.
        uint256 oldEscrowRemaining = offer.escrowRemaining;

        offer.amount = uint128(newAmount);
        offer.pricePerWeek = uint96(newPricePerWeek);
        offer.escrowRemaining = neededFunds;

        // 5. Emit escrow delta and offer update events.
        emit OfferEscrowUpdated(offerId, oldEscrowRemaining, neededFunds);
        emit OfferUpdated(offerId, newAmount, newPricePerWeek);
    }

    ////////////////////////////////////////////////////////////////
    /// --- ORDER MATCHING
    ///////////////////////////////////////////////////////////////

    /// @notice Fill a sell listing (buyer action).
    /// @param listingId The listing to fill.
    /// @param fillAmount Amount of vlSDT boost to buy.
    /// @param duration Weeks of boost to purchase.
    /// @param maxTotalPayment Maximum total payment the buyer is willing to make (slippage protection).
    /// @param recipient Address to receive the boost delegation (address(0) = msg.sender).
    function fillListing(
        uint256 listingId,
        uint256 fillAmount,
        uint256 duration,
        uint256 maxTotalPayment,
        address recipient
    ) external nonReentrant {
        if (recipient == address(0)) recipient = msg.sender;
        SellListing storage listing = _listings[listingId];

        // 1. Validate listing state and requested fill parameters.
        require(fillAmount >= minFillAmount, BELOW_MINIMUM());
        require(listing.seller != address(0), LISTING_NOT_FOUND());
        require(duration != 0 && duration <= listing.maxDuration, INVALID_DURATION());
        require(listing.expiry == 0 || listing.expiry > block.timestamp, LISTING_EXPIRED());

        uint256 remaining = listing.amount - listing.filled;
        require(fillAmount <= remaining, INSUFFICIENT_AMOUNT());

        // 2. Compute endtime first, then price based on actual delivered duration.
        uint256 endtime = _calculateEndtime(duration);
        uint256 effectiveDuration = endtime - block.timestamp;
        uint256 totalPayment = fillAmount * listing.pricePerWeek * effectiveDuration / WEEK / PRECISION;
        require(totalPayment != 0, ZERO_PAYMENT());
        require(totalPayment <= maxTotalPayment, MAX_PAYMENT_EXCEEDED());
        uint256 fee = feeCollector != address(0) ? (totalPayment * feeBps) / 10000 : 0;
        uint256 sellerPayment = totalPayment - fee;

        // 4. Mark listing fill and release equivalent committed seller capacity.
        listing.filled = uint128(uint256(listing.filled) + fillAmount);
        uint256 oldCommitted = committedBalance[listing.seller];
        committedBalance[listing.seller] = oldCommitted - fillAmount;
        emit CommittedBalanceUpdated(
            listing.seller, oldCommitted, oldCommitted - fillAmount, CommittedBalanceCause.ListingFilled
        );

        // 5. Transfer seller proceeds directly from buyer.
        IERC20(listing.paymentToken).safeTransferFrom(msg.sender, listing.seller, sellerPayment);

        // 6. Transfer protocol fee directly from buyer, if enabled.
        if (fee > 0) {
            IERC20(listing.paymentToken).safeTransferFrom(msg.sender, feeCollector, fee);
            emit FeeCollected(listing.paymentToken, fee);
        }

        // 7. Create the boost delegation from seller to recipient for chosen duration.
        VL_BOOST.boost(listing.seller, fillAmount, endtime, recipient);

        // 8. Emit trade execution event.
        emit ListingFilled(listingId, msg.sender, recipient, fillAmount, duration, totalPayment);
    }

    /// @notice Accept a buy offer (seller action).
    /// @param offerId The offer to accept.
    /// @param fillAmount Amount of vlSDT boost to sell.
    /// @param minTotalPayment Minimum total payment the seller is willing to accept (slippage protection).
    function acceptOffer(uint256 offerId, uint256 fillAmount, uint256 minTotalPayment) external nonReentrant {
        BuyOffer storage offer = _offers[offerId];

        // 1. Validate offer state and requested fill amount.
        require(fillAmount >= minFillAmount, BELOW_MINIMUM());
        require(offer.buyer != address(0), OFFER_NOT_FOUND());
        require(offer.expiry > block.timestamp, OFFER_EXPIRED());

        uint256 remaining = offer.amount - offer.filled;
        require(fillAmount <= remaining, INSUFFICIENT_AMOUNT());

        // 2. Compute endtime first, then price based on actual delivered duration.
        uint256 endtime = _calculateEndtime(offer.duration);
        uint256 effectiveDuration = endtime - block.timestamp;
        uint256 totalPayment = fillAmount * offer.pricePerWeek * effectiveDuration / WEEK / PRECISION;
        require(totalPayment != 0, ZERO_PAYMENT());
        require(totalPayment >= minTotalPayment, MIN_PAYMENT_NOT_MET());
        uint256 fee = feeCollector != address(0) ? (totalPayment * feeBps) / 10000 : 0;
        uint256 sellerPayment = totalPayment - fee;

        // 4. Update fill counters and decrement escrow by exact paid amount.
        uint256 oldEscrowRemaining = offer.escrowRemaining;
        offer.filled = uint128(uint256(offer.filled) + fillAmount);
        offer.escrowRemaining = oldEscrowRemaining - totalPayment;
        emit OfferEscrowUpdated(offerId, oldEscrowRemaining, offer.escrowRemaining);

        // 5. Pay seller from escrowed funds.
        IERC20(offer.paymentToken).safeTransfer(msg.sender, sellerPayment);

        // 6. Transfer fee from escrow, if enabled.
        if (fee > 0) {
            IERC20(offer.paymentToken).safeTransfer(feeCollector, fee);
            emit FeeCollected(offer.paymentToken, fee);
        }

        // 7. Create delegation from seller to recipient for offer duration.
        VL_BOOST.boost(msg.sender, fillAmount, endtime, offer.recipient);

        // 8. Auto-refund leftover escrow when offer is fully filled.
        if (offer.filled == offer.amount && offer.escrowRemaining > 0) {
            uint256 leftover = offer.escrowRemaining;
            offer.escrowRemaining = 0;
            emit OfferEscrowUpdated(offerId, leftover, 0);
            IERC20(offer.paymentToken).safeTransfer(offer.buyer, leftover);
        }

        // 9. Emit offer acceptance event.
        emit OfferAccepted(offerId, msg.sender, offer.recipient, fillAmount, totalPayment);
    }

    ////////////////////////////////////////////////////////////////
    /// --- INTERNAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Validate common order parameters shared by create and update functions.
    function _validateAmountAndPrice(uint256 amount, uint256 pricePerWeek) internal view {
        require(pricePerWeek != 0, ZERO_PRICE());
        require(amount >= minOrderAmount, BELOW_MINIMUM());
        require(amount <= type(uint128).max, VALUE_TOO_LARGE());
        require(pricePerWeek <= type(uint96).max, VALUE_TOO_LARGE());
    }

    /// @notice Compute worst-case escrow for a given amount, price, and duration.
    /// @dev The effective duration is at most durationWeeks * WEEK + (WEEK - 1) seconds,
    ///      which occurs when block.timestamp is 1 second past a week boundary.
    /// @param amount The vlSDT boost amount.
    /// @param pricePerWeek Price per vlSDT per week.
    /// @param durationWeeks Duration in weeks.
    /// @return escrow The maximum possible payment for this order.
    function _maxEscrow(uint256 amount, uint256 pricePerWeek, uint256 durationWeeks)
        internal
        pure
        returns (uint256 escrow)
    {
        uint256 maxEffectiveDuration = durationWeeks * WEEK + (WEEK - 1);
        escrow = amount * pricePerWeek * maxEffectiveDuration / WEEK / PRECISION;
    }

    /// @notice Calculate week-aligned endtime for delegation.
    /// @dev Rounds up to the nearest week boundary so the buyer receives at least `durationWeeks`
    ///      full weeks of boost. The caller pays for the actual delivered seconds, not nominal weeks.
    /// @param durationWeeks Number of weeks.
    /// @return endtime Week-aligned end timestamp.
    function _calculateEndtime(uint256 durationWeeks) internal view returns (uint256 endtime) {
        // 1. Compute the minimum acceptable endtime (now + requested duration).
        uint256 target = block.timestamp + durationWeeks * WEEK;
        // 2. Round up to next week boundary so buyer gets at least durationWeeks full weeks.
        endtime = ((target + WEEK - 1) / WEEK) * WEEK;
    }
}
