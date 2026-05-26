// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "./UserProxyStorageLayout.sol";

/**
 * @title UserProxyNftInteractions
 * @author Penrose
 * @notice Core logic for all user DYST/veNFT interactions
 * @dev All implementations must inherit from UserProxyStorageLayout
 */
contract UserProxyNftInteractions is UserProxyStorageLayout {
    using SafeERC20 for IERC20;

    /*******************************************************
     *                 DYST and veNFT interactions
     *******************************************************/

    // Modifiers
    modifier syncPools() {
        penLens.penPoolFactory().syncPools(1);
        _;
    }
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
     * @notice DYST -> veNFT -> penDYST
     * @param amount The amount of DYST to convert to penDYST
     */
    function convertDystToPenDyst(uint256 amount)
        external
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // No empty converting
        require(amount > 0, "Amount to convert must be greater than zero");

        // Lock DYST
        uint256 tokenId = _lockDyst(amount);

        // Convert NFT to penDYST
        _convertNftToPenDyst(tokenId);

        // Transfer penDYST to owner
        penLens.penDyst().transfer(ownerAddress, amount);
    }

    /**
     * @notice Convert veNFT to penDYST
     * @param tokenId The tokenID to convert
     */
    function _convertNftToPenDyst(uint256 tokenId) internal {
        // Fetch penDYST balanceOf(owner) before conversions
        uint256 penDystBalanceOfBefore = penLens.penDyst().balanceOf(
            address(this)
        );

        // Determine amount of penDYST to mint
        IVe ve = penLens.ve();
        uint256 amount = ve.locked(tokenId);
        assert(amount > 0);

        // Deposit NFT to penDYST and receive penDYST
        ve.approve(penDystAddress, tokenId);
        penLens.penDyst().convertNftToPenDyst(tokenId);

        // Make sure correct amount of penDYST was received
        uint256 penDystBalanceOfAfter = penLens.penDyst().balanceOf(
            address(this)
        );
        assert(penDystBalanceOfAfter == penDystBalanceOfBefore + amount);
    }

    /**
     * @notice Lock DYST
     * @param amount The amount of DYST to lock
     * @return tokenId The newly minted tokenID
     */
    function _lockDyst(uint256 amount) internal returns (uint256 tokenId) {
        // No empty locking
        require(amount > 0, "Amount to lock must be greater than zero");

        // Receive DYST from msg.sender
        IDyst dyst = penLens.dyst();
        dyst.transferFrom(msg.sender, address(this), amount);

        // Allow ve to spend DYST
        address veAddress = penLens.veAddress();
        dyst.approve(veAddress, amount);

        // Lock DYST (DYST -> veNFT)
        uint256 lockTime = 4 * 365 * 86400; // 4 years
        tokenId = penLens.ve().createLock(amount, lockTime);
    }

    /**
     * @notice DYST -> veNFT -> penDYST -> Staked penDYST
     * @param amount The amount of DYST to convert and stake
     */
    function convertDystToPenDystAndStake(uint256 amount)
        external
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // No empty converting
        require(amount > 0, "Amount to convert must be greater than zero");

        // Lock DYST
        uint256 tokenId = _lockDyst(amount);

        // Convert NFT to penDYST
        _convertNftToPenDyst(tokenId);

        // Stake penDYST
        _stakePenDyst(amount);
    }

    /**
     * @notice veNFT -> penDYST
     * @param tokenId The tokenId to convert
     */
    function convertNftToPenDyst(uint256 tokenId)
        public
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // Amount of underlying DYST locked
        IVe ve = penLens.ve();
        uint256 amount = ve.locked(tokenId);

        // Transfer NFT to this contract
        ve.safeTransferFrom(msg.sender, address(this), tokenId);

        // Perform actual conversion
        _convertNftToPenDyst(tokenId);

        // Send penDYST to user
        penLens.penDyst().transfer(ownerAddress, amount);
    }

    /**
     * @notice veNFT -> penDYST -> Staked penDYST
     * @param tokenId The tokenId to convert and stake
     */
    function convertNftToPenDystAndStake(uint256 tokenId)
        public
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // Amount of underlying DYST locked
        IVe ve = penLens.ve();
        uint256 amount = ve.locked(tokenId);

        // Transfer NFT to this contract
        ve.safeTransferFrom(msg.sender, address(this), tokenId);

        // Perform actual conversion
        _convertNftToPenDyst(tokenId);

        // Stake penDYST
        _stakePenDyst(amount);
    }

    /**
     * @notice Stake penDYST in rewards pool
     */
    function _stakePenDyst(uint256 amount) internal {
        address stakingAddress;

        // Determine partner status
        bool isPartner = penLens.isPartner(address(this));

        // Set staking address
        if (isPartner) {
            stakingAddress = penLens.partnersRewardsPoolAddress();
        } else {
            stakingAddress = penDystRewardsPoolAddress;
        }

        // Allow penDYST mutlirewards to spend penDYST
        penLens.penDyst().approve(stakingAddress, amount);

        // Stake penDYST in multirewards
        IMultiRewards(stakingAddress).stake(amount);
    }

    /**
     * @notice penDYST -> staked penDYST
     */
    function stakePenDyst(uint256 amount)
        public
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // Transfer penDYST from msg.sender to UserProxy
        penLens.penDyst().transferFrom(msg.sender, address(this), amount);

        // Stake penDYST on behalf of user
        _stakePenDyst(amount);
    }

    /**
     * penDYST -> staked penDYST (PEN v1 staking contract)
     */
    function stakePenDystInPenV1(uint256 amount)
        public
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // Transfer penDYST from msg.sender to UserProxy
        penLens.penDyst().transferFrom(msg.sender, address(this), amount);

        // Stake penDYST on behalf of user
        _stakePenDystInPenV1(amount);
    }

    /**
     * @notice Perform penDYST stake into v1 staking pool
     */
    function _stakePenDystInPenV1(uint256 amount) internal {
        address stakingAddress = penLens.penV1RewardsAddress();

        // Allow penDYST mutlirewards to spend penDYST
        penLens.penDyst().approve(stakingAddress, amount);

        // Stake penDYST in multirewards
        IMultiRewards(stakingAddress).stake(amount);
    }

    /**
     * @notice Staked penDYST -> penDYST
     * @param amount The amount of penDYST to unstake
     */
    function unstakePenDyst(uint256 amount)
        public
        onlyUserProxyInterfaceOrOwner
    {
        address stakingAddress;

        // Determine partner status
        bool isPartner = penLens.isPartner(address(this));

        // Set staking address
        if (isPartner) {
            stakingAddress = penLens.partnersRewardsPoolAddress();
        } else {
            stakingAddress = penDystRewardsPoolAddress;
        }
        unstakePenDyst(stakingAddress, amount);
    }

    /**
     * @notice Staked penDYST (PEN v1 rewards) -> penDYST
     * @param amount The amount to unstake
     */
    function unstakePenDystInPenV1(uint256 amount)
        public
        onlyUserProxyInterfaceOrOwner
    {
        unstakePenDyst(penLens.penV1RewardsAddress(), amount);
    }

    /**
     * @notice Staked penDYST -> penDYST
     * @param stakingAddress Address to unstake from
     * @param amount The amount to unstake
     */
    function unstakePenDyst(address stakingAddress, uint256 amount)
        public
        onlyUserProxyInterfaceOrOwner
        syncPools
    {
        // No empty unstaking
        require(amount > 0, "Amount to unstake must be greater than zero");

        // Unstake penDYST
        IMultiRewards(stakingAddress).withdraw(amount);

        // Transfer penDYST to owner
        penLens.penDyst().transfer(ownerAddress, amount);
    }

    /**
     * @notice Redeem PEN v1 for penDYST
     */
    function redeemPenV1(uint256 amount)
        external
        onlyUserProxyInterfaceOrOwner
    {
        IERC20 penV1 = IERC20(penLens.penV1Address());
        penV1.transferFrom(msg.sender, address(this), amount);

        address penV1RedeemAddress = penLens.penV1RedeemAddress();
        IPenV1Redeem penV1Redeem = IPenV1Redeem(penV1RedeemAddress);

        penV1.approve(penV1RedeemAddress, amount);
        penV1Redeem.redeem(amount);

        IMultiRewards penV1Rewards = IMultiRewards(
            penLens.penV1RewardsAddress()
        );
        IPenDyst penDyst = penLens.penDyst();
        penDyst.transfer(ownerAddress, penDyst.balanceOf(address(this)));

        uint256 rewardTokensLength = penV1Rewards.rewardTokensLength();
        for (uint256 i; i < rewardTokensLength; i++) {
            IERC20 rewardToken = IERC20(penV1Rewards.rewardTokens(i));
            uint256 balance = rewardToken.balanceOf(address(this));
            if (balance > 0) {
                rewardToken.safeTransfer(ownerAddress, balance);
            }
        }
    }

    /**
     * @notice Redeem PEN v1 for penDYST and stake into penV1Rewards
     */
    function redeemAndStakePenV1(uint256 amount)
        external
        onlyUserProxyInterfaceOrOwner
    {
        //establish vars
        IERC20 penV1 = IERC20(penLens.penV1Address());
        IPenDyst penDyst = penLens.penDyst();
        address penV1RewardsAddress = penLens.penV1RewardsAddress();
        IPenV1Rewards penV1Rewards = IPenV1Rewards(penV1RewardsAddress);
        address penV1RedeemAddress = penLens.penV1RedeemAddress();
        IPenV1Redeem penV1Redeem = IPenV1Redeem(penV1RedeemAddress);

        //transfer PENv1 to userProxy
        penV1.transferFrom(msg.sender, address(this), amount);

        //approve and redeem PENv1 from penV1Redeem
        penV1.approve(penV1RedeemAddress, amount);
        penV1Redeem.redeem(amount);

        //check redeemed penDYST balance against stakingCap, transfer excess to owner
        uint256 penDystBalance = penDyst.balanceOf(address(this));
        uint256 stakingCap = penV1Rewards.stakingCap(address(this));
        uint256 stakedBalance = penV1Rewards.balanceOf(address(this));

        // If capMultiplier is lowered, stakingCap can be lower than stakedBalance
        // Users can withdraw under such conditions, but can't stake more
        if (stakingCap > stakedBalance) {
            if (stakingCap - stakedBalance < penDystBalance) {
                uint256 penDystToTransfer = penDystBalance - stakingCap;
                penDyst.transfer(ownerAddress, penDystToTransfer);
                penDystBalance = stakingCap;
            }
        } else {
            // if stakingCap < stakedBalance, transfer all penDYST to owner
            penDyst.transfer(ownerAddress, penDystBalance);
            penDystBalance = 0;
        }

        //approve and stake penDYST in penV1Rewards
        if (penDystBalance > 0) {
            penDyst.approve(penV1RewardsAddress, penDystBalance);
            penV1Rewards.stake(penDystBalance);
        }

        //transfer misc bribes gotten from redeem to owner
        uint256 rewardTokensLength = penV1Rewards.rewardTokensLength();
        for (uint256 i; i < rewardTokensLength; i++) {
            IERC20 rewardToken = IERC20(penV1Rewards.rewardTokens(i));
            uint256 balance = rewardToken.balanceOf(address(this));
            if (balance > 0) {
                rewardToken.safeTransfer(ownerAddress, balance);
            }
        }
    }

    /**
     * @notice Migrates nonparters who recently got whitelisted as partners
     */
    function migratePenDystToPartner() external onlyUserProxyInterfaceOrOwner {
        IMultiRewards penDystRewardsPool = IMultiRewards(
            penLens.penDystRewardsPoolAddress()
        );
        IMultiRewards partnersRewardsPool = IMultiRewards(
            penLens.partnersRewardsPoolAddress()
        );

        uint256 nonPartnerStakedBalance = penDystRewardsPool.balanceOf(
            address(this)
        );
        penDystRewardsPool.exit();
        penLens.penDyst().approve(
            address(partnersRewardsPool),
            nonPartnerStakedBalance
        );
        partnersRewardsPool.stake(nonPartnerStakedBalance);
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
            userProxy.claimVlPenRewards();
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

    /**************************************************
     *                  Helper Utilities
     **************************************************/
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    /**
     * @notice Claim staking rewards given a staking pool address
     * @dev The generalized function doesn't work because vlPEN is a bit different from other multirewards
     */
    function claimVlPenRewards() public onlyUserProxyInterfaceOrOwner {
        address stakingPoolAddress = penLens.vlPenAddress();
        IVlPen multiRewards = IVlPen(stakingPoolAddress);
        multiRewards.getReward();
        uint256 rewardTokensLength = multiRewards.rewardTokensLength();

        for (
            uint256 rewardTokenIndex;
            rewardTokenIndex < rewardTokensLength;
            rewardTokenIndex++
        ) {
            address rewardTokenAddress = multiRewards.rewardTokens(
                rewardTokenIndex
            );
            IERC20(rewardTokenAddress).safeTransfer(
                ownerAddress,
                IERC20(rewardTokenAddress).balanceOf(address(this))
            );
        }
    }
}
