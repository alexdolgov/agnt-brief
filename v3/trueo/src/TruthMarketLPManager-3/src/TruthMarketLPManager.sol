// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/IUniswapV3Staker.sol";
import "./interfaces/ITruthMarket.sol";
import "./libraries/Roles.sol";

contract TruthMarketLPManager is 
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    IERC721Receiver 
{
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

    struct TickRange {
        int24 minTick;
        int24 maxTick;
    }

    int24 private constant _MIN_TICK = -887272;
    int24 private constant _MAX_TICK = 887272;
    uint160 private constant _MIN_SQRT_RATIO = 4295128739;
    uint160 private constant _MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;
    
    uint24 private constant _FEE_LOWEST = 100;
    uint24 private constant _FEE_LOW = 500;
    uint24 private constant _FEE_MEDIUM = 3000;
    uint24 private constant _FEE_HIGH = 10000;

    int24 private constant _TICK_SPACING_LOW = 10;
    int24 private constant _TICK_SPACING_MEDIUM = 60;
    int24 private constant _TICK_SPACING_HIGH = 200;

    INonfungiblePositionManager public nonfungiblePositionManager;
    IUniswapV3Staker public uniswapV3Staker;

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

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the contract with default settings and roles
    /// @dev Sets up UUPS and default admin/pauser roles
    function initialize(
        address _nonfungiblePositionManager,
        address _uniswapV3Staker
    ) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();

        nonfungiblePositionManager = INonfungiblePositionManager(_nonfungiblePositionManager);
        uniswapV3Staker = IUniswapV3Staker(_uniswapV3Staker);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(Roles.OPERATOR_ROLE, msg.sender);
    }

    // External functions //////////////////////////////////////////////

    function mintAndProvideLiquidity(address truthMarket, uint256 paymentTokenAmount) external
        onlyRole(Roles.OPERATOR_ROLE) {
        this.mintAndProvideLiquidityWithPrice(truthMarket, paymentTokenAmount, 50, 0);
    }

    /// @notice Mints YES/NO tokens and provides liquidity with custom initial prices
    /// @param truthMarket The address of the truth market contract
    /// @param paymentTokenAmount The amount of payment tokens to use for full range liquidity
    /// @param yesInitialPrice The initial price for YES token in terms of payment token (1 to 99)
    /// @param singleSidedLiquidityAmount The amount of single sided liquidity to use (total payment token amount = paymentTokenAmount * 2 + singleSidedLiquidityAmount)
    function mintAndProvideLiquidityWithPrice(
        address truthMarket,
        uint256 paymentTokenAmount,
        uint256 yesInitialPrice,
        uint256 singleSidedLiquidityAmount
    ) external onlyRole(Roles.OPERATOR_ROLE) {
        require(yesInitialPrice > 0 && yesInitialPrice < 100, "Invalid ratio");
        
        ITruthMarket market = ITruthMarket(truthMarket);
        IERC20 paymentToken = IERC20(market.paymentToken());
        uint256 noInitialPrice = 100 - yesInitialPrice;

        // Calculate total mint amount
        uint256 totalMintAmount = paymentTokenAmount + singleSidedLiquidityAmount;

        // Mint YES/NO tokens
        paymentToken.approve(truthMarket, totalMintAmount);
        market.mint(totalMintAmount);

        (address yesPool, address noPool) = market.getPoolAddresses();

        // Calculate amounts based on ratio for full range
        uint256 yesPoolPaymentAmount = (paymentTokenAmount * yesInitialPrice) / 100;
        uint256 noPoolPaymentAmount = paymentTokenAmount - yesPoolPaymentAmount;

        // Calculate token amounts
        uint256 paymentTokenDecimals = IERC20Metadata(address(paymentToken)).decimals();
        uint256 yesTokenDecimals = IERC20Metadata(address(market.yesToken())).decimals();
        uint256 noTokenDecimals = IERC20Metadata(address(market.noToken())).decimals();

        // Calculate full range token amounts
        uint256 yesTokenAmount = (paymentTokenAmount * (10 ** yesTokenDecimals)) / (10 ** paymentTokenDecimals);
        uint256 noTokenAmount = (paymentTokenAmount * (10 ** noTokenDecimals)) / (10 ** paymentTokenDecimals);

        // Calculate single sided liquidity token amounts
        uint256 singleSidedYesTokenAmount = (singleSidedLiquidityAmount * (10 ** yesTokenDecimals)) / (10 ** paymentTokenDecimals);
        uint256 singleSidedNoTokenAmount = (singleSidedLiquidityAmount * (10 ** noTokenDecimals)) / (10 ** paymentTokenDecimals);

        // Approve tokens
        IERC20(market.yesToken()).approve(address(nonfungiblePositionManager), yesTokenAmount + singleSidedYesTokenAmount);
        IERC20(market.noToken()).approve(address(nonfungiblePositionManager), noTokenAmount + singleSidedNoTokenAmount);
        paymentToken.approve(address(nonfungiblePositionManager), paymentTokenAmount);

        // Add full range liquidity to YES pool
        _addLiquidity(
            address(market.yesToken()),
            address(paymentToken),
            yesTokenAmount,
            yesPoolPaymentAmount,
            IUniswapV3Pool(yesPool).tickSpacing(),
            yesPool,
            truthMarket,
            yesInitialPrice
        );

        // Add full range liquidity to NO pool
        _addLiquidity(
            address(market.noToken()),
            address(paymentToken),
            noTokenAmount,
            noPoolPaymentAmount,
            IUniswapV3Pool(noPool).tickSpacing(),
            noPool,
            truthMarket,
            noInitialPrice
        );

        // Add single sided liquidity if amount > 0
        if (singleSidedLiquidityAmount > 0) {
            _addSingleSidedLiquidity(
                address(market.yesToken()),
                address(paymentToken),
                singleSidedYesTokenAmount,
                IUniswapV3Pool(yesPool).tickSpacing(),
                yesPool,
                truthMarket
            );

            _addSingleSidedLiquidity(
                address(market.noToken()),
                address(paymentToken),
                singleSidedNoTokenAmount,
                IUniswapV3Pool(noPool).tickSpacing(),
                noPool,
                truthMarket
            );
        }

        emit MarketLiquidityProvided(truthMarket);
    }

    /// @notice Remove all liquidity for a specific market
    /// @param market The market address
    function removeMarketLiquidity(address market) external onlyRole(Roles.OPERATOR_ROLE) {
        uint256[] storage tokenIds = marketTokenIds[market];

        ITruthMarket truthMarket = ITruthMarket(market);

        uint256 length = tokenIds.length; // Cache length for efficiency
        for (uint256 i = length; i > 0; i--) {
            uint256 index = i - 1;
            uint256 tokenId = tokenIds[index];
            
            // Check if deposit exists and has liquidity before attempting removal
            // removeLiquidity itself handles the transfer and deletion
            if (deposits[tokenId].liquidity > 0) {
                removeLiquidity(tokenId);
            }
            // Note: Don't remove from tokenIds array inside the loop. Delete the whole array after.
        }
        // Delete the entire array after the loop
        delete marketTokenIds[market];
        
        // Try to redeem tokens if market is finalized using current balance
        MarketStatus status = truthMarket.getCurrentStatus();
        
        if (status == MarketStatus.Finalized) {
            uint256 winningPosition = truthMarket.winningPosition();
            address yesToken = truthMarket.yesToken();
            address noToken = truthMarket.noToken();

            if (winningPosition == 1) { // YES won
                uint256 yesBalance = IERC20(yesToken).balanceOf(address(this));
                if (yesBalance > 0) {
                    IERC20(yesToken).approve(market, yesBalance);
                    truthMarket.redeem(yesBalance);
                }
            } else if (winningPosition == 2) { // NO won
                uint256 noBalance = IERC20(noToken).balanceOf(address(this));
                 if (noBalance > 0) {
                    IERC20(noToken).approve(market, noBalance);
                    truthMarket.redeem(noBalance);
                 }
            } else if (winningPosition == 3) { // CANCELED
                uint256 yesBalance = IERC20(yesToken).balanceOf(address(this));
                uint256 noBalance = IERC20(noToken).balanceOf(address(this));
                 if (yesBalance > 0) {
                    IERC20(yesToken).approve(market, yesBalance);
                 }
                 if (noBalance > 0) {
                    IERC20(noToken).approve(market, noBalance);
                 }
                 // Assuming withdrawFromCanceledMarket correctly uses approved amounts
                 // or internal balances of the market contract after approval
                truthMarket.withdrawFromCanceledMarket();
            }
        }
        
        // Emit event, amounts are now 0 as we don't track them during removal
        emit MarketLiquidityRemoved(market, 0, 0);
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

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function _addLiquidity(
        address baseToken,
        address quoteToken,
        uint256 baseAmount,
        uint256 quoteAmount,
        int24 tickSpacing,
        address pool,
        address market,
        uint256 initialPrice
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

        // Initialize pool if needed
        (uint160 sqrtPriceX96,,,,,,) = IUniswapV3Pool(pool).slot0();
        if (sqrtPriceX96 == 0) {
            uint8 decimal0 = IERC20Metadata(token0).decimals();  // USDC: 6, YES/NO: 18
            uint8 decimal1 = IERC20Metadata(token1).decimals();

            uint256 price0;
            uint256 price1;

            if (isToken0PaymentToken) {
                // token0 - USDC (6 decimals)
                price0 = initialPrice * (10 ** decimal0) / 100;  // (70 * 10^6) / 100
                price1 = 1 * (10 ** decimal1);                   // 1 * 10^18
            } else {
                // token0 - YES/NO token (18 decimals)
                price0 = 1 * (10 ** decimal0);                   // 1 * 10^18
                price1 = initialPrice * (10 ** decimal1) / 100;  // (70 * 10^6) / 100
            }

            uint160 initPrice = _encodePriceSqrt(price1, price0);
            IUniswapV3Pool(pool).initialize(initPrice);
        }

        // Add full range liquidity
        _mintPosition(
            token0, token1,
            amount0, amount1,
            _MIN_TICK, _MAX_TICK,
            tickSpacing,
            market,
            0, 0
        );
    }

    function _addSingleSidedLiquidity(
        address baseToken,
        address quoteToken,
        uint256 baseAmount,
        int24 tickSpacing,
        address pool,
        address market
    ) internal {
        if (baseAmount == 0) {
            return;
        }

        address token0;
        address token1;
        bool isToken0PaymentToken;

        if (baseToken < quoteToken) {
            (token0, token1) = (baseToken, quoteToken);
            isToken0PaymentToken = false;
        } else {
            (token0, token1) = (quoteToken, baseToken);
            isToken0PaymentToken = true;
        }

        TickRange memory range = _calculateTickRange(
            isToken0PaymentToken ? token1 : token0,    // baseToken (YES/NO token)
            isToken0PaymentToken ? token0 : token1,    // paymentToken
            _FEE_MEDIUM, // Use internal constant
            0,
            1
        );

        // Add concentrated liquidity
        (, int24 currentTick,,,,,) = IUniswapV3Pool(pool).slot0();
        int24 tickLower;
        int24 tickUpper;
        if (isToken0PaymentToken) {
            tickLower = range.minTick;
            tickUpper = _nearestUsableTick(currentTick - tickSpacing, tickSpacing);
            _mintPosition(
                token0, token1,
                0, baseAmount,
                tickLower, tickUpper,
                tickSpacing,
                market,
                0, 
                // Apply a 0.5% slippage tolerance to protect against price movements during transaction
                // 995/1000 = 99.5% of the base amount as minimum acceptable amount
                (baseAmount * 995) / 1000
            );
        } else {
            tickLower = _nearestUsableTick(currentTick + tickSpacing, tickSpacing);
            tickUpper = range.maxTick;
            _mintPosition(
                token0, token1,
                baseAmount, 0,
                tickLower, tickUpper,
                tickSpacing,
                market,
                // Apply a 0.5% slippage tolerance to protect against price movements during transaction
                // 995/1000 = 99.5% of the base amount as minimum acceptable amount
                (baseAmount * 995) / 1000, 0
            );
        }
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

    // Helper function to mint a position
    function _mintPosition(
        address token0,
        address token1,
        uint256 amount0,
        uint256 amount1,
        int24 tickLower,
        int24 tickUpper,
        int24 tickSpacing,
        address market,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal {
        // Ensure ticks are on spacing boundaries
        tickLower = (tickLower / tickSpacing) * tickSpacing;
        tickUpper = (tickUpper / tickSpacing) * tickSpacing;

        INonfungiblePositionManager.MintParams memory params = INonfungiblePositionManager.MintParams({
            token0: token0,
            token1: token1,
            fee: 3000,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Desired: amount0,
            amount1Desired: amount1,
            amount0Min: amount0Min,
            amount1Min: amount1Min,
            recipient: address(this),
            deadline: block.timestamp
        });

        (uint256 tokenId, uint128 liquidity,,) = nonfungiblePositionManager.mint(params);
        
        deposits[tokenId] = Deposit({
            owner: address(this),
            liquidity: liquidity,
            token0: token0,
            token1: token1
        });
        
        marketTokenIds[market].push(tokenId);
        tokenIdMarket[tokenId] = market;
    }

    /// @notice Calculates the tick range based on price limits
    function _calculateTickRange(
        address baseToken,
        address quoteToken,
        uint24 fee,
        uint256 min,
        uint256 max
    ) internal view returns (TickRange memory range) {
        bool tokenInverse = !_sortsBefore(baseToken, quoteToken);
        int24 tickSpacing = _getTickSpacing(fee);

        int24 tick0;
        if (min == 0) {
            tick0 = _nearestUsableTick(
                tokenInverse ? _MAX_TICK : _MIN_TICK,
                tickSpacing
            );
        } else {
            tick0 = _tickHelper_priceToTick(baseToken, quoteToken, min, tickSpacing);
        }

        int24 tick1 = _tickHelper_priceToTick(baseToken, quoteToken, max, tickSpacing);

        if (tick0 < tick1) {
            range.minTick = tick0;
            range.maxTick = tick1;
        } else {
            range.minTick = tick1;
            range.maxTick = tick0;
        }
    }

    /// @notice Determines if tokenA sorts before tokenB
    function _sortsBefore(address tokenA, address tokenB) internal pure returns (bool) {
        return tokenA < tokenB;
    }

    /// @notice Gets the nearest tick that can be used based on tick spacing
    function _nearestUsableTick(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        int24 rounded = int24(_round(tick, tickSpacing));
        if (rounded < _MIN_TICK) return _MIN_TICK; // Use internal constant
        if (rounded > _MAX_TICK) return _MAX_TICK; // Use internal constant
        return rounded;
    }

    /// @notice Converts a price to its corresponding tick
    function _tickHelper_priceToTick(
        address baseToken,
        address quoteToken,
        uint256 price,
        int24 tickSpacing
    ) internal view returns (int24) {
        require(price > 0, "Invalid price");
        
        bool tokenInverse = !_sortsBefore(baseToken, quoteToken);
        
        // Get token decimals to properly scale price calculations
        uint8 baseDecimals = IERC20Metadata(baseToken).decimals();
        uint8 quoteDecimals = IERC20Metadata(quoteToken).decimals();
        
        uint256 numerator;
        uint256 denominator;
        
        // Handle token ordering for correct price ratio calculation
        // Adjust for decimal differences between tokens (e.g., USDC with 6 decimals vs token with 18 decimals)
        if (tokenInverse) {
            // For inverse token ordering, price is in terms of quote token per base token
            numerator = price * (10 ** baseDecimals);
            denominator = 1 * (10 ** quoteDecimals);
        } else {
            // For regular token ordering, price is in terms of base token per quote token
            numerator = 1 * (10 ** quoteDecimals);
            denominator = price * (10 ** baseDecimals);
        }
        
        // Convert price ratio to Uniswap's sqrtPriceX96 format (square root of price * 2^96)
        uint160 sqrtRatioX96 = uint160(_sqrt((numerator << 192) / denominator));
        
        // Handle edge cases for extreme price values
        if (sqrtRatioX96 >= _MAX_SQRT_RATIO) {
            return _MAX_TICK;
        } else if (sqrtRatioX96 <= _MIN_SQRT_RATIO) {
            return _MIN_TICK;
        }
        
        // Convert sqrtPriceX96 to a tick value and ensure it aligns with allowed tick spacing
        int24 tick = _getTickAtSqrtRatio(sqrtRatioX96);
        return _nearestUsableTick(tick, tickSpacing);
    }

    /// @notice Gets the tick spacing for a given fee amount
    function _getTickSpacing(uint24 fee) internal pure returns (int24) {
        if (fee == _FEE_LOW) return _TICK_SPACING_LOW; // Use internal constant
        if (fee == _FEE_MEDIUM) return _TICK_SPACING_MEDIUM; // Use internal constant
        if (fee == _FEE_HIGH) return _TICK_SPACING_HIGH; // Use internal constant
        revert("Invalid fee");
    }

    /// @notice Rounds a number to the nearest multiple of target
    function _round(int24 n, int24 target) internal pure returns (int24) {
        int24 remainder = n % target;
        if (remainder >= target / 2) {
            return n + target - remainder;
        } else if (remainder < -(target / 2)) {
            return n - target - remainder;
        }
        return n - remainder;
    }

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the calculation
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the ratio of the two assets (token1/token0) at the given tick
    function _getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        int24 absTick = tick < 0 ? -tick : tick;
        require(absTick <= _MAX_TICK, 'T'); // Use internal constant

        uint256 ratio = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000;
        // ... (rest of the bit manipulation logic remains the same) ...
        if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
        if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
        if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
        if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
        if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
        if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
        if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
        if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
        if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
        if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
        if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
        if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
        if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
        if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
        if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
        if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
        if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
        if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
        if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;

        if (tick > 0) ratio = type(uint256).max / ratio;

        sqrtPriceX96 = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1));
    }

    /// @notice Calculates the greatest tick value such that getRatioAtTick(tick) <= ratio
    /// @dev Throws in case price < MIN_SQRT_RATIO or price >= MAX_SQRT_RATIO
    /// @param sqrtPriceX96 The sqrt ratio for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the ratio is less than or equal to the input ratio
    function _getTickAtSqrtRatio(uint160 sqrtPriceX96) internal pure returns (int24 tick) {
        require(sqrtPriceX96 >= _MIN_SQRT_RATIO && sqrtPriceX96 < _MAX_SQRT_RATIO, 'R'); // Use internal constants
        uint256 ratio = uint256(sqrtPriceX96) << 32;

        // ... (rest of the assembly logic remains the same) ...
        uint256 r = ratio;
        uint256 msb = 0;
        // --- Find the most significant bit ---
        assembly { let f := shl(7, gt(r, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := shl(6, gt(r, 0xFFFFFFFFFFFFFFFF)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := shl(5, gt(r, 0xFFFFFFFF)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := shl(4, gt(r, 0xFFFF)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := shl(3, gt(r, 0xFF)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := shl(2, gt(r, 0xF)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := shl(1, gt(r, 0x3)) msb := or(msb, f) r := shr(f, r) }
        assembly { let f := gt(r, 0x1) msb := or(msb, f) }
        // --- Calculate the log base 2 ---
        if (msb >= 128) r = ratio >> (msb - 127);
        else r = ratio << (127 - msb);
        int256 log_2 = (int256(msb) - 128) << 64;
        // --- Iteratively approximate log base sqrt(1.0001) ---
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(63, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(62, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(61, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(60, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(59, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(58, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(57, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(56, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(55, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(54, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(53, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(52, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(51, f)) r := shr(f, r) }
        assembly { r := shr(127, mul(r, r)) let f := shr(128, r) log_2 := or(log_2, shl(50, f)) }
        // --- Compute the final tick value ---
        int256 log_sqrt10001 = log_2 * 255738958999603826347141; // Magic number for log base conversion
        int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128);
        int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128);

        tick = tickLow == tickHi ? tickLow : _getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow; // Use internal function
    }
}
