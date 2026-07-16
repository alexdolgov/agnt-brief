// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC20} from "solady/tokens/ERC20.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {
    IPositionManager
} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {
    IAllowanceTransfer
} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-periphery/src/libraries/LiquidityAmounts.sol";
import {IUniswapV4Router04} from "v4-router/interfaces/IUniswapV4Router04.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";


/// @title FW2 - Temporary $FW2 ERC20 Token
/// @author TokenWorks (https://token.works/)
contract FW2Token is ERC20, Ownable {
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

    /// @notice Maximum supply of $FW2 tokens
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 1e18;
    /// @notice Uniswap V4 Position Manager for liquidity operations
    IPositionManager internal immutable posm;
    /// @notice Permit2 contract for token approvals
    IAllowanceTransfer internal immutable permit2;
    /// @notice Uniswap V4 Router for token swaps
    IUniswapV4Router04 internal immutable router;
    /// @notice Uniswap V4 Pool Manager for pool operations
    IPoolManager internal immutable poolManager;
    /// @notice FundingWorks address
    address public immutable fundingWorks;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      MODIFIERS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Restricts function to only the FundingWorks contract
    modifier onlyFundingWorks() {
        if (msg.sender != fundingWorks) revert NotFundingWorks();
        _;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice The Uniswap V4 hook address (set once via start)
    address public hookAddress;
    /// @notice Gates the hook to only allow during liquidity loading
    bool public loadingLiquidity;
    /// @notice The LP NFT token ID
    uint256 public lpTokenId;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Thrown when start() is called more than once
    error AlreadyStarted();
    /// @notice Thrown when hook address is zero
    error InvalidHook();
    /// @notice Thrown when called by an address other than FundingWorks
    error NotFundingWorks();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emitted when the token's liquidity is loaded
    /// @param hook The hook address
    event LiquidityLoaded(address indexed hook);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Constructor initializes the token with required dependencies
    /// @param _posm Uniswap V4 Position Manager address
    /// @param _permit2 Permit2 contract address
    /// @param _router Uniswap V4 Router address
    /// @param _poolManager Uniswap V4 Pool Manager address
    /// @param _owner The contract owner
    constructor(
        address _posm,
        address _permit2,
        address payable _router,
        address _poolManager,
        address _owner,
        address _fundingWorks
    ) {
        posm = IPositionManager(_posm);
        permit2 = IAllowanceTransfer(_permit2);
        router = IUniswapV4Router04(_router);
        poolManager = IPoolManager(_poolManager);
        fundingWorks = _fundingWorks;

        _initializeOwner(_owner);

        // Mint max supply to this contract
        _mint(address(this), MAX_SUPPLY);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   ERC20 METADATA                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Returns the name of the token
    function name() public pure override returns (string memory) {
        return "TokenWorks S02";
    }

    /// @notice Returns the symbol of the token
    function symbol() public pure override returns (string memory) {
        return "S02";
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Updates the FW2Hook address
    /// @param _hook The new WorksHook address
    function updateHook(address _hook) external onlyOwner {
        hookAddress = _hook;
    }

    /// @notice Starts the token by setting hook and loading liquidity
    /// @param _hook The FW2Hook address
    /// @dev Can only be called once by FundingWorks. Requires ETH for initial LP.
    function start(address _hook) external payable onlyFundingWorks {
        if (_hook == address(0)) revert InvalidHook();
        if (hookAddress != address(0)) revert AlreadyStarted();

        hookAddress = _hook;

        // Load liquidity into Uniswap V4 pool
        _loadLiquidity();

        emit LiquidityLoaded(_hook);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Internal function to load initial liquidity into the Uniswap V4 pool
    /// @dev Creates pool, initializes with starting price, and adds liquidity
    function _loadLiquidity() internal {
        loadingLiquidity = true;

        // Create the pool with ETH (currency0) and FW2 (currency1)
        Currency currency0 = Currency.wrap(address(0)); // ETH
        Currency currency1 = Currency.wrap(address(this)); // FW2

        uint24 lpFee = 0;
        int24 tickSpacing = 60;

        uint256 token0Amount = 1; // 1 wei ETH
        uint256 token1Amount = MAX_SUPPLY; // All FW2 tokens

        // 1 ETH starting valuation = 1B FW2/ETH
        uint160 startingPrice = 2505413900920958623236421556199268;

        int24 tickLower = TickMath.minUsableTick(tickSpacing);
        int24 tickUpper = int24(207180);

        PoolKey memory key = PoolKey(
            currency0,
            currency1,
            lpFee,
            tickSpacing,
            IHooks(hookAddress)
        );
        bytes memory hookData = new bytes(0);

        // Calculate liquidity using LiquidityAmounts
        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            startingPrice,
            TickMath.getSqrtPriceAtTick(tickLower),
            TickMath.getSqrtPriceAtTick(tickUpper),
            token0Amount,
            token1Amount
        );

        uint256 amount0Max = token0Amount + 1 wei;
        uint256 amount1Max = token1Amount + 1 wei;

        (
            bytes memory actions,
            bytes[] memory mintParams
        ) = _mintLiquidityParams(
                key,
                tickLower,
                tickUpper,
                liquidity,
                amount0Max,
                amount1Max,
                fundingWorks, // Send LP NFT to FundingWorks for later withdrawal
                hookData
            );

        bytes[] memory params = new bytes[](2);

        params[0] = abi.encodeWithSelector(
            posm.initializePool.selector,
            key,
            startingPrice,
            hookData
        );

        params[1] = abi.encodeWithSelector(
            posm.modifyLiquidities.selector,
            abi.encode(actions, mintParams),
            block.timestamp + 60
        );

        // Approve permit2 to spend FW2
        _approve(address(this), address(permit2), type(uint256).max);

        // Approve posm via permit2
        permit2.approve(
            address(this),
            address(posm),
            type(uint160).max,
            type(uint48).max
        );

        // Capture the token ID before minting
        lpTokenId = posm.nextTokenId();

        posm.multicall{value: amount0Max}(params);

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
        bytes memory actions = abi.encodePacked(
            uint8(Actions.MINT_POSITION),
            uint8(Actions.SETTLE_PAIR)
        );

        bytes[] memory params = new bytes[](2);
        params[0] = abi.encode(
            poolKey,
            _tickLower,
            _tickUpper,
            liquidity,
            amount0Max,
            amount1Max,
            recipient,
            hookData
        );
        params[1] = abi.encode(poolKey.currency0, poolKey.currency1);
        return (actions, params);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      RECEIVE                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Allows contract to receive ETH
    receive() external payable {}
}
