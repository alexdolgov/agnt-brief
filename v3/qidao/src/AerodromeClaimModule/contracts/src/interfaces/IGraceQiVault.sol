// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IGraceQiVault
/// @notice Interface for QiDAO GraceQiVault contracts that hold veNFTs as collateral
interface IGraceQiVault {
    /// @notice Claim trading fees for a vault's veNFT
    /// @dev Anyone can call, but claimed tokens are transferred to ownerOf(vaultId)
    /// @param _fees Array of fee contract addresses
    /// @param _tokens Array of token arrays to claim from each fee contract
    /// @param _vaultId The QiDAO vault ID
    /// @return Array of claimed amounts
    function claimVaultFees(
        address[] calldata _fees,
        address[][] calldata _tokens,
        uint256 _vaultId
    ) external returns (uint256[] memory);

    /// @notice Claim voting incentives (bribes) for a vault's veNFT
    /// @dev Anyone can call, but claimed tokens are transferred to ownerOf(vaultId)
    /// @param _bribes Array of bribe contract addresses
    /// @param _tokens Array of token arrays to claim from each bribe contract
    /// @param _vaultId The QiDAO vault ID
    /// @return Array of claimed amounts
    function claimVaultBribes(
        address[] calldata _bribes,
        address[][] calldata _tokens,
        uint256 _vaultId
    ) external returns (uint256[] memory);

    /// @notice Get the veNFT token ID stored as collateral in a vault
    /// @param _vaultId The QiDAO vault ID
    /// @return The veNFT token ID
    function vaultCollateral(uint256 _vaultId) external view returns (uint256);

    /// @notice Get the owner of a vault (ERC-721 pattern)
    /// @param _vaultId The QiDAO vault ID
    /// @return The vault owner address
    function ownerOf(uint256 _vaultId) external view returns (address);

    /// @notice Get the global vote allocations
    /// @return lpTokens Array of pool addresses
    /// @return percentages Array of vote percentages
    function getGlobalVotes()
        external
        view
        returns (address[] memory lpTokens, uint256[] memory percentages);
}
