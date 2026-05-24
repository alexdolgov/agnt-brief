// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/// @notice Interface for ENS registry
interface IENS {
    function resolver(bytes32 node) external view returns (address);
}

/// @notice Interface for ENS name resolver
interface INameResolver {
    function name(bytes32 node) external view returns (string memory);
}

/// @notice Interface for FW2Token
interface IFW2Token {
    function start(address _hook) external payable;
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function lpTokenId() external view returns (uint256);
    function loadingLiquidity() external view returns (bool);
}

/// @notice Interface for FW2Hook
interface IFW2Hook {
    function swapCount() external view returns (uint256);
}

/// @notice Interface for FundingWorks
interface IFundingWorks {
    function isSwapping() external view returns (bool);
    function name() external view returns (string memory);
    function ownerOf(uint256 tokenId) external view returns (address);
    function MINT_PRICE() external view returns (uint256);
    function VESTING_PERIOD() external view returns (uint256);
    function vestingStarted() external view returns (bool);
    function vestingStartTime() external view returns (uint256);
    function getRemainingLockedEth(uint256 tokenId) external view returns (uint256);
    function initialLockedPerToken() external view returns (uint256);
    function mintHash(uint256 tokenId) external view returns (bytes32);
}

/// @notice Interface for on-chain metadata renderer
interface IRenderer {
    function tokenURI(uint256 tokenId) external view returns (string memory);
    function contractURI() external view returns (string memory);
}

/// @notice Interface for FundingWorksSignature
interface IFundingWorksSignature {
    function getSignature(uint256 tokenId) external view returns (bytes memory);
    function hasSignature(uint256 tokenId) external view returns (bool);
}