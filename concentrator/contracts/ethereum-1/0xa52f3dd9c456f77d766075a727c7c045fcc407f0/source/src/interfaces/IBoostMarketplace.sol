// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

/// @notice Cause of a committed balance change.
enum CommittedBalanceCause {
    ListingCreated,
    ListingCancelled,
    ListingUpdated,
    ListingFilled
}

/// @notice Sell listing for boost capacity.
struct SellListing {
    address seller;
    uint96 pricePerWeek; // price per vlSDT per week (in payment token decimals)
    address paymentToken;
    uint32 maxDuration; // max weeks buyer can purchase
    uint64 expiry; // 0 = no expiry
    uint128 amount; // vlSDT boost amount available
    uint128 filled; // amount already sold
}

/// @notice Buy offer for boost.
struct BuyOffer {
    address buyer;
    uint96 pricePerWeek; // price per vlSDT per week
    address paymentToken;
    uint32 duration; // weeks of boost wanted
    uint64 expiry; // required, funds locked until then
    address recipient; // who receives the boost delegation (buyer if address(0) at creation)
    uint128 amount; // vlSDT boost amount wanted
    uint128 filled; // amount already filled
    uint256 escrowRemaining; // remaining escrow in contract for this offer
}

interface IBoostMarketplace {
    ////////////////////////////////////////////////////////////////
    /// --- EVENTS
    ///////////////////////////////////////////////////////////////

    event ListingCreated(
        uint256 indexed listingId,
        address indexed seller,
        uint256 amount,
        uint256 pricePerWeek,
        uint256 maxDuration,
        address paymentToken
    );

    event ListingCancelled(uint256 indexed listingId);

    event ListingUpdated(uint256 indexed listingId, uint256 newAmount, uint256 newPricePerWeek);

    event ListingFilled(
        uint256 indexed listingId,
        address indexed buyer,
        address indexed recipient,
        uint256 amount,
        uint256 duration,
        uint256 totalPaid
    );

    event OfferCreated(
        uint256 indexed offerId,
        address indexed buyer,
        address indexed recipient,
        uint256 amount,
        uint256 pricePerWeek,
        uint256 duration,
        address paymentToken
    );

    event OfferUpdated(uint256 indexed offerId, uint256 newAmount, uint256 newPricePerWeek);

    event OfferCancelled(uint256 indexed offerId, uint256 refunded);

    event OfferAccepted(
        uint256 indexed offerId, address indexed seller, address indexed recipient, uint256 amount, uint256 totalPaid
    );

    event FeeCollected(address indexed token, uint256 amount);

    event FeeUpdated(uint256 oldFeeBps, uint256 newFeeBps);
    event FeeCollectorUpdated(address oldFeeCollector, address newFeeCollector);
    event MinOrderAmountUpdated(uint256 oldMinOrderAmount, uint256 newMinOrderAmount);
    event MinFillAmountUpdated(uint256 oldMinFillAmount, uint256 newMinFillAmount);
    event MaxDurationWeeksUpdated(uint256 oldMaxDurationWeeks, uint256 newMaxDurationWeeks);

    /// @notice Emitted when a seller's committed balance changes.
    /// @param seller The seller address.
    /// @param oldBalance Previous committed balance.
    /// @param newBalance New committed balance.
    /// @param cause What triggered the change.
    event CommittedBalanceUpdated(
        address indexed seller, uint256 oldBalance, uint256 newBalance, CommittedBalanceCause cause
    );

    /// @notice Emitted when an offer's escrowed funds change.
    /// @param offerId The offer ID.
    /// @param oldEscrowRemaining Previous remaining escrow.
    /// @param newEscrowRemaining New remaining escrow.
    event OfferEscrowUpdated(uint256 indexed offerId, uint256 oldEscrowRemaining, uint256 newEscrowRemaining);

    ////////////////////////////////////////////////////////////////
    /// --- ERRORS
    ///////////////////////////////////////////////////////////////

    error ZERO_AMOUNT();
    error ZERO_ADDRESS();
    error ZERO_PRICE();
    error INVALID_DURATION();
    error INVALID_EXPIRY();
    error LISTING_NOT_FOUND();
    error LISTING_EXPIRED();
    error OFFER_NOT_FOUND();
    error OFFER_EXPIRED();
    error INSUFFICIENT_AMOUNT();
    error BELOW_MINIMUM();
    error NOT_OWNER();
    error NOT_OPERATOR();
    error INVALID_FEE();
    error MAX_PAYMENT_EXCEEDED();
    error EXCEEDS_AVAILABLE_CAPACITY();
    error EXCEEDS_VL_BOOST_MAX_DURATION();
    error VALUE_TOO_LARGE();
    error ZERO_PAYMENT();
    error MIN_PAYMENT_NOT_MET();

    ////////////////////////////////////////////////////////////////
    /// --- VIEW FUNCTIONS
    ///////////////////////////////////////////////////////////////

    function getListing(uint256 listingId) external view returns (SellListing memory);
    function getOffer(uint256 offerId) external view returns (BuyOffer memory);
    function getListingRemaining(uint256 listingId) external view returns (uint256);
    function getOfferRemaining(uint256 offerId) external view returns (uint256);
    function committedBalance(address seller) external view returns (uint256);
}
