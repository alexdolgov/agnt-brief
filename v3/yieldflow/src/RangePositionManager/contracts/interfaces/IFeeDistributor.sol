// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// interface for the FeeDistributor
interface IFeeDistributor {
    /// deposits Fees
    /// @dev deposits fees into the fee distributor
    /// @param _tokenAddress the token address
    /// @param _amount the amount
    function receiveERC20Fees(address _tokenAddress, uint256 _amount) external;

    /// getNftAddress
    /// @dev gets the address of the NFT contract
    /// returns NFT address
    function getNftAddress() external view returns (address);
}
