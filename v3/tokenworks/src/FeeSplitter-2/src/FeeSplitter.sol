// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IERC721, ITTT} from "./Interfaces.sol";

/// @title FeeSplitter — per-token fee router for the TenThousandTokens system
/// @notice The hook forwards each pool's 1% resting fee to this contract via
///         `depositETH(token)`. Each deposit is split into four chunks:
///           - 50% → launcher of the originating token (the NFT holder who burned it),
///                    forwarded immediately
///           - 10% → platform wallet (constructor-set)
///           - 10% → PNKSTR wallet (constructor-set)
///           - 30% → claim pool, distributed pro-rata across the *currently active* NFTs
///                    (MasterChef accPerShare). Each holder pulls their share via
///                    `claim(uint256[] tokenIds)`.
/// @dev    The factory calls `onBurn(id, owner)` from inside `burnAndLaunch` so the divisor
///         shrinks with each launch and the burning launcher collects any pending share at
///         the burn moment. Fees can only ever flow after sellout (a hard factory gate), so
///         every NFT id has `accETHPerShare == 0` at its mint moment — `rewardDebt` defaults
///         to 0 and no per-mint hook is needed.
/// @dev    The kill switch is gated by a 1-year timelock from deployment. After kill, the
///         contract's full balance is forwarded to the owner and `depositETH` reverts. The
///         hook's `feeAddress` is updatable so a successor splitter can be wired up post-kill.
contract FeeSplitter is Ownable, ReentrancyGuard {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTANTS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    uint256 private constant TOTAL_BIPS = 10000;
    uint256 private constant LAUNCHER_BIPS = 5000; // 50% to launcher
    uint256 private constant PLATFORM_FEE_BIPS = 1000; // 10% to platform
    uint256 private constant PNKSTR_FEE_BIPS = 1000; // 10% to PNKSTR
    // Holder share is the residual: TOTAL - LAUNCHER - PLATFORM - PNKSTR = 3000 (30%).

    /// @notice Fixed-point scale for `accETHPerShare`. 1B ETH × 1e30 / 1 share ≈ 1e57, well
    ///         within uint256 max (~1.16e77). Generous precision so that even 1-wei deposits
    ///         against ~10k shares don't underflow to zero in the accumulator.
    uint256 public constant SCALE = 1e30;

    /// @notice Earliest the contract may be killed: deployment + 1 year.
    uint256 public constant KILL_TIMELOCK = 365 days;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       STATE                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice TenThousandTokens NFT collection. Each active token id 1..MAX_SUPPLY is a
    ///         claim share. Also the only address allowed to call `onBurn`.
    IERC721 public immutable nft;
    uint256 public immutable MAX_SUPPLY;
    address public immutable platformWallet;
    address public immutable pnkstrWallet;
    uint256 public immutable deployedAt;

    /// @notice Cumulative ETH-per-share, scaled by SCALE. Each deposit bumps this by
    ///         `holderShare * SCALE / activeShares()`. Per-NFT pending = `(accETHPerShare -
    ///         rewardDebt[id]) / SCALE`.
    uint256 public accETHPerShare;

    /// @notice Number of NFTs the factory has notified the splitter about via `onBurn`.
    ///         `activeShares() = MAX_SUPPLY - burnCount`.
    uint256 public burnCount;

    /// @notice Per-NFT snapshot of `accETHPerShare` at last sync (mint = lazy zero, claim, or
    ///         burn). New owner of a transferred NFT inherits the seller's `rewardDebt[id]`
    ///         and so claims everything accrued since the last sync.
    mapping(uint256 tokenId => uint256) public rewardDebt;

    /// @notice Once true: depositETH reverts and the contract is wound down.
    bool public killed;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       ERRORS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error IsKilled();
    error NotYetKillable();
    error AlreadyKilled();
    error NothingToClaim();
    error NotTokenOwner();
    error InvalidTokenId();
    error InvalidAddress();
    error TokenNotLaunched();
    error NotFactory();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       EVENTS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event Deposited(
        address indexed token,
        address indexed launcher,
        uint256 amount,
        uint256 launcherShare,
        uint256 platformShare,
        uint256 pnkstrShare,
        uint256 holderShare
    );
    event Claimed(address indexed holder, uint256 amount, uint256[] tokenIds);
    event Burned(uint256 indexed tokenId, address indexed owner, uint256 paidOut);
    event KillSwitchPulled(address indexed owner, uint256 amount);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @param _owner          Splitter admin (kill switch).
    /// @param _nft            TenThousandTokens NFT collection. Token ids 1..maxSupply each
    ///                        accrue 1 share of the holder pool while they exist. Also the
    ///                        only caller permitted for `onBurn`.
    /// @param _platformWallet Recipient of the 10% platform fee, paid immediately on deposit.
    /// @param _pnkstrWallet   Recipient of the 10% PNKSTR fee, paid immediately on deposit.
    /// @param _maxSupply      Total NFT supply. Bounds id validation and seeds the active-share
    ///                        count (`activeShares = maxSupply - burnCount`). Must equal the
    ///                        NFT contract's MAX_SUPPLY.
    constructor(
        address _owner,
        address _nft,
        address _platformWallet,
        address _pnkstrWallet,
        uint256 _maxSupply
    ) {
        if (_owner == address(0)) revert InvalidAddress();
        if (_nft == address(0)) revert InvalidAddress();
        if (_platformWallet == address(0)) revert InvalidAddress();
        if (_pnkstrWallet == address(0)) revert InvalidAddress();
        if (_maxSupply == 0) revert InvalidAddress();

        _initializeOwner(_owner);
        nft = IERC721(_nft);
        platformWallet = _platformWallet;
        pnkstrWallet = _pnkstrWallet;
        MAX_SUPPLY = _maxSupply;
        deployedAt = block.timestamp;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       VIEWS                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Currently active NFT count = MAX_SUPPLY minus everything the factory has burned.
    function activeShares() public view returns (uint256) {
        return MAX_SUPPLY - burnCount;
    }

    /// @notice Pending claimable amount for a specific NFT.
    function pending(uint256 tokenId) external view returns (uint256) {
        if (tokenId == 0 || tokenId > MAX_SUPPLY) return 0;
        return (accETHPerShare - rewardDebt[tokenId]) / SCALE;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     DEPOSITS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Receive ETH attributed to `token`. 50% routes to that token's launcher (set on
    ///         the TTT during `burnAndLaunch`), 10% to platformWallet, 10% to pnkstrWallet,
    ///         and 30% accrues to the per-NFT claim pool. If every NFT has been burned, the
    ///         30% holder share folds into the platform forward.
    /// @dev    Reverts if the token has not been launched yet (no launcher recorded).
    function depositETH(address token) external payable {
        if (killed) revert IsKilled();
        uint256 amount = msg.value;
        if (amount == 0) return;

        address launcher = ITTT(token).launcher();
        if (launcher == address(0)) revert TokenNotLaunched();

        uint256 launcherShare = amount * LAUNCHER_BIPS / TOTAL_BIPS;
        uint256 platformShare = amount * PLATFORM_FEE_BIPS / TOTAL_BIPS;
        uint256 pnkstrShare = amount * PNKSTR_FEE_BIPS / TOTAL_BIPS;
        uint256 holderShare = amount - launcherShare - platformShare - pnkstrShare;

        SafeTransferLib.forceSafeTransferETH(launcher, launcherShare);
        SafeTransferLib.forceSafeTransferETH(pnkstrWallet, pnkstrShare);

        uint256 shares = activeShares();
        if (shares == 0) {
            // No holders left — fold the holder slice into the platform forward.
            SafeTransferLib.forceSafeTransferETH(platformWallet, platformShare + holderShare);
        } else {
            SafeTransferLib.forceSafeTransferETH(platformWallet, platformShare);
            accETHPerShare += holderShare * SCALE / shares;
        }

        emit Deposited(token, launcher, amount, launcherShare, platformShare, pnkstrShare, holderShare);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     FACTORY HOOK                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Called by the factory inside `burnAndLaunch`, before `_burn(id)`. Pays out any
    ///         pending holder share to the burning owner, then shrinks the active-share
    ///         denominator. Lazy-default `rewardDebt[id] == 0` is correct because every NFT
    ///         is minted before any deposit can flow (sellout gates burnAndLaunch).
    function onBurn(uint256 tokenId, address owner) external {
        if (msg.sender != address(nft)) revert NotFactory();
        uint256 owed = (accETHPerShare - rewardDebt[tokenId]) / SCALE;
        delete rewardDebt[tokenId];
        burnCount += 1;
        if (owed > 0) SafeTransferLib.forceSafeTransferETH(owner, owed);
        emit Burned(tokenId, owner, owed);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       CLAIMS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Claim accumulated ETH for every NFT id the caller currently owns. For each id
    ///         pays out `(accETHPerShare - rewardDebt[id]) / SCALE`, then snaps `rewardDebt`
    ///         to the current accumulator. Transfer = forfeit unclaimed by the seller (the new
    ///         holder inherits the seller's `rewardDebt[id]` and collects everything since
    ///         the last sync on next claim).
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
        SafeTransferLib.forceSafeTransferETH(msg.sender, total);
        emit Claimed(msg.sender, total, tokenIds);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       ADMIN                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Kill switch. After 1 year from deployment, owner may drain all ETH and
    ///         permanently disable depositETH. Use to retire this splitter and migrate fee flow
    ///         to a successor (the hook's `feeAddress` is owner-updatable for that purpose).
    /// @dev    One-shot. Holders lose any unclaimed pool ETH that hasn't been pulled at kill —
    ///         everyone should claim before the timelock expires.
    function kill() external onlyOwner {
        if (block.timestamp < deployedAt + KILL_TIMELOCK) revert NotYetKillable();
        if (killed) revert AlreadyKilled();
        killed = true;
        uint256 bal = address(this).balance;
        if (bal > 0) SafeTransferLib.forceSafeTransferAllETH(owner());
        emit KillSwitchPulled(owner(), bal);
    }
}
