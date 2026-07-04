pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

contract LockedUSDzMarket is AccessControl, ReentrancyGuard, ERC1155Holder {
    using SafeERC20 for IERC20;

    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");

    struct Offer {
        address creator;
        uint256 tokenId;
        uint256 amount;
        uint256 askPrice;
        uint256 expirationTime;
        uint256 validUntil;
    }

    IERC1155 public immutable lockedUsdz;
    IERC20 public immutable USDC;
    uint256 public offerExpirationPeriod;
    uint256 public offerIdCounter;
    uint256 public pendingOffersCount;
    uint256 public totalPendingTokens;

    uint256 public minimumOfferAmount;
    mapping(uint256 => Offer) public offers;
    mapping(address => uint256[]) public userOffers;
    mapping(uint256 => uint256) public pendingTokensByTokenId;

    event OfferCreated(uint256 indexed offerId, address indexed creator, uint256 tokenId, uint256 amount, uint256 askPrice, uint256 expirationTime);
    event OfferFilled(uint256 indexed offerId, uint256 amount, address indexed creator);
    event OfferCancelled(uint256 indexed offerId);

    constructor(address _admin, IERC1155 _erc1155Token, IERC20 _usdc) {
        lockedUsdz = _erc1155Token;
        USDC = _usdc;
        pendingOffersCount = 0;
        totalPendingTokens = 0;
        minimumOfferAmount = 100e18;
        offerExpirationPeriod = 0;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    function createOffer(uint256 tokenId, uint256 amount, uint256 askPrice, uint256 validUntil) external nonReentrant {
        require(amount >= minimumOfferAmount, "Amount must be >= minimum offer amount");
        require(askPrice > 0, "Ask price must be > 0");
        require(askPrice <= 1e6, "Ask price must be <= 1");

        uint256 offerId = offerIdCounter++;
        uint256 expirationTime = block.timestamp + offerExpirationPeriod;
        pendingOffersCount++;
        totalPendingTokens += amount;
        pendingTokensByTokenId[tokenId] += amount;

        offers[offerId] = Offer({
            creator: msg.sender,
            tokenId: tokenId,
            amount: amount,
            askPrice: askPrice,
            expirationTime: expirationTime,
            validUntil: validUntil
        });

        userOffers[msg.sender].push(offerId);

        lockedUsdz.safeTransferFrom(msg.sender, address(this), tokenId, amount, "");

        emit OfferCreated(offerId, msg.sender, tokenId, amount, askPrice, expirationTime);
    }

    function fillOffer(uint256 offerId, uint256 amount) external nonReentrant {
        Offer storage offer = offers[offerId];

        require(block.timestamp <= offer.validUntil, "Offer expired");

        uint256 requiredUSDC = calculateRequiredUSDC(amount, offer.askPrice);

        require(requiredUSDC > 0, "Required USDC must be greater than 0");
        require(amount <= offer.amount, "Amount must be less than offer amount");
        require(amount > 0, "Amount must be greater than 0");

        address creator = offer.creator;
        uint256 tokenId = offer.tokenId;

        offer.amount -= amount;
        totalPendingTokens -= amount;
        pendingTokensByTokenId[tokenId] -= amount;

        if (offer.amount == 0) {
            pendingOffersCount--;
            delete offers[offerId];
        }

        USDC.safeTransferFrom(msg.sender, creator, requiredUSDC);
        lockedUsdz.safeTransferFrom(address(this), msg.sender, tokenId, amount, "");

        emit OfferFilled(offerId, amount, creator);
    }

    function cancelOffer(uint256 offerId) external nonReentrant {
        Offer storage offer = offers[offerId];
        require((msg.sender == offer.creator) || hasRole(POOL_MANAGER_ROLE, msg.sender), "Only creator can cancel");
        require(block.timestamp >= offer.expirationTime, "Cannot cancel yet");

        uint256 cancelledAmount = offer.amount;
        uint256 tokenId = offer.tokenId;
        address creator = offer.creator;

        totalPendingTokens -= offer.amount;
        pendingTokensByTokenId[tokenId] -= offer.amount;
        offer.amount = 0;
        pendingOffersCount--;
        delete offers[offerId];

        lockedUsdz.safeTransferFrom(address(this), creator, tokenId, cancelledAmount, "");

        emit OfferCancelled(offerId);
    }

    function calculateRequiredUSDC(uint256 tokenAmount, uint256 askPrice) public pure returns (uint256) {
        require(askPrice <= 1e6, "Ask price must be <= 1");
        uint256 tokenAmountInUSDCDecimals = tokenAmount / 1e12;
        return (tokenAmountInUSDCDecimals * askPrice) / 1e6;
    }

    function setOfferExpirationPeriod(uint256 newExpirationPeriod) external onlyRole(DEFAULT_ADMIN_ROLE) {
        offerExpirationPeriod = newExpirationPeriod;
    }

    function rescueERC20(IERC20 token, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.safeTransfer(to, amount);
    }

    function rescueERC1155(uint256 tokenId, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount <= lockedUsdz.balanceOf(address(this), tokenId) - pendingTokensByTokenId[tokenId], "Cannot rescue ERC1155 tokens reserved for pending offers");
        lockedUsdz.safeTransferFrom(address(this), to, tokenId, amount, "");
    }

    function setMinimumOfferAmount(uint256 newMinimumOfferAmount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        minimumOfferAmount = newMinimumOfferAmount;
    }

    function onERC1155Received(
        address,
        address,
        uint256,
        uint256,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC1155Received.selector;
    }

    function onERC1155BatchReceived(
        address,
        address,
        uint256[] memory,
        uint256[] memory,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC1155BatchReceived.selector;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControl, ERC1155Holder) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
