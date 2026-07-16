// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/IUniswapV3Staker.sol";
import "./interfaces/ITruthMarket.sol";
import "./libraries/Roles.sol";

contract TruthMarketLPManager is AccessControl, IERC721Receiver {
    using SafeERC20 for IERC20;

    // State ////////////////////////////////////////////////////////

    struct Deposit {
        address owner;
        uint128 liquidity;
        address token0;
        address token1;
    }

    struct IncentiveInfo {
        address pool;
        address rewardToken;
        uint256 reward;
        uint256 startTime;
        uint256 endTime;
    }

    INonfungiblePositionManager public immutable nonfungiblePositionManager;

    IUniswapV3Staker public immutable uniswapV3Staker;

    mapping(uint256 => Deposit) public deposits;

    // incentiveId => IncentiveInfo
    mapping(bytes32 => IncentiveInfo) public incentives;
    // pool => incentiveIds[]
    mapping(address => bytes32[]) public poolIncentives;
    // market => tokenIds[]
    mapping(address => uint256[]) public marketTokenIds;
    // tokenId => market
    mapping(uint256 => address) public tokenIdMarket;

    // Events ////////////////////////////////////////////////////////

    event IncentiveCreated(
        bytes32 indexed incentiveId,
        address indexed pool,
        address indexed rewardToken,
        uint256 reward,
        uint256 startTime,
        uint256 endTime
    );

    event IncentiveEnded(
        bytes32 indexed incentiveId,
        address indexed pool,
        address indexed rewardToken,
        uint256 startTime,
        uint256 endTime
    );

    event MarketLiquidityProvided(address market);

    event LiquidityRemoved(
        address indexed market,
        uint256 indexed tokenId,
        uint256 amount0,
        uint256 amount1
    );

    event MarketLiquidityRemoved(
        address indexed market,
        uint256 totalAmount0,
        uint256 totalAmount1
    );

    // Constructor ////////////////////////////////////////////////////////

    constructor(address _nonfungiblePositionManager, address _uniswapV3Staker) {
        nonfungiblePositionManager = INonfungiblePositionManager(_nonfungiblePositionManager);
        uniswapV3Staker = IUniswapV3Staker(_uniswapV3Staker);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(Roles.OPERATOR_ROLE, msg.sender);
    }

    // External functions //////////////////////////////////////////////

    /// @notice Mints YES/NO tokens and provides liquidity to their respective pools
    /// @param truthMarket The address of the truth market contract
    /// @param paymentTokenAmount The amount of payment tokens to use
    function mintAndProvideLiquidity(address truthMarket, uint256 paymentTokenAmount) external
        onlyRole(Roles.OPERATOR_ROLE) {
        ITruthMarket market = ITruthMarket(truthMarket);
        IERC20 paymentToken = IERC20(market.paymentToken());

        paymentToken.approve(truthMarket, paymentTokenAmount);
        market.mint(paymentTokenAmount);

        (address yesPool, address noPool) = market.getPoolAddresses();

        uint256 paymentTokenDecimals = IERC20Metadata(address(paymentToken)).decimals();
        uint256 yesTokenDecimals = IERC20Metadata(address(market.yesToken())).decimals();
        uint256 noTokenDecimals = IERC20Metadata(address(market.noToken())).decimals();

        uint256 yesTokenAmount = (paymentTokenAmount * (10 ** yesTokenDecimals)) / (10 ** paymentTokenDecimals);
        uint256 noTokenAmount = (paymentTokenAmount * (10 ** noTokenDecimals)) / (10 ** paymentTokenDecimals);

        IERC20(market.yesToken()).approve(address(nonfungiblePositionManager), yesTokenAmount);
        IERC20(market.noToken()).approve(address(nonfungiblePositionManager), noTokenAmount);
        paymentToken.approve(address(nonfungiblePositionManager), paymentTokenAmount);

        _addLiquidity(
            address(market.yesToken()),
            address(paymentToken),
            yesTokenAmount,
            paymentTokenAmount / 2,
            IUniswapV3Pool(yesPool).tickSpacing(),
            yesPool,
            truthMarket
        );

        _addLiquidity(
            address(market.noToken()),
            address(paymentToken),
            noTokenAmount,
            paymentTokenAmount / 2,
            IUniswapV3Pool(noPool).tickSpacing(),
            noPool,
            truthMarket
        );

        emit MarketLiquidityProvided(truthMarket);
    }

    /// @notice Remove all liquidity for a specific market
    /// @param market The market address
    function removeMarketLiquidity(address market) external onlyRole(Roles.OPERATOR_ROLE) {
        uint256[] storage tokenIds = marketTokenIds[market];
        uint256 totalAmount0;
        uint256 totalAmount1;
        
        for (uint256 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            if (deposits[tokenId].liquidity > 0) {
                (uint256 amount0, uint256 amount1) = removeLiquidity(tokenId);
                totalAmount0 += amount0;
                totalAmount1 += amount1;
            }
        }
        delete marketTokenIds[market];
        
        emit MarketLiquidityRemoved(market, totalAmount0, totalAmount1);
    }

    /// @notice Creates a new liquidity mining incentive
    /// @param pool The address of the Uniswap V3 pool
    /// @param rewardToken The token to be used as rewards
    /// @param reward The amount of reward tokens
    /// @param startTime The timestamp when the incentive starts
    /// @param endTime The timestamp when the incentive ends
    function createIncentive(address pool, address rewardToken, uint256 reward, uint256 startTime, uint256 endTime)
        external
        onlyRole(Roles.OPERATOR_ROLE)
    {
        IERC20(rewardToken).approve(address(uniswapV3Staker), reward);

        IUniswapV3Staker.IncentiveKey memory key = IUniswapV3Staker.IncentiveKey({
            rewardToken: IERC20Minimal(rewardToken),
            pool: IUniswapV3Pool(pool),
            startTime: startTime,
            endTime: endTime,
            refundee: address(this)
        });

        uniswapV3Staker.createIncentive(key, reward);

        bytes32 incentiveId = keccak256(abi.encode(key));
        incentives[incentiveId] = IncentiveInfo({
            pool: pool,
            rewardToken: rewardToken,
            reward: reward,
            startTime: startTime,
            endTime: endTime
        });
        poolIncentives[pool].push(incentiveId);

        emit IncentiveCreated(incentiveId, pool, rewardToken, reward, startTime, endTime);
    }

    /// @notice Ends an existing liquidity mining incentive
    /// @param pool The address of the Uniswap V3 pool
    /// @param rewardToken The reward token address
    /// @param startTime The start timestamp of the incentive
    /// @param endTime The end timestamp of the incentive
    function endIncentive(address pool, address rewardToken, uint256 startTime, uint256 endTime)
        external
        onlyRole(Roles.OPERATOR_ROLE)
    {
        IUniswapV3Staker.IncentiveKey memory key = IUniswapV3Staker.IncentiveKey({
            rewardToken: IERC20Minimal(rewardToken),
            pool: IUniswapV3Pool(pool),
            startTime: startTime,
            endTime: endTime,
            refundee: address(this)
        });

        uniswapV3Staker.endIncentive(key);

        bytes32 incentiveId = keccak256(abi.encode(key));
        emit IncentiveEnded(incentiveId, pool, rewardToken, startTime, endTime);
    }

    /// @notice Withdraws a specific amount of tokens to a recipient
    /// @param token The token address to withdraw
    /// @param amount The amount to withdraw
    /// @param to The recipient address
    function withdrawToken(address token, uint256 amount, address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(to != address(0), "Invalid recipient");
        IERC20(token).safeTransfer(to, amount);
    }

    /// @notice Withdraws all tokens of a specific type to a recipient
    /// @param token The token address to withdraw
    /// @param to The recipient address
    function withdrawAllToken(address token, address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(to != address(0), "Invalid recipient");
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance > 0) {
            IERC20(token).safeTransfer(to, balance);
        }
    }

    // External view functions ////////////////////////////////////////

    /// @notice Callback for ERC721 token transfers
    /// @dev Only accepts NFTs from the Uniswap V3 position manager
    /// @param /* operator */ The address which called safeTransferFrom
    /// @param /* from */ The address which previously owned the token
    /// @param /* tokenId */ The NFT identifier which is being transferred
    /// @param /* data */ Additional data with no specified format
    /// @return bytes4 The function selector
    function onERC721Received(
        address /* operator */,
        address /* from */,
        uint256 /* tokenId */,
        bytes calldata /* data */
    ) external override view returns (bytes4) {
        require(msg.sender == address(nonfungiblePositionManager), "Only accept NFTs from position manager");
        return this.onERC721Received.selector;
    }
 
    // Public functions ////////////////////////////////////////////////

    /// @notice A function that remove all liquidity.
    /// @param tokenId The id of the erc721 token
    /// @return amount0 The amount received back in token0
    /// @return amount1 The amount returned back in token1
    function removeLiquidity(uint256 tokenId) public onlyRole(Roles.OPERATOR_ROLE) returns (uint256 amount0, uint256 amount1) {
        // get liquidity data for tokenId
        uint128 liquidity = deposits[tokenId].liquidity;

        // amount0Min and amount1Min are price slippage checks
        // if the amount received after burning is not greater than these minimums, transaction will fail
        INonfungiblePositionManager.DecreaseLiquidityParams memory params =
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: liquidity,
                amount0Min: 0,
                amount1Min: 0,
                deadline: block.timestamp
            });

        nonfungiblePositionManager.decreaseLiquidity(params);

        (amount0, amount1) = nonfungiblePositionManager.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );

        //send liquidity back to owner
        _sendToOwner(tokenId, amount0, amount1);

        // Clean up market mappings
        address market = tokenIdMarket[tokenId];
        if (market != address(0)) {
            delete tokenIdMarket[tokenId];
            // Remove tokenId from marketTokenIds array
            uint256[] storage tokenIds = marketTokenIds[market];
            for (uint256 i = 0; i < tokenIds.length; i++) {
                if (tokenIds[i] == tokenId) {
                    tokenIds[i] = tokenIds[tokenIds.length - 1];
                    tokenIds.pop();
                    break;
                }
            }
            emit LiquidityRemoved(market, tokenId, amount0, amount1);
        }

        // Clean up deposits mapping
        delete deposits[tokenId];
    }

    // Internal functions //////////////////////////////////////////////

    function _addLiquidity(
        address baseToken,
        address quoteToken,
        uint256 baseAmount,
        uint256 quoteAmount,
        int24 tickSpacing,
        address pool,
        address market
    ) internal {
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        bool isToken0PaymentToken;

        if (baseToken < quoteToken) {
            (token0, token1) = (baseToken, quoteToken);
            (amount0, amount1) = (baseAmount, quoteAmount);
            isToken0PaymentToken = false;
        } else {
            (token0, token1) = (quoteToken, baseToken);
            (amount0, amount1) = (quoteAmount, baseAmount);
            isToken0PaymentToken = true;
        }

        (uint160 sqrtPriceX96,,,,,,) = IUniswapV3Pool(pool).slot0();
        if (sqrtPriceX96 == 0) {
            uint8 decimal0 = IERC20Metadata(token0).decimals();
            uint8 decimal1 = IERC20Metadata(token1).decimals();

            uint256 price0;
            uint256 price1;

            if (isToken0PaymentToken) {
                price0 = 5 * (10 ** decimal0);
                price1 = 10 * (10 ** decimal1);
            } else {
                price0 = 10 * (10 ** decimal0);
                price1 = 5 * (10 ** decimal1);
            }

            uint160 initPrice = _encodePriceSqrt(price1, price0);
            IUniswapV3Pool(pool).initialize(initPrice);
        }

        int24 minTick = -887272;
        int24 maxTick = 887272;

        int24 tickLower = (minTick / tickSpacing) * tickSpacing;
        int24 tickUpper = (maxTick / tickSpacing) * tickSpacing;

        INonfungiblePositionManager.MintParams memory params = INonfungiblePositionManager.MintParams({
            token0: token0,
            token1: token1,
            fee: 3000,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Desired: amount0,
            amount1Desired: amount1,
            amount0Min: 0,
            amount1Min: 0,
            recipient: address(this),
            deadline: block.timestamp
        });

        // Mint position and store market info
        (uint256 tokenId, uint128 liquidity,,) = nonfungiblePositionManager.mint(params);
        
        // Record position info
        deposits[tokenId] = Deposit({
            owner: address(this),
            liquidity: liquidity,
            token0: token0,
            token1: token1
        });
        
        // Record market info
        marketTokenIds[market].push(tokenId);
        tokenIdMarket[tokenId] = market;
    }
    
    function _createDeposit(address owner, uint256 tokenId, address market) internal {
        (, , address token0, address token1, , , , uint128 liquidity, , , , ) =
            nonfungiblePositionManager.positions(tokenId);

        deposits[tokenId] = Deposit({owner: owner, liquidity: liquidity, token0: token0, token1: token1});
        
        if (market != address(0)) {
            marketTokenIds[market].push(tokenId);
            tokenIdMarket[tokenId] = market;
        }
    }
    
    /// @notice Transfers funds to owner of NFT
    /// @param tokenId The id of the erc721
    /// @param amount0 The amount of token0
    /// @param amount1 The amount of token1
    function _sendToOwner(
        uint256 tokenId,
        uint256 amount0,
        uint256 amount1
    ) internal {
        // get owner of contract
        address owner = deposits[tokenId].owner;

        address token0 = deposits[tokenId].token0;
        address token1 = deposits[tokenId].token1;
        // send collected fees to owner
        IERC20(token0).safeTransfer(owner, amount0);
        IERC20(token1).safeTransfer(owner, amount1);
    }

    function _encodePriceSqrt(uint256 price1, uint256 price2) internal pure returns (uint160) {
        require(price1 > 0 && price2 > 0, "Invalid price");
        uint256 sqrtPrice = _sqrt((price1 << 192) / price2);
        return uint160(sqrtPrice);
    }

    function _sqrt(uint256 x) internal pure returns (uint256 y) {
        uint256 z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }
}
