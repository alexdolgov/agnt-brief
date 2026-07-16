// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC20} from "solady/tokens/ERC20.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IUnlockCallback} from "@uniswap/v4-core/src/interfaces/callback/IUnlockCallback.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {BalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {SwapParams} from "@uniswap/v4-core/src/types/PoolOperation.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {CurrencySettler} from "@uniswap/v4-core/test/utils/CurrencySettler.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IGlobalDistributor, ITenThousandTokensFactory} from "./Interfaces.sol";

// Pool params for the canonical ETH/TTT v4 pool. Shared between TTT (buyback path) and
// TenThousandTokens (launch / liquidity-seeding path) so they cannot drift.
uint24 constant POOL_LP_FEE = 0;
int24 constant POOL_TICK_SPACING = 60;

/// @title TTT - Ten Thousand Tokens companion ERC20
/// @notice Per-NFT ERC20 deployed by TenThousandTokens at mint time. Transfers are restricted
///         to distributor-whitelisted addresses and to/from the v4 PoolManager (the latter
///         gated by a per-tx transient allowance set by TTTHook). Each TTT is also its own
///         buyback sink: ETH pushed to it via the hook is spent permissionlessly through
///         `buyback()`, and the bought TTT stays on this contract forever. Name and symbol are
///         state variables editable by the owner (the NFT holder). The entire MAX_SUPPLY is
///         minted to the deployer (the TenThousandTokens contract); ownership and supply are
///         decoupled.
contract TTT is Ownable, ERC20, ReentrancyGuard, IUnlockCallback {
    using CurrencySettler for Currency;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTANTS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Maximum token supply (1 billion tokens)
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 1e18;
    /// @notice Address of the Global Distribution Handler. Set at deploy time by the factory; on
    ///         mainnet this is 0xDf99bd1218E7EB288CfFeCF9775385167Bb09B2D, but we let the factory
    ///         pick so a fresh GDH can be deployed on test networks.
    address public immutable GLOBAL_DISTRIBUTION_HANDLER;

    /// @notice Max ETH consumed per `buyback()` call.
    uint256 public constant TWAP_INCREMENT = 1 ether;
    /// @notice Minimum block gap between buyback calls.
    uint256 public constant BUYBACK_DELAY_BLOCKS = 1;
    /// @notice Caller bounty in basis points (50 = 0.5%) of the per-call slice.
    uint256 public constant CALLER_REWARD_BPS = 50;
    uint256 private constant TOTAL_BIPS = 10000;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       STATE                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Uniswap V4 hook for this token's pool. Immutable — set at deploy and never
    ///         changes. (Fees route to the hook's global `feeAddress`, which the hook owner can
    ///         repoint anytime.)
    address public immutable hookAddress;
    /// @notice Address of the Uniswap V4 pool manager.
    IPoolManager public immutable poolManager;
    /// @notice The TenThousandTokens contract that deployed this TTT. Owner of this contract
    ///         and the source of truth for global distributor membership + the launcher.
    address public immutable factory;

    /// @notice Address that gets the 70% fee share via FeeSplitter. Set once by the factory
    ///         inside `burnAndLaunch` to the address that burned the NFT.
    address public launcher;

    string private _name;
    string private _symbol;
    string private _imageURI;

    uint256 public lastBuybackBlock;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       EVENTS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event AllowanceIncreased(uint256 amount);
    event AllowanceSpent(address indexed from, address indexed to, uint256 amount);
    event LauncherSet(address indexed launcher);
    event MetadataUpdated(string newName, string newSymbol, string newImageURI);
    event Bought(address indexed caller, uint256 ethSpent, uint256 amountBought, uint256 callerReward);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       ERRORS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error InvalidAddress();
    error EmptyString();
    error OnlyHook();
    error InvalidTransfer();
    error LauncherAlreadySet();
    error NoEth();
    error NotPoolManager();
    error DelayNotMet();
    error NotFactoryOwner();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @dev Owner is always the deploying TenThousandTokens contract (msg.sender). Distributor
    ///      membership is read globally from the factory at transfer time, so individual TTTs
    ///      have no per-instance distributor mapping.
    constructor(
        string memory name_,
        string memory symbol_,
        address _hook,
        IPoolManager _poolManager,
        address _globalDistributorHandler
    ) {
        if (bytes(name_).length == 0) revert EmptyString();
        if (bytes(symbol_).length == 0) revert EmptyString();
        if (_hook == address(0)) revert InvalidAddress();
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        if (_globalDistributorHandler == address(0)) revert InvalidAddress();

        _name = name_;
        _symbol = symbol_;
        hookAddress = _hook;
        poolManager = _poolManager;
        GLOBAL_DISTRIBUTION_HANDLER = _globalDistributorHandler;
        factory = msg.sender;
        _initializeOwner(msg.sender);
        _mint(msg.sender, MAX_SUPPLY);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        VIEWS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function imageURI() public view returns (string memory) {
        return _imageURI;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        ADMIN                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Update the token's display name, symbol, and image URI. Owner-only (= factory).
    ///         The factory invokes this on the holder's behalf inside `burnAndLaunch`.
    function setMetadata(string calldata name_, string calldata symbol_, string calldata imageURI_)
        external
        onlyOwner
    {
        _name = name_;
        _symbol = symbol_;
        _imageURI = imageURI_;
        emit MetadataUpdated(name_, symbol_, imageURI_);
    }

    /// @notice Admin override for metadata, callable by the factory's current `owner()`. Provides
    ///         a moderation/recovery path independent of the burnAndLaunch flow (e.g. to scrub
    ///         offensive name/symbol/imageURI a launcher set post-launch). Emits the same
    ///         `MetadataUpdated` event as `setMetadata`.
    function adminSetMetadata(string calldata name_, string calldata symbol_, string calldata imageURI_) external {
        if (msg.sender != Ownable(factory).owner()) revert NotFactoryOwner();
        _name = name_;
        _symbol = symbol_;
        _imageURI = imageURI_;
        emit MetadataUpdated(name_, symbol_, imageURI_);
    }

    /// @notice Records the address that burned the NFT during `burnAndLaunch`. The FeeSplitter
    ///         routes 70% of incoming fees to this address. One-shot: only set during launch.
    function setLauncher(address _launcher) external onlyOwner {
        if (launcher != address(0)) revert LauncherAlreadySet();
        launcher = _launcher;
        emit LauncherSet(_launcher);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        BURN                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Burns `amount` from the caller's balance, decreasing `totalSupply`.
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       BUYBACK                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice The canonical ETH/this-token pool key. Reconstructed from immutables and the
    ///         hardcoded launch params used by the factory in `_loadLiquidity`.
    function poolKey() public view returns (PoolKey memory) {
        return PoolKey({
            currency0: Currency.wrap(address(0)),
            currency1: Currency.wrap(address(this)),
            fee: POOL_LP_FEE,
            tickSpacing: POOL_TICK_SPACING,
            hooks: IHooks(hookAddress)
        });
    }

    /// @notice Permissionless. Spends up to TWAP_INCREMENT of contract ETH on a buyback, pays
    ///         the caller a CALLER_REWARD_BPS bounty, swaps the rest to this token (held on this
    ///         contract forever). Rate-limited to one call per BUYBACK_DELAY_BLOCKS.
    function buyback() external nonReentrant {
        if (block.number < lastBuybackBlock + BUYBACK_DELAY_BLOCKS) revert DelayNotMet();

        uint256 available = address(this).balance;
        if (available == 0) revert NoEth();

        uint256 slice = available < TWAP_INCREMENT ? available : TWAP_INCREMENT;
        uint256 reward = slice * CALLER_REWARD_BPS / TOTAL_BIPS;
        uint256 buyAmount = slice - reward;

        lastBuybackBlock = block.number;

        uint256 amountOut;
        if (buyAmount > 0) {
            bytes memory result = poolManager.unlock(abi.encode(buyAmount));
            amountOut = abi.decode(result, (uint256));
        }

        if (reward > 0) SafeTransferLib.forceSafeTransferETH(msg.sender, reward);

        emit Bought(msg.sender, buyAmount, amountOut, reward);
    }

    function unlockCallback(bytes calldata data) external returns (bytes memory) {
        if (msg.sender != address(poolManager)) revert NotPoolManager();
        uint256 amountIn = abi.decode(data, (uint256));

        PoolKey memory key = poolKey();
        BalanceDelta d = poolManager.swap(
            key,
            SwapParams({
                zeroForOne: true,
                amountSpecified: -int256(amountIn),
                sqrtPriceLimitX96: TickMath.MIN_SQRT_PRICE + 1
            }),
            ""
        );

        // Settle ETH debt (paid from this contract's balance).
        key.currency0.settle(poolManager, address(this), uint256(int256(-d.amount0())), false);

        uint256 amountOut = uint256(int256(d.amount1()));
        if (amountOut > 0) {
            // We are the token. Bump our own transient allowance so the pool→self transfer
            // passes the same guard external swappers go through.
            _bumpTransferAllowance(amountOut);
            key.currency1.take(poolManager, address(this), amountOut, false);
        }

        return abi.encode(amountOut);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  TRANSFER GUARDS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Increases the per-tx transfer allowance the pool manager is allowed to move.
    ///         Stored in transient storage slot 0; expires at end of transaction.
    function increaseTransferAllowance(uint256 amountAllowed) external {
        if (msg.sender != hookAddress) revert OnlyHook();
        _bumpTransferAllowance(amountAllowed);
    }

    function _bumpTransferAllowance(uint256 amountAllowed) internal {
        uint256 currentAllowance = getTransferAllowance();
        assembly {
            tstore(0, add(currentAllowance, amountAllowed))
        }
        emit AllowanceIncreased(amountAllowed);
    }

    function getTransferAllowance() public view returns (uint256 transferAllowance) {
        assembly {
            transferAllowance := tload(0)
        }
    }

    /// @dev Allow: mints, burns, factory↔anyone (the factory always passes), distributor↔anyone
    ///      (membership is read globally from the factory), and poolManager↔anyone capped by the
    ///      transient allowance the hook bumped beforehand.
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual override {
        if (from == address(0)) return;
        // Burns are always permitted — anyone may burn their own balance.
        if (to == address(0)) return;

        if (
            IGlobalDistributor(GLOBAL_DISTRIBUTION_HANDLER).isGlobalDistributor(from)
                || IGlobalDistributor(GLOBAL_DISTRIBUTION_HANDLER).isGlobalDistributor(to)
        ) {
            return;
        }

        // Factory is the privileged operator: deployer = supply holder = launch / withdraw mover.
        address fact = factory;
        if (from == fact || to == fact) return;

        ITenThousandTokensFactory f = ITenThousandTokensFactory(fact);
        if (f.isDistributor(from) || f.isDistributor(to)) return;

        if (from == address(poolManager) || to == address(poolManager)) {
            uint256 transferAllowance = getTransferAllowance();
            require(transferAllowance >= amount, InvalidTransfer());
            assembly {
                let newAllowance := sub(transferAllowance, amount)
                tstore(0, newAllowance)
            }
            emit AllowanceSpent(from, to, amount);
            return;
        }

        revert InvalidTransfer();
    }

    receive() external payable {}
}
