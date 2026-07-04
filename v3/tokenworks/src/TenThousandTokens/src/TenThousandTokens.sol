// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC721} from "solady/tokens/ERC721.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {LibString} from "solady/utils/LibString.sol";
import {MerkleProofLib} from "solady/utils/MerkleProofLib.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IPoolInitializer_v4} from "@uniswap/v4-periphery/src/interfaces/IPoolInitializer_v4.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {IAllowanceTransfer} from "@uniswap/v4-periphery/lib/permit2/src/interfaces/IAllowanceTransfer.sol";
import {IERC721, IRenderer, IFeeSplitter} from "./Interfaces.sol";
import {TTT, POOL_LP_FEE, POOL_TICK_SPACING} from "./TTT.sol";

/// @title TenThousandTokens
/// @notice Fixed-supply NFT sold at a fixed mint price during a single, owner-started window.
///         Soulbound until the full supply mints; once sold out, transfers and approvals unlock
///         permanently. Holders of CLAIM_SOURCE (itself soulbound) may claim one free NFT per
///         source NFT they hold; claimed NFTs are flagged non-refundable. If the window ends
///         short of sellout, paid holders can burn for a refund. If sold out, the owner withdraws.
contract TenThousandTokens is ERC721, Ownable, ReentrancyGuard {
    /// @notice ETH consumed per launch (1 wei pool seed + 1 wei buffer for the rounded
    ///         amount0Max in `_loadLiquidity`). Reserved from `withdraw` so every NFT's launch
    ///         path remains funded.
    uint256 public constant LAUNCH_DUST_PER_TOKEN = 2 wei;

    /// @notice Public `mint()` is locked for the first GATED_DURATION of the mint window.
    ///         Allowlisted users can still mint via `gatedMint` during this window with a
    ///         valid Merkle proof.
    uint64 public constant GATED_DURATION = 24 hours;

    /// @notice Per-wallet cumulative cap on the public `mint()` path. `gatedMint` and `claim`
    ///         are unaffected — each enforces its own cap (per-leaf allowance and CLAIM_SOURCE
    ///         balance, respectively).
    uint256 public constant MAX_PUBLIC_PER_WALLET = 3;

    address private constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    uint256 public immutable MAX_SUPPLY;
    uint256 public immutable MINT_PRICE;
    uint256 public immutable MINT_DURATION;
    IERC721 public immutable CLAIM_SOURCE;
    IPoolManager public immutable POOL_MANAGER;
    IPositionManager public immutable POSM;
    IAllowanceTransfer public immutable PERMIT2;
    /// @notice GlobalDistributorHandler that every TTT consults inside its transfer guard. On
    ///         mainnet this should be 0xDf99bd1218E7EB288CfFeCF9775385167Bb09B2D; on test
    ///         networks a fresh GDH must be deployed and its address passed here.
    address public immutable GLOBAL_DISTRIBUTOR_HANDLER;

    /// @notice TTTHook address. Owner-set before `startMint` so the per-NFT TTT contracts can
    ///         be deployed with the right hook reference.
    address public hook;

    /// @notice FeeSplitter address used for every launched pool. Owner-set before `startMint`.
    address public feeSplitter;

    /// @notice Onchain SVG renderer. Owner-updatable so the art can be replaced without
    ///         redeploying the NFT. Required: must be set before `startMint`.
    address public renderer;

    /// @notice Transient flag the launch flow flips so TTTHook accepts pool init + initial
    ///         liquidity for that token (`ITenThousandTokensFactory.loadingLiquidity()`).
    bool public loadingLiquidity;

    uint64 public mintStart;
    uint64 public mintEnd;
    uint256 public totalMinted;
    bool public ownerWithdrawn;

    /// @notice Merkle root of the gated allowlist. Leaf = `keccak256(abi.encodePacked(addr,
    ///         allowedQty))`. Owner-set; required before `startMint`. Updatable mid-window so
    ///         the allowlist can be amended.
    bytes32 public merkleRoot;

    mapping(address => uint256) public claimedCount;
    mapping(address => uint256) public gatedClaimedCount;
    mapping(address => uint256) public publicMintedCount;
    mapping(uint256 => bool) public nonRefundable;
    /// @notice tokenId → companion ERC20 (TTT) deployed at mint time.
    mapping(uint256 tokenId => address) public tokenContract;
    /// @notice Global distributor registry consulted by every TTT's transfer guard. Set once
    ///         here, applied to all 10,000 tokens. The factory itself is implicitly always a
    ///         distributor (TTT's `_afterTokenTransfer` exempts `from/to == factory`), so this
    ///         only needs entries for additional helpers (airdrop contracts, treasuries, etc.).
    mapping(address => bool) public isDistributor;

    /// @notice Admin kill-switch for `burnAndLaunch`. While true, holders cannot burn an NFT to
    ///         launch its TTT pool. Owner-toggleable. Does not affect `burnAndRefund`, mints,
    ///         or any post-launch flow.
    bool public launchesPaused;

    error InvalidAddress();
    error InvalidSupply();
    error InvalidDuration();
    error MintNotStarted();
    error MintAlreadyStarted();
    error MintEnded();
    error MintNotEnded();
    error SoldOut();
    error NotSoldOut();
    error WrongPrice();
    error ZeroQuantity();
    error NotTokenOwner();
    error AlreadyWithdrawn();
    error NotAllowed();
    error NothingToClaim();
    error NonRefundableToken();
    error HookNotSet();
    error FeeSplitterNotSet();
    error RendererNotSet();
    error MerkleRootNotSet();
    error GatedPeriodActive();
    error InvalidProof();
    error ExceedsAllowance();
    error ExceedsPublicMintLimit();
    error LaunchesPaused();

    event MintStarted(uint256 startTime, uint256 endTime);
    event Minted(address indexed to, uint256 firstId, uint256 quantity);
    event GatedMinted(address indexed to, uint256 firstId, uint256 quantity);
    event MerkleRootSet(bytes32 root);
    event Claimed(address indexed to, uint256[] tokenIds);
    event Refunded(address indexed to, uint256 indexed tokenId, uint256 amount);
    event OwnerWithdrawn(address indexed to, uint256 amount);
    event HookSet(address hook);
    event FeeSplitterSet(address feeSplitter);
    event RendererSet(address renderer);
    event DistributorUpdated(address indexed distributor, bool status);
    event TokenDeployed(uint256 indexed tokenId, address indexed token, address indexed holder);
    event Launched(uint256 indexed tokenId, address indexed token, address indexed launcher, string imageURI);
    event LaunchesPausedSet(bool paused);

    constructor(
        address _owner,
        uint256 _maxSupply,
        uint256 _mintPrice,
        uint256 _mintDuration,
        address _claimSource,
        IPoolManager _poolManager,
        IPositionManager _posm,
        IAllowanceTransfer _permit2,
        address _globalDistributorHandler
    ) {
        if (_owner == address(0)) revert InvalidAddress();
        if (_maxSupply == 0) revert InvalidSupply();
        if (_mintDuration == 0) revert InvalidDuration();
        if (_claimSource == address(0)) revert InvalidAddress();
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        if (address(_posm) == address(0)) revert InvalidAddress();
        if (address(_permit2) == address(0)) revert InvalidAddress();
        if (_globalDistributorHandler == address(0)) revert InvalidAddress();

        _initializeOwner(_owner);
        MAX_SUPPLY = _maxSupply;
        MINT_PRICE = _mintPrice;
        MINT_DURATION = _mintDuration;
        CLAIM_SOURCE = IERC721(_claimSource);
        POOL_MANAGER = _poolManager;
        POSM = _posm;
        PERMIT2 = _permit2;
        GLOBAL_DISTRIBUTOR_HANDLER = _globalDistributorHandler;
    }

    /// @notice Set the TTTHook address used at TTT deploy time. Owner-only. Must be set before
    ///         `startMint`. Updatable so a fresh hook can be wired in if needed before launch.
    function setHook(address _hook) external onlyOwner {
        hook = _hook;
        emit HookSet(_hook);
    }

    /// @notice Set the FeeSplitter destination wired into the hook at launch time. Owner-only.
    function setFeeSplitter(address _feeSplitter) external onlyOwner {
        feeSplitter = _feeSplitter;
        emit FeeSplitterSet(_feeSplitter);
    }

    /// @notice Set or replace the onchain renderer. Owner-only.
    function setRenderer(address _renderer) external onlyOwner {
        renderer = _renderer;
        emit RendererSet(_renderer);
    }

    /// @notice Update the global distributor registry consulted by every TTT. Owner-only.
    function setDistributor(address account, bool status) external onlyOwner {
        isDistributor[account] = status;
        emit DistributorUpdated(account, status);
    }

    /// @notice Admin pause/unpause for `burnAndLaunch`. Owner-only. Does not affect refunds,
    ///         mints, or any TTT internals.
    function setLaunchesPaused(bool _paused) external onlyOwner {
        launchesPaused = _paused;
        emit LaunchesPausedSet(_paused);
    }

    /// @notice Set or update the Merkle root for the gated mint allowlist. Required before
    ///         `startMint`; can be updated mid-window to amend the allowlist. Leaf encoding:
    ///         `keccak256(abi.encodePacked(address, uint256 allowedQty))`.
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoot = _merkleRoot;
        emit MerkleRootSet(_merkleRoot);
    }

    function name() public pure override returns (string memory) {
        return "Ten Thousand Tokens";
    }

    function symbol() public pure override returns (string memory) {
        return "TTT";
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        address r = renderer;
        if (r == address(0)) revert RendererNotSet();
        return IRenderer(r).tokenURI(id);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       MINTING                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function startMint() external onlyOwner {
        if (mintStart != 0) revert MintAlreadyStarted();
        if (hook == address(0)) revert HookNotSet();
        if (renderer == address(0)) revert RendererNotSet();
        if (merkleRoot == bytes32(0)) revert MerkleRootNotSet();
        uint64 start = uint64(block.timestamp);
        uint64 end = start + uint64(MINT_DURATION);
        mintStart = start;
        mintEnd = end;
        emit MintStarted(start, end);
    }

    /// @notice Public mint. Locked for the first `GATED_DURATION` after `startMint` so the
    ///         allowlist phase runs first; allowlist holders can still mint via `gatedMint`.
    function mint(uint256 quantity) external payable {
        if (mintStart == 0) revert MintNotStarted();
        if (block.timestamp < mintStart + GATED_DURATION) revert GatedPeriodActive();
        if (block.timestamp >= mintEnd) revert MintEnded();
        if (quantity == 0) revert ZeroQuantity();

        uint256 already = publicMintedCount[msg.sender];
        if (already + quantity > MAX_PUBLIC_PER_WALLET) revert ExceedsPublicMintLimit();

        uint256 minted = totalMinted;
        if (minted + quantity > MAX_SUPPLY) revert SoldOut();
        if (msg.value != quantity * MINT_PRICE) revert WrongPrice();

        publicMintedCount[msg.sender] = already + quantity;

        uint256 firstId = minted + 1;
        for (uint256 i; i < quantity; ++i) {
            uint256 newId = firstId + i;
            _mint(msg.sender, newId);
            _deployToken(newId, msg.sender);
        }
        totalMinted = minted + quantity;
        emit Minted(msg.sender, firstId, quantity);
    }

    /// @notice Allowlist mint. Open the entire mint window (including the first 24h while
    ///         public `mint()` is still locked). Caller proves membership with a Merkle proof
    ///         against the current `merkleRoot`. `allowedQty` is the per-address cap baked
    ///         into the leaf; a single address can split mints across multiple calls up to
    ///         that cap. Same MINT_PRICE and SoldOut semantics as the public path.
    /// @param  quantity     Number of NFTs to mint in this call.
    /// @param  allowedQty   The per-address cap baked into the caller's leaf.
    /// @param  proof        Sibling hashes from the Merkle root to the caller's leaf.
    function gatedMint(uint256 quantity, uint256 allowedQty, bytes32[] calldata proof) external payable {
        if (mintStart == 0) revert MintNotStarted();
        if (block.timestamp >= mintEnd) revert MintEnded();
        if (quantity == 0) revert ZeroQuantity();

        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, allowedQty));
        if (!MerkleProofLib.verifyCalldata(proof, merkleRoot, leaf)) revert InvalidProof();

        uint256 already = gatedClaimedCount[msg.sender];
        if (already + quantity > allowedQty) revert ExceedsAllowance();

        uint256 minted = totalMinted;
        if (minted + quantity > MAX_SUPPLY) revert SoldOut();
        if (msg.value != quantity * MINT_PRICE) revert WrongPrice();

        gatedClaimedCount[msg.sender] = already + quantity;

        uint256 firstId = minted + 1;
        for (uint256 i; i < quantity; ++i) {
            uint256 newId = firstId + i;
            _mint(msg.sender, newId);
            _deployToken(newId, msg.sender);
        }
        totalMinted = minted + quantity;
        emit GatedMinted(msg.sender, firstId, quantity);
    }

    /// @notice Free claim path for holders of CLAIM_SOURCE. Mints one TenThousandTokens NFT for
    ///         each source NFT the caller holds that hasn't been claimed yet (i.e., balance growth
    ///         since their last claim). Safe with `balanceOf` only because CLAIM_SOURCE is itself
    ///         soulbound — the same source NFT can't fund a second claim by another address.
    ///         Claimed NFTs are non-refundable.
    function claim() external {
        if (mintStart == 0) revert MintNotStarted();
        if (block.timestamp >= mintEnd) revert MintEnded();

        uint256 bal = CLAIM_SOURCE.balanceOf(msg.sender);
        uint256 already = claimedCount[msg.sender];
        if (bal <= already) revert NothingToClaim();
        uint256 quantity = bal - already;

        uint256 minted = totalMinted;
        if (minted + quantity > MAX_SUPPLY) revert SoldOut();

        claimedCount[msg.sender] = bal;
        uint256[] memory ids = new uint256[](quantity);
        for (uint256 i; i < quantity; ++i) {
            uint256 newId = minted + 1 + i;
            ids[i] = newId;
            nonRefundable[newId] = true;
            _mint(msg.sender, newId);
            _deployToken(newId, msg.sender);
        }
        totalMinted = minted + quantity;
        emit Claimed(msg.sender, ids);
    }

    /// @dev Deploys a fresh TTT for `tokenId`. The TTT's owner is this contract (Ownable);
    ///      the human NFT holder controls the TTT indirectly, via factory-mediated calls. Full
    ///      supply mints to this contract, which the transfer guard exempts as factory↔anyone.
    function _deployToken(uint256 tokenId, address holder) internal {
        string memory idStr = LibString.toString(tokenId);
        TTT ttt = new TTT(
            string.concat("TenThousandTokens #", idStr),
            string.concat("TTT-", idStr),
            hook,
            POOL_MANAGER,
            GLOBAL_DISTRIBUTOR_HANDLER
        );
        tokenContract[tokenId] = address(ttt);
        emit TokenDeployed(tokenId, address(ttt), holder);
    }

    /// @notice Refund the mint price by burning the NFT. Available only once the mint window has
    ///         ended without reaching MAX_SUPPLY. Once sold out, the owner-withdraw path takes over.
    ///         Tokens minted via the free `claim` path are non-refundable.
    function burnAndRefund(uint256 tokenId) external {
        if (block.timestamp < mintEnd) revert MintNotEnded();
        if (totalMinted == MAX_SUPPLY) revert SoldOut();
        if (_ownerOf(tokenId) != msg.sender) revert NotTokenOwner();
        if (nonRefundable[tokenId]) revert NonRefundableToken();

        _burn(tokenId);
        SafeTransferLib.forceSafeTransferETH(msg.sender, MINT_PRICE);
        emit Refunded(msg.sender, tokenId, MINT_PRICE);
    }

    /// @notice Burn the NFT and launch its companion TTT into a v4 ETH/TTT pool. Available only
    ///         after the full supply mints. Caller must own the NFT. The TTT's display name and
    ///         symbol are set to the supplied values before pool init. Liquidity is locked to
    ///         the dead address.
    /// @dev    Consumes `LAUNCH_DUST_PER_TOKEN` of contract ETH for the seed liquidity (1 wei
    ///         on the ETH side + 1 wei buffer rolled into amount0Max).
    function burnAndLaunch(
        uint256 tokenId,
        string calldata tokenName,
        string calldata tokenSymbol,
        string calldata tokenImageURI
    ) external nonReentrant {
        if (launchesPaused) revert LaunchesPaused();
        if (totalMinted != MAX_SUPPLY) revert NotSoldOut();
        if (_ownerOf(tokenId) != msg.sender) revert NotTokenOwner();
        if (feeSplitter == address(0)) revert FeeSplitterNotSet();
        address token = tokenContract[tokenId];

        // Splitter shrinks its active-share denominator and pays out any pending holder share
        // to msg.sender before the NFT disappears. Must precede _burn so msg.sender is still
        // the recorded owner from the splitter's perspective.
        IFeeSplitter(feeSplitter).onBurn(tokenId, msg.sender);
        _burn(tokenId);
        TTT t = TTT(payable(token));
        // Stamp metadata first (read by indexers as soon as the pool exists).
        t.setMetadata(tokenName, tokenSymbol, tokenImageURI);
        // Initialize the pool + seed liquidity, then record the launcher. Setting the launcher
        // last keeps the FeeSplitter recipient tied to a fully-launched token.
        _loadLiquidity(token);
        t.setLauncher(msg.sender);

        emit Launched(tokenId, token, msg.sender, tokenImageURI);
    }

    /// @notice Owner withdraws contract balance once supply is exhausted, leaving
    ///         `MAX_SUPPLY * LAUNCH_DUST_PER_TOKEN` reserved for future launch seed liquidity.
    function withdraw() external onlyOwner {
        if (totalMinted != MAX_SUPPLY) revert NotSoldOut();
        if (ownerWithdrawn) revert AlreadyWithdrawn();
        ownerWithdrawn = true;
        uint256 reserve = MAX_SUPPLY * LAUNCH_DUST_PER_TOKEN;
        uint256 bal = address(this).balance;
        uint256 payout = bal > reserve ? bal - reserve : 0;
        if (payout > 0) SafeTransferLib.forceSafeTransferETH(owner(), payout);
        emit OwnerWithdrawn(owner(), payout);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       LAUNCH                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @dev Adapted from a previous project. Initializes the ETH/TTT pool through the
    ///      PositionManager, mints a full-range LP position to DEAD_ADDRESS, and seeds it with
    ///      1 wei of ETH + the entire 1B TTT supply held by this contract. The hook is wired
    ///      with the per-token fee destination first; both pool init and the initial liquidity
    ///      add are gated on `loadingLiquidity` from inside TTTHook.
    function _loadLiquidity(address _token) internal {
        loadingLiquidity = true;

        // Fee routing is global on the hook (owner-set once after deploy); no per-token wiring.

        // Create the pool with ETH (currency0) and TOKEN (currency1).
        Currency currency0 = Currency.wrap(address(0));
        Currency currency1 = Currency.wrap(_token);

        uint24 lpFee = POOL_LP_FEE;
        int24 tickSpacing = POOL_TICK_SPACING;

        uint256 token0Amount = 1; // 1 wei ETH
        uint256 token1Amount = 1_000_000_000 * 10 ** 18; // 1B TOKEN (full TTT supply)

        // 10e18 ETH ≡ 1_000_000_000e18 TOKEN — sqrtPriceX96 hardcoded from the prior project.
        uint160 startingPrice = 501082896750095888663770159906816;

        int24 tickLower = TickMath.minUsableTick(tickSpacing);
        int24 tickUpper = int24(175020);

        PoolKey memory key = PoolKey(currency0, currency1, lpFee, tickSpacing, IHooks(hook));
        bytes memory hookData = new bytes(0);

        // Hardcoded from LiquidityAmounts.getLiquidityForAmounts.
        uint128 liquidity = 158372218983990412488087;

        uint256 amount0Max = token0Amount + 1 wei;
        uint256 amount1Max = token1Amount + 1 wei;

        (bytes memory actions, bytes[] memory mintParams) =
            _mintLiquidityParams(key, tickLower, tickUpper, liquidity, amount0Max, amount1Max, DEAD_ADDRESS, hookData);

        bytes[] memory params = new bytes[](2);
        params[0] = abi.encodeWithSelector(IPoolInitializer_v4.initializePool.selector, key, startingPrice, hookData);
        params[1] =
            abi.encodeWithSelector(IPositionManager.modifyLiquidities.selector, abi.encode(actions, mintParams), block.timestamp + 60);

        uint256 valueToPass = amount0Max;
        PERMIT2.approve(_token, address(POSM), type(uint160).max, type(uint48).max);
        // TTT side: PoolManager pulls token1 from this contract (the LPer). The hook bumps the
        // transient transfer allowance inside `_afterAddLiquidity` so this transfer passes the
        // distributor guard, but we're already a distributor — both paths work.
        TTT(payable(_token)).approve(address(POSM), type(uint256).max);

        POSM.multicall{value: valueToPass}(params);

        loadingLiquidity = false;
    }

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

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    SOULBOUND GATE                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @dev Transfers and new approvals are blocked until the full supply mints; once unlocked,
    ///      they stay unlocked permanently.
    function _transfersUnlocked() internal view returns (bool) {
        return totalMinted == MAX_SUPPLY;
    }

    function _beforeTokenTransfer(address from, address to, uint256 /*id*/ ) internal view override {
        if (from == address(0) || to == address(0)) return;
        if (_transfersUnlocked()) return;
        revert NotAllowed();
    }

    function setApprovalForAll(address operator, bool isApproved) public override {
        if (!_transfersUnlocked() && isApproved) revert NotAllowed();
        super.setApprovalForAll(operator, isApproved);
    }

    function approve(address account, uint256 id) public payable override {
        if (!_transfersUnlocked() && account != address(0)) revert NotAllowed();
        super.approve(account, id);
    }
}
