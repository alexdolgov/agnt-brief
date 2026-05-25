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

// File: contracts\GFarmTradingV3.sol





pragma solidity ^0.6.0;

interface PriceAggregatorInterfaceV3{
    function getPrice(uint _pairIndex, uint _orderType) external returns(uint);
    function canOpenTrade(uint _pairIndex, uint _positionSizeToken, uint _leverage) view external returns(bool);
    function increaseOpenInterest(uint _pairIndex, uint _positionSizeToken, uint _leverage) external;
    function decreaseOpenInterest(uint _pairIndex, uint _positionSizeToken, uint _leverage) external;
}

interface TokenInterface{
    function burn(address from, uint256 amount) external;
    function mint(address to, uint256 amount) external;
}

interface NftInterface{
    function ownerOf(uint256 tokenId) external view returns (address owner);
}

contract GFarmTradingV3{

    using SafeMath for uint;
    using SignedSafeMath for int;

    // Contracts
    PriceAggregatorInterfaceV3 public priceAggregator;
    TokenInterface public token;
    NftInterface[5] public nft;
    IUniswapV2Pair public lp;

    address constant WETH = 0x7ceB23fD6bC0adD59E62ac25578270cFf1b9f619;
    IUniswapV2Pair constant ETH_USD_PAIR = IUniswapV2Pair(0x853Ee4b2A13f8a742d64C8F088bE7bA2131f670d);

    // Constants
    uint constant PRECISION = 1e10;
    uint constant STOP_LOSS_P = 90; // -90%

    // LPs pool => earn part of the fees
    uint public accTokensPerLp;
    mapping(address => User) public users;
    struct User{
        uint provided;
        uint debt;
    }

    // Trading
    bool public isPaused;
    uint public maxTradesPerBlock = 5;

    uint public maxGainP = 400; // 400% = 5x
    uint public minPosEth = 0.001 * 1e18; // 1e18
    uint public maxPosTokenP = 0.1 * 1e10; // 1% (PRECISION)
    uint public maxPosTokenIncreaseP = 20; // 20%
    uint public govOpenFeeP = 0.5 * 1e10; // PRECISION
    uint public devOpenFeeP = 0.5 * 1e10; // PRECISION
    uint public lpCloseFeeP = 1 * 1e10; // PRECISION
    uint public nftLiqFeeP = 5; // %
    uint public lpLiqFeeP = 5; // %

    uint public liquidationSuccessTimelock = 2000; // blocks
    uint public liquidationFailTimelock = 20000; // blocks

    uint public tokensBurned; // 1e18
    uint public tokensMinted; // 1e18
    uint public tokenRewards; // 1e18
    uint public devFees; // 1e18
    uint public govFees; // 1e18

    uint startBlock = block.number;

    // Gov & dev funds
    address public govFund;
    address public immutable devFund;

    // Structs
    struct Trade{
        uint openPrice; // PRECISION
        uint pairTradersID;
        uint pairIndex;
        uint positionSizeToken; // 1e18
        uint positionSizeEth; // 1e18
        bool buy;
        uint leverage;
        uint nftId;
        address trader;
    }
    struct Liquidation{
        address liquidator;
        uint nftID;
        Trade trade;
    }
    struct Close{
        address trader;
        uint pairIndex;
    }
    struct Request{
        uint id;
        uint block;
    }
    struct NftTimelock{
        bool success;
        uint block;
    }

    // Mappings

    mapping(address => Request) public user_pendingOpen_req;
    mapping(uint => Trade) reqID_pendingOpen_trade;

    mapping(address => Request) public user_pendingClose_req;
    mapping(uint => Close) reqID_pendingClose_trade;

    mapping(uint => NftTimelock) public nftTimelocks;
    mapping(uint => Liquidation) reqID_pendingLiquidate_trade;

    mapping(address => mapping(uint => Trade)) public userTrades;
    mapping(uint => address[]) public pairTraders; // List open trades

    mapping(uint => uint) public tradesPerBlock;
    mapping(uint => address) public nftsTradeOpen;

    // Events
    event TradeOpened(
        address indexed trader,
        uint indexed pairIndex,
        bool buy,
        uint leverage,
        uint price,
        uint positionSizeToken,
        uint positionSizeEth
    );
    event TradeClosed(
        address indexed trader,
        uint indexed pairIndex,
        uint price,
        bool buy,
        uint positionSizeEth,
        uint positionSizeToken,
        uint leverage,
        int pnlToken,
        int pnlEth
    );
    event TradeLiquidated(
        address indexed trader,
        uint indexed pairIndex,
        address indexed liquidator,
        uint price,
        bool buy,
        uint positionSizeEth,
        uint positionSizeToken,
        uint leverage,
        uint rewardToken,
        uint rewardEth
    );
    event ChainlinkCallbackFailed();
    event AddressUpdated(
        string name,
        address value
    );
    event NumberUpdated(
        string name,
        uint value,
        uint decimals
    );
    event Pause(bool paused);

    constructor(address _gov, address _dev, NftInterface[5] memory _nft) public{
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
        emit AddressUpdated("gov", _gov);
    }
    function setToken(address _token) external onlyGov{
        require(token == TokenInterface(0), "TOKEN_SET");
        token = TokenInterface(_token);
        emit AddressUpdated("token", _token);
    }
    function setLp(address _lp) external onlyGov{
        require(lp == IUniswapV2Pair(0), "LP_SET");
        lp = IUniswapV2Pair(_lp);
        emit AddressUpdated("lp", _lp);
    }
    // Trading variables
    function setPriceAggregator(address _aggregator) external onlyGov{
        require(_aggregator != address(0), "PRICE_AGGREGATOR_ADDRESS_0");
        priceAggregator = PriceAggregatorInterfaceV3(_aggregator);
        emit AddressUpdated("priceAggregator", _aggregator);
    }
    function setMinPosEth(uint _minPos) external onlyGov{
        minPosEth = _minPos;
        emit NumberUpdated("minPosEth", _minPos, PRECISION);
    }
    function setMaxPosTokenP(uint _maxPosLp) external onlyGov{
        maxPosTokenP = _maxPosLp;
        emit NumberUpdated("maxPosTokenP", _maxPosLp, PRECISION);
    }
    function setMaxPosTokenIncreaseP(uint _maxIncrease) external onlyGov{
        maxPosTokenIncreaseP = _maxIncrease;
        emit NumberUpdated("maxPosTokenIncreaseP", _maxIncrease, 0);
    }
    function setFees(uint _govFee, uint _devFee, uint _lpFee) external onlyGov{
        govOpenFeeP = _govFee;
        devOpenFeeP = _devFee;
        lpCloseFeeP = _lpFee;
        emit NumberUpdated("govOpenFeeP", _govFee, PRECISION);
        emit NumberUpdated("devOpenFeeP", _devFee, PRECISION);
        emit NumberUpdated("lpCloseFeeP", _lpFee, PRECISION);
    }
    function setLiqFees(uint _nftLiqFee, uint _lpLiqFee) external onlyGov{
        nftLiqFeeP = _nftLiqFee;
        lpLiqFeeP = _lpLiqFee;
        emit NumberUpdated("nftLiqFeeP", _nftLiqFee, 0);
        emit NumberUpdated("lpLiqFeeP", _lpLiqFee, 0);
    }
    function setLiquidationTimelock(uint _success, uint _fail) external onlyGov{
        liquidationSuccessTimelock = _success;
        liquidationFailTimelock = _fail;
        emit NumberUpdated("liquidationSuccessTimelock", _success, 0);
        emit NumberUpdated("liquidationFailTimelock", _fail, 0);
    }
    function setMaxTradesPerBlock(uint _max) external onlyGov{
        require(_max > 0, "MAX_TRADES_PER_BLOCK_0");
        maxTradesPerBlock = _max;
        emit NumberUpdated("maxTradesPerBlock", _max, 0);
    }
    function setMaxGainP(uint _max) external onlyGov{
        require(_max > 200, "MAX_GAIN_P_LESS_THAN_200");
        maxGainP = _max;
        emit NumberUpdated("maxGainP", _max, 0);
    }

    // Pause
    function pause(bool paused) external onlyGov{
        isPaused = paused;
        emit Pause(paused);
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
        p = p > int(maxGainP).mul(int(PRECISION)) ? int(maxGainP).mul(int(PRECISION)) : p;
    }

    // Position size token
    function positionSizeToken(
        uint initialTokenPos,
        uint posEth) private view returns(uint currentPosToken){
        currentPosToken = posEth.mul(PRECISION).div(tokenPriceEth());

        // Position size increase % limited
        uint maxNewPos = initialTokenPos.add(initialTokenPos.mul(maxPosTokenIncreaseP).div(100));
        currentPosToken = currentPosToken > maxNewPos ? maxNewPos : currentPosToken;
    }

    // Unregister trade from mappings
    function unregisterTrade(
        address trader,
        uint pairIndex,
        uint pairTradersID) private{

        // Delete from userTrades mapping
        delete userTrades[trader][pairIndex];

        // Delete from pair traders array (without preserving order)
        address[] storage p = pairTraders[pairIndex];
        userTrades[p[p.length.sub(1)]][pairIndex].pairTradersID = pairTradersID;
        p[pairTradersID] = p[p.length.sub(1)];
        p.pop();
    }

    // Get reserves LP
    function reservesLp() private view returns(uint, uint){
        (uint112 reserves0, uint112 reserves1, ) = lp.getReserves();
        if(WETH == lp.token0()){
            return (reserves1, reserves0);
        }else{
            return (reserves0, reserves1);
        }
    }

    // Get Token price in ETH
    function tokenPriceEth() private view returns(uint){
        (uint reserveToken, uint reserveEth) = reservesLp();
        return reserveEth.mul(PRECISION).div(reserveToken);
    }

    // EXTERNAL TRADING FUNCTIONS

    // 0. Modifiers
    modifier notContract(){
        require(tx.origin == msg.sender, "CONTRACT");
        _;
    }
    modifier onlyPriceAggregator(){
        require(msg.sender == address(priceAggregator), "NOT_PRICE_AGGREGATOR");
        _;
    }
    
    // Open a new trade at current pair price
    function openTrade(
        uint _pairIndex,
        bool _buy,
        uint _positionSizeToken,
        uint _leverage,
        uint _nftId,
        uint _nftType // 1,2,3,4,5
        ) external notContract{

        require(tradesPerBlock[block.number] < maxTradesPerBlock, "MAX_TRADES_PER_BLOCK");
        require(isPaused == false, "PAUSED");
        require(priceAggregator.canOpenTrade(_pairIndex, _positionSizeToken, _leverage), "MAX_OPEN_INTEREST");
        require(userTrades[msg.sender][_pairIndex].leverage == 0, "1_TRADE_PER_PAIR");
        require(user_pendingOpen_req[msg.sender].block == 0, "1_PENDING_TRADE");
        (uint reserveToken, ) = reservesLp();
        require(_positionSizeToken >= minPosEth.mul(PRECISION).div(tokenPriceEth())
            && _positionSizeToken <= reserveToken.mul(maxPosTokenP).div(100*PRECISION),
            "WRONG_POS");

        uint nftLeverage = _nftType.mul(25);
        if(_nftType == 5){ nftLeverage = nftLeverage.add(25); }

        require(
            _leverage >= 5 && _leverage <= 10 || 
            _leverage >= leverageBelow(nftLeverage) && _leverage <= nftLeverage
            && nft[_nftType-1].ownerOf(_nftId) == msg.sender, "NO_CORRESPONDING_NFT");

        require(_leverage <= 10 || nftsTradeOpen[_nftId] == address(0) || 
                nftsTradeOpen[_nftId] == msg.sender, "NFT_ALREADY_USED");
    
        uint order = priceAggregator.getPrice(_pairIndex, 0);
        user_pendingOpen_req[msg.sender].id = order;
        user_pendingOpen_req[msg.sender].block = block.number;

        Trade storage t = reqID_pendingOpen_trade[order];
        t.trader = msg.sender;
        t.pairIndex = _pairIndex;
        t.buy = _buy;
        t.leverage = _leverage;
        t.nftId = _nftId;
        t.positionSizeToken = _positionSizeToken;

        token.burn(msg.sender, _positionSizeToken);
        tokensBurned = tokensBurned.add(_positionSizeToken);

        tradesPerBlock[block.number] = tradesPerBlock[block.number].add(1);
    }

    function leverageBelow(uint _leverage) pure private returns(uint){
        if(_leverage == 25){
            return 11;
        }else if(_leverage == 50){
            return 26;
        }else if(_leverage == 75){
            return 51;
        }else if(_leverage == 100){
            return 76;
        }else{
            return 101;
        }
    }

    function openTradeCallback(
        uint _order,
        uint _price,
        uint _spreadP) external onlyPriceAggregator{
        
        Trade storage pendingTrade = reqID_pendingOpen_trade[_order];
        require(pendingTrade.leverage != 0, "OPEN_TRADE_CANCELED");

        uint govFee = pendingTrade.positionSizeToken.mul(govOpenFeeP).div(100*PRECISION);
        uint devFee = pendingTrade.positionSizeToken.mul(devOpenFeeP).div(100*PRECISION);
        uint positionSizeToken_minusFees = pendingTrade.positionSizeToken.sub(govFee).sub(devFee);
        uint positionSizeEth_minusFees = positionSizeToken_minusFees.mul(tokenPriceEth()).div(PRECISION);

        uint openPrice = pendingTrade.buy ? _price.add(_price.mul(_spreadP).div(100*PRECISION))
                                          : _price.sub(_price.mul(_spreadP).div(100*PRECISION));

        Trade storage t = userTrades[pendingTrade.trader][pendingTrade.pairIndex];
        t.trader = pendingTrade.trader;
        t.pairIndex = pendingTrade.pairIndex;
        t.buy = pendingTrade.buy;
        t.leverage = pendingTrade.leverage;
        t.nftId = pendingTrade.nftId;
        t.openPrice = openPrice;
        t.positionSizeToken = positionSizeToken_minusFees;
        t.positionSizeEth = positionSizeEth_minusFees;
        t.pairTradersID = pairTraders[pendingTrade.pairIndex].length;

        pairTraders[t.pairIndex].push(t.trader);

        govFees = govFees.add(govFee);
        devFees = devFees.add(devFee);

        priceAggregator.increaseOpenInterest(t.pairIndex, t.positionSizeToken, t.leverage);
        if(t.leverage > 10){ nftsTradeOpen[pendingTrade.nftId] = t.trader; }

        emit TradeOpened(
            t.trader,
            t.pairIndex,
            t.buy,
            t.leverage,
            openPrice,
            positionSizeToken_minusFees,
            positionSizeEth_minusFees
        );

        delete user_pendingOpen_req[t.trader];
        delete reqID_pendingOpen_trade[_order];
    }

    // Close open trade at current price
    function closeTrade(uint _pairIndex) external notContract{
        require(tradesPerBlock[block.number] < maxTradesPerBlock, "MAX_TRADES_PER_BLOCK");
        require(userTrades[msg.sender][_pairIndex].leverage != 0, "NO_OPEN_TRADE");
        require(user_pendingClose_req[msg.sender].block == 0, "1_PENDING_TRADE");

        uint order = priceAggregator.getPrice(_pairIndex, 1);
        user_pendingClose_req[msg.sender].id = order;
        user_pendingClose_req[msg.sender].block = block.number;
        Close storage c = reqID_pendingClose_trade[order];
        c.trader = msg.sender;
        c.pairIndex = _pairIndex;

        tradesPerBlock[block.number] = tradesPerBlock[block.number].add(1);
    }

    function closeTradeCallback(
        uint _order,
        uint _price) external onlyPriceAggregator{
        
        Close storage c = reqID_pendingClose_trade[_order];
        require(c.trader != address(0), "CLOSE_TRADE_CANCELED");

        Trade storage pendingTrade = userTrades[c.trader][c.pairIndex];

        uint posToken = positionSizeToken(
            pendingTrade.positionSizeToken,
            pendingTrade.positionSizeEth
        );

        int pnl = int(posToken).mul(
                        currentPercentProfit(
                            pendingTrade.openPrice,
                            _price,
                            pendingTrade.buy,
                            pendingTrade.leverage
                        )
                    ).div(int(100*PRECISION));

        uint tokensBack = pnl >= 0 ? posToken.add(uint(pnl)) : posToken.sub(uint(pnl.mul(-1)));

        uint lpFee = tokensBack.mul(lpCloseFeeP).div(100*PRECISION);
        tokensBack = tokensBack.sub(lpFee);
        
        token.mint(pendingTrade.trader, tokensBack);
        tokensMinted = tokensMinted.add(tokensBack);

        uint lpBalance = lp.balanceOf(address(this));
        if(lpBalance > 0){
            accTokensPerLp = accTokensPerLp.add(
                lpFee.mul(1e18).div(lpBalance)
            );
        }

        tokenRewards = tokenRewards.add(lpFee);
        priceAggregator.decreaseOpenInterest(pendingTrade.pairIndex, pendingTrade.positionSizeToken, pendingTrade.leverage);
        delete nftsTradeOpen[pendingTrade.nftId];

        emit TradeClosed(
            pendingTrade.trader,
            pendingTrade.pairIndex,
            _price,
            pendingTrade.buy,
            pendingTrade.positionSizeEth,
            posToken,
            pendingTrade.leverage,
            pnl,
            pnl.mul(int(tokenPriceEth()).div(int(PRECISION)))
        );

        unregisterTrade(
            pendingTrade.trader,
            pendingTrade.pairIndex,
            pendingTrade.pairTradersID
        );

        delete user_pendingClose_req[c.trader];
        delete reqID_pendingClose_trade[_order];
    }

    // Liquidate trade opened by an address
    function liquidateTrade(address _a, uint _pairIndex, uint _nftID, uint _nftType) external notContract{
        require(_a != msg.sender, "CANNOT_LIQUIDATE_OWN_TRADE");
        require(userTrades[_a][_pairIndex].leverage != 0, "NO_OPEN_TRADE");
        require(nft[_nftType-1].ownerOf(_nftID) == msg.sender || msg.sender == govFund, "NOT_NFT_OWNER");
        require(nftTimelocks[_nftID].block == 0
                || block.number >= nftTimelocks[_nftID].block.add(liquidationFailTimelock)
                || nftTimelocks[_nftID].success && block.number >= nftTimelocks[_nftID].block.add(liquidationSuccessTimelock)
                , "LIQ_TIMELOCK");

        uint order = priceAggregator.getPrice(_pairIndex, 2);
        Liquidation storage l = reqID_pendingLiquidate_trade[order];
        l.liquidator = msg.sender;
        l.nftID =  _nftID; 
        l.trade = userTrades[_a][_pairIndex];
        nftTimelocks[_nftID].block = block.number;
        nftTimelocks[_nftID].success = false;
    }

    function liquidateTradeCallback(
        uint _order,
        uint _price) external onlyPriceAggregator{
        
        Liquidation storage pendingLiquidation = reqID_pendingLiquidate_trade[_order];
        Trade storage t = userTrades[pendingLiquidation.trade.trader][pendingLiquidation.trade.pairIndex];
        
        // Check we're liquidating the right trade
        // (if user has closed his trade and opened a new one on the same pair before the callback)
        // => highly unprobable
        require(t.openPrice == pendingLiquidation.trade.openPrice
            &&  t.positionSizeEth == pendingLiquidation.trade.positionSizeEth, "TRADE_CLOSED");

        if(currentPercentProfit(
            t.openPrice,
            _price,
            t.buy,
            t.leverage) 
            <= int(STOP_LOSS_P*PRECISION).mul(-1)){

            uint posToken = positionSizeToken(
                t.positionSizeToken,
                t.positionSizeEth
            );
            uint amountNft = posToken.mul(nftLiqFeeP).div(100);
            //uint amountLp = posToken.mul(lpLiqFeeP).div(100);
            
            token.mint(pendingLiquidation.liquidator, amountNft);
            tokensMinted = tokensMinted.add(amountNft);

            uint lpBalance = lp.balanceOf(address(this));
            if(lpBalance > 0){
                accTokensPerLp = accTokensPerLp.add(
                    posToken.mul(lpLiqFeeP).mul(1e18).div(lpBalance*100)
                );
            }

            tokenRewards = tokenRewards.add(posToken.mul(lpLiqFeeP).div(100));
            priceAggregator.decreaseOpenInterest(t.pairIndex, t.positionSizeToken, t.leverage);
            delete nftsTradeOpen[t.nftId];

            emit TradeLiquidated(
                t.trader,
                t.pairIndex,
                pendingLiquidation.liquidator,
                _price,
                t.buy,
                t.positionSizeEth,
                posToken,
                t.leverage,
                amountNft,
                amountNft.mul(tokenPriceEth()).div(PRECISION)
            );

            // Delete existing close request by trader if he was trying to close the trade
            if(reqID_pendingClose_trade[user_pendingClose_req[t.trader].id].pairIndex == t.pairIndex
                && user_pendingClose_req[t.trader].block > 0){
                delete reqID_pendingClose_trade[user_pendingClose_req[t.trader].id];
                delete user_pendingClose_req[t.trader];
            }

            unregisterTrade(
                t.trader,
                t.pairIndex,
                t.pairTradersID
            );

            nftTimelocks[pendingLiquidation.nftID].success = true;
        }

        delete reqID_pendingLiquidate_trade[_order];
    }

    // Security functions if chainlink doesn't execute callbacks
    function openTradeCallbackFailed() external{
        Request storage r = user_pendingOpen_req[msg.sender];
        require(r.block > 0 && block.number >= r.block.add(50), "WAIT_50_BLOCKS");

        token.mint(msg.sender, reqID_pendingOpen_trade[r.id].positionSizeToken);
        tokensMinted = tokensMinted.add(reqID_pendingOpen_trade[r.id].positionSizeToken);

        delete reqID_pendingOpen_trade[r.id];
        delete user_pendingOpen_req[msg.sender];

        emit ChainlinkCallbackFailed();
    }

    function closeTradeCallbackFailed() external{
        Request storage r = user_pendingClose_req[msg.sender];
        require(r.block > 0 && block.number >= r.block.add(50), "WAIT_50_BLOCKS");

        Trade storage t = userTrades[reqID_pendingClose_trade[r.id].trader][reqID_pendingClose_trade[r.id].pairIndex];
        require(t.leverage != 0, "TRADE_CLOSED");

        token.mint(msg.sender, t.positionSizeToken);
        tokensMinted = tokensMinted.add(t.positionSizeToken);

        priceAggregator.decreaseOpenInterest(t.pairIndex, t.positionSizeToken, t.leverage);
        delete nftsTradeOpen[t.nftId];

        delete reqID_pendingClose_trade[r.id];
        delete user_pendingClose_req[msg.sender];

        unregisterTrade(
            t.trader,
            t.pairIndex,
            t.pairTradersID
        );

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
        tokensMinted = tokensMinted.add(dFees).add(gFees);
    }

    // LP Pool
    function pendingReward() view public returns(uint){
        User memory u = users[msg.sender];
        return u.provided.mul(accTokensPerLp).div(1e18).sub(u.debt);
    }

    function harvest() external notContract{
        uint pending = pendingReward();
        if(pending == 0){ return; }

        // 1. Send pending rewards
        token.mint(msg.sender, pendingReward());

        // 2. Update debt
        User storage u = users[msg.sender];
        u.debt = u.provided.mul(accTokensPerLp).div(1e18);
    }

    function stake(uint amount) external notContract{
        // 1. Transfer the LPs to the contract
        lp.transferFrom(msg.sender, address(this), amount);

        // 2. Harvest pending rewards
        uint pending = pendingReward();
        if(pending > 0){ token.mint(msg.sender, pendingReward()); }

        // 3. Set user provided & debt
        User storage u = users[msg.sender];
        u.provided = u.provided.add(amount);
        u.debt = u.provided.mul(accTokensPerLp).div(1e18);
    }

    function unstake(uint amount) external notContract{
        // 1. Verify he doesn't unstake more than provided
        User storage u = users[msg.sender];
        require(amount <= u.provided, "Unstaking more than provided.");

        // 2. Harvest pending rewards
        uint pending = pendingReward();
        if(pending > 0){ token.mint(msg.sender, pendingReward()); }
        tokenRewards = tokenRewards.add(pending);

        // 3. Set user provided & debt
        u.provided = u.provided.sub(amount);
        u.debt = u.provided.mul(accTokensPerLp).div(1e18);

        // 4. Transfer the LPs to the address
        lp.transfer(msg.sender, amount);
    }

     // UI VIEW FUNCTIONS (READ-ONLY)
    function pairTradersArray(uint _pairIndex) external view returns(address[] memory){
        return pairTraders[_pairIndex];
    }
    // 1e5 precision
    function getEthPrice() private view returns(uint){
        (uint112 reserves0, uint112 reserves1, ) = ETH_USD_PAIR.getReserves();
        uint reserveUsd;
        uint reserveEth;

        if(WETH == ETH_USD_PAIR.token0()){
            reserveEth = reserves0;
            reserveUsd = reserves1;
        }else{
            reserveUsd = reserves0;
            reserveEth = reserves1;
        }
        // Divide number of USDC by number of ETH
        // we multiply by 1e12 * 1e5 because USDC only has 6 decimals
        return reserveUsd.mul(1e17).div(reserveEth);
    }
    // 1e5 precision
    function tvl() public view returns(uint){
        if(lp.totalSupply() == 0){ return 0; }

        (, uint reserveEth) = reservesLp();

        uint lpPriceEth = reserveEth.mul(1e5).mul(2).div(lp.totalSupply());
        uint lpPriceUsd = lpPriceEth.mul(getEthPrice()).div(1e5);

        return lp.balanceOf(address(this)).mul(lpPriceUsd).div(1e18);
    }
    // 1e5 precision
    function apy() external view returns(uint){
        if(tvl() == 0 || block.number == startBlock){ return 0; }
        return  tokenRewards.mul(tokenPriceEth()).mul(getEthPrice())
                .mul(36500).mul(43200)
                .div(tvl()).div(block.number.sub(startBlock)).div(1e18);
    }
}