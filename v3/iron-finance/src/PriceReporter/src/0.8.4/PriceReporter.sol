pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./libs/UniswapV2Library.sol";
import "./libs/ChainlinkLib.sol";
import "./IGuardedPriceOracle.sol";

/**
 * Calculate spot price via uniswap V2 pair
 */
contract PriceReporter is Ownable {
    struct PriceRoute {
        address uniswapPair;
        address chainlink;
    }

    mapping(bytes32 => address) public getTokenBySymbolHash;

    mapping(address => PriceRoute[]) public getPriceRoute;

    mapping(address => bool) reporters;

    bool public allowedPublic;

    string[] public observedTokens;

    uint256 public constant PRECISION = 1e18;

    IGuardedPriceOracle public oracle;

    modifier onlyReporters() {
        require(allowedPublic || reporters[_msgSender()], "Not authorized");
        _;
    }


    constructor(address _oracle) {
        oracle = IGuardedPriceOracle(_oracle);
    }

    function report() external onlyReporters {
        bytes[] memory messages = new bytes[](observedTokens.length);

        for (uint256 i = 0; i < observedTokens.length; i++) {
            string memory symbol = observedTokens[i];
            address token = getTokenBySymbolHash[keccak256(abi.encodePacked(symbol))];
            uint224 price = consult(token);
            messages[i] = abi.encode(uint64(block.timestamp), symbol, price);
        }

        oracle.postPrices(messages, observedTokens);
    }

    function consult(address token) public view returns (uint224) {
        PriceRoute[] storage routes = getPriceRoute[address(token)];
        require(routes.length >= 1, "invalidTokenConfig");

        uint256 sum;
        for (uint256 i = 0; i < routes.length; i++) {
            sum += consultToken(token, routes[i].uniswapPair, routes[i].chainlink);
        }

        return uint224(sum / routes.length);
    }

    /**
     * calculate token price from series of Uniswap pair and chainlink price feed.
     * Once swap route is empty result will be take from chainlink
     * @param token address of token to consult
     * @param pair uniswap pair to get price
     * @param chainlinkAddress chainlink price feed
     */
    function consultToken(
        address token,
        address pair,
        address chainlinkAddress
    ) public view returns (uint256) {
        require(pair != address(0) || chainlinkAddress != address(0), "route empty");
        uint256 amountOut = consultTokenToToken(token, pair);

        if (chainlinkAddress == address(0)) {
            return amountOut;
        }

        return ChainlinkLib.consult(chainlinkAddress, amountOut);
    }

    // internal function
    function consultTokenToToken(
        address tokenIn,
        address pairAddress
    ) internal view returns (uint256) {
        address tokenOut = address(0);

        if (pairAddress == address(0)) {
            return PRECISION;
        }

        uint256 amountIn = 10 ** ERC20(tokenIn).decimals();
        IUniswapV2Pair pair = IUniswapV2Pair(pairAddress);
        (uint112 reserve0, uint112 reserve1, ) = pair.getReserves();

        uint256 amountOut;
        if (tokenIn == pair.token0()) {
            tokenOut = pair.token1();
            amountOut = getAmountOut(amountIn, reserve0, reserve1);
        } else {
            assert(tokenIn == pair.token1());
            tokenOut = pair.token0();
            amountOut = getAmountOut(amountIn, reserve1, reserve0);
        }

        uint8 tokenOutDecimals = ERC20(tokenOut).decimals();
        return (amountOut * PRECISION) / 10**tokenOutDecimals;
    }

    // UniswapV2Library.getAmountOut without fee
    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) internal pure returns (uint256 amountOut) {
        require(amountIn > 0, "UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT");
        require(reserveIn > 0 && reserveOut > 0, "UniswapV2Library: INSUFFICIENT_LIQUIDITY");
        uint256 numerator = amountIn * reserveOut;
        uint256 denominator = reserveIn + amountIn;
        amountOut = numerator / denominator;
    }

    // ====== RESTRICTED FUCNTIONS ==============

    function _toggleAllowedPublic(bool _allowedPublic) external onlyOwner {
        allowedPublic = _allowedPublic;
        emit AllowedPublicChanged(_allowedPublic);
    }

    function _addReporter(address _reporter) external onlyOwner {
        require(!reporters[_reporter], "Reporter existed");
        reporters[_reporter] = true;
        emit ReporterAdded(_reporter);
    }

    function _removeReporter(address _reporter) external onlyOwner {
        require(reporters[_reporter], "Reporter not existed");
        delete reporters[_reporter];
        emit ReporterRemoved(_reporter);
    }

    function _setTokenConfig(
        address token,
        string memory symbol,
        address[] calldata uniswapPairs,
        address[] calldata chainlinks
    ) external onlyOwner {
        bytes32 symbolHash = keccak256(abi.encodePacked(symbol));
        require(getTokenBySymbolHash[symbolHash] == address(0), "tokenExisted");

        getTokenBySymbolHash[symbolHash] = token;
        require(uniswapPairs.length == chainlinks.length && chainlinks.length > 0, "invalidConfig");

        observedTokens.push(symbol);
        for (uint256 i = 0; i < uniswapPairs.length; i++) {
            getPriceRoute[token].push(PriceRoute({uniswapPair: uniswapPairs[i], chainlink: chainlinks[i]}));
        }
    }

    function _removeTokenConfig(
        string memory symbol
    ) external onlyOwner {
        bytes32 symbolHash = keccak256(abi.encodePacked(symbol));
        address token = getTokenBySymbolHash[symbolHash];
        require(token != address(0), "tokenNotExisted");

        getTokenBySymbolHash[symbolHash] = address(0);
        delete getPriceRoute[token];

        bool found = false;
        for(uint i = 0; i < observedTokens.length; i++) {
            if (keccak256(abi.encodePacked(observedTokens[i])) == symbolHash) {
                observedTokens[i] = observedTokens[observedTokens.length - 1];
                found = true;
                break;
            }
        }

        if (found) {
            observedTokens.pop();
        }

        emit TokenConfigRemoved(token, symbol);
    }

    // ====== EVENTS ===============================

    event AllowedPublicChanged(bool _allowed);
    event ReporterAdded(address indexed _addr);
    event ReporterRemoved(address indexed _addr);
    event TokenConfigAdded(address indexed _token, string symbol);
    event TokenConfigRemoved(address indexed _token, string symbol);
}
