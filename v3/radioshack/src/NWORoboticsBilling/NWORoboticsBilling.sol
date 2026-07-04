// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IUniswapV2Router {
    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);
    
    function getAmountsOut(uint256 amountIn, address[] calldata path) 
        external view returns (uint256[] memory amounts);
}

interface IPriceFeed {
    function latestAnswer() external view returns (int256);
}

contract NWORoboticsBilling {
    address public owner;
    address public devWallet = 0x4f125e835bbc9BbB77607C66dE6D0d32339B936c;
    address public opsWallet = 0x0eA17BeeA56498c62227932bbE9D189585aC72a0;
    address public stateToken = 0x00C2999c8B2AdF4ABC835cc63209533973718eB1;
    address public weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    IUniswapV2Router public uniswapRouter = IUniswapV2Router(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D);
    IPriceFeed public priceFeed = IPriceFeed(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
    
    enum Tier { Free, Prototype, Production }
    
    struct Subscription {
        Tier tier;
        uint256 expiresAt;
        bool active;
    }
    
    mapping(address => Subscription) public subscriptions;
    
    uint256 public constant PROTOTYPE_MONTHLY_USD = 49 * 10**8;
    uint256 public constant PROTOTYPE_YEARLY_USD = 499 * 10**8;
    uint256 public constant PRODUCTION_MONTHLY_USD = 199 * 10**8;
    uint256 public constant PRODUCTION_YEARLY_USD = 1999 * 10**8;
    
    event Subscribed(
        address indexed user,
        Tier indexed tier,
        uint256 months,
        uint256 amountETH,
        uint256 amountUSD,
        uint256 expiresAt
    );
    
    event PaymentSplit(
        address indexed user,
        uint256 devAmount,
        uint256 opsAmount,
        uint256 stateBuyAmount,
        uint256 stateTokensBought
    );
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }
    
    constructor() {
        owner = msg.sender;
    }
    
    function subscribePrototype(bool isYearly) external payable {
        uint256 usdAmount = isYearly ? PROTOTYPE_YEARLY_USD : PROTOTYPE_MONTHLY_USD;
        uint256 months = isYearly ? 12 : 1;
        _subscribe(Tier.Prototype, usdAmount, months);
    }
    
    function subscribeProduction(bool isYearly) external payable {
        uint256 usdAmount = isYearly ? PRODUCTION_YEARLY_USD : PRODUCTION_MONTHLY_USD;
        uint256 months = isYearly ? 12 : 1;
        _subscribe(Tier.Production, usdAmount, months);
    }
    
    function getSubscription(address user) external view returns (
        Tier tier,
        uint256 expiresAt,
        bool active,
        uint256 daysRemaining
    ) {
        Subscription memory sub = subscriptions[user];
        if (sub.expiresAt > block.timestamp) {
            return (sub.tier, sub.expiresAt, true, (sub.expiresAt - block.timestamp) / 1 days);
        } else {
            return (Tier.Free, 0, false, 0);
        }
    }
    
    function hasActiveSubscription(address user) external view returns (bool) {
        return subscriptions[user].expiresAt > block.timestamp;
    }
    
    function getETHAmountForUSD(uint256 usdAmount) public view returns (uint256) {
        int256 ethPrice = priceFeed.latestAnswer();
        require(ethPrice > 0, "Invalid price");
        return (usdAmount * 10**18) / uint256(ethPrice);
    }
    function getSubscriptionCost(Tier tier, bool isYearly) external view returns (
        uint256 usdAmount,
        uint256 ethAmount,
        uint256 months,
        uint256 discountPercent
    ) {
        if (tier == Tier.Prototype) {
            usdAmount = isYearly ? PROTOTYPE_YEARLY_USD : PROTOTYPE_MONTHLY_USD;
            discountPercent = isYearly ? 15 : 0;
        } else if (tier == Tier.Production) {
            usdAmount = isYearly ? PRODUCTION_YEARLY_USD : PRODUCTION_MONTHLY_USD;
            discountPercent = isYearly ? 16 : 0;
        } else {
            return (0, 0, 0, 0);
        }
        months = isYearly ? 12 : 1;
        ethAmount = getETHAmountForUSD(usdAmount);
    }
    
    function _subscribe(Tier tier, uint256 usdAmount, uint256 months) internal {
        uint256 requiredETH = getETHAmountForUSD(usdAmount);
        uint256 minRequired = (requiredETH * 98) / 100;
        require(msg.value >= minRequired, "Insufficient ETH sent");
        
        _splitPayment(msg.value);
        
        uint256 expiration = block.timestamp + (months * 30 days);
        if (subscriptions[msg.sender].expiresAt > block.timestamp) {
            expiration = subscriptions[msg.sender].expiresAt + (months * 30 days);
        }
        
        subscriptions[msg.sender] = Subscription({
            tier: tier,
            expiresAt: expiration,
            active: true
        });
        
        emit Subscribed(msg.sender, tier, months, msg.value, usdAmount, expiration);
        
        if (msg.value > requiredETH) {
            uint256 excess = msg.value - requiredETH;
            (bool success, ) = payable(msg.sender).call{value: excess}("");
            require(success, "Refund failed");
        }
    }
    
    function _splitPayment(uint256 totalAmount) internal {
        uint256 devAmount = (totalAmount * 30) / 100;
        uint256 opsAmount = (totalAmount * 30) / 100;
        uint256 stateBuyAmount = totalAmount - devAmount - opsAmount;
        
        (bool devSuccess, ) = payable(devWallet).call{value: devAmount}("");
        require(devSuccess, "Dev transfer failed");
        
        (bool opsSuccess, ) = payable(opsWallet).call{value: opsAmount}("");
        require(opsSuccess, "Ops transfer failed");
        
        uint256 stateTokensBought = _buyStateTokens(stateBuyAmount);
        emit PaymentSplit(msg.sender, devAmount, opsAmount, stateBuyAmount, stateTokensBought);
    }
    
    function _buyStateTokens(uint256 ethAmount) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = weth;
        path[1] = stateToken;
        
        uint256 deadline = block.timestamp + 20 minutes;
        
        uint256[] memory amounts = uniswapRouter.swapExactETHForTokens{value: ethAmount}(
            0,
            path,
            address(this),
            deadline
        );
        
        return amounts[1];
    }
    
    function setWallets(address _devWallet, address _opsWallet, address _stateToken) external onlyOwner {
        require(_devWallet != address(0), "Invalid dev wallet");
        require(_opsWallet != address(0), "Invalid ops wallet");
        require(_stateToken != address(0), "Invalid token");
        devWallet = _devWallet;
        opsWallet = _opsWallet;
        stateToken = _stateToken;
    }
    
    function setUniswapRouter(address _router) external onlyOwner {
        require(_router != address(0), "Invalid router");
        uniswapRouter = IUniswapV2Router(_router);
    }
    
    function setPriceFeed(address _priceFeed) external onlyOwner {
        require(_priceFeed != address(0), "Invalid price feed");
        priceFeed = IPriceFeed(_priceFeed);
    }
    
    function withdrawToken(address token, uint256 amount) external onlyOwner {
        IERC20(token).transfer(owner, amount);
    }
    
    function withdrawETH(uint256 amount) external onlyOwner {
        (bool success, ) = payable(owner).call{value: amount}("");
        require(success, "Transfer failed");
    }
    
    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Invalid address");
        owner = newOwner;
    }
    
    receive() external payable {}
}