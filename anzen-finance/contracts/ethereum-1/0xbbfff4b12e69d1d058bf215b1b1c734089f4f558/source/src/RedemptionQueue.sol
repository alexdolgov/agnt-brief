pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/ISPCTPool.sol";
import "./interfaces/IUSDz.sol";

contract RedemptionQueue is AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");

    struct RedemptionRequest {
        address user;
        uint256 amount;
        uint256 minPrice;
        uint256 deadline;
    }

    IUSDz public immutable USDz;
    IERC20 public immutable USDC;
    ISPCTPool public immutable SPCT;
    uint256 public redemptionLockup;
    uint256 public requestIdCounter;
    uint256 public pendingRequestsCount;
    uint256 public totalPendingUSDz;

    uint256 public minimumRedemptionAmount;
    mapping(uint256 => RedemptionRequest) public requests;
    mapping(address => uint256[]) public userRequests;

    event RedemptionRequested(uint256 indexed requestId, address indexed user, uint256 amount, uint256 minPrice, uint256 deadline);
    event RedemptionFulfilled(uint256 indexed requestId, uint256 amount, address indexed user);
    event RedemptionCancelled(uint256 indexed requestId);

    /// @notice Constructor for the RedemptionQueue contract
    /// @param _usdz The address of the USDz token contract
    /// @param _usdc The address of the USDC token contract
    constructor(address _admin, IUSDz _usdz, IERC20 _usdc, ISPCTPool _spct) {
        USDz = _usdz;
        USDC = _usdc;
        SPCT = _spct;
        pendingRequestsCount = 0;
        totalPendingUSDz = 0;
        minimumRedemptionAmount = 100e18;
        redemptionLockup = 0;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _usdc.approve(address(_spct), type(uint256).max);
    }

    /// @notice Requests a redemption of USDz for USDC
    /// @param amount The amount of USDz to redeem
    /// @param minPrice The minimum price (in USDC) per USDz token
    function requestRedemption(uint256 amount, uint256 minPrice) external nonReentrant {
        require(amount >= minimumRedemptionAmount, "Amount must be > 100e18");
        require(minPrice > 0, "Min price must be > 0");
        require(minPrice <= 1e6, "Min price must be <= 1");

        uint256 requestId = requestIdCounter++;
        uint256 deadline = block.timestamp + redemptionLockup;
        pendingRequestsCount++;
        totalPendingUSDz += amount;

        requests[requestId] = RedemptionRequest({
            user: msg.sender,
            amount: amount,
            minPrice: minPrice,
            deadline: deadline
        });

        userRequests[msg.sender].push(requestId);

        IERC20(address(USDz)).safeTransferFrom(msg.sender, address(this), amount);

        emit RedemptionRequested(requestId, msg.sender, amount, minPrice, deadline);
    }

    /// @notice Fulfills a redemption request
    /// @param requestId The ID of the redemption request to fulfill
    /// @param usdzAmount The amount of USDz to fulfill
    function fulfillRedemption(uint256 requestId, uint256 usdzAmount) external nonReentrant {
        RedemptionRequest storage request = requests[requestId];
        require(usdzAmount <= request.amount, "Amount must be less than request amount");
        require(usdzAmount > 0, "Amount must be greater than 0");

        uint256 requiredUSDC = calculateRequiredUSDC(usdzAmount, request.minPrice);
        address redeemingUser = request.user;

        request.amount -= usdzAmount;
        totalPendingUSDz -= usdzAmount;

        if (request.amount == 0) {
            pendingRequestsCount--;
            delete requests[requestId];
        }

        USDC.safeTransferFrom(msg.sender, redeemingUser, requiredUSDC);
        IERC20(address(USDz)).safeTransfer(msg.sender, usdzAmount);

        emit RedemptionFulfilled(requestId, usdzAmount, redeemingUser);
    }

    /// @notice Cancels a redemption request
    /// @param requestId The ID of the redemption request to cancel
    function cancelRedemption(uint256 requestId) external nonReentrant {
        RedemptionRequest storage request = requests[requestId];
        require(block.timestamp >= request.deadline || hasRole(POOL_MANAGER_ROLE, msg.sender), "Cannot cancel yet");

        uint256 cancelledRedemptionAmount = request.amount;
        address requestUser = request.user;

        totalPendingUSDz -= request.amount;
        request.amount = 0;
        pendingRequestsCount--;
        delete requests[requestId];

        IERC20(address(USDz)).safeTransfer(requestUser, cancelledRedemptionAmount);

        emit RedemptionCancelled(requestId);
    }

    /// @notice Admin fulfills a redemption request
    /// @param requestId The ID of the redemption request to fulfill
    /// @param usdzAmount The amount of USDz to fulfill
    function adminFulfillRedemption(uint256 requestId, uint256 usdzAmount) external onlyRole(POOL_MANAGER_ROLE) nonReentrant {
        RedemptionRequest storage request = requests[requestId];
        require(request.amount > 0, "Request already fulfilled");
        require(usdzAmount > 0, "Amount must be greater than 0");

        uint256 requiredUSDC = calculateRequiredUSDC(usdzAmount, request.minPrice);
        uint256 usdzToRedeem = requiredUSDC * 1e12;
        address redeemingUser = request.user;

        request.amount -= usdzAmount;
        totalPendingUSDz -= usdzAmount;

        if (request.amount == 0) {
            pendingRequestsCount--;
            delete requests[requestId];
        }

        USDC.safeTransferFrom(msg.sender, address(this), requiredUSDC);
        USDz.redeemBackSPCT(usdzToRedeem); // burn USDz, get SPCT
        SPCT.repay(requiredUSDC); // send USDC to SPCT
        SPCT.redeem(usdzToRedeem); // get USDC back
        USDC.safeTransfer(redeemingUser, requiredUSDC); // send USDC to redeeming user

        emit RedemptionFulfilled(requestId, usdzAmount, redeemingUser);
    }

    function calculateRequiredUSDC(uint256 usdzAmount, uint256 minPrice) public pure returns (uint256) {
        require(minPrice <= 1e6, "Min price must be <= 1");
        uint256 usdzAmountInUSDCDecimals = usdzAmount / 1e12;
        return (usdzAmountInUSDCDecimals * minPrice) / 1e6;
    }

    /**
     * @notice Sets the redemption lockup time.
     * @param newLockupTime The new lockup time in seconds.
     */
    function setRedemptionLockup(uint256 newLockupTime) external onlyRole(DEFAULT_ADMIN_ROLE) {
        redemptionLockup = newLockupTime;
    }

    /**
     * @notice Rescue ERC20 tokens locked up in this contract.
     * @param token ERC20 token contract address.
     * @param to recipient address.
     * @param amount amount to withdraw.
     */
    function rescueERC20(IERC20 token, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (address(token) == address(USDz)) {
            require(amount <= USDz.balanceOf(address(this)) - totalPendingUSDz, "Cannot rescue USDz reserved for pending requests");
        }
        token.safeTransfer(to, amount);
    }
}
