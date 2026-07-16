// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "@uniswap/v4-core/src/types/PoolId.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {StateLibrary} from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import {LiquidityAmounts} from "@uniswap/v4-periphery/src/libraries/LiquidityAmounts.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {SqrtPriceMath} from "@uniswap/v4-core/src/libraries/SqrtPriceMath.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import "./interfaces/ITruthMarketV2.sol";
import "./interfaces/IOrderManager.sol";
import "./interfaces/IFeeCollector.sol";
import "./interfaces/ITokenConverter.sol";
import "./interfaces/ISwapValidator.sol";
import "./MarketEnums.sol";
import "./libraries/Roles.sol";

contract TruthMarketV2LPManager is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    IERC721Receiver
{
    using SafeERC20 for IERC20;
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;

    // State ////////////////////////////////////////////////////////

    struct Deposit {
        address owner;
        uint128 liquidity;
        address token0;
        address token1;
    }

    struct TickRange {
        int24 minTick;
        int24 maxTick;
    }

    IPoolManager public poolManager;
    IPositionManager public positionManager;
    IAllowanceTransfer public permit2;

    mapping(uint256 => Deposit) public deposits;

    // market => tokenIds[]
    mapping(address => uint256[]) public marketTokenIds;
    // tokenId => market
    mapping(uint256 => address) public tokenIdMarket;

    address public orderManager;

    // V1.1 - Fee collection integration
    address public feeCollector;

    // V1.1.2 - Token converter integration
    address public tokenConverter;

    // V1.1.3 - Swap validator integration
    address public swapValidator;

    // Full-range payment-token spend is capped at this percent of paymentTokenAmount, guarding
    // against unbounded TYD draw when the two pools are mispriced relative to each other (YES + NO
    // price far from $1). 110 = paymentTokenAmount + 10% tolerance.
    uint256 private constant FULL_RANGE_PAYMENT_CAP_PCT = 110;

    // Errors ////////////////////////////////////////////////////////

    error FullRangePaymentExceedsCap(uint256 required, uint256 cap);
    error InvalidMarket();
    error UnsupportedMarketVersion();
    error InvalidPaymentAmount();
    error InvalidPriceRatio();
    error InvalidSlippageTolerance();
    error InvalidLiquidityAmount();
    error InvalidRecipient();
    error ArrayLengthMismatch();
    error NoLiquidityPositions();
    error PoolNotInitialized();
    error InvalidTickRange();
    error TickOutOfBounds();
    error InvalidPrice();
    error OnlyPositionManager();

    // Events ////////////////////////////////////////////////////////

    event MarketLiquidityProvided(address indexed market);

    event LiquidityRemoved(address indexed market, uint256 indexed tokenId);

    event MarketLiquidityRemoved(address indexed market);

    event PositionCreated(address indexed market, uint256 indexed tokenId, uint128 liquidity);

    event PositionBurned(address indexed market, uint256 indexed tokenId);

    event OrderManagerUpdated(address indexed orderManager);

    event FeeCollectorUpdated(address indexed feeCollector);

    event TokenConverterUpdated(address indexed tokenConverter);

    // Constructor ////////////////////////////////////////////////////////

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the contract with V4 settings and roles
    /// @dev Sets up UUPS and default admin/operator roles
    function initialize(address _poolManager, address _positionManager, address _permit2) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        poolManager = IPoolManager(_poolManager);
        positionManager = IPositionManager(_positionManager);
        permit2 = IAllowanceTransfer(_permit2);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(Roles.OPERATOR_ROLE, msg.sender);
    }

    // Modifiers and validation ////////////////////////////////////////

    /// @notice Modifier to ensure only V2 markets are accepted
    modifier onlyV2Markets(address market) {
        if (market == address(0)) revert InvalidMarket();
        if (!_isV2Market(market)) revert UnsupportedMarketVersion();
        _;
    }

    /// @notice Check if a market is V2 (version 2.x.x)
    function _isV2Market(address market) internal view returns (bool) {
        try ITruthMarketV2(market).VERSION() returns (string memory version) {
            bytes memory versionBytes = bytes(version);

            // Check if version starts with "2." and has proper format
            // This ensures we reject versions like "20.x.x" or "2a.x.x"
            return versionBytes.length >= 3 && versionBytes[0] == bytes1("2") && versionBytes[1] == bytes1(".")
                && versionBytes[2] >= bytes1("0") && versionBytes[2] <= bytes1("9");
        } catch {
            // If VERSION() call fails, it's not a valid V2 market
            return false;
        }
    }

    // External functions //////////////////////////////////////////////

    /// @notice Ensure tokens are properly approved via Permit2 with exact amounts
    /// @param tokens Array of token addresses to approve
    /// @param amounts Array of exact amounts to approve for each token
    function ensurePermit2Approvals(address[] calldata tokens, uint256[] calldata amounts)
        external
        onlyRole(Roles.OPERATOR_ROLE)
        nonReentrant
    {
        if (tokens.length != amounts.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < tokens.length; i++) {
            _ensureExactPermit2Approval(tokens[i], amounts[i]);
        }
    }

    function mintAndProvideLiquidity(address truthMarket, uint256 paymentTokenAmount)
        external
        onlyRole(Roles.OPERATOR_ROLE)
        onlyV2Markets(truthMarket)
        nonReentrant
    {
        _mintAndProvideLiquidityWithPrice(truthMarket, paymentTokenAmount, 50, 0);
    }

    /// @notice Mints YES/NO tokens and provides liquidity with custom initial prices
    /// @param truthMarket The address of the truth market contract
    /// @param paymentTokenAmount The amount of payment tokens to use for full range liquidity
    /// @param yesInitialPrice The initial price for YES token in terms of payment token (1 to 99). Only
    /// used to initialize a pool that is not yet initialized; for an already-initialized pool the
    /// full-range liquidity is paired using the pool's current price instead.
    /// @param singleSidedLiquidityAmount The amount of single sided liquidity to use (total payment token amount = paymentTokenAmount * 2 + singleSidedLiquidityAmount)
    function mintAndProvideLiquidityWithPrice(
        address truthMarket,
        uint256 paymentTokenAmount,
        uint256 yesInitialPrice,
        uint256 singleSidedLiquidityAmount
    ) external onlyRole(Roles.OPERATOR_ROLE) onlyV2Markets(truthMarket) nonReentrant {
        _mintAndProvideLiquidityWithPrice(truthMarket, paymentTokenAmount, yesInitialPrice, singleSidedLiquidityAmount);
    }

    /// @dev Shared body for both provisioning entrypoints. Internal so the no-price overload can reuse
    /// it without an external `this.` self-call (which would flip msg.sender off OPERATOR_ROLE and
    /// re-enter the nonReentrant guard). Access control and reentrancy are enforced by the external
    /// callers; `onlyV2Markets` is likewise applied at the boundary.
    function _mintAndProvideLiquidityWithPrice(
        address truthMarket,
        uint256 paymentTokenAmount,
        uint256 yesInitialPrice,
        uint256 singleSidedLiquidityAmount
    ) internal {
        if (yesInitialPrice == 0 || yesInitialPrice >= 100) revert InvalidPriceRatio();
        if (paymentTokenAmount == 0) revert InvalidPaymentAmount();

        ITruthMarketV2 market = ITruthMarketV2(truthMarket);
        IERC20 paymentToken = IERC20(market.paymentToken());
        uint256 noInitialPrice = 100 - yesInitialPrice;

        // Calculate total mint amount
        uint256 totalMintAmount = paymentTokenAmount + singleSidedLiquidityAmount;

        // Mint YES/NO tokens
        paymentToken.approve(truthMarket, totalMintAmount);
        market.mint(totalMintAmount);

        // Get pool keys from V2 market
        (PoolKey memory yesPoolKey, PoolKey memory noPoolKey) = market.getPoolKeys();

        // Whitelist pools in OrderManager if configured
        if (orderManager != address(0)) {
            PoolId yesPoolId = yesPoolKey.toId();
            PoolId noPoolId = noPoolKey.toId();
            IOrderManager(orderManager).setPoolWhitelist(yesPoolId, true);
            IOrderManager(orderManager).setPoolWhitelist(noPoolId, true);
        }

        // Validate and determine token ordering for both pools
        address yesToken0 = Currency.unwrap(yesPoolKey.currency0);
        address yesToken1 = Currency.unwrap(yesPoolKey.currency1);
        address noToken0 = Currency.unwrap(noPoolKey.currency0);
        address noToken1 = Currency.unwrap(noPoolKey.currency1);
        address yesTokenAddress = address(market.yesToken());
        address noTokenAddress = address(market.noToken());

        // Validate YES pool contains expected tokens
        if (!((yesToken0 == address(paymentToken) && yesToken1 == yesTokenAddress)
                    || (yesToken0 == yesTokenAddress && yesToken1 == address(paymentToken)))) {
            revert InvalidMarket();
        }

        // Validate NO pool contains expected tokens
        if (!((noToken0 == address(paymentToken) && noToken1 == noTokenAddress)
                    || (noToken0 == noTokenAddress && noToken1 == address(paymentToken)))) {
            revert InvalidMarket();
        }

        bool isToken0PaymentTokenYes = (yesToken0 == address(paymentToken));
        bool isToken0PaymentTokenNo = (noToken0 == address(paymentToken));

        // Initialize pools if needed (matching V3 logic)
        _initializePoolIfNeeded(yesPoolKey, yesInitialPrice, isToken0PaymentTokenYes);
        _initializePoolIfNeeded(noPoolKey, noInitialPrice, isToken0PaymentTokenNo);

        // Set swap-validator price boundaries for both pools, independent of whether
        // single-sided liquidity is added. This is the [0, 1] price cap that keeps each
        // outcome token <= 1 payment token; it must apply to every pool, not only those
        // provisioned with single-sided liquidity.
        _setPoolBoundariesIfUnset(yesPoolKey, isToken0PaymentTokenYes);
        _setPoolBoundariesIfUnset(noPoolKey, isToken0PaymentTokenNo);

        // Calculate token amounts
        uint256 paymentTokenDecimals = IERC20Metadata(address(paymentToken)).decimals();
        uint256 yesTokenDecimals = IERC20Metadata(address(market.yesToken())).decimals();
        uint256 noTokenDecimals = IERC20Metadata(address(market.noToken())).decimals();

        // Calculate full range token amounts (the minted YES/NO are deposited in full)
        uint256 yesTokenAmount = (paymentTokenAmount * (10 ** yesTokenDecimals)) / (10 ** paymentTokenDecimals);
        uint256 noTokenAmount = (paymentTokenAmount * (10 ** noTokenDecimals)) / (10 ** paymentTokenDecimals);

        // Pair each full token amount with exactly the payment-token amount required at the pool's
        // CURRENT price, so the full minted YES/NO is deposited regardless of whether this call or the
        // launchpad set the initial price. For a pool this call just initialized, the current price
        // equals yesInitialPrice, reproducing the historical payment*price/100 split.
        uint256 yesPoolPaymentAmount = _fullRangePaymentForToken(yesPoolKey, isToken0PaymentTokenYes, yesTokenAmount);
        uint256 noPoolPaymentAmount = _fullRangePaymentForToken(noPoolKey, isToken0PaymentTokenNo, noTokenAmount);

        // Calculate single sided liquidity token amounts
        uint256 singleSidedYesTokenAmount =
            (singleSidedLiquidityAmount * (10 ** yesTokenDecimals)) / (10 ** paymentTokenDecimals);
        uint256 singleSidedNoTokenAmount =
            (singleSidedLiquidityAmount * (10 ** noTokenDecimals)) / (10 ** paymentTokenDecimals);

        // Calculate exact amounts needed for each token
        uint256 totalYesTokenNeeded = yesTokenAmount + singleSidedYesTokenAmount;
        uint256 totalNoTokenNeeded = noTokenAmount + singleSidedNoTokenAmount;
        uint256 totalPaymentTokenNeeded = yesPoolPaymentAmount + noPoolPaymentAmount;

        // Bound the payment-token spend. With balanced full-range liquidity the paired TYD scales
        // with each pool's current price, so total ~= paymentTokenAmount when YES + NO ~= $1. If the
        // pools are badly mispriced the draw could balloon, so cap it and revert rather than overspend.
        uint256 maxPaymentTokenAllowed = (paymentTokenAmount * FULL_RANGE_PAYMENT_CAP_PCT) / 100;
        if (totalPaymentTokenNeeded > maxPaymentTokenAllowed) {
            revert FullRangePaymentExceedsCap(totalPaymentTokenNeeded, maxPaymentTokenAllowed);
        }

        // Ensure Permit2 approvals for exact amounts
        _ensureExactPermit2Approval(address(market.yesToken()), totalYesTokenNeeded);
        _ensureExactPermit2Approval(address(market.noToken()), totalNoTokenNeeded);
        _ensureExactPermit2Approval(address(paymentToken), totalPaymentTokenNeeded);

        // Add full range liquidity to YES pool
        uint256 yesAmount0 = isToken0PaymentTokenYes ? yesPoolPaymentAmount : yesTokenAmount;
        uint256 yesAmount1 = isToken0PaymentTokenYes ? yesTokenAmount : yesPoolPaymentAmount;
        _addLiquidity(yesAmount0, yesAmount1, yesPoolKey, truthMarket);

        // Add full range liquidity to NO pool
        uint256 noAmount0 = isToken0PaymentTokenNo ? noPoolPaymentAmount : noTokenAmount;
        uint256 noAmount1 = isToken0PaymentTokenNo ? noTokenAmount : noPoolPaymentAmount;
        _addLiquidity(noAmount0, noAmount1, noPoolKey, truthMarket);

        // Add single sided liquidity if amount > 0
        if (singleSidedLiquidityAmount > 0) {
            _addSingleSidedLiquidity(singleSidedYesTokenAmount, yesPoolKey, truthMarket, isToken0PaymentTokenYes);

            _addSingleSidedLiquidity(singleSidedNoTokenAmount, noPoolKey, truthMarket, isToken0PaymentTokenNo);
        }

        emit MarketLiquidityProvided(truthMarket);
    }

    /// @notice Remove all liquidity for a specific market
    /// @param market The market address
    function removeMarketLiquidity(address market)
        external
        onlyRole(Roles.OPERATOR_ROLE)
        onlyV2Markets(market)
        nonReentrant
    {
        uint256[] storage tokenIds = marketTokenIds[market];

        // Validate that we actually have positions for this market
        if (tokenIds.length == 0) revert NoLiquidityPositions();

        ITruthMarketV2 truthMarket = ITruthMarketV2(market);

        // Withdraw accumulated fees from FeeCollector if configured
        if (feeCollector != address(0)) {
            // Get pool keys from V2 market
            (PoolKey memory yesPoolKey, PoolKey memory noPoolKey) = truthMarket.getPoolKeys();

            // Always attempt to withdraw from both pools - withdrawPoolFees handles empty amounts gracefully
            PoolKey[] memory poolKeys = new PoolKey[](2);
            poolKeys[0] = yesPoolKey;
            poolKeys[1] = noPoolKey;
            IFeeCollector(feeCollector).withdrawPoolFees(poolKeys);

            // Trigger token conversion if tokenConverter is set
            if (tokenConverter != address(0)) {
                ITokenConverter(tokenConverter).convertSingleMarket(market);
            }
        }

        // Remove all V4 positions
        for (uint256 i = tokenIds.length; i > 0; i--) {
            uint256 tokenId = tokenIds[i - 1];
            // Only burn positions that are properly associated with this market
            // Skip inconsistent entries but continue cleanup
            if (tokenIdMarket[tokenId] == market) {
                _burnPosition(tokenId);
            }
            // Note: Inconsistent tokenIds will be cleaned up when we delete marketTokenIds[market]
        }

        delete marketTokenIds[market];

        // Try to redeem tokens if market is finalized using current balance
        MarketStatus status = truthMarket.getCurrentStatus();

        if (status == MarketStatus.Finalized) {
            uint256 winningPosition = truthMarket.winningPosition();
            address yesToken = truthMarket.yesToken();
            address noToken = truthMarket.noToken();

            if (winningPosition == 1) {
                // YES won
                uint256 yesBalance = IERC20(yesToken).balanceOf(address(this));
                if (yesBalance > 0) {
                    IERC20(yesToken).approve(market, yesBalance);
                }
                truthMarket.redeem(yesBalance);
            } else if (winningPosition == 2) {
                // NO won
                uint256 noBalance = IERC20(noToken).balanceOf(address(this));
                if (noBalance > 0) {
                    IERC20(noToken).approve(market, noBalance);
                }
                truthMarket.redeem(noBalance);
            } else if (winningPosition == 3) {
                // CANCELED
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
        emit MarketLiquidityRemoved(market);
    }

    /// @notice Withdraws a specific amount of tokens to a recipient
    /// @param token The token address to withdraw
    /// @param amount The amount to withdraw
    /// @param to The recipient address
    function withdrawToken(address token, uint256 amount, address to)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        if (to == address(0)) revert InvalidRecipient();
        IERC20(token).safeTransfer(to, amount);
    }

    /// @notice Withdraws all tokens of a specific type to a recipient
    /// @param token The token address to withdraw
    /// @param to The recipient address
    function withdrawAllToken(address token, address to) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        if (to == address(0)) revert InvalidRecipient();
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance > 0) {
            IERC20(token).safeTransfer(to, balance);
        }
    }

    /// @notice Sets the OrderManager address
    /// @param _orderManager The address of the OrderManager contract
    function setOrderManager(address _orderManager) external onlyRole(DEFAULT_ADMIN_ROLE) {
        orderManager = _orderManager;
        emit OrderManagerUpdated(_orderManager);
    }

    /// @notice Sets the FeeCollector address
    /// @param _feeCollector The address of the FeeCollector
    function setFeeCollector(address _feeCollector) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_feeCollector == address(0)) revert InvalidRecipient();
        feeCollector = _feeCollector;
        emit FeeCollectorUpdated(_feeCollector);
    }

    /// @notice Sets the TokenConverter address
    /// @param _tokenConverter The address of the TokenConverter contract
    function setTokenConverter(address _tokenConverter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        tokenConverter = _tokenConverter;
        emit TokenConverterUpdated(_tokenConverter);
    }

    /// @notice Sets the SwapValidator address
    /// @param _swapValidator The address of the SwapValidator contract
    function setSwapValidator(address _swapValidator) external onlyRole(DEFAULT_ADMIN_ROLE) {
        swapValidator = _swapValidator;
    }

    // External view functions ////////////////////////////////////////

    /// @notice Callback for ERC721 token transfers
    /// @dev Only accepts NFTs from the Uniswap V4 position manager
    /// @param /* operator */ The address which called safeTransferFrom
    /// @param /* from */ The address which previously owned the token
    /// @param /* tokenId */ The NFT identifier which is being transferred
    /// @param /* data */ Additional data with no specified format
    /// @return bytes4 The function selector
    function onERC721Received(
        address,
        /* operator */
        address,
        /* from */
        uint256,
        /* tokenId */
        bytes calldata /* data */
    )
        external
        view
        override
        returns (bytes4)
    {
        if (msg.sender != address(positionManager)) revert OnlyPositionManager();
        return this.onERC721Received.selector;
    }

    // Public functions ////////////////////////////////////////////////

    /// @notice Remove liquidity for a specific V4 position
    /// @param tokenId The id of the V4 position NFT
    function removeLiquidity(uint256 tokenId) public onlyRole(Roles.OPERATOR_ROLE) nonReentrant {
        _burnPosition(tokenId);

        // Clean up market mappings
        address market = tokenIdMarket[tokenId];
        if (market != address(0)) {
            // Remove tokenId from marketTokenIds array
            uint256[] storage tokenIds = marketTokenIds[market];
            for (uint256 i = 0; i < tokenIds.length; i++) {
                if (tokenIds[i] == tokenId) {
                    tokenIds[i] = tokenIds[tokenIds.length - 1];
                    tokenIds.pop();
                    break;
                }
            }
            emit LiquidityRemoved(market, tokenId);
        }
    }

    // Internal functions //////////////////////////////////////////////

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /// @notice Ensures exact Permit2 approval for a specific token amount
    /// @param token The token address to approve
    /// @param exactAmount The exact amount needed
    function _ensureExactPermit2Approval(address token, uint256 exactAmount) internal {
        // First, ensure this contract has approved Permit2 to spend the token
        if (IERC20(token).allowance(address(this), address(permit2)) < exactAmount) {
            IERC20(token).approve(address(permit2), exactAmount);
        }

        // Then, ensure Permit2 has approved PositionManager to spend the exact amount
        (uint160 currentAllowance, uint48 expiration,) =
            permit2.allowance(address(this), token, address(positionManager));

        // If allowance is insufficient or expired, approve exact amount via Permit2
        if (currentAllowance < exactAmount || expiration < block.timestamp + 1 hours) {
            // Convert to uint160, ensuring it doesn't overflow
            uint160 approvalAmount = exactAmount > type(uint160).max ? type(uint160).max : uint160(exactAmount);

            permit2.approve(
                token,
                address(positionManager),
                approvalAmount,
                uint48(block.timestamp + 1 days) // 1 day expiration
            );
        }
    }

    /// @notice Full-range tick bounds for a pool, aligned to its tick spacing.
    function _fullRangeTicks(int24 tickSpacing) internal pure returns (int24 tickLower, int24 tickUpper) {
        tickLower = _nearestUsableTick(TickMath.MIN_TICK, tickSpacing);
        tickUpper = _nearestUsableTick(TickMath.MAX_TICK, tickSpacing);
    }

    /// @notice Payment-token amount needed to deposit `tokenAmount` of the outcome token into a
    ///         full-range position at the pool's CURRENT price, so the full token amount is deposited.
    /// @dev Sizes liquidity by the token side, then rounds the paired payment up so that — when
    ///      _mintPosition recomputes liquidity from min(token, payment) — the token side binds and the
    ///      full minted YES/NO goes into the pool. The pool must already be initialized.
    /// @param poolKey The pool
    /// @param isToken0PaymentToken Whether currency0 is the payment token
    /// @param tokenAmount The outcome-token amount to fully deposit
    function _fullRangePaymentForToken(PoolKey memory poolKey, bool isToken0PaymentToken, uint256 tokenAmount)
        internal
        view
        returns (uint256)
    {
        if (tokenAmount == 0) {
            return 0;
        }

        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        if (sqrtPriceX96 == 0) revert PoolNotInitialized();

        (int24 tickLower, int24 tickUpper) = _fullRangeTicks(poolKey.tickSpacing);
        uint160 sqrtLower = TickMath.getSqrtPriceAtTick(tickLower);
        uint160 sqrtUpper = TickMath.getSqrtPriceAtTick(tickUpper);

        if (isToken0PaymentToken) {
            // token is currency1: size liquidity by currency1 over [lower, current],
            // pay currency0 over [current, upper]
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmount1(sqrtLower, sqrtPriceX96, tokenAmount);
            return SqrtPriceMath.getAmount0Delta(sqrtPriceX96, sqrtUpper, liquidity, true);
        } else {
            // token is currency0: size liquidity by currency0 over [current, upper],
            // pay currency1 over [lower, current]
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmount0(sqrtPriceX96, sqrtUpper, tokenAmount);
            return SqrtPriceMath.getAmount1Delta(sqrtLower, sqrtPriceX96, liquidity, true);
        }
    }

    function _addLiquidity(uint256 amount0, uint256 amount1, PoolKey memory poolKey, address market) internal {
        // For full-range liquidity, use MIN and MAX ticks that are aligned with tick spacing
        (int24 tickLower, int24 tickUpper) = _fullRangeTicks(poolKey.tickSpacing);

        _mintPosition(
            amount0,
            amount1,
            tickLower,
            tickUpper,
            poolKey,
            market,
            50 // 0.5% slippage tolerance for full-range liquidity
        );
    }

    function _mintPosition(
        uint256 amount0,
        uint256 amount1,
        int24 tickLower,
        int24 tickUpper,
        PoolKey memory poolKey,
        address market,
        uint256 slippageBps
    ) internal returns (uint256 tokenId, uint128 liquidity) {
        if (slippageBps > 1000) revert InvalidSlippageTolerance(); // Max 10% slippage
        if (amount0 == 0 && amount1 == 0) revert InvalidLiquidityAmount();
        address token0 = Currency.unwrap(poolKey.currency0);
        address token1 = Currency.unwrap(poolKey.currency1);

        // Calculate proper liquidity amount using LiquidityAmounts library
        // Get current pool price (may have changed if pool was just initialized)
        (uint160 currentSqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        if (currentSqrtPriceX96 == 0) revert PoolNotInitialized();
        liquidity = LiquidityAmounts.getLiquidityForAmounts(
            currentSqrtPriceX96,
            TickMath.getSqrtPriceAtTick(tickLower),
            TickMath.getSqrtPriceAtTick(tickUpper),
            amount0,
            amount1
        );

        // Calculate maximum amounts with slippage tolerance
        uint256 amount0Max = amount0 * (10000 + slippageBps) / 10000;
        uint256 amount1Max = amount1 * (10000 + slippageBps) / 10000;

        // Encode actions for V4
        bytes memory actions = abi.encodePacked(uint8(Actions.MINT_POSITION), uint8(Actions.SETTLE_PAIR));

        // Prepare parameters for MINT_POSITION
        bytes[] memory params = new bytes[](2);
        params[0] = abi.encode(
            poolKey,
            tickLower,
            tickUpper,
            uint256(liquidity),
            uint128(amount0Max), // Use maximum amounts for slippage protection
            uint128(amount1Max), // Use maximum amounts for slippage protection
            address(this),
            ""
        );
        params[1] = abi.encode(poolKey.currency0, poolKey.currency1);

        // Get the token ID that will be minted
        tokenId = positionManager.nextTokenId();

        // Execute liquidity addition
        uint256 deadline = block.timestamp + 60;
        positionManager.modifyLiquidities(abi.encode(actions, params), deadline);

        // Track position
        marketTokenIds[market].push(tokenId);
        tokenIdMarket[tokenId] = market;

        // Emit event
        emit PositionCreated(market, tokenId, liquidity);

        // Store deposit info (simplified for V4)
        deposits[tokenId] = Deposit({owner: address(this), liquidity: liquidity, token0: token0, token1: token1});
    }

    function _burnPosition(uint256 tokenId) internal {
        // Encode actions for burning position
        bytes memory actions = abi.encodePacked(uint8(Actions.BURN_POSITION), uint8(Actions.TAKE_PAIR));

        // Get pool info from stored deposit
        Deposit memory deposit = deposits[tokenId];

        bytes[] memory params = new bytes[](2);
        params[0] = abi.encode(tokenId, 0, 0, ""); // Set minimum amounts to 0
        params[1] = abi.encode(deposit.token0, deposit.token1, address(this));

        uint256 deadline = block.timestamp + 60;
        positionManager.modifyLiquidities(abi.encode(actions, params), deadline);

        // Get market for event before cleanup
        address market = tokenIdMarket[tokenId];

        // Clean up tracking
        delete deposits[tokenId];
        delete tokenIdMarket[tokenId];

        // Emit event
        if (market != address(0)) {
            emit PositionBurned(market, tokenId);
        }
    }

    /// @notice Returns whether tokenA sorts before tokenB
    function _sortsBefore(address tokenA, address tokenB) internal pure returns (bool) {
        return tokenA < tokenB;
    }

    function _encodePriceSqrt(uint256 price1, uint256 price2) internal pure returns (uint160) {
        if (price1 == 0 || price2 == 0) revert InvalidPrice();
        uint256 sqrtPrice = Math.sqrt((price1 << 192) / price2);
        return uint160(sqrtPrice);
    }

    /// @notice Computes the [0, 1] price tick range for a pool (each outcome token priced in [0, 1]
    ///         payment token). Used both to bound the swap validator and to size single-sided liquidity.
    /// @param poolKey The pool
    /// @param isToken0PaymentToken Whether currency0 is the payment token (controls base/quote ordering)
    function _poolPriceTickRange(PoolKey memory poolKey, bool isToken0PaymentToken)
        internal
        view
        returns (TickRange memory)
    {
        address token0 = Currency.unwrap(poolKey.currency0);
        address token1 = Currency.unwrap(poolKey.currency1);

        return _calculateTickRange(
            isToken0PaymentToken ? token1 : token0, // baseToken (YES/NO token)
            isToken0PaymentToken ? token0 : token1, // paymentToken
            poolKey.tickSpacing,
            0,
            1
        );
    }

    /// @notice Sets the swap-validator tick boundaries for a pool if not already set.
    /// @dev Idempotent: skips pools whose boundaries are already initialized so a manually
    ///      corrected boundary is never clobbered. No-op when no swap validator is configured.
    /// @param poolKey The pool to bound
    /// @param isToken0PaymentToken Whether currency0 is the payment token (controls base/quote ordering)
    function _setPoolBoundariesIfUnset(PoolKey memory poolKey, bool isToken0PaymentToken) internal {
        if (swapValidator == address(0)) {
            return;
        }

        PoolId poolId = poolKey.toId();
        (,, bool isSet) = ISwapValidator(swapValidator).poolBoundaries(poolId);
        if (isSet) {
            return;
        }

        TickRange memory range = _poolPriceTickRange(poolKey, isToken0PaymentToken);
        ISwapValidator(swapValidator).setBoundaries(poolId, range.minTick, range.maxTick);
    }

    function _addSingleSidedLiquidity(
        uint256 baseAmount,
        PoolKey memory poolKey,
        address market,
        bool isToken0PaymentToken
    ) internal {
        if (baseAmount == 0) {
            return;
        }

        // The same [0, 1] price range bounds the swap validator (set once in
        // mintAndProvideLiquidityWithPrice via _setPoolBoundariesIfUnset); here it only sizes
        // the concentrated single-sided position.
        TickRange memory range = _poolPriceTickRange(poolKey, isToken0PaymentToken);

        // Add concentrated liquidity
        (uint160 sqrtPriceX96, int24 currentTick,,) = poolManager.getSlot0(poolKey.toId());
        if (sqrtPriceX96 == 0) revert PoolNotInitialized();
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0;
        uint256 amount1;

        if (isToken0PaymentToken) {
            tickLower = range.minTick;
            tickUpper = _nearestUsableTick(currentTick - poolKey.tickSpacing, poolKey.tickSpacing);
            amount0 = 0;
            amount1 = baseAmount;
        } else {
            tickLower = _nearestUsableTick(currentTick + poolKey.tickSpacing, poolKey.tickSpacing);
            tickUpper = range.maxTick;
            amount0 = baseAmount;
            amount1 = 0;
        }

        // Ensure ticks are properly aligned (matching V3 logic)
        tickLower = (tickLower / poolKey.tickSpacing) * poolKey.tickSpacing;
        tickUpper = (tickUpper / poolKey.tickSpacing) * poolKey.tickSpacing;

        // Validate tick range
        if (tickLower >= tickUpper) revert InvalidTickRange();
        if (tickLower < TickMath.MIN_TICK || tickLower > TickMath.MAX_TICK) revert TickOutOfBounds();
        if (tickUpper < TickMath.MIN_TICK || tickUpper > TickMath.MAX_TICK) revert TickOutOfBounds();

        // Use common mint position function with slippage protection
        _mintPosition(
            amount0,
            amount1,
            tickLower,
            tickUpper,
            poolKey,
            market,
            50 // 0.5% slippage tolerance for single-sided liquidity (matches V3 implementation)
        );
    }

    function _nearestUsableTick(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        int24 intervals = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) intervals--;
        int24 result = intervals * tickSpacing;

        // Ensure the result is within valid bounds AND properly aligned with tick spacing
        if (result < TickMath.MIN_TICK) {
            // Find the nearest usable tick >= MIN_TICK
            int24 minIntervals = (TickMath.MIN_TICK + tickSpacing - 1) / tickSpacing;
            result = minIntervals * tickSpacing;
        }
        if (result > TickMath.MAX_TICK) {
            // Find the nearest usable tick <= MAX_TICK
            int24 maxIntervals = TickMath.MAX_TICK / tickSpacing;
            result = maxIntervals * tickSpacing;
        }
        return result;
    }

    function _calculateTickRange(address baseToken, address quoteToken, int24 tickSpacing, uint256 min, uint256 max)
        internal
        view
        returns (TickRange memory range)
    {
        bool tokenInverse = !_sortsBefore(baseToken, quoteToken);

        int24 tick0;
        if (min == 0) {
            tick0 = _nearestUsableTick(tokenInverse ? TickMath.MAX_TICK : TickMath.MIN_TICK, tickSpacing);
        } else {
            tick0 = _tickHelperPriceToTick(baseToken, quoteToken, min, tickSpacing);
        }

        int24 tick1 = _tickHelperPriceToTick(baseToken, quoteToken, max, tickSpacing);

        if (tick0 < tick1) {
            range.minTick = tick0;
            range.maxTick = tick1;
        } else {
            range.minTick = tick1;
            range.maxTick = tick0;
        }
    }

    function _tickHelperPriceToTick(address baseToken, address quoteToken, uint256 price, int24 tickSpacing)
        internal
        view
        returns (int24)
    {
        if (price == 0) revert InvalidPrice();

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
        // Add overflow protection for large numerator values
        uint256 scaledNumerator;
        if (numerator > type(uint256).max >> 192) {
            // Scale down both numerator and denominator to prevent overflow
            uint256 scaleFactor = (numerator >> 64) + 1; // Find appropriate scale factor
            scaledNumerator = (numerator / scaleFactor) << 192;
            denominator = denominator / scaleFactor;
        } else {
            scaledNumerator = numerator << 192;
        }

        uint160 sqrtRatioX96 = uint160(Math.sqrt(scaledNumerator / denominator));

        // Handle edge cases for extreme price values
        if (sqrtRatioX96 >= TickMath.MAX_SQRT_PRICE) {
            return TickMath.MAX_TICK;
        } else if (sqrtRatioX96 <= TickMath.MIN_SQRT_PRICE) {
            return TickMath.MIN_TICK;
        }

        // Convert sqrtPriceX96 to a tick value and ensure it aligns with allowed tick spacing
        int24 tick = TickMath.getTickAtSqrtPrice(sqrtRatioX96);
        return _nearestUsableTick(tick, tickSpacing);
    }

    function _initializePoolIfNeeded(PoolKey memory poolKey, uint256 initialPrice, bool isToken0PaymentToken) internal {
        // Check if pool is already initialized
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());
        if (sqrtPriceX96 != 0) {
            // Pool is already initialized
            return;
        }

        // Pool not initialized, calculate initial price and initialize
        address token0 = Currency.unwrap(poolKey.currency0);
        address token1 = Currency.unwrap(poolKey.currency1);

        uint8 decimal0 = IERC20Metadata(token0).decimals();
        uint8 decimal1 = IERC20Metadata(token1).decimals();

        uint256 price0;
        uint256 price1;

        if (isToken0PaymentToken) {
            // token0 - Payment Token (6 decimals)
            price0 = initialPrice * (10 ** decimal0) / 100; // (70 * 10^6) / 100
            price1 = 1 * (10 ** decimal1); // 1 * 10^18
        } else {
            // token0 - YES/NO token (18 decimals)
            price0 = 1 * (10 ** decimal0); // 1 * 10^18
            price1 = initialPrice * (10 ** decimal1) / 100; // (70 * 10^6) / 100
        }

        uint160 initPrice = _encodePriceSqrt(price1, price0);
        poolManager.initialize(poolKey, initPrice);
    }
}
