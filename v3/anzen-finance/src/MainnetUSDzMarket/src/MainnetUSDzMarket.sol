pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/ISPCTPool.sol";
import "./interfaces/IUSDz.sol";

contract MainnetUSDzMarket is AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");

    struct Offer {
        address creator;
        uint256 amount;
        uint256 askPrice;
        uint256 expirationTime;
        uint256 validUntil;
        uint256 queueId;
    }

    IUSDz public immutable USDz;
    IERC20 public immutable USDC;
    ISPCTPool public immutable SPCT;

    /// @notice Minimum period (in seconds) after which offers can be cancelled
    uint256 public offerExpirationPeriod;
    uint256 public offerIdCounter;
    uint256 public pendingOffersCount;
    uint256 public totalPendingUSDz;

    uint256 public minimumOfferAmount;
    mapping(uint256 => Offer) public offers;
    mapping(address => uint256[]) public userOffers;

    event OfferCreated(uint256 indexed offerId, address indexed creator, uint256 amount, uint256 askPrice, uint256 validUntil, uint256 queueId);
    event OfferFilled(uint256 indexed offerId, uint256 indexed amount, address indexed creator, uint256 queueId);
    event OfferCancelled(uint256 indexed offerId, uint256 indexed amount, uint256 indexed queueId);

    /// @notice Constructor for the USDzMarket contract
    /// @param _usdz The address of the USDz token contract
    /// @param _usdc The address of the USDC token contract
    constructor(address _admin, IUSDz _usdz, IERC20 _usdc, ISPCTPool _spct) {
        USDz = _usdz;
        USDC = _usdc;
        SPCT = _spct;
        pendingOffersCount = 0;
        totalPendingUSDz = 0;
        minimumOfferAmount = 100e18;
        offerExpirationPeriod = 0;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _usdc.approve(address(_spct), type(uint256).max);
    }

    /// @notice Creates an offer for USDz
    /// @param amount The amount of USDz to offer
    /// @param askPrice The ask price (in USDC) per USDz token, 6 decimals
    /// @param validUntil The timestamp until which the offer can be filled
    /// @param queueId The ID of the queue to add the offer to
    function createOffer(uint256 amount, uint256 askPrice, uint256 validUntil, uint256 queueId) external nonReentrant {
        require(amount >= minimumOfferAmount, "Amount must be > 100e18");
        require(askPrice > 0, "Ask price must be > 0");
        require(askPrice <= 1e6, "Ask price must be <= 1");

        uint256 offerId = offerIdCounter++;
        uint256 expirationTime = block.timestamp + offerExpirationPeriod;

        pendingOffersCount++;
        totalPendingUSDz += amount;

        offers[offerId] = Offer({
            creator: msg.sender,
            amount: amount,
            askPrice: askPrice,
            expirationTime: expirationTime,
            validUntil: validUntil,
            queueId: queueId
        });

        userOffers[msg.sender].push(offerId);

        IERC20(address(USDz)).safeTransferFrom(msg.sender, address(this), amount);

        emit OfferCreated(offerId, msg.sender, amount, askPrice, validUntil, queueId);
    }

    /// @notice Fills an offer
    /// @param offerId The ID of the offer to fill
    /// @param usdzAmount The amount of USDz to buy
    function fillOffer(uint256 offerId, uint256 usdzAmount) external nonReentrant {
        Offer storage offer = offers[offerId];

        require(block.timestamp <= offer.validUntil, "Offer expired");

        uint256 requiredUSDC = calculateRequiredUSDC(usdzAmount, offer.askPrice);

        require(requiredUSDC > 0, "Required USDC must be greater than 0");
        require(usdzAmount <= offer.amount, "Requested amount too large");
        require(usdzAmount > 0, "Amount must be greater than 0");

        address creator = offer.creator;

        offer.amount -= usdzAmount;
        totalPendingUSDz -= usdzAmount;

        if (offer.amount == 0) {
            pendingOffersCount--;
            delete offers[offerId];
        }

        USDC.safeTransferFrom(msg.sender, creator, requiredUSDC);
        IERC20(address(USDz)).safeTransfer(msg.sender, usdzAmount);

        emit OfferFilled(offerId, usdzAmount, creator, offer.queueId);
    }

    /// @notice Cancels an offer
    /// @param offerId The ID of the offer to cancel
    function cancelOffer(uint256 offerId) external nonReentrant {
        Offer storage offer = offers[offerId];
        require((msg.sender == offer.creator) || hasRole(POOL_MANAGER_ROLE, msg.sender), "Only creator can cancel");
        require(block.timestamp >= offer.expirationTime || hasRole(POOL_MANAGER_ROLE, msg.sender), "Cannot cancel yet");

        uint256 cancelledAmount = offer.amount;
        address creator = offer.creator;

        totalPendingUSDz -= offer.amount;
        offer.amount = 0;
        pendingOffersCount--;
        delete offers[offerId];

        IERC20(address(USDz)).safeTransfer(creator, cancelledAmount);

        emit OfferCancelled(offerId, cancelledAmount, offer.queueId);
    }

    /// @notice Admin fills an offer
    /// @param offerId The ID of the offer to fill
    /// @param usdzAmount The amount of USDz to buy
    function adminFillOffer(uint256 offerId, uint256 usdzAmount) external onlyRole(POOL_MANAGER_ROLE) nonReentrant {
        Offer storage offer = offers[offerId];
        require(offer.amount > 0, "Offer already filled");
        require(usdzAmount > 0, "Amount must be greater than 0");
        require(usdzAmount <= offer.amount, "Requested amount too large");

        uint256 requiredUSDC = calculateRequiredUSDC(usdzAmount, offer.askPrice);
        require(requiredUSDC > 0, "Required USDC must be greater than 0");

        uint256 usdzToSell = requiredUSDC * 1e12;
        address creator = offer.creator;

        offer.amount -= usdzAmount;
        totalPendingUSDz -= usdzAmount;

        if (offer.amount == 0) {
            pendingOffersCount--;
            delete offers[offerId];
        }

        USDC.safeTransferFrom(msg.sender, address(this), requiredUSDC);
        USDz.redeemBackSPCT(usdzToSell); // burn USDz, get SPCT
        SPCT.repay(requiredUSDC); // send USDC to SPCT
        SPCT.redeem(usdzToSell); // burn SPCT, get USDC back
        USDC.safeTransfer(creator, requiredUSDC); // send USDC to creator

        emit OfferFilled(offerId, usdzAmount, creator, offer.queueId);
    }

    function calculateRequiredUSDC(uint256 usdzAmount, uint256 askPrice) public pure returns (uint256) {
        require(askPrice <= 1e6, "Ask price must be <= 1");
        uint256 usdzAmountInUSDCDecimals = usdzAmount / 1e12;
        return (usdzAmountInUSDCDecimals * askPrice) / 1e6;
    }

    /**
     * @notice Sets the mininum offer expiration period.
     * @param newExpirationPeriod The new expiration period in seconds.
     */
    function setOfferExpirationPeriod(uint256 newExpirationPeriod) external onlyRole(DEFAULT_ADMIN_ROLE) {
        offerExpirationPeriod = newExpirationPeriod;
    }

    function setMinimumOfferAmount(uint256 newMinimumOfferAmount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        minimumOfferAmount = newMinimumOfferAmount;
    }

    /**
     * @notice Rescue ERC20 tokens locked up in this contract.
     * @param token ERC20 token contract address.
     * @param to recipient address.
     * @param amount amount to withdraw.
     */
    function rescueERC20(IERC20 token, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (address(token) == address(USDz)) {
            require(amount <= USDz.balanceOf(address(this)) - totalPendingUSDz, "Cannot rescue USDz reserved for pending offers");
        }
        token.safeTransfer(to, amount);
    }
}
