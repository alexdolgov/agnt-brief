// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./UserProxyStorageLayout.sol";

/**
 * @title UserProxyVotingInteractions
 * @author Penrose
 * @notice Core logic for all user voting interactions
 * @dev All implementations must inherit from UserProxyStorageLayout
 */
contract UserProxyVotingInteractions is UserProxyStorageLayout {
    /*******************************************************
     *                   vlPEN and voting
     *******************************************************/

    // Modifiers
    modifier onlyUserProxyInterfaceOrOwner() {
        require(
            msg.sender == userProxyInterfaceAddress ||
                msg.sender == ownerAddress ||
                msg.sender == address(userProxy),
            "Only user proxy interface or owner is allowed"
        );
        _;
    }

    /**
     * @notice Vote lock PEN for 16 weeks (non-transferrable)
     * @param amount Amount of PEN to lock
     * @param spendRatio Spend ratio for PenLocker
     * @dev PenLocker utilizes the same code as CvxLocker
     */
    function voteLockPen(uint256 amount, uint256 spendRatio)
        external
        onlyUserProxyInterfaceOrOwner
    {
        // Receive PEN
        penLens.pen().transferFrom(msg.sender, address(this), amount);

        // Allow vlPEN to spend PEN
        penLens.pen().approve(vlPenAddress, amount);

        // Lock PEN
        penLens.vlPen().lock(address(this), amount, spendRatio);
        assert(penLens.vlPen().lockedBalanceOf(address(this)) > 0);
    }

    /**
     * @notice Withdraw vote locked PEN
     * @param spendRatio Spend ratio
     */
    function withdrawVoteLockedPen(uint256 spendRatio, bool claim)
        external
        onlyUserProxyInterfaceOrOwner
    {
        uint256 currentBalance = penLens.vlPen().lockedBalanceOf(address(this));
        require(currentBalance > 0, "Nothing to withdraw");

        if (claim) {
            // Claim staking rewards and transfer them to proxy owner
            userProxy.claimStakingRewards(vlPenAddress);
        }

        // Withdraw PEN and transfer to owner
        penLens.vlPen().processExpiredLocks(false, spendRatio, ownerAddress);
    }

    /**
     * @notice Relock vote locked PEN
     * @param spendRatio Spend ratio
     */
    function relockVoteLockedPen(uint256 spendRatio)
        external
        onlyUserProxyInterfaceOrOwner
    {
        penLens.vlPen().processExpiredLocks(true, spendRatio, address(this));
    }

    /**
     * @notice Vote for a pool given a pool address and weight
     * @param poolAddress The pool adress to vote for
     * @param weight The new vote weight (can be positive or negative)
     */
    function vote(address poolAddress, int256 weight)
        external
        onlyUserProxyInterfaceOrOwner
    {
        penLens.votingSnapshot().vote(poolAddress, weight);
    }

    /**
     * @notice Batch vote
     * @param votes Votes
     */
    function vote(IVotingSnapshot.Vote[] memory votes)
        external
        onlyUserProxyInterfaceOrOwner
    {
        penLens.votingSnapshot().vote(votes);
    }

    /**
     * @notice Remove a user's vote given a pool address
     * @param poolAddress The address of the pool whose vote will be deleted
     */
    function removeVote(address poolAddress)
        public
        onlyUserProxyInterfaceOrOwner
    {
        penLens.votingSnapshot().removeVote(poolAddress);
    }

    /**
     * @notice Delete all vote for a user
     */
    function resetVotes() external onlyUserProxyInterfaceOrOwner {
        penLens.votingSnapshot().resetVotes();
    }

    /**
     * @notice Set vote delegate for an account
     * @param accountAddress New delegate address
     */
    function setVoteDelegate(address accountAddress)
        external
        onlyUserProxyInterfaceOrOwner
    {
        penLens.votingSnapshot().setVoteDelegate(accountAddress);
    }

    /**
     * @notice Clear vote delegate for an account
     */
    function clearVoteDelegate() external onlyUserProxyInterfaceOrOwner {
        penLens.votingSnapshot().clearVoteDelegate();
    }

    function whitelist(address tokenAddress) external onlyUserProxyInterfaceOrOwner {
        //Fetch staked balance
        uint256 amountStaked = penLens.stakedPenDystBalanceOf(ownerAddress);
        //Fetch unstaked balance
        uint256 amountUnstaked = penLens.penDyst().balanceOf(ownerAddress);

        require(amountStaked + amountUnstaked > penLens.voterProxy().whitelistingFee(), "Insufficient pendyst");

        penLens.voterProxy().whitelist(tokenAddress);
    }
}
