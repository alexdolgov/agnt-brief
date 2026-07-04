// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {NFTStrategyRange} from "./NFTStrategyRange.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {IUniswapV4Router04} from "v4-router/interfaces/IUniswapV4Router04.sol";
import {INFTStrategyHook, INFTStrategy} from "./Interfaces.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";

/// @title NFTStrategyRangeFactory
/// @author TokenWorks (https://token.works/)
contract NFTStrategyRangeFactory is Ownable, ReentrancyGuard {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™               ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    uint256 private constant ethToPair = 2 wei;
    IPositionManager private immutable posm;
    IAllowanceTransfer private immutable permit2;
    IUniswapV4Router04 private immutable router;
    address private immutable poolManager;

    address public constant PNKSTR_ADDRESS = 0xc50673EDb3A7b94E8CAD8a7d4E0cD68864E33eDF;
    address public constant PNKSTR_HOOK_ADDRESS = 0xfAaad5B731F52cDc9746F2414c823eca9B06E844;
    address public constant DEADADDRESS = 0x000000000000000000000000000000000000dEaD;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice The Uniswap V4 hook that control the logic of new deploys
    address public hookAddress;
    /// @notice The address to send deploy fees to
    address public feeAddress;
    /// @notice Gate the NFTStrategyRangeHook to only when we're loading a new token
    bool public loadingLiquidity;
    /// @notice twap increment when buying PNKSTR
    uint256 public twapIncrement = 1 ether;
    /// @notice twap delay when buying PNKSTR
    uint256 public twapDelayInBlocks = 1;
    /// @notice last twap block
    uint256 public lastTwapBlock;
    /// @notice whether swaps are restricted through routers
    bool public routerRestrict;
    /// @notice list of valid routers
    mapping(address => bool) public listOfRouters;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error HookNotSet();
    error NoETHToTwap();
    error TwapDelayNotMet();
    error InvalidTokenRange();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Event emitted when a new NFTStrategyRange instance is launched
    event NFTStrategyRangeLaunched(
        address indexed collection,
        address indexed nftStrategy,
        uint256 lowTokenId,
        uint256 highTokenId,
        string tokenName,
        string tokenSymbol
    );

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor(
        address _posm,
        address _permit2,
        address _poolManager,
        address _universalRouter,
        address payable _router,
        address _feeAddress
    ) {
        router = IUniswapV4Router04(_router);
        posm = IPositionManager(_posm);
        permit2 = IAllowanceTransfer(_permit2);
        poolManager = _poolManager;

        listOfRouters[address(this)] = true;
        listOfRouters[_posm] = true;
        listOfRouters[_permit2] = true;
        listOfRouters[_router] = true;
        listOfRouters[_universalRouter] = true;
        listOfRouters[DEADADDRESS] = true;

        routerRestrict = true;

        feeAddress = _feeAddress;
        _initializeOwner(msg.sender);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Set whether a router address is approved for use
    /// @param _router Router address to toggle
    /// @param status True to approve router, false to remove approval
    /// @dev Only callable by owner
    function setRouter(address _router, bool status) external onlyOwner {
        listOfRouters[_router] = status;
    }

    /// @notice Sets whether to enforce router restrictions
    /// @param status True to enable router restrictions, false to disable
    /// @dev Only callable by owner
    function setRouterRestrict(bool status) external onlyOwner {
        routerRestrict = status;
    }

    /// @notice Updates the hook attached to new NFTStrategyRange pools
    /// @param _hookAddress New Uniswap v4 hook address
    /// @dev Only callable by owner
    function updateHookAddress(address _hookAddress) external onlyOwner {
        hookAddress = _hookAddress;
        listOfRouters[hookAddress] = true;
    }

    /// @notice Updates the name of a specific NFTStrategy token
    /// @param nftStrategy Address of the NFTStrategy contract
    /// @param tokenName New name for the token
    function updateTokenName(address nftStrategy, string memory tokenName) external onlyOwner {
        INFTStrategy(nftStrategy).updateName(tokenName);
    }

    /// @notice Updates the symbol of a specific NFTStrategy token
    /// @param nftStrategy Address of the NFTStrategy contract
    /// @param tokenSymbol New symbol for the token
    function updateTokenSymbol(address nftStrategy, string memory tokenSymbol) external onlyOwner {
        INFTStrategy(nftStrategy).updateSymbol(tokenSymbol);
    }

    /// @notice Updates the price multiplier for a specific NFTStrategy
    /// @param nftStrategy Address of the NFTStrategy contract
    /// @param newMultiplier New multiplier in basis points (1100 = 1.1x)
    function updatePriceMultiplier(address nftStrategy, uint256 newMultiplier) external onlyOwner {
        INFTStrategy(nftStrategy).setPriceMultiplier(newMultiplier);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Internal function to load liquidity into the Uniswap V4 pool
    /// @param _token Address of the NFTStrategy ERC20
    function _loadLiquidity(address _token) internal {
        loadingLiquidity = true;

        // Create the pool with ETH (currency0) and TOKEN (currency1)
        Currency currency0 = Currency.wrap(address(0)); // ETH
        Currency currency1 = Currency.wrap(_token); // NFTStrategy Token

        uint24 lpFee = 0;
        int24 tickSpacing = 60;

        uint256 token0Amount = 1; // 1 wei
        uint256 token1Amount = 1_000_000_000 * 10**18; // 1B TOKEN

        // 10e18 ETH = 1_000_000_000e18 TOKEN
        uint160 startingPrice = 501082896750095888663770159906816;

        int24 tickLower = TickMath.minUsableTick(tickSpacing);
        int24 tickUpper = int24(175020);

        PoolKey memory key = PoolKey(currency0, currency1, lpFee, tickSpacing, IHooks(hookAddress));
        bytes memory hookData = new bytes(0);

        // Hardcoded from LiquidityAmounts.getLiquidityForAmounts
        uint128 liquidity = 158372218983990412488087;

        uint256 amount0Max = token0Amount + 1 wei;
        uint256 amount1Max = token1Amount + 1 wei;

        (bytes memory actions, bytes[] memory mintParams) =
            _mintLiquidityParams(key, tickLower, tickUpper, liquidity, amount0Max, amount1Max, address(this), hookData);

        bytes[] memory params = new bytes[](2);

        params[0] = abi.encodeWithSelector(posm.initializePool.selector, key, startingPrice, hookData);

        params[1] = abi.encodeWithSelector(
            posm.modifyLiquidities.selector, abi.encode(actions, mintParams), block.timestamp + 60
        );

        uint256 valueToPass = amount0Max;
        permit2.approve(_token, address(posm), type(uint160).max, type(uint48).max);

        posm.multicall{value: valueToPass}(params);

        loadingLiquidity = false;
    }

    /// @notice Creates parameters for minting liquidity in Uniswap V4
    function _mintLiquidityParams(
        PoolKey memory poolKey,
        int24 _tickLower,
        int24 _tickUpper,
        uint256 liquidity,
        uint256 amount0Max,
        uint256 amount1Max,
        address recipient,
        bytes memory hookData
    ) internal pure returns (bytes memory, bytes[] memory) {
        bytes memory actions = abi.encodePacked(uint8(Actions.MINT_POSITION), uint8(Actions.SETTLE_PAIR));

        bytes[] memory params = new bytes[](2);
        params[0] = abi.encode(poolKey, _tickLower, _tickUpper, liquidity, amount0Max, amount1Max, recipient, hookData);
        params[1] = abi.encode(poolKey.currency0, poolKey.currency1);
        return (actions, params);
    }

    /// @notice Buys PNKSTR with ETH and burns them by sending to dead address
    /// @param amountIn The amount of ETH to spend on tokens that will be burned
    function _buyAndBurnPNKSTR(uint256 amountIn) internal {
        PoolKey memory key = PoolKey(
            Currency.wrap(address(0)),
            Currency.wrap(PNKSTR_ADDRESS),
            0,
            60,
            IHooks(PNKSTR_HOOK_ADDRESS)
        );

        router.swapExactTokensForTokens{value: amountIn}(
            amountIn,
            0,
            true,
            key,
            "",
            DEADADDRESS,
            block.timestamp
        );
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Launches a new NFTStrategyRange contract for a collection with owner permissions
    /// @param collection Address of the NFT collection contract
    /// @param tokenName Name of the strategy token
    /// @param tokenSymbol Symbol of the strategy token
    /// @param collectionOwner Address that will receive fees from the strategy
    /// @dev Only callable by contract owner. Deploys new NFTStrategyRange and initializes liquidity
    function ownerLaunchNFTStrategy(
        address collection,
        uint256 lowTokenId,
        uint256 highTokenId,
        string memory tokenName,
        string memory tokenSymbol,
        address collectionOwner
    ) external payable onlyOwner returns (NFTStrategyRange) {
        // Validate the parameters passed
        if (hookAddress == address(0)) revert HookNotSet();
        if (lowTokenId > highTokenId) revert InvalidTokenRange();

        NFTStrategyRange nftStrategy = new NFTStrategyRange(
            address(this),
            hookAddress,
            router,
            collection,
            lowTokenId,
            highTokenId,
            tokenName,
            tokenSymbol
        );

        // Costs 2 wei
        _loadLiquidity(address(nftStrategy));

        // Set fees to collectionOwner
        INFTStrategyHook(hookAddress).adminUpdateFeeAddress(address(nftStrategy), collectionOwner);

        emit NFTStrategyRangeLaunched(
            collection,
            address(nftStrategy),
            lowTokenId,
            highTokenId,
            tokenName,
            tokenSymbol
        );

        return nftStrategy;
    }

    // This function lets someone process _buyAndBurnPNKSTR once every twapDelayInBlocks
    // Eth amount to TWAP is twapIncrement, if we have less than that use the remaining amount
    // Payout reward to the caller at the end, we also need to subtract this from burnAmount.
    function processTokenTwap() external nonReentrant {
        uint256 balance = address(this).balance;
        if(balance == 0) revert NoETHToTwap();

        // Check if enough blocks have passed since last TWAP
        if(block.number < lastTwapBlock + twapDelayInBlocks) revert TwapDelayNotMet();

        // Calculate amount to burn - either twapIncrement or remaining ethToTwap
        uint256 burnAmount = twapIncrement;
        if(balance < twapIncrement) {
            burnAmount = balance;
        }

        // Set reward to 0.5% of burnAmount
        uint256 reward = (burnAmount * 5) / 1000;
        burnAmount -= reward;

        // Update state
        lastTwapBlock = block.number;

        _buyAndBurnPNKSTR(burnAmount);

        // Send reward to caller
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);
    }

    function validTransfer(address from, address to, address tokenAddress) external view returns (bool) {
        if (!routerRestrict) return true;
        
        bool userToUser = !listOfRouters[from] && !listOfRouters[to];
        if (userToUser && (from != tokenAddress && to != tokenAddress)) {
            // Always allow transfers from poolManager
            if (from == address(poolManager)) return true;
            
            // Only allow transfers to poolManager during midSwap or loadingLiquidity
            if (to == address(poolManager)) {
                return INFTStrategy(tokenAddress).midSwap() || loadingLiquidity;
            }
            return false;
        }
        return true;
    }

    /// @notice Allows the contract to receive ETH for twap
    receive() external payable {}
}