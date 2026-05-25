// File: @uniswap\v2-core\contracts\interfaces\IUniswapV2Pair.sol

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface IUniswapV2Pair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

// File: @openzeppelin\contracts\math\SafeMath.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: @openzeppelin\contracts\math\SignedSafeMath.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @title SignedSafeMath
 * @dev Signed math operations with safety checks that revert on error.
 */
library SignedSafeMath {
    int256 constant private _INT256_MIN = -2**255;

    /**
     * @dev Returns the multiplication of two signed integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(int256 a, int256 b) internal pure returns (int256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        require(!(a == -1 && b == _INT256_MIN), "SignedSafeMath: multiplication overflow");

        int256 c = a * b;
        require(c / a == b, "SignedSafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two signed integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(int256 a, int256 b) internal pure returns (int256) {
        require(b != 0, "SignedSafeMath: division by zero");
        require(!(b == -1 && a == _INT256_MIN), "SignedSafeMath: division overflow");

        int256 c = a / b;

        return c;
    }

    /**
     * @dev Returns the subtraction of two signed integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a - b;
        require((b >= 0 && c <= a) || (b < 0 && c > a), "SignedSafeMath: subtraction overflow");

        return c;
    }

    /**
     * @dev Returns the addition of two signed integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a + b;
        require((b >= 0 && c >= a) || (b < 0 && c < a), "SignedSafeMath: addition overflow");

        return c;
    }
}

// File: contracts\GFarmTradingV4.sol

pragma solidity ^0.6.0;

interface GFarmPoolInterfaceV4{
    function increaseAccTokensPerLp(uint _amount) external;
}

interface LinkToken{
    function transferFrom(address _from, address _to, uint256 _value) external returns(bool);
}

interface TokenInterfaceV4{
    function burn(address from, uint256 amount) external;
    function mint(address to, uint256 amount) external;
}

interface NftInterfaceV4{
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
}

interface PriceAggregatorInterfaceV4{
    // order types (aggregator): 
    // 0: open market, 1: close market, 2: open limit, 3: close limit
    function getPrice(uint _pairIndex, uint _orderType) external returns(uint);
    function canOpenTrade(uint _pairIndex, uint _positionSizeToken, uint _leverage) view external returns(bool);
    function increaseOpenInterest(uint _pairIndex, uint _positionSizeToken, uint _leverage) external;
    function decreaseOpenInterest(uint _pairIndex, uint _positionSizeToken, uint _leverage) external;
    function isPaused() external view returns(bool);
    function maxTradesPerBlock() external view returns(uint);
    function maxGainP() external view returns(uint);
    function minPosUsd() external view returns(uint);
    function maxPosTokenP() external view returns(uint);
    function maxPosTokenIncreaseP() external view returns(uint);
    function nftSuccessTimelock() external view returns(uint);
    function govOpenFeeP() external view returns(uint);
    function devOpenFeeP() external view returns(uint);
    function lpCloseFeeP() external view returns(uint);
    function nftLiqFeeP() external view returns(uint);
    function lpLiqFeeP() external view returns(uint);
    function nftLimitOrderFeeP() external view returns(uint);
    function minLimitOrderSlippageP() external view returns(uint);
    function referralP() external view returns(uint);
    function spreadReductionsP(uint i) external view returns(uint);
    function nftLinkFee() external view returns(uint);
    function getSpreadP(uint p) external view returns(uint);
}

contract GFarmTradingV4{

    using SafeMath for uint;
    using SignedSafeMath for int;

    // Contracts
    GFarmPoolInterfaceV4 public pool;
    PriceAggregatorInterfaceV4 public priceAggregator;
    TokenInterfaceV4 public token;
    NftInterfaceV4[5] public nft;
    IUniswapV2Pair public lp; // GFARM2/DAI
    LinkToken constant linkToken = LinkToken(0xb0897686c545045aFc77CF20eC7A532E3120E0F1);

    // Constants
    uint constant PRECISION = 1e10;
    uint constant LIQUIDATION_P = 90; // -90%
    uint constant MAX_SL_P = 80; // -80%
    uint constant MAX_TRADES_PER_PAIR = 3;
    uint constant MAX_PENDING_ORDERS = 5;
    uint constant LIMIT_TIMELOCK = 30;

    // Trading variables
    uint public tokensBurned; // 1e18
    uint public tokensMinted; // 1e18
    uint public nftRewards; // 1e18
    uint public devFees; // 1e18
    uint public govFees; // 1e18

    // Gov & dev funds
    address public govFund;
    address public immutable devFund;

    // Structs
    struct Trader{
        uint leverageUnlocked;
        address referral;
        uint referralRewardsTotal;
    }
    struct Trade{
        address trader;
        uint pairIndex;
        uint userTradesIndex;
        uint positionSizeToken; // 1e18
        uint positionSizeUsd; // 1e18
        uint openPrice; // PRECISION
        uint spreadReductionP;
        bool buy;
        uint leverage;
        uint tp; // PRECISION
        uint sl; // PRECISION
        uint tpLastUpdated; // blocks
        uint slLastUpdated; // blocks
    }
    struct OpenLimitOrder{
        address trader;
        uint pairIndex;
        uint positionSizeToken;
        uint spreadReductionP;
        bool buy;
        uint leverage;
        uint tp;
        uint sl;
        uint minPrice; // PRECISION
        uint maxPrice; // PRECISION
        uint block;
    }
    struct PendingMarketOrder{
        Trade trade;
        uint block;
        uint wantedPrice;
        uint slippageP;
    }
    struct PendingNftOrder{
        address nftHolder;
        uint nftId;
        address trader;
        uint pairIndex;
        uint userTradesIndex;
        uint orderType; // 1 = take profit, 2 = stop loss, 3 = liquidation, 4 = limit open
    }

    // Traders mappings
    mapping(address => Trader) public traders;
    mapping(address => mapping(uint => Trade[MAX_TRADES_PER_PAIR])) public userTrades;
    mapping(address => mapping(uint => uint)) public userTradesCount;
    mapping(address => mapping(uint => uint)) public userOpenLimitOrderId;
    mapping(address => mapping(uint => uint)) public pairTradersId;
    mapping(address => uint[]) public pendingOrderIds;
    mapping(address => mapping(uint => uint)) public pendingMarketOpenCount;
    mapping(address => mapping(uint => uint)) public pendingMarketCloseCount;

    // Pending orders mappings
    mapping(uint => PendingMarketOrder) reqID_pendingMarketOrder;
    mapping(uint => PendingNftOrder) public reqID_pendingNftOrder;

    // List of open trades & limit orders
    OpenLimitOrder[] public openLimitOrders;
    mapping(uint => address[]) public pairTraders; // List open trades

    // Restrictions & Timelocks
    mapping(uint => uint) public tradesPerBlock;
    mapping(uint => uint) public nftLastSuccess;

    // Events
    event TradeOpenedMarket(
        address indexed trader,
        uint indexed pairIndex,
        uint userTradesIndex,
        bool buy,
        uint leverage,
        uint price,
        uint positionSizeToken,
        uint positionSizeUsd
    );
    event TradeCanceledMarket(
        address indexed trader,
        uint pairIndex,
        uint wantedPrice,
        uint slippageP,
        uint openPrice
    );
    event TradeClosedMarket(
        address indexed trader,
        uint indexed pairIndex,
        uint userTradesIndex,
        uint price,
        bool buy,
        uint positionSizeToken,
        uint leverage,
        int pnlToken,
        uint tokenPriceUsd
    );
    event TradeLimitExecuted(
        address indexed trader,
        uint indexed pairIndex,
        uint userTradesIndex,
        address indexed nftHolder,
        uint orderType, // 1: tp, 2: sl, 3: liq, 4: open
        uint price,
        bool buy,
        uint leverage,
        uint positionSizeToken,
        int pnlToken,
        uint rewardToken,
        uint tokenPriceUsd
    );
    event TpSlUpdated(
        address indexed trader,
        uint indexed pairIndex,
        uint userTradesIndex,
        bool tp,
        uint value
    );
    event TradeLimitOpened(
        address indexed trader,
        uint indexed pairIndex
    );
    event TradeLimitCanceled(
        address indexed trader,
        uint indexed pairIndex
    );
    event ChainlinkCallbackFailed();
    event AddressUpdated(string name, address value);

    constructor(address _gov, address _dev, NftInterfaceV4[5] memory _nft) public{
        require(_gov != address(0));
        require(_dev != address(0));
        require(address(_nft[0]) != address(0));
        require(address(_nft[1]) != address(0));
        require(address(_nft[2]) != address(0));
        require(address(_nft[3]) != address(0));
        require(address(_nft[4]) != address(0));
        govFund = _gov;
        devFund = _dev;
        nft = _nft;
    }

    // GOV => UPDATE VARIABLES & MANAGE PAIRS

    // 0. Modifiers
    modifier onlyGov(){
        require(msg.sender == govFund, "GOV");
        _;
    }

    // Set addresses
    function setGovFund(address _gov) external onlyGov{
        require(_gov != address(0));
        govFund = _gov;
        emit AddressUpdated("govFund", _gov);
    }
    function setToken(address _token) external onlyGov{
        require(token == TokenInterfaceV4(0) && _token != address(0));
        token = TokenInterfaceV4(_token);
        emit AddressUpdated("token", _token);
    }
    function setLp(address _lp) external onlyGov{
        require(lp == IUniswapV2Pair(0) && _lp != address(0));
        lp = IUniswapV2Pair(_lp);
        emit AddressUpdated("lp", _lp);
    }
    function setPool(address _pool) external onlyGov{
        require(pool == GFarmPoolInterfaceV4(0) && _pool != address(0));
        pool = GFarmPoolInterfaceV4(_pool);
        emit AddressUpdated("pool", _pool);
    }    
    function setPriceAggregator(address _aggregator) external onlyGov{
        require(_aggregator != address(0));
        priceAggregator = PriceAggregatorInterfaceV4(_aggregator);
        emit AddressUpdated("priceAggregator", _aggregator);
    }

    // USEFUL TRADING FUNCTIONS

    // Trades % PnL based on price movement (PRECISION)
    function currentPercentProfit(
        uint openPrice,
        uint currentPrice,
        bool buy,
        uint leverage) private view returns(int p){

        p = buy ? (int(currentPrice).sub(int(openPrice))).mul(100*int(PRECISION)).mul(int(leverage)).div(int(openPrice))
            : (int(currentPrice).sub(int(openPrice))).mul(-100*int(PRECISION)).mul(int(leverage)).div(int(openPrice));

        p = p < int(PRECISION).mul(-100) ? int(PRECISION).mul(-100) : p;
        p = p > int(priceAggregator.maxGainP()).mul(int(PRECISION)) ? int(priceAggregator.maxGainP()).mul(int(PRECISION)) : p;
    }

    // Position size token
    function positionSizeToken(
        uint initialTokenPos,
        uint posUsd) private view returns(uint currentPosToken){
        currentPosToken = posUsd.mul(PRECISION).div(tokenPriceUsd());

        // Position size increase % limited
        uint maxNewPos = initialTokenPos.add(initialTokenPos.mul(priceAggregator.maxPosTokenIncreaseP()).div(100));
        currentPosToken = currentPosToken > maxNewPos ? maxNewPos : currentPosToken;
    }

    // Find empty spot to store trade in userTrades[trader][pairIndex][...]
    function firstEmptyUserTradesIndex(address trader, uint pairIndex) private view returns(uint index){
        for(uint i = 0; i < MAX_TRADES_PER_PAIR; i++){
            if(userTrades[trader][pairIndex][i].leverage == 0){
                index = i;
                break;
            }
        }
    }

    // Get position size - gov and dev fees + store the fees
    function handleOpenFees(uint _positionSizeToken) private returns(uint posToken_minusFees, uint posUsd_minusFees){
        uint govFee = _positionSizeToken.mul(priceAggregator.govOpenFeeP()).div(100*PRECISION);
        uint devFee = _positionSizeToken.mul(priceAggregator.devOpenFeeP()).div(100*PRECISION);
        posToken_minusFees = _positionSizeToken.sub(govFee).sub(devFee);
        posUsd_minusFees = posToken_minusFees.mul(tokenPriceUsd()).div(PRECISION);
        govFees = govFees.add(govFee);
        devFees = devFees.add(devFee);
    }

    // After a trade is opened
    function registerTrade(Trade memory trade) private{
        if(trade.buy){
            trade.tp = trade.tp > 0 ? trade.openPrice.add(trade.openPrice.mul(trade.tp).div(trade.leverage).div(PRECISION*100)) : 0;
            trade.sl = trade.sl > 0 ? trade.openPrice.sub(trade.openPrice.mul(trade.sl).div(trade.leverage).div(PRECISION*100)) : 0;
        }else{
            trade.tp = trade.tp > 0 ? trade.openPrice.sub(trade.openPrice.mul(trade.tp).div(trade.leverage).div(PRECISION*100)) : 0;
            trade.sl = trade.sl > 0 ? trade.openPrice.add(trade.openPrice.mul(trade.sl).div(trade.leverage).div(PRECISION*100)) : 0;
        }

        userTrades[trade.trader][trade.pairIndex][trade.userTradesIndex] = trade;
        userTradesCount[trade.trader][trade.pairIndex]++;

        if(userTradesCount[trade.trader][trade.pairIndex] == 1){
            pairTradersId[trade.trader][trade.pairIndex] = pairTraders[trade.pairIndex].length;
            pairTraders[trade.pairIndex].push(trade.trader);
        }

        priceAggregator.increaseOpenInterest(trade.pairIndex, trade.positionSizeToken, trade.leverage);
        traders[trade.trader].leverageUnlocked = traders[trade.trader].leverageUnlocked == 0 ? 100 : 150;
        tradesPerBlock[block.number]++;
    }

    // Unregister trade from mappings & arrays
    function unregisterTrade(
        address trader,
        uint pairIndex,
        uint userTradesIndex) private{
        Trade storage t = userTrades[trader][pairIndex][userTradesIndex];
        uint _pairTradersId = pairTradersId[trader][pairIndex];

        // Reduce open interest
        priceAggregator.decreaseOpenInterest(pairIndex, t.positionSizeToken, t.leverage);

        // Delete from pairTraders array
        if(userTradesCount[trader][pairIndex] == 1){
            address[] storage p = pairTraders[pairIndex];
            p[_pairTradersId] = p[p.length-1];
            pairTradersId[p[_pairTradersId]][pairIndex] = _pairTradersId;
            delete pairTradersId[trader][pairIndex];
            p.pop();
        }

        // Delete from userTrades array (leaves hole => same userTradesIndex)
        delete userTrades[trader][pairIndex][userTradesIndex];
        userTradesCount[trader][pairIndex]--;

        tradesPerBlock[block.number]++;
    }

    // Unregister pending market order
    function unregisterPendingMarketOrder(bool _open, address _trader, uint _pairIndex, uint _order) private{
        uint[] storage orderIds = pendingOrderIds[_trader];
        for(uint i = 0; i < orderIds.length; i++){
            if(orderIds[i] == _order){
                if(_open){ 
                    pendingMarketOpenCount[_trader][_pairIndex]--;
                }else{
                    pendingMarketCloseCount[_trader][_pairIndex]--;
                }

                orderIds[i] = orderIds[orderIds.length-1];
                orderIds.pop();

                break;
            }
        }

        delete reqID_pendingMarketOrder[_order];
    }

    // Unregister limit order
    function unregisterLimitOrder(address _trader, uint _pairIndex) private{
        // Copy last order to deleted order => update id of this limit order
        uint id = userOpenLimitOrderId[_trader][_pairIndex];
        openLimitOrders[id] = openLimitOrders[openLimitOrders.length-1];
        userOpenLimitOrderId[openLimitOrders[id].trader][openLimitOrders[id].pairIndex] = id;

        // Remove
        delete userOpenLimitOrderId[_trader][_pairIndex];
        openLimitOrders.pop();
    }

    // Send tokens to trader and his referral
    // + reward liquidity providers
    function handleTokensBack(
        int _percentProfit,
        address _trader,
        uint _tokensBack,
        uint _amountNftToken,
        uint _lpFee
    ) private{
        pool.increaseAccTokensPerLp(_lpFee);

        if(_tokensBack >= _amountNftToken.add(_lpFee)
        && _percentProfit > int(LIQUIDATION_P*PRECISION).mul(-1)){
            _tokensBack = _tokensBack.sub(_lpFee).sub(_amountNftToken);

            if(traders[_trader].referral == address(0)){
                uint referralBurn = _tokensBack.mul(priceAggregator.referralP()).div(PRECISION*100);

                token.mint(_trader, _tokensBack.sub(referralBurn));
                tokensMinted += _tokensBack - referralBurn;
            }else{
                uint referralTokens = _tokensBack.mul(priceAggregator.referralP()).div(PRECISION*200);
                uint userTokens = _tokensBack.sub(referralTokens);

                token.mint(_trader, userTokens);
                token.mint(traders[_trader].referral, referralTokens);

                Trader storage referralUser = traders[traders[_trader].referral];
                referralUser.referralRewardsTotal += referralTokens;

                tokensMinted += _tokensBack;
            }
        }
    }

    // Get reserves LP (1e18)
    function reservesLp() private view returns(uint, uint){
        (uint112 reserves0, uint112 reserves1, ) = lp.getReserves();
        if(lp.token0() == address(token)){
            return (reserves0, reserves1);
        }else{
            return (reserves1, reserves0);
        }
    }

    // Get Token price in USD (PRECISION)
    function tokenPriceUsd() public view returns(uint){
        (uint reserveToken, uint reserveUsd) = reservesLp();
        return reserveUsd.mul(PRECISION).div(reserveToken);
    }

    // EXTERNAL TRADING FUNCTIONS

    // 0. Modifiers
    modifier notContract(){
        require(tx.origin == msg.sender);
        _;
    }
    modifier onlyPriceAggregator(){
        require(msg.sender == address(priceAggregator));
        _;
    }

    function hasOpenLimitOrder(address _trader, uint _pairIndex) public view returns(bool){
        if(openLimitOrders.length == 0){ return false; }

        uint pendingOrderId = userOpenLimitOrderId[_trader][_pairIndex];
        return openLimitOrders[pendingOrderId].trader == _trader && 
               openLimitOrders[pendingOrderId].pairIndex == _pairIndex;
    }

    // Open a new trade at current pair price
    function openTrade(
        uint _pairIndex,
        bool _buy,
        uint _positionSizeToken, // 1e18
        uint _leverage,
        uint _spreadReductionId, // 1,2,3,4,5 (nft type => 0 = none)
        uint _price,     // PRECISION
        uint _slippageP, // PRECISION
        uint _tpP,       // PRECISION
        uint _slP,       // PRECISION
        bool _limit,
        address _referral
        ) external notContract{

        uint pairTotalOrders = userTradesCount[msg.sender][_pairIndex] + pendingMarketOpenCount[msg.sender][_pairIndex];
        pairTotalOrders = hasOpenLimitOrder(msg.sender, _pairIndex) ? pairTotalOrders + 1 : pairTotalOrders;

        require(tradesPerBlock[block.number] < priceAggregator.maxTradesPerBlock(), "MAX_TRADES_PER_BLOCK");
        require(!priceAggregator.isPaused(), "PAUSED");
        require(priceAggregator.canOpenTrade(_pairIndex, _positionSizeToken, _leverage), "MAX_OPEN_INTEREST");
        require(pairTotalOrders < MAX_TRADES_PER_PAIR, "MAX_TRADES_PER_PAIR");
        require(pendingOrderIds[msg.sender].length < MAX_PENDING_ORDERS, "MAX_PENDING_ORDERS");
        (uint reserveToken, ) = reservesLp();
        require(_positionSizeToken >= priceAggregator.minPosUsd().mul(1e18*PRECISION).div(tokenPriceUsd())
            && _positionSizeToken <= reserveToken.mul(priceAggregator.maxPosTokenP()).div(100*PRECISION),
            "WRONG_POS");
        require(_leverage >= 5 && _leverage <= 150, "WRONG_LEVERAGE");
        require(_leverage <= 50 || _leverage <= traders[msg.sender].leverageUnlocked, "LEVERAGE_NOT_UNLOCKED");
        require(_spreadReductionId == 0 || nft[_spreadReductionId-1].balanceOf(msg.sender) >= 1,
            "NO_CORRESPONDING_NFT_SPREAD_REDUCTION");
        require(_slP < MAX_SL_P*PRECISION, "WRONG_SL");

        if(!_limit){
            uint order = priceAggregator.getPrice(_pairIndex, 0);
            pendingOrderIds[msg.sender].push(order);

            reqID_pendingMarketOrder[order].block = block.number;
            reqID_pendingMarketOrder[order].wantedPrice = _price;
            reqID_pendingMarketOrder[order].slippageP = _slippageP;
            reqID_pendingMarketOrder[order].trade.trader = msg.sender;
            reqID_pendingMarketOrder[order].trade.pairIndex = _pairIndex;
            reqID_pendingMarketOrder[order].trade.buy = _buy;
            reqID_pendingMarketOrder[order].trade.leverage = _leverage;
            reqID_pendingMarketOrder[order].trade.sl = _slP; // percentage pnl
            reqID_pendingMarketOrder[order].trade.tp = _tpP; // percentage pnl
            reqID_pendingMarketOrder[order].trade.spreadReductionP = 
            _spreadReductionId > 0 ? priceAggregator.spreadReductionsP(_spreadReductionId-1) : 0;  
            reqID_pendingMarketOrder[order].trade.positionSizeToken = _positionSizeToken;

            pendingMarketOpenCount[msg.sender][_pairIndex]++;
        }else{
            require(!hasOpenLimitOrder(msg.sender, _pairIndex), "LIMIT_ALREADY_OPEN");
            require(_slippageP >= priceAggregator.minLimitOrderSlippageP(), "SLIPPAGE_TOO_SMALL");

            openLimitOrders.push(OpenLimitOrder(
                msg.sender,
                _pairIndex,
                _positionSizeToken,
                _spreadReductionId > 0 ? priceAggregator.spreadReductionsP(_spreadReductionId-1) : 0,
                _buy,
                _leverage,
                _tpP, // percentage pnl
                _slP, // percentage pnl
                _buy ? _price.sub(_price.mul(_slippageP).div(PRECISION*100)) : _price,
                _buy ? _price : _price.add(_price.mul(_slippageP).div(PRECISION*100)),
                block.number
            ));

            userOpenLimitOrderId[msg.sender][_pairIndex] = openLimitOrders.length-1;

            emit TradeLimitOpened(msg.sender, _pairIndex);
        }

        token.burn(msg.sender, _positionSizeToken);
        tokensBurned += _positionSizeToken;

        if(_referral != address(0) && traders[msg.sender].referral == address(0)
        && _referral != msg.sender){
            traders[msg.sender].referral = _referral;
        }
    }

    function openTradeMarketCallback(
        uint _order,
        uint _price,
        uint _spreadP) external onlyPriceAggregator{
        
        PendingMarketOrder storage o = reqID_pendingMarketOrder[_order];
        if(o.block == 0){ return; }

        uint finalSpreadP = _spreadP.sub(_spreadP.mul(o.trade.spreadReductionP).div(100));

        uint openPrice = o.trade.buy ? _price.add(_price.mul(finalSpreadP).div(100*PRECISION))
                                          : _price.sub(_price.mul(finalSpreadP).div(100*PRECISION));

        uint maxSlippage = o.wantedPrice.mul(o.slippageP).div(100*PRECISION);

        (uint positionSizeToken_minusFees, uint positionSizeUsd_minusFees) = handleOpenFees(o.trade.positionSizeToken);

        if(o.trade.buy && openPrice > o.wantedPrice.add(maxSlippage)
        || !o.trade.buy && openPrice < o.wantedPrice.sub(maxSlippage)){

            token.mint(o.trade.trader, positionSizeToken_minusFees);
            tokensMinted += positionSizeToken_minusFees;

            emit TradeCanceledMarket(
                o.trade.trader,
                o.trade.pairIndex,
                o.wantedPrice,
                o.slippageP,
                openPrice
            );

        }else{
            uint userTradesIndex = firstEmptyUserTradesIndex(o.trade.trader, o.trade.pairIndex);

            registerTrade(Trade(
                o.trade.trader,
                o.trade.pairIndex,
                userTradesIndex,
                positionSizeToken_minusFees,
                positionSizeUsd_minusFees,
                openPrice,
                o.trade.spreadReductionP,
                o.trade.buy,
                o.trade.leverage,
                o.trade.tp,
                o.trade.sl,
                0,
                0
            ));

            emit TradeOpenedMarket(
                o.trade.trader,
                o.trade.pairIndex,
                userTradesIndex,
                o.trade.buy,
                o.trade.leverage,
                openPrice,
                positionSizeToken_minusFees,
                positionSizeUsd_minusFees
            );
        }

        unregisterPendingMarketOrder(true, o.trade.trader, o.trade.pairIndex, _order);
    }

    // Cancel open limit order
    function cancelOpenLimitOrder(uint _pairIndex) external{
        require(hasOpenLimitOrder(msg.sender, _pairIndex), "NO_LIMIT");

        uint id = userOpenLimitOrderId[msg.sender][_pairIndex];
        require(block.number.sub(openLimitOrders[id].block) >= LIMIT_TIMELOCK, "LIMIT_TIMELOCK");

        token.mint(msg.sender, openLimitOrders[id].positionSizeToken);
        tokensMinted += openLimitOrders[id].positionSizeToken;

        unregisterLimitOrder(msg.sender, _pairIndex);

        emit TradeLimitCanceled(msg.sender, _pairIndex);
    }

    // Update stop loss for an open trade
    // Set to 0 to remove
    // If long and sl is above current price => can be closed instantly
    // If short and sl is below current price => can be closed instantly
    // Can be set in profit = stop profit
    // must be above -STOP_LOSS_P profit => if liq at -90% => above -80%
    // otherwise can set at -89% and earn 11% of position size while at -90% liquidation earns 0 to trader
    function updateSl(uint _pairIndex, uint _userTradesIndex, uint _newSl) external notContract{
        Trade storage t = userTrades[msg.sender][_pairIndex][_userTradesIndex];
        require(t.leverage > 0, "NO_TRADE");
        require(_newSl == 0 || t.buy && _newSl > t.openPrice.sub(t.openPrice.mul(MAX_SL_P).div(100*t.leverage)) ||
                !t.buy && _newSl < t.openPrice.add(t.openPrice.mul(MAX_SL_P).div(100*t.leverage)), "SL_TOO_BIG");
        require(block.number.sub(t.slLastUpdated) >= LIMIT_TIMELOCK, "LIMIT_TIMELOCK");
        t.sl = _newSl;
        t.slLastUpdated = block.number;
        emit TpSlUpdated(msg.sender, _pairIndex, _userTradesIndex, false, _newSl);
    }

    // Update take profit for an open trade
    // Set to 0 to remove
    // Can be set in loss (for example exit long on a bounce even if in loss)
    // If long and tp is below current price => can be closed instantly
    // If short and tp is above current price => can be closed instantly
    function updateTp(uint _pairIndex, uint _userTradesIndex, uint _newTp) external notContract{
        Trade storage t = userTrades[msg.sender][_pairIndex][_userTradesIndex];
        require(t.leverage > 0, "NO_TRADE");
        require(block.number.sub(t.tpLastUpdated) >= LIMIT_TIMELOCK, "LIMIT_TIMELOCK");
        t.tp = _newTp;
        t.tpLastUpdated = block.number;
        emit TpSlUpdated(msg.sender, _pairIndex, _userTradesIndex, true, _newTp);
    }

    // Close open trade at current price
    function closeTradeMarket(uint _pairIndex, uint _userTradesIndex) external notContract{
        require(tradesPerBlock[block.number] < priceAggregator.maxTradesPerBlock(), "MAX_TRADES_PER_BLOCK");
        require(pendingMarketCloseCount[msg.sender][_pairIndex] < userTradesCount[msg.sender][_pairIndex],
        "TOO_MANY_CLOSE_REQUESTS");
        require(pendingOrderIds[msg.sender].length < MAX_PENDING_ORDERS, "MAX_PENDING_ORDERS");
        require(userTrades[msg.sender][_pairIndex][_userTradesIndex].leverage > 0, "NO_TRADE");

        uint order = priceAggregator.getPrice(_pairIndex, 1);
        pendingOrderIds[msg.sender].push(order);

        PendingMarketOrder storage o = reqID_pendingMarketOrder[order];
        o.block = block.number;
        o.trade.trader = msg.sender;
        o.trade.pairIndex = _pairIndex;
        o.trade.userTradesIndex = _userTradesIndex;

        pendingMarketCloseCount[msg.sender][_pairIndex]++;
    }

    function closeTradeMarketCallback(
        uint _order,
        uint _price) external onlyPriceAggregator{
        
        PendingMarketOrder storage o = reqID_pendingMarketOrder[_order];
        Trade storage pendingTrade = userTrades[o.trade.trader][o.trade.pairIndex][o.trade.userTradesIndex];

        if(o.block == 0){ return; }

        if(pendingTrade.leverage > 0){
            uint posToken = positionSizeToken(
                pendingTrade.positionSizeToken,
                pendingTrade.positionSizeUsd
            );

            int percentProfit = currentPercentProfit(
                pendingTrade.openPrice,
                _price,
                pendingTrade.buy,
                pendingTrade.leverage
            );

            int pnl = int(posToken).mul(percentProfit).div(int(100*PRECISION));

            handleTokensBack(
                percentProfit,
                pendingTrade.trader,
                pnl >= 0 ? posToken.add(uint(pnl)) : posToken.sub(uint(pnl.mul(-1))),
                0,
                posToken.mul(priceAggregator.lpCloseFeeP()).div(100*PRECISION)
            );

            emit TradeClosedMarket(
                pendingTrade.trader,
                pendingTrade.pairIndex,
                pendingTrade.userTradesIndex,
                _price,
                pendingTrade.buy,
                posToken,
                pendingTrade.leverage,
                pnl,
                tokenPriceUsd()
            );

            unregisterTrade(
                pendingTrade.trader,
                pendingTrade.pairIndex,
                pendingTrade.userTradesIndex
            );
        }
        
        unregisterPendingMarketOrder(false, o.trade.trader, o.trade.pairIndex, _order);
    }

    // Try to execute a TP, SL, Liquidation, or limit long/short (only done by NFT holders)
    // order types: 1 = take profit, 2 = stop loss, 3 = liquidation, 4 = open trade
    // if open trade => _userTradesIndex can be anything (not used)
    function executeNftOrder(uint _orderType, address _a, uint _pairIndex, uint _userTradesIndex, uint _nftId, uint _nftType) external notContract{
        require(_orderType >= 1 && _orderType <= 4, "WRONG_ORDER_TYPE");
        require(_nftType > 0 && _nftType < 6, "WRONG_NFT_TYPE");
        require(msg.sender == govFund || nft[_nftType-1].ownerOf(_nftId) == msg.sender, "NO_NFT");
        require(block.number >= nftLastSuccess[_nftId].add(priceAggregator.nftSuccessTimelock()), "SUCCESS_TIMELOCK");

        linkToken.transferFrom(msg.sender, address(priceAggregator), priceAggregator.nftLinkFee());
        uint order;

        if(_orderType == 4){
            require(hasOpenLimitOrder(_a, _pairIndex), "NO_LIMIT");
            order = priceAggregator.getPrice(_pairIndex, 2);
        }else{
            require(userTrades[_a][_pairIndex][_userTradesIndex].leverage > 0, "NO_TRADE");
            require(_orderType != 1 || userTrades[_a][_pairIndex][_userTradesIndex].tp > 0, "NO_TP");
            require(_orderType != 2 || userTrades[_a][_pairIndex][_userTradesIndex].sl > 0, "NO_SL");
            order = priceAggregator.getPrice(_pairIndex, 3);
        }

        PendingNftOrder storage n = reqID_pendingNftOrder[order];
        n.nftHolder = msg.sender;
        n.nftId =  _nftId; 
        n.trader =  _a; 
        n.pairIndex =  _pairIndex;
        n.userTradesIndex = _userTradesIndex;
        n.orderType = _orderType;
    }

    function executeNftOpenOrderCallback(
        uint _order,
        uint _price,
        uint _spreadP
    ) external onlyPriceAggregator{
        PendingNftOrder storage nftOrder = reqID_pendingNftOrder[_order];
        if(nftOrder.trader == address(0)){ return; }

        if(hasOpenLimitOrder(nftOrder.trader, nftOrder.pairIndex) && !priceAggregator.isPaused()
        && block.number >= nftLastSuccess[nftOrder.nftId].add(priceAggregator.nftSuccessTimelock())){
            OpenLimitOrder storage o = openLimitOrders[userOpenLimitOrderId[nftOrder.trader][nftOrder.pairIndex]];

            if(priceAggregator.canOpenTrade(nftOrder.pairIndex, o.positionSizeToken, o.leverage)){
                uint finalSpreadP = _spreadP.sub(_spreadP.mul(o.spreadReductionP).div(100));
                uint openPrice = o.buy  ? _price.add(_price.mul(finalSpreadP).div(100*PRECISION))
                                        : _price.sub(_price.mul(finalSpreadP).div(100*PRECISION));

                if(openPrice >= o.minPrice && openPrice <= o.maxPrice){
                    uint amountNftToken = o.positionSizeToken.mul(priceAggregator.nftLimitOrderFeeP()).div(100*PRECISION);
                    (uint positionSizeToken_minusFees, uint positionSizeUsd_minusFees) = handleOpenFees(o.positionSizeToken.sub(amountNftToken));
                    uint userTradesIndex = firstEmptyUserTradesIndex(o.trader, o.pairIndex);

                    registerTrade(Trade(
                        o.trader,
                        o.pairIndex,
                        userTradesIndex,
                        positionSizeToken_minusFees,
                        positionSizeUsd_minusFees,
                        openPrice,
                        o.spreadReductionP,
                        o.buy,
                        o.leverage,
                        o.tp,
                        o.sl,
                        0,
                        0
                    ));

                    token.mint(nftOrder.nftHolder, amountNftToken);
                    nftLastSuccess[nftOrder.nftId] = block.number;
                    nftRewards += amountNftToken;

                    emit TradeLimitExecuted(
                        o.trader,
                        o.pairIndex,
                        userTradesIndex,
                        nftOrder.nftHolder,
                        4,
                        openPrice,
                        o.buy,
                        o.leverage,
                        positionSizeToken_minusFees,
                        0,
                        amountNftToken,
                        tokenPriceUsd()
                    );

                    unregisterLimitOrder(o.trader, o.pairIndex);
                }
            }
        }
        delete reqID_pendingNftOrder[_order];
    }

    function executeNftCloseOrderCallback(
        uint _order,
        uint _price) external onlyPriceAggregator{
        
        uint amountNftToken;
        if(reqID_pendingNftOrder[_order].trader == address(0)){ return; }

        Trade storage t = userTrades[reqID_pendingNftOrder[_order].trader][reqID_pendingNftOrder[_order].pairIndex][reqID_pendingNftOrder[_order].userTradesIndex];

        if(t.leverage > 0 && block.number >= nftLastSuccess[reqID_pendingNftOrder[_order].nftId].add(priceAggregator.nftSuccessTimelock())){ 
            int percentProfit = currentPercentProfit(
                t.openPrice,
                _price,
                t.buy,
                t.leverage
            );

            uint posToken = positionSizeToken(t.positionSizeToken, t.positionSizeUsd);

            // TP or SL
            if((reqID_pendingNftOrder[_order].orderType == 1 && t.tp > 0 && t.buy && _price >= t.tp)
            || (reqID_pendingNftOrder[_order].orderType == 1 && t.tp > 0 && !t.buy && _price <= t.tp)
            || (reqID_pendingNftOrder[_order].orderType == 2 && t.sl > 0 && t.buy && _price <= t.sl)
            || (reqID_pendingNftOrder[_order].orderType == 2 && t.sl > 0 && !t.buy && _price >= t.sl)){
               amountNftToken = posToken.mul(priceAggregator.nftLimitOrderFeeP()).div(100*PRECISION);
            }
            
            // Liquidation
            if(reqID_pendingNftOrder[_order].orderType == 3 && percentProfit <= int(LIQUIDATION_P*PRECISION).mul(-1)){
                amountNftToken = posToken.mul(priceAggregator.nftLiqFeeP()).div(100);
            }

            if(amountNftToken > 0){
                int pnl = int(posToken).mul(percentProfit).div(int(100*PRECISION));

                handleTokensBack(
                    percentProfit,
                    t.trader,
                    pnl >= 0 ? posToken.add(uint(pnl)) : posToken.sub(uint(pnl.mul(-1))),
                    amountNftToken,
                    reqID_pendingNftOrder[_order].orderType == 3 ? posToken.mul(priceAggregator.lpLiqFeeP()).div(100)
                    : posToken.mul(priceAggregator.lpCloseFeeP()).div(100*PRECISION)
                );

                emit TradeLimitExecuted(
                    t.trader,
                    t.pairIndex,
                    t.userTradesIndex,
                    reqID_pendingNftOrder[_order].nftHolder,
                    reqID_pendingNftOrder[_order].orderType,
                    _price,
                    t.buy,
                    t.leverage,
                    posToken,
                    pnl,
                    amountNftToken,
                    tokenPriceUsd()
                );

                unregisterTrade(
                    t.trader,
                    t.pairIndex,
                    t.userTradesIndex
                );

                token.mint(reqID_pendingNftOrder[_order].nftHolder, amountNftToken);
                nftLastSuccess[reqID_pendingNftOrder[_order].nftId] = block.number;
                nftRewards += amountNftToken;
            }
        }

        delete reqID_pendingNftOrder[_order];
    }

    // Security functions if market order callback not executed by chainlink nodes after 50 blocks
    function marketOrderCallbackFailed(uint _order) external{
        PendingMarketOrder storage o = reqID_pendingMarketOrder[_order];
        require(o.block > 0 && block.number >= o.block.add(50), "WAIT_50_BLOCKS");
        require(o.trade.trader == msg.sender, "NOT_YOUR_ORDER");

        Trade storage t = userTrades[msg.sender][o.trade.pairIndex][o.trade.userTradesIndex];
        bool openOrder = o.trade.leverage > 0;
        bool tradeOpen = t.leverage > 0;
        uint posToken = openOrder ? o.trade.positionSizeToken : t.positionSizeToken;

        // Close market order
        if(openOrder || tradeOpen){
            if(!openOrder){
                unregisterTrade(
                    msg.sender,
                    o.trade.pairIndex,
                    o.trade.userTradesIndex
                );
            }
            token.mint(msg.sender, posToken);
            tokensMinted += posToken;
        }

        unregisterPendingMarketOrder(openOrder, msg.sender, o.trade.pairIndex, _order);

        emit ChainlinkCallbackFailed();
    }

    // Claim fees
    function claimFees() external onlyGov{
        uint dFees = devFees;
        uint gFees = govFees;
        devFees = 0;
        govFees = 0;
        token.mint(devFund, dFees);
        token.mint(govFund, gFees);
        tokensMinted += dFees + gFees;
    }

    // UI VIEW FUNCTIONS (READ-ONLY)
    function pairTradersArray(uint _pairIndex) external view returns(address[] memory){
        return pairTraders[_pairIndex];
    }
    function openLimitOrdersCount() external view returns(uint){
        return openLimitOrders.length;
    }
    function pendingOrderIdsCount() external view returns(uint){
        return pendingOrderIds[msg.sender].length;
    }
    function reqID_pendingMarketOrder_get(uint order) external view returns(uint,uint,uint,address,uint,uint,uint,uint,bool,uint,uint,uint){
        PendingMarketOrder storage o = reqID_pendingMarketOrder[order];
        return (
            o.block,
            o.wantedPrice,
            o.slippageP,
            o.trade.trader,
            o.trade.pairIndex,
            o.trade.userTradesIndex,
            o.trade.positionSizeToken,
            o.trade.spreadReductionP,
            o.trade.buy,
            o.trade.leverage,
            o.trade.tp,
            o.trade.sl
        );
    }
}