// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {WhitelistableERC20} from "./WhitelistableERC20.sol";
import {TokenVesting} from "./TokenVesting.sol";
import {CallOption} from "./CallOption.sol";
import {BuybackContract} from "./BuybackContract.sol";
import {LaunchpadOrderBookFactory} from "./LaunchpadOrderBookFactory.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {IHooks} from "v4-core/interfaces/IHooks.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {Currency} from "v4-core/types/Currency.sol";

/// @title TokenFactory
/// @notice Master orchestrator for token launches with locked liquidity, vesting, and call options
/// @dev Creates token, pool, vesting contract, and call option in one transaction
contract TokenFactory {
    IPoolManager public immutable poolManager;
    LaunchpadOrderBookFactory public immutable orderBookFactory;
    address public immutable treasury;

    uint256 public constant TOTAL_SUPPLY = 1_000_000_000 * 1e18; // 1 billion tokens
    uint256 public constant POOL_ALLOCATION = (TOTAL_SUPPLY * 70) / 100;   // 700M (70%)
    uint256 public constant VESTING_ALLOCATION = (TOTAL_SUPPLY * 15) / 100; // 150M (15%)
    uint256 public constant OPTION_ALLOCATION = (TOTAL_SUPPLY * 15) / 100;  // 150M (15%)

    uint256 public constant VESTING_CLIFF = 180 days;  // 6 months
    uint256 public constant VESTING_DURATION = 730 days; // 2 years total (6mo + 18mo)
    uint256 public constant OPTION_VESTING = 365 days;  // 12 months linear

    // Launch fee structure
    uint256 public constant LAUNCH_FEE = 0.02 ether;           // Total fee to launch
    uint256 public constant PROTOCOL_FEE = 0.01 ether;         // Goes to treasury
    uint256 public constant INITIAL_LIQUIDITY_ETH = 0.01 ether; // Goes to pool liquidity

    struct TokenLaunchParams {
        // Token params
        string tokenName;
        string tokenSymbol;
        // Pool params
        uint160 sqrtPriceX96;
        // Anti-snipe params (only ETH limit - user's choice)
        uint256 tradeLimitETH;
        // Team address (receives both vesting tokens and call options)
        address teamAddress;
    }

    struct TokenLaunchInfo {
        address tokenAddress;
        address teamAddress;
        address vestingContract;
        address callOption;
        address launchpadPositionManager;
        address buybackContract;
    }

    // Mappings and arrays for tracking launches
    mapping(address => TokenLaunchInfo) public tokenLaunches;  // token address => launch info
    mapping(address => address[]) public teamTokens;           // team address => array of token addresses
    address[] private allTokens;                               // array of all launched tokens

    event TokenLaunched(
        address indexed token,
        address indexed vesting,
        address indexed option,
        PoolKey poolKey,
        address mpm,
        address buyback
    );

    error InvalidAddress();
    error InsufficientETH();

    constructor(
        IPoolManager _poolManager,
        LaunchpadOrderBookFactory _orderBookFactory,
        address _treasury
    ) {
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        if (address(_orderBookFactory) == address(0)) revert InvalidAddress();
        if (_treasury == address(0)) revert InvalidAddress();

        poolManager = _poolManager;
        orderBookFactory = _orderBookFactory;
        treasury = _treasury;
    }

    /// @notice Launch a new token with pool, vesting, and call option
    /// @dev Requires ETH for initial liquidity
    /// @param params Launch parameters
    /// @return tokenAddress The deployed token address
    /// @return poolKey The created pool key
    /// @return mpm The LimitedPositionManager address
    /// @return vesting The TokenVesting contract address
    /// @return option The CallOption contract address
    /// @return buyback The BuybackContract address
    function launchToken(TokenLaunchParams calldata params)
        external
        payable
        returns (
            address tokenAddress,
            PoolKey memory poolKey,
            address mpm,
            address vesting,
            address option,
            address buyback
        )
    {
        if (msg.value != LAUNCH_FEE) revert InsufficientETH();
        if (params.teamAddress == address(0)) revert InvalidAddress();

        // Transfer protocol fee to treasury
        (bool success,) = treasury.call{value: PROTOCOL_FEE}("");
        require(success, "ProtocolFeeTransferFailed");

        // 1. Deploy token with 7-day transfer lock
        // Whitelist PoolManager (for swaps), LaunchpadOrderBookFactory (for pool setup),
        // and LaunchpadPositionFactory (for liquidity deposits)
        uint256 transferLockEndTime = block.timestamp + 7 days;
        WhitelistableERC20 token = new WhitelistableERC20(
            params.tokenName,
            params.tokenSymbol,
            transferLockEndTime,
            address(poolManager),                                // Whitelist PoolManager for swaps
            address(orderBookFactory),                           // Whitelist LaunchpadOrderBookFactory for pool setup
            address(orderBookFactory.launchpadPositionFactory()) // Whitelist LaunchpadPositionFactory for deposits
        );
        tokenAddress = address(token);

        // 2. Deploy TokenVesting (6mo cliff, 2yr total) for team
        vesting = address(new TokenVesting(
            tokenAddress,
            params.teamAddress,
            VESTING_ALLOCATION,
            block.timestamp + VESTING_CLIFF,
            block.timestamp + VESTING_DURATION
        ));

        // 3. Create pool with locked liquidity FIRST (to get poolKey)
        // Note: baseFee, maxFee, volatilityScale, twapWindow, tradeLimitToken, cooldownPeriod
        // are now hardcoded in LaunchpadOrderBookFactory
        // mpmName and mpmSymbol are auto-generated by LaunchpadPositionFactory

        // 4. Approve LaunchpadOrderBookFactory to spend pool allocation
        // This is necessary because LaunchpadOrderBookFactory will transfer tokens
        // during pool creation (it's whitelisted, so transfers work during lock period)
        token.approve(address(orderBookFactory), POOL_ALLOCATION);

        (poolKey, mpm) = orderBookFactory.createPoolWithLockedLiquidity{value: INITIAL_LIQUIDITY_ETH}(
            LaunchpadOrderBookFactory.PoolCreationParams({
                token: Currency.wrap(tokenAddress),
                sqrtPriceX96: params.sqrtPriceX96,
                tradeLimitETH: params.tradeLimitETH,
                depositToken: POOL_ALLOCATION,
                launcher: msg.sender  // Token launcher (receives LP tokens and owns LaunchpadPositionManager)
            })
        );

        // 5. Deploy BuybackContract
        buyback = address(new BuybackContract(
            treasury,        // Owner
            poolKey,         // Pool for swaps
            tokenAddress     // Token to buy back
        ));

        // 6. Deploy CallOption (12mo linear vest) with buyback contract address for team
        option = address(new CallOption(
            tokenAddress,
            params.teamAddress,
            OPTION_ALLOCATION,
            params.sqrtPriceX96,
            buyback,         // 99% of exercise ETH goes to buyback
            treasury         // 1% goes to treasury
        ));

        // 7. Distribute remaining tokens to vesting and option contracts

        // Transfer vesting and option allocations
        token.transfer(vesting, VESTING_ALLOCATION);
        token.transfer(option, OPTION_ALLOCATION);

        // 8. Store launch info for tracking
        tokenLaunches[tokenAddress] = TokenLaunchInfo({
            tokenAddress: tokenAddress,
            teamAddress: params.teamAddress,
            vestingContract: vesting,
            callOption: option,
            launchpadPositionManager: mpm,
            buybackContract: buyback
        });

        // Track tokens by team
        teamTokens[params.teamAddress].push(tokenAddress);

        // Track all tokens
        allTokens.push(tokenAddress);

        emit TokenLaunched(tokenAddress, vesting, option, poolKey, mpm, buyback);

        return (tokenAddress, poolKey, mpm, vesting, option, buyback);
    }

    /// @notice Calculate strike price from sqrtPriceX96
    /// @param sqrtPriceX96 The sqrt price in Q96 format
    /// @return strikePrice Strike price in ETH per token (18 decimals)
    function calculateStrikePrice(uint160 sqrtPriceX96) external pure returns (uint256) {
        // Convert sqrtPriceX96 to price, then scale by 1e18 for token decimals
        // price = (sqrtPriceX96)^2 / 2^192
        // strikePrice = price * 1e18 (both ETH and token have 18 decimals)
        return ((uint256(sqrtPriceX96) * uint256(sqrtPriceX96)) >> 192) * 1e18;
    }

    /// @notice Get allocation percentages
    /// @return pool Percentage allocated to pool (70%)
    /// @return vesting Percentage allocated to vesting (15%)
    /// @return options Percentage allocated to call options (15%)
    function getAllocationPercentages()
        external
        pure
        returns (uint256 pool, uint256 vesting, uint256 options)
    {
        return (70, 15, 15);
    }

    /// @notice Get vesting schedules
    /// @return vestingCliff Cliff period in seconds (6 months)
    /// @return vestingDuration Total vesting duration in seconds (2 years)
    /// @return optionVesting Option vesting duration in seconds (12 months)
    function getVestingSchedules()
        external
        pure
        returns (uint256 vestingCliff, uint256 vestingDuration, uint256 optionVesting)
    {
        return (VESTING_CLIFF, VESTING_DURATION, OPTION_VESTING);
    }

    /// @notice Get all launched tokens with pagination
    /// @param offset Starting index (0-based)
    /// @param limit Number of items to return (0 = return all)
    /// @return TokenLaunchInfo[] Array of token launch information
    function getAllTokensPaginated(uint256 offset, uint256 limit)
        external
        view
        returns (TokenLaunchInfo[] memory)
    {
        uint256 totalTokens = allTokens.length;

        // If limit is 0, return all tokens from offset
        if (limit == 0) {
            limit = totalTokens;
        }

        // Handle edge cases
        if (offset >= totalTokens) {
            return new TokenLaunchInfo[](0);
        }

        // Calculate actual number of items to return
        uint256 end = offset + limit;
        if (end > totalTokens) {
            end = totalTokens;
        }
        uint256 resultCount = end - offset;

        // Build result array
        TokenLaunchInfo[] memory result = new TokenLaunchInfo[](resultCount);
        for (uint256 i = 0; i < resultCount; i++) {
            result[i] = tokenLaunches[allTokens[offset + i]];
        }

        return result;
    }

    /// @notice Get all tokens launched by a specific team
    /// @param team Team address
    /// @return address[] Array of token addresses
    function getTeamTokens(address team) external view returns (address[] memory) {
        return teamTokens[team];
    }

    /// @notice Get total number of launched tokens
    /// @return uint256 Total count
    function getTotalTokenCount() external view returns (uint256) {
        return allTokens.length;
    }

    /// @notice Allow contract to receive ETH
    receive() external payable {}
}
