// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IGlobalDistributor {
    function isGlobalDistributor(address account) external view returns (bool);
}

/// @notice Subset of TTT the hook + FeeSplitter call into. Lets them stay token-agnostic.
interface ITTT {
    function increaseTransferAllowance(uint256 amount) external;
    function launcher() external view returns (address);
}

/// @notice Surface TenThousandTokens.sol exposes for TTTHook + each TTT. `loadingLiquidity` is
///         the transient flag the factory flips during pool init / initial-liquidity-add. Each
///         TTT's transfer guard consults `isDistributor` so distributor membership is global —
///         set once on the factory and applied to all 10,000 tokens.
interface ITenThousandTokensFactory {
    function loadingLiquidity() external view returns (bool);
    function isDistributor(address account) external view returns (bool);
}

/// @notice Splitter the hook pushes fees to. The hook sends ETH along with the originating
///         token address so the splitter can attribute the launcher share to that token's
///         owner. The factory also notifies the splitter on `burnAndLaunch` so the holder-pool
///         divisor (active NFTs) shrinks and the burning launcher collects any pending share.
interface IFeeSplitter {
    function depositETH(address token) external payable;
    function onBurn(uint256 tokenId, address owner) external;
}

/// @notice Subset of TTTHook the deployer/admin calls into. The fee destination is global and
///         owner-set; the factory no longer needs to call this per-launch.
interface ITTTHook {
    function setFeeAddress(address fee) external;
}

/// @notice Onchain SVG renderer for the TenThousandTokens NFT. Returns a fully-formed
///         `data:application/json;base64,...` string with name + image fields. Pluggable so the
///         art can be upgraded without redeploying the NFT contract.
interface IRenderer {
    function tokenURI(uint256 tokenId) external view returns (string memory);
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
