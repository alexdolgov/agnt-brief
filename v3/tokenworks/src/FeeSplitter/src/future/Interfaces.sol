// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @notice Global, onchain registry of addresses exempt from TTT transfer restrictions. Shared
///         across both future systems; the deployed instance is reused (not redeployed).
interface IGlobalDistributor {
    function isGlobalDistributor(address account) external view returns (bool);
}

/// @notice Minimal TTT surface the unified FeeSplitter reads. Both the v1-port and v2-port tokens
///         expose `launcher()`, so the splitter stays token-variant-agnostic.
interface ITTT {
    function increaseTransferAllowance(uint256 amount) external;
    function launcher() external view returns (address);
}

/// @notice Extended TTT surface the v2-port (flat-fee) hook reads to enforce the nftOnlyPeriod gate.
interface IFutureTTT {
    function increaseTransferAllowance(uint256 amount) external;
    function launcher() external view returns (address);
    function nftOnlyPeriod() external view returns (bool);
    function launchTimestamp() external view returns (uint256);
}

/// @notice Surface both migration factories expose for their TTTs (transfer guard) and hooks (init
///         gating). Mirrors the selectors the existing TTT/TTTHook source already consumes so the
///         ported token/hook code works unchanged.
interface ITenThousandTokensFactory {
    function loadingLiquidity() external view returns (bool);
    function isDistributor(address account) external view returns (bool);
}

/// @notice Unified splitter surface. `depositETH` is identical to both legacy splitters so the
///         ported hooks work unchanged; `onBurn` is the single burn-count callback authorized for
///         BOTH future factories (replaces v1 `onBurn` and v2 `onMigrate`).
interface IFutureFeeSplitter {
    function depositETH(address token) external payable;
    function onBurn(uint256 tokenId, address recipient) external;
    function registerLaunch(address token, uint256 creatorFee) external;
}

/// @notice Subset of a deployed legacy FeeSplitter (v1 or v2) the migration factories call into:
///         best-effort pull of a migrating id's pending holder ETH, plus the burn-count reads used
///         once, off-chain at deploy time, to seed `initialBurned`.
interface IOldFeeSplitter {
    function claim(uint256[] calldata tokenIds) external;
    function pending(uint256 tokenId) external view returns (uint256);
    function killed() external view returns (bool);
    function burnCount() external view returns (uint256);
}

/// @notice Subset of the deployed v2 FeeSplitter exposing the migration count, read once at deploy
///         time to seed `initialBurned`.
interface IOldV2FeeSplitter {
    function migratedCount() external view returns (uint256);
}

/// @notice Minimal ERC721 surface the v2-port hook needs to gate buys during nftOnlyPeriod.
interface INFTGate {
    function balanceOf(address owner) external view returns (uint256);
}

/// @notice Canonical WETH9 surface the unified FeeSplitter uses to unwrap royalty income paid in
///         WETH (e.g. WETH-denominated OpenSea offers). `withdraw` forwards only the 2300-gas
///         stipend to the recipient's `receive()`, so the splitter's `receive()` must stay cheap.
interface IWETH {
    function balanceOf(address account) external view returns (uint256);
    function withdraw(uint256 wad) external;
}

/// @notice Routers that forward the original caller through `msgSender()` (Universal Router,
///         V4Router, etc.). The v2-port hook resolves the real swapper this way for the
///         nftOnlyPeriod gate, falling back to `tx.origin`.
interface IMsgSender {
    function msgSender() external view returns (address);
}

interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

interface IERC721 is IERC165 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    function balanceOf(address owner) external view returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function transferFrom(address from, address to, uint256 tokenId) external;
    function approve(address to, uint256 tokenId) external;
    function setApprovalForAll(address operator, bool approved) external;
    function getApproved(uint256 tokenId) external view returns (address);
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}
