// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {IHooks} from "v4-core/interfaces/IHooks.sol";
import {LPFeeLibrary} from "v4-core/libraries/LPFeeLibrary.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {VolatilityAntiSnipeDynamicFeeHookRegistry} from "./hooks/VolatilityAntiSnipeDynamicFeeHookRegistry.sol";
import {VolatilityAntiSnipeDynamicFeeHook} from "./hooks/VolatilityAntiSnipeDynamicFeeHook.sol";
import {IVolatilityDynamicFeeHook} from "./interfaces/IVolatilityDynamicFeeHook.sol";
import {ILaunchpadPositionFactory} from "./LaunchpadPositionManager/interfaces/ILaunchpadPositionFactory.sol";
import {LimitOrderManager} from "./LimitOrderManager.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title LimitedOrderBookFactory
/// @notice Simplified factory for token launches with locked liquidity
/// @dev Only creates VolatilityAntiSnipeDynamicFeeHook pools paired with native ETH
contract LaunchpadOrderBookFactory is Ownable {
    using PoolIdLibrary for PoolKey;
    IPoolManager public immutable poolManager;
    ILaunchpadPositionFactory public launchpadPositionFactory;
    VolatilityAntiSnipeDynamicFeeHookRegistry public immutable hookRegistry;
    LimitOrderManager public immutable limitOrderManager;
    VolatilityAntiSnipeDynamicFeeHook public immutable volatilityAntiSnipeDynamicFeeHook;

    // Anti-snipe and volatility hook parameters (owner-adjustable)
    uint256 public antiSnipeDuration;
    uint24 public baseFee;
    uint24 public maxFee;
    uint256 public volatilityScale;
    uint32 public twapWindow;
    uint256 public cooldownPeriod;
    int24 public constant TICK_SPACING = 60;             // Standard tick spacing for all pools

    // Initial liquidity ETH amount (hardcoded)
    uint256 public constant INITIAL_LIQUIDITY_ETH = 0.01 ether;

    // TokenFactory that is authorized to call createPoolWithLockedLiquidity
    address public tokenFactory;

    struct PoolCreationParams {
        Currency token;              // The ERC-20 token (currency1)
        uint160 sqrtPriceX96;
        // Anti-snipe params
        uint256 tradeLimitETH;       // Trade limit for ETH (user's choice)
        // Initial deposit amounts
        uint256 depositToken;
        address launcher;            // Token launcher (receives LP tokens and owns LaunchpadPositionManager)
    }

    event PoolCreated(
        address indexed token,
        address indexed hook,
        address indexed mpm,
        PoolKey poolKey
    );

    event AntiSnipeDurationUpdated(uint256 newDuration);
    event BaseFeeUpdated(uint24 newBaseFee);
    event MaxFeeUpdated(uint24 newMaxFee);
    event VolatilityScaleUpdated(uint256 newScale);
    event TwapWindowUpdated(uint32 newWindow);
    event CooldownPeriodUpdated(uint256 newPeriod);
    event TokenFactorySet(address indexed tokenFactory);
    event LaunchpadPositionFactorySet(address indexed launchpadPositionFactory);

    error InvalidAddress();
    error InvalidAmount();
    error ETHTransferFailed();
    error InvalidParameter();
    error OnlyTokenFactory();
    error TokenFactoryAlreadySet();

    /// @notice Constructor that accepts pre-deployed hook and LimitOrderManager (gas-efficient)
    /// @param _poolManager The pool manager
    /// @param _launchpadPositionFactory The LaunchpadPositionFactory
    /// @param _limitOrderManager Pre-deployed LimitOrderManager
    /// @param _volatilityHook Pre-deployed VolatilityAntiSnipeDynamicFeeHook
    /// @param _owner Factory owner
    constructor(
        IPoolManager _poolManager,
        ILaunchpadPositionFactory _launchpadPositionFactory,
        address _limitOrderManager,
        address _volatilityHook,
        address _owner
    ) Ownable(_owner) {
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        if (address(_launchpadPositionFactory) == address(0)) revert InvalidAddress();
        if (_limitOrderManager == address(0)) revert InvalidAddress();
        if (_volatilityHook == address(0)) revert InvalidAddress();

        poolManager = _poolManager;
        launchpadPositionFactory = _launchpadPositionFactory;
        hookRegistry = VolatilityAntiSnipeDynamicFeeHookRegistry(address(0)); // Not needed with pre-deployed hook
        limitOrderManager = LimitOrderManager(_limitOrderManager);
        volatilityAntiSnipeDynamicFeeHook = VolatilityAntiSnipeDynamicFeeHook(_volatilityHook);

        // Set initial values
        antiSnipeDuration = 7 days;
        baseFee = 5000;              // 0.5%
        maxFee = 20000;              // 2%
        volatilityScale = 2;         // Scaling factor
        twapWindow = 1800;           // 30 minutes
        cooldownPeriod = 1;       // 1 second
    }

    /// @notice Create a pool with locked liquidity for token launches
    /// @dev Always pairs with native ETH (Currency.NATIVE)
    /// @dev Caller must approve this contract to spend tokens before calling
    /// @param params Pool creation parameters
    /// @return poolKey The created pool key
    /// @return mpm The deployed LimitedPositionManager address
    function createPoolWithLockedLiquidity(PoolCreationParams calldata params)
        external
        payable
        returns (PoolKey memory poolKey, address mpm)
    {
        // Access control
        if (msg.sender != tokenFactory) revert OnlyTokenFactory();

        if (params.depositToken == 0) revert InvalidAmount();
        if (msg.value != INITIAL_LIQUIDITY_ETH) revert InvalidAmount();

        // 1. Use shared hook (already deployed in constructor)
        address hook = address(volatilityAntiSnipeDynamicFeeHook);

        // 2. Create pool key (ETH always currency0)
        poolKey = PoolKey({
            currency0: Currency.wrap(address(0)),  // Native ETH
            currency1: params.token,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: TICK_SPACING,
            hooks: IHooks(hook)
        });

        // 3. Initialize pool
        poolManager.initialize(poolKey, params.sqrtPriceX96);

        // 3.5. Whitelist pool in LimitOrderManager
        PoolId poolId = poolKey.toId();
        limitOrderManager.setWhitelistedPool(poolId, true);

        // 4. Register pool with volatility fee params
        IVolatilityDynamicFeeHook(hook).registerPool(
            poolKey,
            baseFee,
            maxFee,
            volatilityScale,
            twapWindow
        );

        // 5. Configure anti-snipe protection
        VolatilityAntiSnipeDynamicFeeHook(hook).configureAntiSnipe(
            poolKey,
            params.tradeLimitETH,      // User's choice for ETH limit
            antiSnipeDuration,
            cooldownPeriod
        );

        // 6. Transfer tokens from caller to factory
        // This works because this contract (LaunchpadOrderBookFactory) is whitelisted
        IERC20(Currency.unwrap(params.token)).transferFrom(
            msg.sender,
            address(launchpadPositionFactory),
            params.depositToken
        );

        // 7. Deploy LaunchpadPositionManager, deposit, and rebalance
        // The factory will approve the manager after deployment and before deposit
        // Create empty inMin array with enough entries for UniformStrategy positions
        // UniformStrategy creates 18 positions for tickSpacing=60 with minTicks=2M
        uint256[2][] memory inMin = new uint256[2][](18);

        mpm = launchpadPositionFactory.deployDepositAndRebalance{value: INITIAL_LIQUIDITY_ETH}(
            poolKey,
            params.launcher,         // Owner (the token launcher)
            INITIAL_LIQUIDITY_ETH,   // Hardcoded 0.01 ETH for initial liquidity
            params.depositToken,
            params.launcher,         // LP tokens go to launcher
            address(this),           // from = LaunchpadOrderBookFactory (unused, tokens are in LaunchpadPositionFactory)
            inMin                    // Array of [0, 0] pairs for slippage protection
        );

        emit PoolCreated(Currency.unwrap(params.token), hook, mpm, poolKey);

        return (poolKey, mpm);
    }

    /// @notice Set the TokenFactory address (one-time only)
    /// @param _tokenFactory Address of the TokenFactory
    function setTokenFactory(address _tokenFactory) external onlyOwner {
        if (tokenFactory != address(0)) revert TokenFactoryAlreadySet();
        if (_tokenFactory == address(0)) revert InvalidAddress();
        tokenFactory = _tokenFactory;
        emit TokenFactorySet(_tokenFactory);
    }

    /// @notice Set the LaunchpadPositionFactory address (for resolving circular dependency)
    /// @param _launchpadPositionFactory Address of the LaunchpadPositionFactory
    function setLaunchpadPositionFactory(ILaunchpadPositionFactory _launchpadPositionFactory) external onlyOwner {
        if (address(_launchpadPositionFactory) == address(0)) revert InvalidAddress();
        launchpadPositionFactory = _launchpadPositionFactory;
        emit LaunchpadPositionFactorySet(address(_launchpadPositionFactory));
    }

    /// @notice Update anti-snipe duration
    /// @param _antiSnipeDuration New duration in seconds
    function setAntiSnipeDuration(uint256 _antiSnipeDuration) external onlyOwner {
        if (_antiSnipeDuration == 0) revert InvalidParameter();
        antiSnipeDuration = _antiSnipeDuration;
        emit AntiSnipeDurationUpdated(_antiSnipeDuration);
    }

    /// @notice Update base fee
    /// @param _baseFee New base fee (in hundredths of a bip, e.g., 5000 = 0.5%)
    function setBaseFee(uint24 _baseFee) external onlyOwner {
        if (_baseFee > maxFee) revert InvalidParameter();
        baseFee = _baseFee;
        emit BaseFeeUpdated(_baseFee);
    }

    /// @notice Update max fee
    /// @param _maxFee New max fee (in hundredths of a bip, e.g., 20000 = 2%)
    function setMaxFee(uint24 _maxFee) external onlyOwner {
        if (_maxFee < baseFee) revert InvalidParameter();
        if (_maxFee > 1000000) revert InvalidParameter(); // Max 100%
        maxFee = _maxFee;
        emit MaxFeeUpdated(_maxFee);
    }

    /// @notice Update volatility scale
    /// @param _volatilityScale New volatility scale factor
    function setVolatilityScale(uint256 _volatilityScale) external onlyOwner {
        if (_volatilityScale == 0) revert InvalidParameter();
        volatilityScale = _volatilityScale;
        emit VolatilityScaleUpdated(_volatilityScale);
    }

    /// @notice Update TWAP window
    /// @param _twapWindow New TWAP window in seconds
    function setTwapWindow(uint32 _twapWindow) external onlyOwner {
        if (_twapWindow == 0) revert InvalidParameter();
        twapWindow = _twapWindow;
        emit TwapWindowUpdated(_twapWindow);
    }

    /// @notice Update cooldown period
    /// @param _cooldownPeriod New cooldown period in seconds
    function setCooldownPeriod(uint256 _cooldownPeriod) external onlyOwner {
        if (_cooldownPeriod == 0) revert InvalidParameter();
        cooldownPeriod = _cooldownPeriod;
        emit CooldownPeriodUpdated(_cooldownPeriod);
    }

    /// @notice Allow contract to receive ETH
    receive() external payable {}
}
