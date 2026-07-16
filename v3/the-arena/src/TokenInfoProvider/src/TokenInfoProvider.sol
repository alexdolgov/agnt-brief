// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint8);
}

interface IUniswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function token0() external view returns (address);
    function token1() external view returns (address);
}

interface IUniswapV2Router {
    function factory() external pure returns (address);
    function WAVAX() external pure returns (address);
}

interface IUniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address);
}

contract TokenInfoProvider {
    address public owner;

    struct TokenInfo {
        address tokenAddress;
        address lpAddress;
    }

    struct TokenBalance {
        address tokenAddress;
        uint256 balance;
        uint256 balanceInAvax;
        uint256 balanceInUsd;
    }

    struct PriceInfo {
        address tokenAddress;
        uint256 priceInAvax;
        uint256 priceInUsd;
        uint256 amount;
    }

    TokenInfo[] public tokenList;
    address public immutable avaxArenaLp;
    address public immutable wavax; // Dummy WAVAX address
    address public constant arena_token = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    address public constant usdc = 0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E;
    address public immutable wavaxUsdcLp;
    address public constant uniswapRouter = 0xF56D524D651B90E4B84dc2FffD83079698b9066E;
    address public constant uniswapFactory = 0xF16784dcAf838a3e16bEF7711a62D12413c39BD1;
    uint256 public constant priceInAvaxDenominator = 1e18;
    uint256 public constant priceInUsdcDenominator = 1e6;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
        wavax = IUniswapV2Router(uniswapRouter).WAVAX();
        wavaxUsdcLp = getLpAddressFromLFJ(usdc);
        avaxArenaLp = getLpAddress(arena_token);

    }

    function addToken(address _tokenAddress) external onlyOwner {
        address lpAddress = getLpAddress(_tokenAddress);
        require(lpAddress != address(0), "LP address not found");

        tokenList.push(TokenInfo({tokenAddress: _tokenAddress, lpAddress: lpAddress}));
    }

    function updateTokenList(TokenInfo[] calldata _tokens) external onlyOwner {
        delete tokenList;
        for (uint256 i = 0; i < _tokens.length; i++) {
            address lpAddress = getLpAddress(_tokens[i].tokenAddress);
            require(lpAddress != address(0), "LP address not found");

            tokenList.push(TokenInfo({tokenAddress: _tokens[i].tokenAddress, lpAddress: lpAddress}));
        }
    }

    function getAvaxUsdPrice() public view returns (uint256) {
        IUniswapV2Pair pair = IUniswapV2Pair(wavaxUsdcLp);
        (uint112 reserve0, uint112 reserve1,) = pair.getReserves();

        if (pair.token0() == wavax) {
            return (uint256(reserve1) * 10 ** 18) / uint256(reserve0);
        } else {
            return (uint256(reserve0) * 10 ** 18) / uint256(reserve1);
        }
    }

    function getLpAddress(address tokenAddress) internal view returns (address) {
        address lpAddress = IUniswapV2Factory(uniswapFactory).getPair(tokenAddress, wavax);
        // try getting the lp address for arena paired token
        if(lpAddress == address(0)) {
            lpAddress = IUniswapV2Factory(uniswapFactory).getPair(tokenAddress, arena_token);
        }
        return lpAddress;
    }

    function getLpAddressFromLFJ(address tokenAddress) internal view returns (address) {
        return IUniswapV2Factory(0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10).getPair(tokenAddress, wavax);
    }

    function getTokenPricesWithAmount(address[] calldata tokenAddresses, uint256 amount)
        public
        view
        returns (PriceInfo[] memory)
    {
        uint256 len = tokenAddresses.length;
        PriceInfo[] memory prices = new PriceInfo[](len);
        uint256 avaxUsdPrice = getAvaxUsdPrice();

        for (uint256 i = 0; i < len; i++) {
            address tokenAddress = tokenAddresses[i];
            address lpAddress = getLpAddress(tokenAddress);
            if (lpAddress == address(0)) {
                lpAddress = getLpAddressFromLFJ(tokenAddress);
            }
            if (lpAddress == address(0)) {
                prices[i] = PriceInfo({tokenAddress: tokenAddress, priceInAvax: 0, priceInUsd: 0, amount: amount});
                continue;
            }
            IUniswapV2Pair lp = IUniswapV2Pair(lpAddress);
            (uint112 reserve0, uint112 reserve1,) = lp.getReserves();
            if (reserve0 == 0 || reserve1 == 0) {
                prices[i] = PriceInfo({tokenAddress: tokenAddress, priceInAvax: 0, priceInUsd: 0, amount: amount});
                continue;
            }
            uint256 tokenToAvax;
            bool arenaPaired = false;

            if (lp.token0() == tokenAddress) {
                tokenToAvax = (uint256(reserve1) * amount) / uint256(reserve0);
                if(lp.token1() == arena_token) {
                    arenaPaired = true;
                }
            } else {
                tokenToAvax = (uint256(reserve0) * amount) / uint256(reserve1);
                if(lp.token0() == arena_token) {
                    arenaPaired = true;
                }
            }

            uint256 tokenToUsd;

            if(arenaPaired) {
                (uint256 arenaReserve, uint256 avaxReserve) = getArenaAvaxReserve();
                tokenToUsd = (tokenToAvax * avaxUsdPrice) / 10 ** 18 * avaxReserve / arenaReserve;
            }
            else {
                tokenToUsd = (tokenToAvax * avaxUsdPrice) / 10 ** 18;
            }



            prices[i] = PriceInfo({
                tokenAddress: tokenAddress,
                priceInAvax: tokenToAvax,
                priceInUsd: tokenToUsd,
                amount: amount
            });
        }
        return prices;
    }

    function getTokenPrices(address[] calldata tokenAddresses) public view returns (PriceInfo[] memory) {
        return getTokenPricesWithAmount(tokenAddresses, 1 ether);
    }

    function getBalancesWithTokenList(address user, address[] calldata tokenAddresses)
        external
        view
        returns (TokenBalance[] memory)
    {
        uint256 len = tokenAddresses.length;
        TokenBalance[] memory balances = new TokenBalance[](len);

        uint256 avaxUsdPrice = getAvaxUsdPrice();

        for (uint256 i = 0; i < len; i++) {
            address tokenAddress = tokenAddresses[i];
            address lpAddress = getLpAddress(tokenAddress);
            require(lpAddress != address(0), "LP address not found");

            IERC20 token = IERC20(tokenAddress);
            IUniswapV2Pair lp = IUniswapV2Pair(lpAddress);

            uint256 tokenBalance = token.balanceOf(user);

            (uint112 reserve0, uint112 reserve1,) = lp.getReserves();
            uint256 tokenToAvax;

            if (lp.token0() == tokenAddress) {
                tokenToAvax = (uint256(reserve1) * tokenBalance) / uint256(reserve0);
            } else {
                tokenToAvax = (uint256(reserve0) * tokenBalance) / uint256(reserve1);
            }

            uint256 tokenToUsd = (tokenToAvax * avaxUsdPrice) / 10 ** 18;

            balances[i] = TokenBalance({
                tokenAddress: tokenAddress,
                balance: tokenBalance,
                balanceInAvax: tokenToAvax,
                balanceInUsd: tokenToUsd
            });
        }

        return balances;
    }

    function getBalances(address user) external view returns (TokenBalance[] memory) {
        uint256 len = tokenList.length;
        TokenBalance[] memory balances = new TokenBalance[](len);

        uint256 avaxUsdPrice = getAvaxUsdPrice();

        for (uint256 i = 0; i < len; i++) {
            TokenInfo memory tokenInfo = tokenList[i];
            IERC20 token = IERC20(tokenInfo.tokenAddress);
            IUniswapV2Pair lp = IUniswapV2Pair(tokenInfo.lpAddress);

            uint256 tokenBalance = token.balanceOf(user);

            (uint112 reserve0, uint112 reserve1,) = lp.getReserves();
            uint256 tokenToAvax;

            if (lp.token0() == tokenInfo.tokenAddress) {
                tokenToAvax = (uint256(reserve1) * tokenBalance) / uint256(reserve0);
            } else {
                tokenToAvax = (uint256(reserve0) * tokenBalance) / uint256(reserve1);
            }

            uint256 tokenToUsd = (tokenToAvax * avaxUsdPrice) / 10 ** 18;

            balances[i] = TokenBalance({
                tokenAddress: tokenInfo.tokenAddress,
                balance: tokenBalance,
                balanceInAvax: tokenToAvax,
                balanceInUsd: tokenToUsd
            });
        }

        return balances;
    }

    function getArenaAvaxReserve() public view returns (uint256 arenaReserve, uint256 avaxReserve) {
        IUniswapV2Pair pair = IUniswapV2Pair(avaxArenaLp);
        (uint112 r0, uint112 r1,) = pair.getReserves();
        address token0 = pair.token0();
        (arenaReserve, avaxReserve) = token0 == wavax ? (r1, r0) : (r0, r1);
    }
}
