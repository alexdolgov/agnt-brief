// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC721} from "@openzeppelin-contracts/token/ERC721/IERC721.sol";
import {IERC1155} from "@openzeppelin-contracts/token/ERC1155/IERC1155.sol";
import {IERC20} from "@openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import {KimNFTMarketplaceBase} from "@contracts/KimNFTMarketplaceBase.sol";
import {Auction} from "@contracts/Auction.sol";
import {StandardErrors} from "@contracts/StandardErrors.sol";

/// @notice Core marketplace logic around listing and selling kpNFTs with asset management abstracted by the base
contract KimNFTMarketplace is KimNFTMarketplaceBase, Auction {
    using SafeERC20 for IERC20;

    /*
        Errors
    */

    error InvalidListingType();
    error InvalidOwner();
    error InvalidCurrency();
    error InvalidEndTimestamp();
    error InvalidListing();
    error CancellationPrevented();
    error NotBuyItNowListing();
    error NotCurrentBidder();
    error NoBids();
    error BidChanged();
    error UnableToPurchasePremiumListing();
    error NotBuyItNowListingWithBids();
    error OnlyBlindAuction();
    error NoCancellationOfBidsAfterReveal();
    error OnlyBlindAndEnglishAuction();
    error NotReadyForSettlement();
    error NotDutchAuction();
    error BidExpired();

    /*
        Events
    */

    event AllowedCurrencyUpdated(address indexed currency, bool enabled);
    event ListingAdded(uint256 indexed listingId);
    event ListingCancelled(uint256 indexed listingId);
    event BuyItNowPurchaseMade(uint256 indexed listingId);
    event BidForListingReceived(uint256 indexed listingId, uint256 bidAmount, bytes extraData);
    event BidForListingRefunded(uint256 indexed listingId, address indexed recipient, uint256 amount);
    event BidForListingCancelled(uint256 indexed listingId);
    event BidForListingAccepted(uint256 indexed listingId, address indexed winner, uint256 paymentAmount);
    event BlindBidReveal(uint256 indexed listingId, bytes fullBid);
    event BidRejected(uint256 indexed listingId, address indexed who, uint256 bidAmount);
    event AuctionSettled(uint256 indexed listingId, address indexed winner, uint256 payment);

    /*
        State Vars
    */

    /// @notice List of all NFT listings for the lifespan of the smart contract
    Listing[] public listings;

    /// @notice Gives the ability for listers to check whether the currency they want to accept is auth'd by the protocol
    mapping(address => bool) public isAllowedPaymentCurrency;

    /*
        Modifier
    */

    modifier onlyListing(uint256 listingId) {
        if (listings.length == 0) revert InvalidListing();
        if (listingId > listings.length) revert InvalidListing();
        _;
    } 

    modifier onlyValidListing(uint256 listingId) {
        if (!_isListingValid(listingId)) revert InvalidListing();
        _;
    }

    constructor(
        address xKimToken_,
        uint256 minXKimAllocationForStandardListings_,
        uint256 minXKimAllocationForPremiumListings_,
        address initialOwner,
        uint256 DAOCommissionOfSecondarySales_,
        address DAO_,
        address premiumBuyerNFT_,
        address[] memory allowedCurrencies
    ) KimNFTMarketplaceBase(
        xKimToken_,
        minXKimAllocationForStandardListings_,
        minXKimAllocationForPremiumListings_,
        initialOwner,
        DAOCommissionOfSecondarySales_,
        DAO_,
        premiumBuyerNFT_
    ) {
        if (allowedCurrencies.length == 0) revert StandardErrors.ZeroValueArgumentSupplied();
        for (uint256 i; i < allowedCurrencies.length; ++i) {
            _setIsAllowedCurrency(allowedCurrencies[i], true);
        }
     }

    /*
        Public functions
    */

    /// @notice List an NFT for sale on the secondary market specifying how the NFT should be sold
    /// @param newListing Listing metadata defined as a `Listing` struct defined in Auction.sol
    /// @return listingId The ID assigned to the listing 
    function listNFT(Listing calldata newListing) external whenAllocatedToPlugin returns (uint256 listingId) {
        // Validate the listing
        if (newListing.listingType == ListingType.NOT_SET) revert InvalidListingType();
        if (newListing.maker != msg.sender) revert InvalidOwner();
        if (!isAllowedPaymentCurrency[newListing.currency]) revert InvalidCurrency();
        if (newListing.amount == 0) revert StandardErrors.ZeroValueArgumentSupplied();
        if (newListing.price == 0) revert StandardErrors.ZeroValueArgumentSupplied();
        if (newListing.start > 0 && newListing.end == 0) revert InvalidEndTimestamp();
        if (newListing.end > 0 && newListing.end < newListing.start) revert InvalidEndTimestamp();

        // Specific listing types must have a defined time window
        if (
            newListing.listingType == ListingType.ENGLISH_AUCTION ||
            newListing.listingType == ListingType.DUTCH_AUCTION ||
            newListing.listingType == ListingType.BLIND
        ) {
            if (newListing.start == 0) revert StandardErrors.ZeroValueArgumentSupplied();
            if (newListing.reserve == 0) revert StandardErrors.ZeroValueArgumentSupplied();
        }

        // Save the listing
        listings.push(newListing);

        // Escrow the NFT into the smart contract
        _escrowNFT(newListing.nft, msg.sender, newListing.tokenId, newListing.amount, newListing.isSemiFungible);

        emit ListingAdded(listings.length - 1);

        return listings.length - 1;
    }

    /// @notice Under specified conditions, allow cancellation of a listing and return the NFT to its owner
    /// @dev Assume this only works on the basis of escrow therefore cancelling a sold listing wouldn't work because there's nothing to return
    function cancelListing(uint256 listingId) external onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];

        if (msg.sender != listing.maker) revert InvalidOwner();

        // Buy it now can always be cancelled by the seller 
        if (listing.listingType != ListingType.BUY_IT_NOW && listing.listingType != ListingType.BUY_IT_NOW_WITH_BIDS) {
            // Ensure in the middle of an auction we cannot cancel the listing
            if (listing.start > 0 && block.timestamp >= listing.start && block.timestamp <= listing.end) revert AuctionNotFinished();

            // When blind auction allow for the bid reveal window to finish
            if (listing.listingType == ListingType.BLIND) {
                if (block.timestamp <= (listing.end + BLIND_BID_REVEAL_WINDOW)) revert AuctionNotFinished();
            }

            // For blind and English auctions that need settling only allow for cancellation if no bids were received
            if (listing.listingType == ListingType.BLIND || listing.listingType == ListingType.ENGLISH_AUCTION) {
                if (bestBidForListing[listingId].amount > 0) revert CancellationPrevented();
            }
        }

        // If there is any bid on the NFT ensure that its cancelled before removing the listing
        _ifABidExistsDeleteItAndReturnFunds(listingId);

        // Send the seller their NFT
        _transferNFT(
            listing.nft,
            msg.sender,
            listing.tokenId,
            listing.amount,
            listing.isSemiFungible
        );

        emit ListingCancelled(listingId);
    }

    /// @notice Buy multiple NFTs listed on the marketplace for buy it now
    function bulkBuyItNow(
        uint256[] calldata listingIds, 
        uint256[] calldata optionalPremiumTokenIds
    ) external {
        uint256 numOfListings = listingIds.length;
        if (numOfListings == 0) revert StandardErrors.ZeroLength();
        if (numOfListings != optionalPremiumTokenIds.length) revert StandardErrors.ArrayLengthsMustAllBeTheSame();
        for (uint256 i; i < numOfListings; ++i) {
            buyItNow(listingIds[i], optionalPremiumTokenIds[i]);
        }
    }

    /// @notice Facilitate simple buy it now transactions paying the exact amount requested by the seller
    /// @dev User has to be allocated to the plugin
    /// @param listingId Index of the `listings` array that corresponds to the NFT being purchased
    /// @param optionalPremiumTokenId Only specified when buyer must have ownership of a premium NFT to buy the NFT for sale in additional to the premium amount of xKIM otherwise can be zero
    function buyItNow(uint256 listingId, uint256 optionalPremiumTokenId) public whenAllocatedToPlugin onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];
        if (listing.listingType != ListingType.BUY_IT_NOW && listing.listingType != ListingType.BUY_IT_NOW_WITH_BIDS) revert NotBuyItNowListing();
        if (isPremiumNFT[listing.nft][listing.tokenId]) {
            _assertPremiumBuyerAllocatedXKIMAndOwnsAnyPremiumNFT(msg.sender, optionalPremiumTokenId);
        }

        // Check sale is within defined time window if defined
        if (listing.start > 0) {
            _validateListingWindow(listing.start, listing.end);
        }

        _ifABidExistsDeleteItAndReturnFunds(listingId);
        _concludeSale(msg.sender, listing.price, false, listing);

        emit BuyItNowPurchaseMade(listingId);
    }

    /// @notice For all listing types excluding BUY_IT_NOW listings, allow for prospective buyers to offer bids for listed NFTs
    /// @dev User has to be allocated to the plugin and NFT still has to be escrowed for the listing to be considered valid
    /// @param listingId Integer assigned to the listing when it was created
    /// @param bidAmount Total bid for the NFT or zero if its a blind bid to be revealed later
    /// @param optionalPremiumTokenId Should the listing require the buyer to have premium status, specify the premium 1155 token ID to prove they can buy the listing
    /// @param extraData When required allow extra data to be injected in order for a bid to be processed by the specific listing type
    function bidForNFT(
        uint256 listingId, 
        uint256 bidAmount, 
        uint256 optionalPremiumTokenId, 
        bytes calldata extraData
    ) external whenAllocatedToPlugin onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];
        if (listing.listingType != ListingType.BLIND && bidAmount == 0) revert StandardErrors.ZeroValueArgumentSupplied();

        // Ensure only premium buyers can bid for premium NFTs
        if (isPremiumNFT[listing.nft][listing.tokenId]) {
            _assertPremiumBuyerAllocatedXKIMAndOwnsAnyPremiumNFT(msg.sender, optionalPremiumTokenId);
        }

        // Process the bid for the listing - it will handle buy it now with bids, English, Dutch and Blind auctions
        (uint256 refund, address refundUser, uint256 amountToEscrowOrPay, bool isEscrow) = _bidForAuction(listingId, bidAmount, listing, extraData);

        // Refund old bidder if required
        if (refundUser != address(0) && refund > 0) {
            IERC20(listing.currency).safeTransfer(refundUser, refund);
            emit BidForListingRefunded(listingId, refundUser, refund);
        }

        // Escrow the bid or conclude the sale for a dutch auction since the first bid is taken
        if (isEscrow && amountToEscrowOrPay > 0) {
            IERC20(listing.currency).safeTransferFrom(msg.sender, address(this), amountToEscrowOrPay);
        } else if (listing.listingType == ListingType.DUTCH_AUCTION && !isEscrow) {
            _concludeSale(msg.sender, amountToEscrowOrPay, false, listing);
        }

        emit BidForListingReceived(listingId, bidAmount, extraData);
    }

    /// @notice Allow a user that has placed a bid to revoke their bid
    function cancelBidForNFT(uint256 listingId) external onlyValidListing(listingId) nonReentrant {
        // Ensure the highest bidder calls this
        Bid storage currentBid = bestBidForListing[listingId];
        if (msg.sender != currentBid.user) revert NotCurrentBidder();
        if (listings[listingId].listingType == ListingType.BLIND) revert NoCancellationOfBidsAfterReveal();

        _deleteBidAndReturnFunds(listingId, currentBid);

        emit BidForListingCancelled(listingId);
    }

    /// @notice Seller functionality to accept a bid for a listed NFT which must specify the value being accepted
    function acceptBidForNFT(uint256 listingId, uint256 bidAmount) external onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];
        if (listing.listingType != ListingType.BUY_IT_NOW_WITH_BIDS) revert NotBuyItNowListingWithBids();
        if (msg.sender != listing.maker) revert InvalidOwner();
        
        // To prevent a front-running attack where a bidder sees an 'acceptBidForNFT' transaction and tries to switch their bid for a lower one
        // We ask the seller to specify the bid amount they are accepting
        uint256 highestBid = bestBidForListing[listingId].amount;
        address bidder = bestBidForListing[listingId].user;
        if (highestBid == 0) revert NoBids();
        if (highestBid != bidAmount) revert BidChanged();

        // Check the expiry on the bid and make sure that the buyers offer expiry window is respected
        uint256 buyerBidExpiryTimestamp = bidExpiry[bidder][listingId];
        if (block.timestamp >= buyerBidExpiryTimestamp) revert BidExpired();

        // Cleanup the bid data
        delete bestBidForListing[listingId];
        delete bidExpiry[msg.sender][listingId];

        // Perform the settlement, pay the seller, transfer the NFT to the buyer etc
        _concludeSale(bidder, bidAmount, true, listing);

        emit BidForListingAccepted(listingId, bidder, bidAmount);
    }

    /// @notice Sellers can reject long standing bids they dont want to accept to return funds to a user
    function rejectBidForNFT(uint256 listingId) external onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];
        if (msg.sender != listing.maker) revert InvalidOwner();
        if (listing.listingType != ListingType.BUY_IT_NOW_WITH_BIDS) revert NotBuyItNowListingWithBids();

        Bid storage currentBid = bestBidForListing[listingId];
        if (currentBid.user == address(0)) revert NoBids();
        
        _deleteBidAndReturnFunds(listingId, currentBid);

        emit BidRejected(listingId, currentBid.user, currentBid.amount);
    }

    /// @notice Users that bid in a blind auction using `bidForNFT` will use this method to reveal their bid so the auction can settle
    function revealBlindBid(uint256 listingId, bytes calldata fullBid) external whenAllocatedToPlugin onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];
        if (listing.listingType != ListingType.BLIND) revert OnlyBlindAuction();

        (uint256 refund, address refundUser, uint256 amountToEscrow) = _revealBlindBid(listingId, listing, fullBid);
        if (refundUser != address(0)) {
            IERC20(listing.currency).safeTransfer(refundUser, refund);
            emit BidForListingRefunded(listingId, refundUser, refund);
        }

        if (amountToEscrow > 0) {
            IERC20(listing.currency).safeTransferFrom(msg.sender, address(this), amountToEscrow);
        }

        emit BlindBidReveal(listingId, fullBid);
    }

    /// @notice Allow anyone to settle a Blind or English auction either returning the NFT to the seller or sending it to the winner
    function settleAuction(uint256 listingId) external onlyValidListing(listingId) {
        Listing storage listing = listings[listingId];
        if (listing.listingType != ListingType.BLIND && listing.listingType != ListingType.ENGLISH_AUCTION) revert OnlyBlindAndEnglishAuction();
        if (block.timestamp < listing.end) revert NotReadyForSettlement();
        if (listing.listingType == ListingType.BLIND && block.timestamp < (listing.end + BLIND_BID_REVEAL_WINDOW)) revert NotReadyForSettlement();

        Bid storage bestBid = bestBidForListing[listingId];
        if (bestBid.amount == 0) {
            // With no bids we just send the NFT back to sender thus invalidating the listing
            _transferNFT(
                listing.nft,
                listing.maker,
                listing.tokenId,
                listing.amount,
                listing.isSemiFungible
            ); // Reentrancy protection from _transferNFT
        } else {
            // We can conclude the sale splitting funds as appropriate and sending the winner their NFT!
            _concludeSale(bestBid.user, bestBid.amount, true, listing);
        }

        emit AuctionSettled(listingId, bestBid.user, bestBid.amount);
    }

    /// @notice For enumeration will return the total number of elements in the `listings` storage array
    function getTotalNumberOfListings() external view returns (uint256) {
        return listings.length;
    }

    /// @notice When a listing is not valid it should not be in consideration for any buyer. Conditions such as escrow are checked
    function isListingValid(uint256 listingId) external view returns (bool) {
        return _isListingValid(listingId);
    }

    /// @notice For Dutch auctions allow external observers to watch the price drop to snipe the listing when they are ready
    function getCurrentItemPriceAtDutchAuction(uint256 listingId) external onlyValidListing(listingId) view returns (uint256) {
        Listing storage listing = listings[listingId];
        if (listing.listingType != ListingType.DUTCH_AUCTION) revert NotDutchAuction();
        _validateListingWindow(listing.start, listing.end);
        return _getCurrentItemPriceAtDutchAuction(listing);
    }

    /*
        Owner functions
    */

    /// @notice Owner setter for updating the allowed currencies that sellers can request when listing their NFTs
    function setIsAllowedCurrency(
        address currency,
        bool isAllowed
    ) external onlyOwner {
        _setIsAllowedCurrency(currency, isAllowed);
    }

    /*
        Internal functions
    */

    /// @dev Logic for `setIsAllowedCurrency`
    function _setIsAllowedCurrency(
        address currency,
        bool isAllowed
    ) internal {
        if (currency == address(0)) revert StandardErrors.ZeroValueArgumentSupplied();
        isAllowedPaymentCurrency[currency] = isAllowed;
        emit AllowedCurrencyUpdated(currency, isAllowed);
    }

    /// @dev Helper function to allow marketplace to establish whether a sale can go ahead based on listing conditions
    function _isListingValid(
        uint256 listingId
    ) internal view onlyListing(listingId) returns (bool) {
        Listing storage listing = listings[listingId];
        bool isMarketplaceStillHoldingNFT;

        if (!listing.isSemiFungible) {
            isMarketplaceStillHoldingNFT = IERC721(listing.nft).ownerOf(listing.tokenId) == address(this);
        } else {
            isMarketplaceStillHoldingNFT = _get1155NftBalanceOfUser(listing.nft, listing.tokenId, address(this)) == listing.amount;
        }

        return isMarketplaceStillHoldingNFT;
    }

    /// @dev Facilitate payment to a seller and commission to the DAO just giving sale price and seller's address
    /// @param isMarketplaceAlreadyHoldingPayment Set to true if payment has already been escrowed by the marketplace
    function _makePaymentToSellerAndDao(address buyer, address currency, uint256 price, address seller, bool isMarketplaceAlreadyHoldingPayment) internal {
        (address daoAddr, uint256 daoCommission, uint256 amountToTheSeller) = calculateDAOCommissionOnSale(price);
        if (isMarketplaceAlreadyHoldingPayment) {
            IERC20(currency).safeTransfer(seller, amountToTheSeller);
            if (daoCommission > 0) IERC20(currency).safeTransfer(daoAddr, daoCommission);
        } else {
            IERC20(currency).safeTransferFrom(buyer, seller, amountToTheSeller);
            if (daoCommission > 0) IERC20(currency).safeTransferFrom(buyer, daoAddr, daoCommission);
        }
    }

    /// @dev Fetch number of semi-fungible tokens that the user owns for a given token ID
    function _get1155NftBalanceOfUser(address nft, uint256 tokenId, address user) internal view returns (uint256) {
        return IERC1155(nft).balanceOf(user, tokenId);
    }

    /// @dev Ensure the user has a non-zero balance of any specified token ID in the known premium buyer NFT contract
    function _assertPremiumBuyerOwnsAnyPremiumNFT(address user, uint256 premiumTokenId) internal view {
        if (_get1155NftBalanceOfUser(premiumBuyerNFT, premiumTokenId, user) == 0) revert UnableToPurchasePremiumListing();    
    }

    /// @dev Check that a premium listing sale can go ahead by checking all sub-conditions
    function _assertPremiumBuyerAllocatedXKIMAndOwnsAnyPremiumNFT(address user, uint256 premiumTokenId) internal view {
        // Condition 1: Ensure firstly they have more than the standard xKIM allocated to the plugin
        _assertAllocatedToPluginAndPremium(user);

        // Condition 2: Ensure that the premium buyer has any premium NFT from the known 1155 contract
        _assertPremiumBuyerOwnsAnyPremiumNFT(user, premiumTokenId);
    }

    /// @dev Conclude a sale by processing payment and sending the buyer their NFT
    function _concludeSale(address buyer, uint256 paymentAmount, bool isMarketplaceHoldingPayment, Listing memory listing) internal {
        // Facilitate payment and commission to the DAO
        // Payment has not been escrowed by the buyer so make sure buyer pays the seller and DAO
        _makePaymentToSellerAndDao(buyer, listing.currency, paymentAmount, listing.maker, isMarketplaceHoldingPayment);

        _transferNFT(
            listing.nft,
            buyer,
            listing.tokenId,
            listing.amount,
            listing.isSemiFungible
        );  // Reentrancy protection enabled on the transfer of the NFT
    }

    /// @dev Check first that a bid exists before cancelling and returning funds
    function _ifABidExistsDeleteItAndReturnFunds(uint256 listingId) internal {
        Bid storage currentBid = bestBidForListing[listingId];
        if (currentBid.user != address(0)) {
            _deleteBidAndReturnFunds(listingId, currentBid);
        }
    }

    /// @dev Remove a bid from a listing and return funds to sender
    function _deleteBidAndReturnFunds(uint256 listingId, Bid memory currentBid) internal {
        if (currentBid.user == address(0)) revert NoBids();
        if (currentBid.amount == 0) revert NoBids();

        // Delete the bid info from the smart contract
        delete bestBidForListing[listingId];
        delete bidExpiry[currentBid.user][listingId];

        // Send the highest bidder back their escrowed funds
        IERC20(listings[listingId].currency).safeTransfer(currentBid.user, currentBid.amount);

        emit BidRejected(listingId, currentBid.user, currentBid.amount);
    }

}