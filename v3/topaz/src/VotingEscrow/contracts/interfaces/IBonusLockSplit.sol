// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ITopaz} from "./ITopaz.sol";
import {IVotingEscrow} from "./IVotingEscrow.sol";

interface IBonusLockSplit {
    error InvalidParams();
    error InvalidRecipient();
    error NoVeNFTDeposited();
    error InsufficientBalance();
    error SplitFailed();
    error VotedInCurrentEpoch();
    error InDistributeWindow();
    error SplitNotEnabled();
    error ZeroAmount();
    error ZeroAddress();
    error VeNFTHasVoted();
    error NotOwned();

    event VeNFTDeposited(uint256 indexed _tokenId, uint256 _amount);
    event BonusDistributed(address indexed _wallet, uint256 _amount, uint256 _tokenId);
    event BonusDistributionFailed(address indexed _wallet, uint256 _amount, uint256 _tokenId);
    event VeNFTWithdrawn(uint256 indexed _tokenId, address indexed _recipient);
    event FailedTransferRecovered(uint256 indexed _tokenId, address indexed _recipient);

    /// @notice Interface of Topaz.sol
    function topaz() external view returns (ITopaz);

    /// @notice Interface of IVotingEscrow.sol
    function ve() external view returns (IVotingEscrow);

    /// @notice The tokenId of the deposited veTOPAZ position
    function depositedTokenId() external view returns (uint256);

    /// @notice Remaining balance available for distribution
    function remainingBalance() external view returns (uint256);

    /// @notice Deposits a veTOPAZ position into the contract for splitting
    /// @dev The veTOPAZ must be permanent and owned by the caller
    /// @param _tokenId The tokenId of the veTOPAZ position to deposit
    function depositVeNFT(uint256 _tokenId) external;

    /// @notice Distributes permanently locked NFTs by splitting the deposited veTOPAZ
    /// @param _wallets Addresses of wallets to receive the distribution
    /// @param _amounts Amounts to be distributed
    function distributeTokens(address[] memory _wallets, uint256[] memory _amounts) external;

    /// @notice Withdraws the remaining veTOPAZ position back to the owner
    /// @param _recipient Address receiving the withdrawn veTOPAZ
    function withdrawVeNFT(address _recipient) external;

    /// @notice Recovers a veNFT that failed to transfer during distribution
    /// @dev Used to retry failed transfers or recover stuck tokens
    /// @param _tokenId The tokenId of the veNFT to recover
    /// @param _recipient Address to receive the recovered veNFT
    function recoverFailedTransfer(uint256 _tokenId, address _recipient) external;
}
