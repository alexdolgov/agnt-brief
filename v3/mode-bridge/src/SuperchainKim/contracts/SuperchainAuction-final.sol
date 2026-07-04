// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;
pragma abicoder v2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./interfaces/IWETH.sol";

contract SuperchainKim is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using Address for address;

    struct UserInfo {
        uint256 allocation; // amount taken into account to obtain TOKEN (amount spent + discount)
        uint256 contribution; // amount spent to buy TOKEN
        bool whitelisted;
        uint256 whitelistCap;
        uint256 discount; // discount % for this user
        uint256 discountEligibleAmount; // max contribution amount eligible for a discount
        bool hasClaimed; // has already claimed its allocation
    }

    IERC20 public immutable PROJECT_TOKEN; // Project token contract
    IERC20 public immutable SALE_TOKEN; // token used to participate

    uint256 public immutable START_TIME; // sale start time
    uint256 public immutable END_TIME; // sale end time

    mapping(address => UserInfo) public userInfo; // buyers info
    uint256 public totalRaised; // raised amount
    uint256 public totalAllocation; // takes into account discounts

    uint256 public immutable MAX_PROJECT_TOKENS_TO_DISTRIBUTE; // max PROJECT_TOKEN amount to distribute during the sale
    uint256 public immutable MIN_TOTAL_RAISED_FOR_MAX_PROJECT_TOKEN; // amount to reach to distribute max PROJECT_TOKEN amount

    uint256 public immutable MAX_RAISE_AMOUNT;
    uint256 public immutable CAP_PER_WALLET;
    uint256 public immutable MIN_PER_WALLET;

    address public immutable treasury; // treasury multisig, will receive raised amount
    bool public whitelistOnly;
    bool public unsoldTokensWithdrew;
    bool public unsoldTokensBurnt;

    bool public forceSaleEnded; // force sale to end
    bool public isPaused;

    address public weth = 0x4200000000000000000000000000000000000006;
    //address public weth = 0xeb72756ee12309Eae82a0deb9787e69f5b62949c; //testnet

    constructor(
        IERC20 projectToken,
        IERC20 saleToken,
        uint256 startTime,
        uint256 endTime,
        address treasury_,
        uint256 maxToDistribute,
        uint256 minToRaise,
        uint256 maxToRaise,
        uint256 minPerWallet,
        uint256 capPerWallet
    ) {
        require(startTime < endTime, "invalid dates");
        require(treasury_ != address(0), "invalid treasury");

        PROJECT_TOKEN = projectToken;
        SALE_TOKEN = saleToken;
        START_TIME = startTime;
        END_TIME = endTime;
        treasury = treasury_;
        MAX_PROJECT_TOKENS_TO_DISTRIBUTE = maxToDistribute;
        MIN_TOTAL_RAISED_FOR_MAX_PROJECT_TOKEN = minToRaise;
        if (maxToRaise == 0) {
            maxToRaise = type(uint256).max;
        }
        MAX_RAISE_AMOUNT = maxToRaise;
        if (capPerWallet == 0) {
            capPerWallet = type(uint256).max;
        }
        CAP_PER_WALLET = capPerWallet;
        MIN_PER_WALLET = minPerWallet;
    }

    /********************************************/
    /****************** EVENTS ******************/
    /********************************************/

    event Buy(address indexed user, uint256 amount);
    event Claim(address indexed user, uint256 amount);
    event DiscountUpdated();
    event WhitelistUpdated();
    event EmergencyWithdraw(address token, uint256 amount);
    event SetWhitelistOnly(bool status);
    event SetPause(bool status);

    /***********************************************/
    /****************** MODIFIERS ******************/
    /***********************************************/

    //  receive() external payable() {
    //    require(address(saleToken) == weth, "non ETH sale");
    //  }

    /**
     * @dev Check whether the sale is currently active
     *
     * Will be marked as inactive if PROJECT_TOKEN has not been deposited into the contract
     */
    modifier isSaleActive() {
        require(
            hasStarted() &&
                !hasEnded() &&
                PROJECT_TOKEN.balanceOf(address(this)) >=
                MAX_PROJECT_TOKENS_TO_DISTRIBUTE,
            "isActive: sale is not active"
        );
        require(
            PROJECT_TOKEN.balanceOf(address(this)) >=
                MAX_PROJECT_TOKENS_TO_DISTRIBUTE,
            "isActive: sale not filled"
        );
        _;
    }

    /**
     * @dev Check whether the sale is currently paused
     */
    modifier isNotPaused() {
        require(!isPaused, "isNotPaused: sale is paused");
        _;
    }

    /**
     * @dev Check whether users can claim their purchased PROJECT_TOKEN
     *
     * Sale must have ended
     */
    modifier isClaimable() {
        require(hasEnded(), "isClaimable: sale has not ended");
        _;
    }

    /**************************************************/
    /****************** PUBLIC VIEWS ******************/
    /**************************************************/

    /**
     * @dev Get remaining duration before the end of the sale
     */
    function getRemainingTime() external view returns (uint256) {
        if (hasEnded()) return 0;
        return END_TIME.sub(_currentBlockTimestamp());
    }

    /**
     * @dev Returns whether the sale has already started
     */
    function hasStarted() public view returns (bool) {
        return _currentBlockTimestamp() >= START_TIME;
    }

    /**
     * @dev Returns whether the sale has already ended
     */
    function hasEnded() public view returns (bool) {
        return END_TIME <= _currentBlockTimestamp() || forceSaleEnded;
    }

    /**
     * @dev Returns the amount of PROJECT_TOKEN to be distributed based on the current total raised
     */
    function tokensToDistribute() public view returns (uint256) {
        if (MIN_TOTAL_RAISED_FOR_MAX_PROJECT_TOKEN > totalRaised) {
            return
                MAX_PROJECT_TOKENS_TO_DISTRIBUTE.mul(totalRaised).div(
                    MIN_TOTAL_RAISED_FOR_MAX_PROJECT_TOKEN
                );
        }
        return MAX_PROJECT_TOKENS_TO_DISTRIBUTE;
    }

    /**
     * @dev Get user share times 1e5
     */
    function getExpectedClaimAmount(
        address account
    ) public view returns (uint256) {
        if (totalAllocation == 0) return 0;

        UserInfo memory user = userInfo[account];
        return user.allocation.mul(tokensToDistribute()).div(totalAllocation);
    }

    /****************************************************************/
    /****************** EXTERNAL PUBLIC FUNCTIONS  ******************/
    /****************************************************************/

    function buyETH() external payable isSaleActive isNotPaused nonReentrant {
        require(address(SALE_TOKEN) == weth, "non ETH sale");
        uint256 amount = msg.value;
        IWETH(weth).deposit{value: amount}();
        _buy(amount);
    }

    /**
     * @dev Purchase an allocation for the sale for a value of "amount" SALE_TOKEN
     */
    function buy(
        uint256 amount
    ) external isSaleActive isNotPaused nonReentrant {
        SALE_TOKEN.safeTransferFrom(msg.sender, address(this), amount);
        _buy(amount);
    }

    function _buy(uint256 amount) internal {
        require(amount > 0, "buy: zero amount");
        require(
            amount >= MIN_PER_WALLET,
            "buy: minimum amount needs to be reached"
        );
        require(
            totalRaised.add(amount) <= MAX_RAISE_AMOUNT,
            "buy: hardcap reached"
        );
        require(
            !address(msg.sender).isContract() &&
                !address(tx.origin).isContract(),
            "FORBIDDEN"
        );

        uint256 participationAmount = amount;
        UserInfo storage user = userInfo[msg.sender];

        if (whitelistOnly) {
            require(user.whitelisted, "buy: not whitelisted");
            require(
                user.contribution.add(amount) <= user.whitelistCap,
                "buy: whitelist wallet cap reached"
            );
        } else {
            uint256 userWalletCap = CAP_PER_WALLET > user.whitelistCap
                ? CAP_PER_WALLET
                : user.whitelistCap;
            require(
                user.contribution.add(amount) <= CAP_PER_WALLET,
                "buy: wallet cap reached"
            );
        }

        uint256 allocation = amount;

        if (
            user.discount > 0 && user.contribution < user.discountEligibleAmount
        ) {
            // Get eligible amount for the active user's discount
            uint256 discountEligibleAmount = user.discountEligibleAmount.sub(
                user.contribution
            );
            if (discountEligibleAmount > amount) {
                discountEligibleAmount = amount;
            }
            // Readjust user new allocation
            allocation = allocation.add(
                discountEligibleAmount.mul(user.discount).div(100)
            );
        }

        // update raised amounts
        user.contribution = user.contribution.add(amount);
        totalRaised = totalRaised.add(amount);

        // update allocations
        user.allocation = user.allocation.add(allocation);
        totalAllocation = totalAllocation.add(allocation);

        emit Buy(msg.sender, amount);
        // transfer contribution to treasury
        SALE_TOKEN.safeTransfer(treasury, participationAmount);
    }

    /**
     * @dev Claim purchased PROJECT_TOKEN during the sale
     */
    function claim() external isClaimable {
        UserInfo storage user = userInfo[msg.sender];

        require(
            totalAllocation > 0 && user.allocation > 0,
            "claim: zero allocation"
        );
        require(!user.hasClaimed, "claim: already claimed");
        user.hasClaimed = true;

        uint256 amount = getExpectedClaimAmount(msg.sender);

        emit Claim(msg.sender, amount);

        // send PROJECT_TOKEN allocation
        _safeClaimTransfer(msg.sender, amount);
    }

    /****************************************************************/
    /********************** OWNABLE FUNCTIONS  **********************/
    /****************************************************************/

    struct DiscountSettings {
        address account;
        uint256 discount;
        uint256 eligibleAmount;
    }

    /**
     * @dev Assign custom discounts, used for v1 users
     *
     * Based on saved v1 tokens amounts in our snapshot
     */
    function setUsersDiscount(
        DiscountSettings[] calldata users
    ) public onlyOwner {
        for (uint256 i = 0; i < users.length; ++i) {
            DiscountSettings memory userDiscount = users[i];
            UserInfo storage user = userInfo[userDiscount.account];
            require(userDiscount.discount <= 35, "discount too high");
            user.discount = userDiscount.discount;
            user.discountEligibleAmount = userDiscount.eligibleAmount;
        }

        emit DiscountUpdated();
    }

    struct WhitelistSettings {
        address account;
        bool whitelisted;
        uint256 whitelistCap;
    }

    /**
     * @dev Assign whitelist status and cap for users
     */
    function setUsersWhitelist(
        WhitelistSettings[] calldata users
    ) public onlyOwner {
        for (uint256 i = 0; i < users.length; ++i) {
            WhitelistSettings memory userWhitelist = users[i];
            UserInfo storage user = userInfo[userWhitelist.account];
            user.whitelisted = userWhitelist.whitelisted;
            user.whitelistCap = userWhitelist.whitelistCap;
        }

        emit WhitelistUpdated();
    }

    function setWhitelistOnly(bool value) external onlyOwner {
        whitelistOnly = value;
        emit SetWhitelistOnly(value);
    }

    function setPause(bool value) external onlyOwner {
        isPaused = value;
        emit SetPause(value);
    }

    /**
     * @dev Withdraw unsold PROJECT_TOKEN if MIN_TOTAL_RAISED_FOR_MAX_PROJECT_TOKEN has not been reached
     *
     * Must only be called by the owner
     */
    function withdrawUnsoldTokens() external onlyOwner {
        require(hasEnded(), "withdrawUnsoldTokens: presale has not ended");
        require(!unsoldTokensWithdrew, "withdrawUnsoldTokens: already burnt");

        uint256 totalTokenSold = tokensToDistribute();

        unsoldTokensWithdrew = true;
        if (totalTokenSold > 0)
            PROJECT_TOKEN.transfer(
                msg.sender,
                MAX_PROJECT_TOKENS_TO_DISTRIBUTE.sub(totalTokenSold)
            );
    }

    /********************************************************/
    /****************** /!\ EMERGENCY ONLY ******************/
    /********************************************************/

    /**
     * @dev Failsafe
     */
    function emergencyWithdrawFunds(
        address token,
        uint256 amount
    ) external onlyOwner {
        IERC20(token).safeTransfer(msg.sender, amount);

        emit EmergencyWithdraw(token, amount);
    }

    function setForceSaleEnd() external onlyOwner {
        forceSaleEnded = true;
    }

    /**
     * @dev Burn unsold PROJECT_TOKEN if MIN_TOTAL_RAISED_FOR_MAX_PROJECT_TOKEN has not been reached
     *
     * Must only be called by the owner
     */
    function burnUnsoldTokens() external onlyOwner {
        require(hasEnded(), "burnUnsoldTokens: presale has not ended");
        require(!unsoldTokensBurnt, "burnUnsoldTokens: already burnt");

        uint256 totalSold = tokensToDistribute();
        require(
            totalSold < MAX_PROJECT_TOKENS_TO_DISTRIBUTE,
            "burnUnsoldTokens: no token to burn"
        );

        unsoldTokensBurnt = true;
        PROJECT_TOKEN.transfer(
            0x000000000000000000000000000000000000dEaD,
            MAX_PROJECT_TOKENS_TO_DISTRIBUTE.sub(totalSold)
        );
    }

    /********************************************************/
    /****************** INTERNAL FUNCTIONS ******************/
    /********************************************************/

    /**
     * @dev Safe token transfer function, in case rounding error causes contract to not have enough tokens
     */
    function _safeClaimTransfer(address to, uint256 amount) internal {
        uint256 balance = PROJECT_TOKEN.balanceOf(address(this));
        bool transferSuccess = false;

        if (amount > balance) {
            transferSuccess = PROJECT_TOKEN.transfer(to, balance);
        } else {
            transferSuccess = PROJECT_TOKEN.transfer(to, amount);
        }

        require(transferSuccess, "safeClaimTransfer: Transfer failed");
    }

    /**
     * @dev Utility function to get the current block timestamp
     */
    function _currentBlockTimestamp() internal view virtual returns (uint256) {
        return block.timestamp;
    }
}
