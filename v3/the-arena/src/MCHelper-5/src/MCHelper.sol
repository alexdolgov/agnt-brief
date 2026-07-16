// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
}

interface IUniswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function token0() external view returns (address);
    function token1() external view returns (address);
}

interface ITokenManager {
    function calculateCost(uint256 amountInToken, uint256 _tokenId) external view returns (uint256);
    function tokenBalanceOf(uint256 _tokenId) external view returns (uint256);
    function INITIAL_TOKEN_ID() external view returns (uint256);
}

interface IUniswapV2Router {
    function factory() external pure returns (address);
    function WAVAX() external pure returns (address);
}

interface IUniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address);
}

contract MCHelper {
    struct TokenData {
        uint256 tokenId;
        bool isLp;
        address tokenAddress;
        address lpAddress;
    }

    struct Response {
        uint256 tokenId;
        address tokenAddress;
        uint256 supply;
        uint256 avaxReserve;
        uint256 tokenReserve;
        uint256 price;
        uint256 marketCap;
        uint256 marketCapUsd;
        uint256 marketCapUsdDenominator;
        uint256 liquidity;
    }

    address public owner;

    address public immutable wavax; // Dummy WAVAX address
    address public constant usdc = 0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E;
    address public immutable wavaxUsdcLp;
    address public constant arenaRouter = 0xF56D524D651B90E4B84dc2FffD83079698b9066E;
    address public constant arenaFactory = 0xF16784dcAf838a3e16bEF7711a62D12413c39BD1;
    bool private constant WAVAX_IS_TOKEN0 = true;
    uint256 public constant priceInAvaxDenominator = 1e18;
    uint256 public constant priceInUsdcDenominator = 1e6;
    ITokenManager public constant TokenManager = ITokenManager(0x8315f1eb449Dd4B779495C3A0b05e5d194446c6e);
    ITokenManager public constant TokenManagerERC20 = ITokenManager(0xc36462D7415E75cEE6381A879B702a5e0DcdB1eA);
    address public constant ArenaToken = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    address public immutable avaxArenaLp;
    uint256 public immutable ERC20_INITIAL_TOKEN_ID;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
        wavax = IUniswapV2Router(arenaRouter).WAVAX();
        wavaxUsdcLp = getLpAddressFromLFJ(usdc);
        ERC20_INITIAL_TOKEN_ID = TokenManagerERC20.INITIAL_TOKEN_ID();
        avaxArenaLp = getLpAddressFromArena(wavax, ArenaToken);
    }

    function getTokenManager(address pairedTokenAddress) public view returns (ITokenManager) {
        if (pairedTokenAddress == wavax) {
            return TokenManager;
        } else {
            return TokenManagerERC20;
        }
    }

    function getPairedTokenAddress(uint256 tokenId) public view returns (address) {
        if(tokenId < ERC20_INITIAL_TOKEN_ID) {
            return wavax;
        } else {
            return ArenaToken;
        }
    }

    function getArenaAvaxReserve() public view returns (uint256 arenaReserve, uint256 avaxReserve) {
        IUniswapV2Pair pair = IUniswapV2Pair(avaxArenaLp);
        (uint112 r0, uint112 r1,) = pair.getReserves();
        address token0 = pair.token0();
        (arenaReserve, avaxReserve) = token0 == wavax ? (r1, r0) : (r0, r1);
    }

    // todo : use chainlink to get the price
    function getAvaxUsdPrice() public view returns (uint256) {
        IUniswapV2Pair pair = IUniswapV2Pair(wavaxUsdcLp);
        (uint112 r0, uint112 r1,) = pair.getReserves();
        // flip reserves if our assumption ever changes
        (uint256 avaxReserve, uint256 usdcReserve) = WAVAX_IS_TOKEN0 ? (r0, r1) : (r1, r0);
        // USDC has 6 decimals, WAVAX is 18 → we want (usdc * 1e18) / avax
        return (usdcReserve * 1e18) / avaxReserve;
    }





    function getTokenData(TokenData[] calldata data) external view returns (Response[] memory response) {
        uint256 avaxUsdPrice = getAvaxUsdPrice(); // divive by 10**6
        (uint256 arenaReserve, uint256 avaxReserve) = getArenaAvaxReserve();
        response = new Response[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            TokenData memory tokenData = data[i];
            address pairedTokenAddress = getPairedTokenAddress(tokenData.tokenId);
            uint256 supply = IERC20(tokenData.tokenAddress).totalSupply();
            response[i].tokenId = tokenData.tokenId;
            response[i].tokenAddress = tokenData.tokenAddress;
            response[i].supply = supply;
            response[i].marketCapUsdDenominator = 10 ** 24;
            if (supply == 0) {
                continue;
            }

            if (tokenData.isLp) {
                uint256 tokenReserve;
                uint256 pairedTokenReserve;
                IUniswapV2Pair lp = IUniswapV2Pair(tokenData.lpAddress);
                {
                (uint112 reserve0, uint112 reserve1,) = lp.getReserves();
                (tokenReserve, pairedTokenReserve) = tokenData.tokenAddress < pairedTokenAddress ? (reserve0, reserve1) : (reserve1, reserve0);
                }
                uint256 precision = 10 ** 18;
                uint256 priceInAvax;
                uint256 priceInArena;
                uint256 marketCap;
                if (pairedTokenAddress == wavax) {
                    priceInAvax = (pairedTokenReserve * precision) / tokenReserve;
                    priceInArena = priceInAvax * arenaReserve / avaxReserve;
                } else {
                    priceInArena = (pairedTokenReserve * precision) / tokenReserve;
                    priceInAvax = priceInArena * avaxReserve / arenaReserve;
                }
                marketCap = priceInAvax * supply / precision;
                response[i].avaxReserve = avaxReserve;
                response[i].tokenReserve = tokenReserve;
                response[i].marketCap = marketCap;
                response[i].marketCapUsd = marketCap * avaxUsdPrice; // divide by 10**24
                response[i].liquidity = avaxReserve;
                response[i].price = priceInAvax;
            } else {
                ITokenManager tokenManager = getTokenManager(pairedTokenAddress);
                uint256 price = tokenManager.calculateCost(1, tokenData.tokenId);
                if(pairedTokenAddress == ArenaToken) {
                    price = price * avaxReserve / arenaReserve; // convert to avax
                }
                uint256 liquidity = tokenManager.tokenBalanceOf(tokenData.tokenId);
                uint256 marketCap = supply * price / 10 ** 18;
                response[i].marketCap = supply * price / 10 ** 18;
                response[i].marketCapUsd = marketCap * avaxUsdPrice;
                response[i].liquidity = liquidity;
                response[i].price = price;
            }
        }
    }

    function getLpAddressFromLFJ(address tokenAddress) internal view returns (address) {
        return IUniswapV2Factory(0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10).getPair(tokenAddress, wavax);
    }

    function getLpAddressFromArena(address token1, address token2) internal view returns (address) {
        return IUniswapV2Factory(arenaFactory).getPair(token1, token2);
    }
}
