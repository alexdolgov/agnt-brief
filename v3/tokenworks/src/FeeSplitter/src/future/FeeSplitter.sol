// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IERC721, ITTT, IWETH} from "./Interfaces.sol";

/// @title FeeSplitter (future system) — unified 50/50 fee router for both migration launchers
/// @notice One splitter shared by both new factories (the v1-port decaying-fee launcher and the
///         v2-port flat-fee launcher). Every pool's hook forwards its fee ETH here via
///         `depositETH(token)`. Each deposit is split two ways:
///           - 50% → the token's launcher (the address that burned the NFT — the "deployer"),
///                    forwarded immediately.
///           - 50% → claim pool, distributed pro-rata across the *currently live* original NFTs
///                    (MasterChef accPerShare). Each holder pulls their share via
///                    `claim(uint256[] tokenIds)`.
///         The launcher's cut is the per-token `creatorFee` (0–100%), chosen by the migrator at
///         launch and registered by the factory via `registerLaunch`; holders get the remainder.
///         The platform/PNKSTR cuts of the legacy splitters are gone.
/// @dev    The live-share denominator is `MAX_SUPPLY - initialBurned - burnCount`:
///           - `initialBurned` is a static snapshot, passed at construction, of every NFT already
///             removed through the two *legacy* systems at deploy time (old-v1 `burnCount` +
///             old-v2 `migratedCount`). No on-chain reads of the old splitters.
///           - `burnCount` counts NFTs burned through the two *future* factories from here on.
///             Either factory may bump it via `onBurn`. Going forward all NFTs are burned through
///             the future system, so the snapshot + the two factories' increments fully account
///             for live supply (the legacy launch paths must be paused at deploy — see the deploy
///             script). Each id can burn through exactly one path, so the count can't double.
/// @dev    There is intentionally NO kill switch / drain: the splitter is a perpetual contract.
///         Fees and royalties flow to launchers and holders forever, holders claim forever, and
///         no path can strand or seize the balance.
contract FeeSplitter is Ownable, ReentrancyGuard {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTANTS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Fixed-point scale for `accETHPerShare`. 1B ETH × 1e30 / 1 share ≈ 1e57, well within
    ///         uint256 max (~1.16e77). Generous precision so even 1-wei deposits against ~10k
    ///         shares don't underflow the accumulator.
    uint256 public constant SCALE = 1e30;

    /// @notice Canonical mainnet WETH9. Royalty income paid in WETH (e.g. WETH-denominated OpenSea
    ///         offers) lands here as an ERC20 balance; `distributeRoyalties` unwraps it to ETH
    ///         before accruing it to the holder pool.
    IWETH public constant WETH = IWETH(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       STATE                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Original TenThousandTokens NFT collection — the source of truth for who owns which
    ///         claim share. Burned ids resolve to `0x..dEaD` (or revert) on `ownerOf`, which is
    ///         what excludes them from `claim`.
    IERC721 public immutable nft;
    uint256 public immutable MAX_SUPPLY;
    /// @notice NFTs already burned through the legacy systems at deploy time. Static snapshot that
    ///         offsets the live-share denominator. `initialBurned + burnCount` is the running total.
    uint256 public immutable initialBurned;

    /// @notice The portion of `address(this).balance` already attributed to the holder pool (sum of
    ///         accrued `holderShare` + distributed royalties, minus everything paid out via claim /
    ///         onBurn). Lets royalty income be isolated: anything in the balance ABOVE this is
    ///         unaccounted royalty ETH, swept by `distributeRoyalties`. Without it the contract's
    ///         standing holder pool would be indistinguishable from fresh royalties.
    uint256 public accountedETH;

    /// @notice The two future factories authorized to call `onBurn`. Owner-set after deploy
    ///         (resolves the splitter↔factory deploy-order circularity).
    address public factoryA;
    address public factoryB;

    /// @notice Cumulative ETH-per-share, scaled by SCALE. Each deposit bumps this by
    ///         `holderShare * SCALE / liveSupply()`. Per-NFT pending =
    ///         `(accETHPerShare - rewardDebt[id]) / SCALE`.
    uint256 public accETHPerShare;

    /// @notice NFTs burned through the future factories since deploy. `liveSupply()` subtracts both
    ///         this and `initialBurned` from `MAX_SUPPLY`.
    uint256 public burnCount;

    /// @notice Per-NFT snapshot of `accETHPerShare` at last sync (lazy zero, claim, or burn). The
    ///         new owner of a transferred NFT inherits the seller's `rewardDebt[id]` and so claims
    ///         everything accrued since the last sync.
    mapping(uint256 tokenId => uint256) public rewardDebt;

    /// @notice Per-token creator fee in PERCENT (0–100): the share of each deposit routed to that
    ///         token's launcher; holders get `100 - creatorFeePercent`. Set once by the factory at
    ///         launch via `registerLaunch`. Unregistered tokens read 0, but `depositETH` only ever
    ///         runs for launched tokens (the factory registers before the launcher exists).
    mapping(address token => uint256) public creatorFeePercent;

    /// @notice Whether a token's creator fee has been registered (guards `registerLaunch` to once).
    mapping(address token => bool) public launchRegistered;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       ERRORS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error NothingToClaim();
    error AlreadyRegistered();
    error InvalidCreatorFee();
    error NotTokenOwner();
    error InvalidTokenId();
    error InvalidAddress();
    error TokenNotLaunched();
    error NotFactory();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       EVENTS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event Deposited(address indexed token, address indexed launcher, uint256 amount, uint256 launcherShare, uint256 holderShare);
    event Claimed(address indexed holder, uint256 amount, uint256[] tokenIds);
    event Burned(uint256 indexed tokenId, address indexed recipient, uint256 paidOut);
    event LaunchRegistered(address indexed token, uint256 creatorFeePercent);
    event FactoriesSet(address indexed factoryA, address indexed factoryB);
    event RoyaltiesDistributed(uint256 amount, uint256 shares);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @param _owner         Splitter admin (`setFactories` only — no fund-moving powers).
    /// @param _nft           TenThousandTokens NFT collection. Token ids 1..maxSupply each accrue
    ///                       one claim share while live.
    /// @param _maxSupply     Total NFT supply (10000). Bounds id validation and seeds the live-
    ///                       share count.
    /// @param _initialBurned NFTs already burned through the legacy systems at deploy time. Must be
    ///                       `<= _maxSupply`.
    constructor(address _owner, address _nft, uint256 _maxSupply, uint256 _initialBurned) {
        if (_owner == address(0)) revert InvalidAddress();
        if (_nft == address(0)) revert InvalidAddress();
        if (_maxSupply == 0) revert InvalidAddress();
        if (_initialBurned > _maxSupply) revert InvalidAddress();

        _initializeOwner(_owner);
        nft = IERC721(_nft);
        MAX_SUPPLY = _maxSupply;
        initialBurned = _initialBurned;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       VIEWS                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Currently-live original NFT count = MAX_SUPPLY minus the legacy-burn snapshot minus
    ///         everything burned through the future factories. Doubles as the holder-pool divisor.
    ///         Clamped at zero defensively — each id burns through one path, so the sum can't exceed
    ///         MAX_SUPPLY in practice.
    function liveSupply() public view returns (uint256) {
        uint256 burned = initialBurned + burnCount;
        return burned >= MAX_SUPPLY ? 0 : MAX_SUPPLY - burned;
    }

    /// @notice Pending claimable amount for a specific NFT.
    function pending(uint256 tokenId) external view returns (uint256) {
        if (tokenId == 0 || tokenId > MAX_SUPPLY) return 0;
        return (accETHPerShare - rewardDebt[tokenId]) / SCALE;
    }

    /// @notice Royalty income waiting to be distributed: unaccounted ETH (balance above the holder
    ///         pool) plus any WETH balance that would be unwrapped by `distributeRoyalties`.
    function royaltiesPending() external view returns (uint256) {
        uint256 strayETH = address(this).balance - accountedETH;
        return strayETH + WETH.balanceOf(address(this));
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     DEPOSITS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Receive ETH attributed to `token`. `creatorFeePercent[token]`% routes to that token's
    ///         launcher, the remainder accrues to the per-NFT claim pool. If every NFT has been
    ///         burned (`liveSupply == 0`), the holder remainder folds into the launcher's payout
    ///         (effectively 100% to the launcher regardless of the creator fee).
    /// @dev    Reverts if the token has not been launched yet (no launcher recorded).
    /// @dev    `nonReentrant` is required: the launcher payout hands control to an attacker-set
    ///         contract before `accountedETH` is credited, and a re-entrant `distributeRoyalties`
    ///         would otherwise sweep this deposit's not-yet-accounted holder share as "royalties"
    ///         and double-credit it. The shared guard also blocks re-entry into `claim`. The hook's
    ///         own internal swap can't nest here (its `_afterSwap` self-call guard skips depositETH).
    function depositETH(address token) external payable nonReentrant {
        uint256 amount = msg.value;
        if (amount == 0) return;

        address launcher = ITTT(token).launcher();
        if (launcher == address(0)) revert TokenNotLaunched();

        uint256 launcherShare = amount * creatorFeePercent[token] / 100;
        uint256 holderShare = amount - launcherShare;

        uint256 shares = liveSupply();
        if (shares == 0) {
            // No live NFTs — the holder remainder folds into the launcher payout (nothing retained).
            SafeTransferLib.forceSafeTransferETH(launcher, amount);
        } else {
            if (launcherShare > 0) SafeTransferLib.forceSafeTransferETH(launcher, launcherShare);
            if (holderShare > 0) {
                accETHPerShare += holderShare * SCALE / shares;
                // The holder remainder stays in the balance until claimed — account for it.
                accountedETH += holderShare;
            }
        }

        emit Deposited(token, launcher, amount, launcherShare, holderShare);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     FACTORY HOOK                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Called by *either* future factory inside its launch flow, before the NFT is sent to
    ///         dEaD. Pays out any pending holder share to the burning owner, then shrinks the
    ///         live-share denominator. A given id can only reach here once (each factory transfers
    ///         the NFT in from `msg.sender` and then to dEaD, so it can't be re-presented).
    function onBurn(uint256 tokenId, address recipient) external {
        if (msg.sender != factoryA && msg.sender != factoryB) revert NotFactory();
        uint256 owed = (accETHPerShare - rewardDebt[tokenId]) / SCALE;
        delete rewardDebt[tokenId];
        burnCount += 1;
        if (owed > 0) {
            accountedETH -= owed;
            SafeTransferLib.forceSafeTransferETH(recipient, owed);
        }
        emit Burned(tokenId, recipient, owed);
    }

    /// @notice Called by *either* future factory during a launch to record the token's creator fee
    ///         (the launcher's percentage of each deposit, 0–100). Set-once: a token's fee is fixed
    ///         at launch and can never be changed afterward, so holders can rely on it. Registered
    ///         before the launcher exists on the token, so any token `depositETH` accepts (launcher
    ///         set) is guaranteed to have its fee recorded.
    function registerLaunch(address token, uint256 creatorFee) external {
        if (msg.sender != factoryA && msg.sender != factoryB) revert NotFactory();
        if (token == address(0)) revert InvalidAddress();
        if (launchRegistered[token]) revert AlreadyRegistered();
        if (creatorFee > 100) revert InvalidCreatorFee();
        launchRegistered[token] = true;
        creatorFeePercent[token] = creatorFee;
        emit LaunchRegistered(token, creatorFee);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       CLAIMS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Claim accumulated ETH for every NFT id the caller currently owns. For each id pays
    ///         out `(accETHPerShare - rewardDebt[id]) / SCALE`, then snaps `rewardDebt` to the
    ///         current accumulator. Transfer = forfeit unclaimed by the seller (the new holder
    ///         inherits `rewardDebt[id]`). Burned ids fail the `ownerOf` check, so no per-factory
    ///         migration ledger is needed.
    function claim(uint256[] calldata tokenIds) external nonReentrant {
        uint256 acc = accETHPerShare;
        uint256 total;
        uint256 length = tokenIds.length;
        for (uint256 i; i < length; ++i) {
            uint256 id = tokenIds[i];
            if (id == 0 || id > MAX_SUPPLY) revert InvalidTokenId();
            if (nft.ownerOf(id) != msg.sender) revert NotTokenOwner();
            uint256 owed = (acc - rewardDebt[id]) / SCALE;
            rewardDebt[id] = acc;
            total += owed;
        }
        if (total == 0) revert NothingToClaim();
        accountedETH -= total;
        SafeTransferLib.forceSafeTransferETH(msg.sender, total);
        emit Claimed(msg.sender, total, tokenIds);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      ROYALTIES                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Accept plain ETH — this is how royalty income (e.g. ETH-denominated OpenSea sales,
    ///         paid to this address as the collection's royalty recipient) arrives. Deliberately a
    ///         no-op: it just lets the ETH sit in the balance as unaccounted royalty until someone
    ///         calls `distributeRoyalties`. MUST stay cheap — `WETH.withdraw` forwards only the
    ///         2300-gas stipend here when unwrapping.
    receive() external payable {}

    /// @notice Distribute accumulated royalty income to the live NFT holders, 100% (royalties have
    ///         no per-token launcher, so the 50/50 fee split doesn't apply). Permissionless. Steps:
    ///           1. Unwrap any WETH balance to ETH (lands via `receive`).
    ///           2. `amount` = balance above the accounted holder pool = all royalty ETH.
    ///           3. Accrue `amount` pro-rata to live NFTs; if none are live, fold to the owner.
    /// @dev    Re-derives `amount` from the balance after unwrapping, so it's correct whether the
    ///         royalty arrived as ETH, WETH, or both. No-op (no revert) when there's nothing to
    ///         distribute, so it's safe to poke.
    function distributeRoyalties() external nonReentrant {
        uint256 wethBal = WETH.balanceOf(address(this));
        if (wethBal > 0) WETH.withdraw(wethBal); // → receive(), now part of the balance

        uint256 amount = address(this).balance - accountedETH;
        if (amount == 0) return;

        uint256 shares = liveSupply();
        if (shares == 0) {
            // No live NFTs to accrue to — send royalties to the owner rather than strand them.
            SafeTransferLib.forceSafeTransferETH(owner(), amount);
        } else {
            accETHPerShare += amount * SCALE / shares;
            accountedETH += amount;
        }
        emit RoyaltiesDistributed(amount, shares);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       ADMIN                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Wire the two factories permitted to call `onBurn`. Owner-only, idempotent — used
    ///         once during deployment after both factories exist. Either address may be zero if a
    ///         system is wired later, but both are normally set together.
    function setFactories(address _factoryA, address _factoryB) external onlyOwner {
        factoryA = _factoryA;
        factoryB = _factoryB;
        emit FactoriesSet(_factoryA, _factoryB);
    }
}
