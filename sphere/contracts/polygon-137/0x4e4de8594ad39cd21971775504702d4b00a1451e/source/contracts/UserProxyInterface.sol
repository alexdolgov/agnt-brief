// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Wrapper.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "./interfaces/IPenLens.sol";
import "./interfaces/IUserProxy.sol";
import "./interfaces/IUserProxyFactory.sol";
import "./interfaces/IDyst.sol";
import "./interfaces/IVe.sol";

/**
 * @title UserProxyInterface
 * @author Penrose
 * @notice The primary user interface contract for front-end
 * @dev User proxy interface is responsible for creating and fetching a user's proxy
 *      and transferring tokens/routing calls to the user's proxy
 * @dev All calls here are unpermissioned as each call deals only with the proxy for msg.sender
 * @dev Authentication is handled in actual UserProxy implementations
 */
contract UserProxyInterface {
    // Public addresses
    address public userProxyFactoryAddress;
    address public penLensAddress;

    // Internal interface helpers
    IPenLens internal penLens;
    IVe internal ve;
    IDyst internal dyst;
    IPenDyst internal penDyst;
    IPen internal pen;

    /**
     * @notice Initialize UserProxyInterface
     * @param _userProxyFactoryAddress Factory address
     * @param _penLensAddress penLens address
     */
    function initialize(
        address _userProxyFactoryAddress,
        address _penLensAddress
    ) public {
        require(userProxyFactoryAddress == address(0), "Already initialized");
        userProxyFactoryAddress = _userProxyFactoryAddress;
        penLensAddress = _penLensAddress;
        penLens = IPenLens(_penLensAddress);
        ve = penLens.ve();
        dyst = penLens.dyst();
        penDyst = penLens.penDyst();
        pen = penLens.pen();
    }

    /*******************************************************
     *                    LP Interactions
     *******************************************************/

    /**
     * @notice LP -> penPool LP -> Staked (max)
     * @param dystPoolAddress The dyst pool LP address to deposit and stake
     */
    function depositLpAndStake(address dystPoolAddress) external {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Fetch amount of Dyst LP owned by owner
        uint256 amount = IERC20(dystPoolAddress).balanceOf(
            userProxyOwnerAddress
        );

        // Deposit and stake LP
        depositLpAndStake(dystPoolAddress, amount);
    }

    /**
     * @notice LP -> penPool LP -> Staked
     * @param dystPoolAddress The dyst pool LP address to deposit and stake
     * @param amount The amount of dyst pool LP to deposit and stake
     */
    function depositLpAndStake(address dystPoolAddress, uint256 amount)
        public
    {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive LP from UserProxy owner
        IERC20(dystPoolAddress).transferFrom(
            userProxyOwnerAddress,
            address(this),
            amount
        );

        // Allow UserProxy to spend LP
        IERC20(dystPoolAddress).approve(address(userProxy), amount);

        // Deposit and stake LP via UserProxy
        userProxy.depositLpAndStake(dystPoolAddress, amount);
    }

    /**
     * @notice LP -> penPool LP (max)
     * @param dystPoolAddress The dyst pool LP address to deposit
     */
    function depositLp(address dystPoolAddress) external {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Fetch amount of Dyst LP owned by owner
        uint256 amount = IERC20(dystPoolAddress).balanceOf(
            userProxyOwnerAddress
        );
        depositLp(dystPoolAddress, amount);
    }

    /**
     * @notice LP -> penPool LP
     * @param dystPoolAddress The dyst pool LP address to deposit
     * @param amount The amount of dyst pool LP to deposit and stake
     */
    function depositLp(address dystPoolAddress, uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive LP from UserProxy owner
        IERC20(dystPoolAddress).transferFrom(
            userProxyOwnerAddress,
            address(this),
            amount
        );

        // Allow UserProxy to spend LP
        IERC20(dystPoolAddress).approve(address(userProxy), amount);

        // Deposit LP into penPool via UserProxy
        userProxy.depositLp(dystPoolAddress, amount);
    }

    /**
     * @notice Staked penPool LP -> penPool LP -> LP (max)
     * @param dystPoolAddress The dyst pool LP address to unstake and withdraw
     */
    function unstakeLpWithdrawAndClaim(address dystPoolAddress) external {
        // Fetch amount staked
        uint256 amount = _amountStaked(dystPoolAddress);

        // Withdraw and unstake
        unstakeLpWithdrawAndClaim(dystPoolAddress, amount);
    }

    /**
     * @notice Staked penPool LP -> penPool LP -> LP
     * @param dystPoolAddress The dyst pool LP address to unstake and withdraw
     * @param amount The amount of dyst pool LP to unstake and withdraw
     */
    function unstakeLpWithdrawAndClaim(address dystPoolAddress, uint256 amount)
        public
    {
        // Withdraw and unstake
        IUserProxy userProxy = createAndGetUserProxy();
        userProxy.unstakeLpAndWithdraw(dystPoolAddress, amount, true);
    }

    /**
     * @notice Staked penPool LP -> penPool LP -> LP (max)
     * @param dystPoolAddress The dyst pool LP address to unstake and withdraw
     */
    function unstakeLpAndWithdraw(address dystPoolAddress) external {
        // Fetch amount staked
        uint256 amount = _amountStaked(dystPoolAddress);

        // Withdraw and unstake
        unstakeLpAndWithdraw(dystPoolAddress, amount);
    }

    /**
     * @notice Staked penPool LP -> penPool LP -> LP
     * @param dystPoolAddress The dyst pool LP address to unstake and withdraw
     * @param amount The amount of dyst pool LP to unstake and withdraw
     */
    function unstakeLpAndWithdraw(address dystPoolAddress, uint256 amount)
        public
    {
        // Withdraw and unstake
        IUserProxy userProxy = createAndGetUserProxy();
        userProxy.unstakeLpAndWithdraw(dystPoolAddress, amount, false);
    }

    function _amountStaked(address dystPoolAddress)
        internal
        returns (uint256)
    {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Determine amount currently staked
        address stakingAddress = penLens.stakingRewardsByDystPool(
            dystPoolAddress
        );
        uint256 amount = IERC20(stakingAddress).balanceOf(address(userProxy));
        return amount;
    }

    /**
     * @notice penPool LP -> LP (max)
     * @param dystPoolAddress The dyst pool LP address to withdraw
     */
    function withdrawLp(address dystPoolAddress) external {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Fetch amount of penPool LP owned by UserProxy owner
        address penPoolAddress = penLens.penPoolByDystPool(dystPoolAddress);
        uint256 amount = IERC20(penPoolAddress).balanceOf(userProxyOwnerAddress);
        withdrawLp(dystPoolAddress, amount);
    }

    /**
     * @notice penPool LP -> LP
     * @param dystPoolAddress The dyst pool LP address to withdraw
     * @param amount The amount of dyst pool LP to withdraw
     */
    function withdrawLp(address dystPoolAddress, uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive penPool LP from UserProxy owner
        address penPoolAddress = penLens.penPoolByDystPool(dystPoolAddress);
        IERC20(penPoolAddress).transferFrom(
            userProxyOwnerAddress,
            address(this),
            amount
        );

        // Allow UserProxy to spend penPool LP
        IERC20(penPoolAddress).approve(address(userProxy), amount);

        // Withdraw penPool LP via UserProxy (UserProxy will transfer it to owner)
        userProxy.withdrawLp(dystPoolAddress, amount);
    }

    /**
     * @notice penPool LP -> Staked penPool LP (max)
     * @param penPoolAddress The penPool LP address to stake
     */
    function stakePenLp(address penPoolAddress) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Fetch amount of penPool LP owned by owner
        uint256 amount = IERC20(penPoolAddress).balanceOf(userProxyOwnerAddress);
        stakePenLp(penPoolAddress, amount);
    }

    /**
     * @notice penPool LP -> Staked penPool LP
     * @param penPoolAddress The penPool LP address to stake
     * @param amount The amount of penPool LP to stake
     */
    function stakePenLp(address penPoolAddress, uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive penPool LP from owner
        IERC20(penPoolAddress).transferFrom(
            userProxyOwnerAddress,
            address(this),
            amount
        );

        // Allow UserProxy to spend penPool LP
        IERC20(penPoolAddress).approve(address(userProxy), amount);

        // Stake penPool LP
        userProxy.stakePenLp(penPoolAddress, amount);
    }

    /**
     * @notice Staked penPool LP -> penPool LP (max)
     * @param penPoolAddress The penPool LP address to unstake
     */
    function unstakePenLp(address penPoolAddress) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Fetch amount of penPool LP currently staked
        address stakingAddress = penLens.stakingRewardsByPenPool(penPoolAddress);
        uint256 amount = IERC20(stakingAddress).balanceOf(address(userProxy));

        // Unstake
        unstakePenLp(penPoolAddress, amount);
    }

    /**
     * @notice Staked penPool LP -> penPool LP
     * @param penPoolAddress The penPool LP address to unstake
     * @param amount The amount of penPool LP to unstake
     */
    function unstakePenLp(address penPoolAddress, uint256 amount) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Unstake
        userProxy.unstakePenLp(penPoolAddress, amount);
    }

    /**
     * @notice Claim staking rewards given a staking pool address
     * @param stakingPoolAddress Address of MultiRewards contract
     */
    function claimStakingRewards(address stakingPoolAddress) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Unstake
        userProxy.claimStakingRewards(stakingPoolAddress);
    }

    /**
     * @notice Claim all staking rewards
     */
    function claimStakingRewards() public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Unstake
        userProxy.claimStakingRewards();
    }

    /*******************************************************
     *                 DYST and veNFT interactions
     *******************************************************/

    /**
     * @notice DYST -> veNFT -> penDYST (max)
     */
    function convertDystToPenDyst() external {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Fetch amount of DYST owned by owner
        uint256 amount = dyst.balanceOf(userProxyOwnerAddress);
        convertDystToPenDyst(amount);
    }

    /**
     * @notice DYST -> veNFT -> penDYST
     * @param amount The amount of DYST to convert
     */
    function convertDystToPenDyst(uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Transfer DYST to this contract
        dyst.transferFrom(userProxyOwnerAddress, address(this), amount);

        // Allow UserProxy to spend DYST
        dyst.approve(address(userProxy), amount);

        // Convert DYST to penDYST
        userProxy.convertDystToPenDyst(amount);
    }

    /**
     * @notice DYST -> veNFT -> penDYST -> Staked penDYST (max)
     */
    function convertDystToPenDystAndStake() external {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Fetch amount of DYST owner by UserProxy owner
        uint256 amount = dyst.balanceOf(userProxyOwnerAddress);

        // Convert DYST to penDYST and stake
        convertDystToPenDystAndStake(amount);
    }

    /**
     * @notice DYST -> veNFT -> penDYST -> Staked penDYST
     * @param amount The amount of DYST to convert
     */
    function convertDystToPenDystAndStake(uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Transfer DYST to this contract
        dyst.transferFrom(userProxyOwnerAddress, address(this), amount);

        // Allow UserProxy to spend DYST
        dyst.approve(address(userProxy), amount);

        // Convert DYST to penDYST
        userProxy.convertDystToPenDystAndStake(amount);
    }

    /**
     * @notice veNFT -> penDYST
     * @param tokenId The tokenId of the NFT to convert
     */
    function convertNftToPenDyst(uint256 tokenId) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Transfer NFT to this contract
        ve.safeTransferFrom(userProxyOwnerAddress, address(this), tokenId);

        // Transfer NFT to user proxy to convert
        ve.approve(address(userProxy), tokenId);
        userProxy.convertNftToPenDyst(tokenId);
    }

    /**
     * @notice veNFT -> penDYST -> Staked penDYST
     * @param tokenId The tokenId of the NFT to convert
     */
    function convertNftToPenDystAndStake(uint256 tokenId) external {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Transfer NFT to this contract
        ve.safeTransferFrom(userProxyOwnerAddress, address(this), tokenId);

        // Convert DYST to penDYST and stake
        ve.approve(address(userProxy), tokenId);
        userProxy.convertNftToPenDystAndStake(tokenId);
    }

    /**
     * @notice penDYST -> Staked penDYST (max)
     */
    function stakePenDyst() external {
        // Fetch amount of penDYST currently staked
        uint256 amount = penDyst.balanceOf(msg.sender);

        // Stake penDYST
        stakePenDyst(amount);
    }

    /**
     * @notice penDYST -> Staked penDYST
     * @param amount The amount of penDYST to stake
     */
    function stakePenDyst(uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive penDYST from owner
        penDyst.transferFrom(userProxyOwnerAddress, address(this), amount);

        // Allow UserProxy to spend penDYST
        penDyst.approve(address(userProxy), amount);

        // Stake penDYST via UserProxy
        userProxy.stakePenDyst(amount);
    }

    /**
     * @notice penDYST -> Staked penDYST in penV1Rewards after burning PENv1 (max)
     */
    function stakePenDystInPenV1() external {
        // Fetch amount of penDYST currently staked
        uint256 amount = penDyst.balanceOf(msg.sender);

        // Stake penDYST
        stakePenDystInPenV1(amount);
    }

    /**
     * @notice penDYST -> Staked penDYST in penV1Rewards after burning PENv1
     * @param amount The amount of penDYST to stake
     */
    function stakePenDystInPenV1(uint256 amount) public {
        // Fetch user proxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive penDYST from owner
        penDyst.transferFrom(userProxyOwnerAddress, address(this), amount);

        // Allow UserProxy to spend penDYST
        penDyst.approve(address(userProxy), amount);

        // Stake penDYST via UserProxy
        userProxy.stakePenDystInPenV1(amount);
    }

    /**
     * @notice Staked penDYST -> penDYST (max)
     */
    function unstakePenDyst() external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Fetch amount of penDYST currently staked
        uint256 amount = penLens.stakedPenDystBalanceOf(msg.sender);

        // Unstake penDYST
        userProxy.unstakePenDyst(amount);
    }

    /**
     * @notice Staked penDYST -> penDYST
     * @param amount The amount of penDYST to unstake
     */
    function unstakePenDyst(uint256 amount) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address stakingAddress = penLens.penDystRewardsPoolAddress();

        // Unstake via UserProxy
        userProxy.unstakePenDyst(amount);
    }

    /**
     * @notice Staked penDYST in penV1Rewards -> penDYST
     * @param amount The amount of penDYST to unstake
     */
    function unstakePenDystInPenV1(uint256 amount) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address stakingAddress = penLens.penV1RewardsAddress();

        // Unstake via UserProxy
        userProxy.unstakePenDyst(stakingAddress, amount);
    }

    /**
     * @notice Generalized Staked penDYST -> penDYST
     * @param stakingAddress The MultiRewards Address to unstake from
     * @param amount The amount of penDYST to unstake
     */
    function unstakePenDyst(address stakingAddress, uint256 amount) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Unstake via UserProxy
        userProxy.unstakePenDyst(stakingAddress, amount);
    }

    /**
     * @notice Claim staking rewards for staking penDYST
     */
    function claimPenDystStakingRewards() public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address stakingAddress;
        if (penLens.isPartner(address(userProxy))) {
            stakingAddress = penLens.partnersRewardsPoolAddress();
        } else {
            stakingAddress = penLens.penDystRewardsPoolAddress();
        }

        // Claim rewards
        userProxy.claimStakingRewards(stakingAddress);
    }

    /*******************************************************
     *                   PENv1 Redemption
     *******************************************************/

    /**
     * @notice PENv1 -> penDYST (max)
     */
    function redeemPenV1() public {
        // Fetch amount
        uint256 amount = IERC20(penLens.penV1Address()).balanceOf(msg.sender);

        // Unstake via UserProxy
        redeemPenV1(amount);
    }

    /**
     * @notice PENv1 -> penDYST
     * @param amount The amount of PENv1 to redeem
     */
    function redeemPenV1(uint256 amount) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive PEN v1 from owner
        IERC20(penLens.penV1Address()).transferFrom(
            userProxyOwnerAddress,
            address(this),
            amount
        );

        // Allow UserProxy to spend PEN v1
        IERC20(penLens.penV1Address()).approve(address(userProxy), amount);

        // Unstake via UserProxy
        userProxy.redeemPenV1(amount);
    }

    /**
     * @notice PENv1 -> penDYST staked in penV1Rewards (max)
     */
    function redeemAndStakePenV1() public {
        // Fetch amount
        uint256 amount = IERC20(penLens.penV1Address()).balanceOf(msg.sender);

        // Unstake via UserProxy
        redeemAndStakePenV1(amount);
    }

    /**
     * @notice PENv1 -> penDYST staked in penV1Rewards
     * @param amount The amount of PENv1 to redeem
     */
    function redeemAndStakePenV1(uint256 amount) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive PEN v1 from owner
        IERC20(penLens.penV1Address()).transferFrom(
            userProxyOwnerAddress,
            address(this),
            amount
        );

        // Allow UserProxy to spend PEN v1
        IERC20(penLens.penV1Address()).approve(address(userProxy), amount);

        // Unstake via UserProxy
        userProxy.redeemAndStakePenV1(amount);
    }

    /**
     * @notice Claim PENv1 penDYST staking rewards
     */
    function claimV1PenDystStakingRewards() public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Claim rewards
        userProxy.claimStakingRewards(penLens.penV1RewardsAddress());
    }

    /*******************************************************
     *                   Partner migration
     *******************************************************/

    /**
     * @notice Migrates nonparters who recently got whitelisted as partners
     */
    function migratePenDystToPartner() external {
        IUserProxy userProxy = createAndGetUserProxy();
        userProxy.migratePenDystToPartner();
    }

    /*******************************************************
     *                        vlPEN
     *******************************************************/

    /**
     * @notice Vote lock PEN for 16 weeks (non-transferrable)
     * @param amount Amount of PEN to lock
     * @param spendRatio Spend ratio for PenLocker
     * @dev PenLocker utilizes the same code as CvxLocker
     */
    function voteLockPen(uint256 amount, uint256 spendRatio) external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();
        address userProxyOwnerAddress = msg.sender;

        // Receive PEN from user
        pen.transferFrom(userProxyOwnerAddress, address(this), amount);

        // Allow UserProxy to spend PEN
        pen.approve(address(userProxy), amount);

        // Lock PEN via UserProxy
        userProxy.voteLockPen(amount, spendRatio);

        // reset approval back to 0
        pen.approve(address(userProxy), 0);
    }

    /**
     * @notice Withdraw vote locked PEN
     * @param spendRatio Spend ratio
     */
    function withdrawVoteLockedPen(uint256 spendRatio) external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Withdraw vote locked PEN and claim
        userProxy.withdrawVoteLockedPen(spendRatio, false);
    }

    /**
     * @notice Relock vote locked PEN
     * @param spendRatio Spend ratio
     */
    function relockVoteLockedPen(uint256 spendRatio) external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Withdraw vote locked PEN and claim
        userProxy.relockVoteLockedPen(spendRatio);
    }

    /**
     * @notice Claim vlPEN staking rewards
     */
    function claimVlPenStakingRewards() public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Claim rewards
        userProxy.claimVlPenRewards();
    }

    /*******************************************************
     *                       Voting
     *******************************************************/

    /**
     * @notice Vote for a pool given a pool address and weight
     * @param poolAddress The pool adress to vote for
     * @param weight The new vote weight (can be positive or negative)
     */
    function vote(address poolAddress, int256 weight) external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Withdraw vote locked PEN and claim
        userProxy.vote(poolAddress, weight);
    }

    /**
     * @notice Batch vote
     * @param votes Votes
     */
    function vote(IUserProxy.Vote[] memory votes) external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Clear vote delegate
        userProxy.vote(votes);
    }

    /**
     * @notice Remove a user's vote given a pool address
     * @param poolAddress The address of the pool whose vote will be deleted
     */
    function removeVote(address poolAddress) public {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Withdraw vote locked PEN and claim
        userProxy.removeVote(poolAddress);
    }

    /**
     * @notice Delete all vote for a user
     */
    function resetVotes() external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Withdraw vote locked PEN and claim
        userProxy.resetVotes();
    }

    /**
     * @notice Set vote delegate for an account
     * @param accountAddress New delegate address
     */
    function setVoteDelegate(address accountAddress) external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Set vote delegate
        userProxy.setVoteDelegate(accountAddress);
    }

    /**
     * @notice Clear vote delegate for an account
     */
    function clearVoteDelegate() external {
        // Fetch UserProxy
        IUserProxy userProxy = createAndGetUserProxy();

        // Clear vote delegate
        userProxy.clearVoteDelegate();
    }

    function whitelist(address tokenAddress) external {

        IUserProxy userProxy = createAndGetUserProxy();

        userProxy.whitelist(tokenAddress);
    }

    /*******************************************************
     *                   Helper Utilities
     *******************************************************/

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    // Only allow users to interact with their proxy
    function createAndGetUserProxy() internal returns (IUserProxy) {
        return
            IUserProxy(
                IUserProxyFactory(userProxyFactoryAddress)
                    .createAndGetUserProxy(msg.sender)
            );
    }

    function claimAllStakingRewards() public {
        claimStakingRewards();
        claimPenDystStakingRewards();
        claimVlPenStakingRewards();
    }
}