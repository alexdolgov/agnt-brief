// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ITopaz} from "./ITopaz.sol";
import {IVotingEscrow} from "./IVotingEscrow.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IBonusLockedDistributor {
    error InvalidParams();
    error InsufficientBalance();
    error InvalidRecipient();

    event BonusDistributed(address indexed _wallet, uint256 _amount, uint256 _tokenId);
    event Withdraw(address indexed _recipient, uint256 _amount);

    /// @notice Interface of Topaz.sol
    function topaz() external view returns (ITopaz);

    /// @notice Interface of IVotingEscrow.sol
    function ve() external view returns (IVotingEscrow);

    /// @notice Distributes permanently locked NFTs to the desired addresses
    /// @param _wallets Addresses of wallets to receive the distribution
    /// @param _amounts Amounts to be distributed
    function distributeTokens(address[] memory _wallets, uint256[] memory _amounts) external;

    /// @notice Withdraws TOPAZ tokens held by the distributor
    /// @param _recipient Address receiving the withdrawn TOPAZ
    /// @param _amount Amount of TOPAZ to transfer
    function withdrawTopaz(address _recipient, uint256 _amount) external;
}
