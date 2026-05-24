// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.29;

import {ReentrancyGuard} from "@solidstate/contracts/security/reentrancy_guard/ReentrancyGuard.sol";
import {Pausable} from "@solidstate/contracts/security/pausable/Pausable.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {ABDKMathQuad} from "./libs/ABDKMathQuad.sol";
import {IERC721MintBurn} from "./interfaces/IERC721MintBurn.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./libs/ONFTStakerStorage.sol";

// The Staker contract will implement the staking functionality for the ONFT (On-Chain Non-Fungible Token).
// It will handle staking, claiming rewards, and managing the state of staked tokens.
// State variables and mappings will be defined here to manage the staking logic.
// Functions for staking, claiming rewards, and other actions will be implemented here.
// Events will be emitted to notify about important actions like staking, claiming, etc.
contract Staker is ReentrancyGuard, Pausable, Context {
    using ONFTStakerStorage for ONFTStakerStorage.Layout;

    using SafeERC20 for IERC20;

    event NFTsMerged(uint256 tokenId1, uint256 tokenId2, uint256 newTokenId);

    event Airdrop(uint256 airdropAmount);

    event RewardsClaimed(uint256 tokenId, uint256 claimedAmount);

    event NFTLocked(uint256 tokenId, uint256 lockTimestamp);

    event NFTUnlocked(uint256 tokenId, uint256 unlockTimestamp);

    event StakeInNFT(uint256 tokenId, uint256 stakeAmount);

    event BurnAndRedeem(uint256 tokenId);

    event BurnedV2Token(address stakerV2, uint256 tokenId);

    event WithdrawStaked(uint256 tokenId, uint256 withdrawAmount, uint256 feeAmount);

    event LockedTokenRewardClaimed(uint256 tokenId, uint256 claimedAmount);

    error Unauthorized();

    error InvalidTokenId();

    error InvalidTokenOwner();

    error InvalidStakeAmount();

    error TokenLocked();

    error NotEnoughStaked();

    error NothingToClaim();

    error AlreadyInitialized();

    error InvalidRarity();

    error TokenHasPendingClaim();

    error MaximumRarityReached();

    error TokenCannotBeMerged();

    error InsufficientBalance();

    error MaxStakeAmountReached();

    error InsufficientValueForFee();

    uint256 constant WHOLE = 1e18;

    function airdrop(uint256 rewardAmount) external payable nonReentrant {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        IERC20 stakeToken = s.stakeToken;

        address from = _msgSender();

        IERC20(stakeToken).safeTransferFrom(from, address(this), rewardAmount);

        $.airdropId++;

        uint256 airdropId = $.airdropId;

        s.rewardsData.rewardsAmount += rewardAmount;

        AirdropData storage airdropData = $.airdropById[airdropId];

        airdropData.airdropAmount = s.rewardsData.rewardsAmount;
        airdropData.totalWeight = s.totalWeight;
        airdropData.totalMultipliers = s.totalMultipliers;
        airdropData.totalLevels = s.totalLevels;
        emit Airdrop(rewardAmount);
    }

    function burnAndRedeem(uint256 tokenId) public nonReentrant whenNotPaused returns (uint256 nftStaked) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        NftData storage nftData = s.nftData[tokenId];

        address sender = _msgSender();

        IERC20 stakeToken = s.stakeToken;

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId) == sender || sender == address(this), InvalidTokenOwner());

        require(!nftData.lockedData.isCurrentLocked, TokenLocked());

        nftStaked = nftData.staked;

        uint256 nftLevel = checkLevel(nftStaked);

        uint256 nftWeight = calcWeight(nftStaked, nftData.nftMultiplier + nftLevel);

        s.totalWeight -= nftWeight;
        s.totalMultipliers -= nftData.nftMultiplier;
        s.totalLevels -= nftLevel;

        delete s.nftData[tokenId];

        if (sender != address(this)) {
            erc721.burn(tokenId);
            stakeToken.safeTransfer(sender, nftStaked);
        }

        emit BurnAndRedeem(tokenId);
    }

    function merge(uint256 tokenId1, uint256 tokenId2) external nonReentrant whenNotPaused returns (uint256 newTokenId) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        address sender = _msgSender();

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId1) == sender && erc721.ownerOf(tokenId2) == sender, InvalidTokenOwner());

        require(tokenId1 != tokenId2, InvalidTokenId());

        NftData storage nftData1 = s.nftData[tokenId1];
        NftData storage nftData2 = s.nftData[tokenId2];

        require(nftData1.nftMultiplier == nftData2.nftMultiplier, InvalidRarity());

        mapping(uint256 => uint256) storage lastClaimedAmount = s.rewardsData.lastClaimedAmount;

        require(
            lastClaimedAmount[tokenId1] == lastClaimedAmount[tokenId2] && lastClaimedAmount[tokenId1] == s.rewardsData.rewardsAmount,
            TokenHasPendingClaim()
        );

        require(nftData1.nftMultiplier != s.rarityMultiplier[Rarity(Rarity.Godly)], MaximumRarityReached());

        require(nftData1.staked + nftData2.staked <= s.maxStakeAmount, MaxStakeAmountReached());

        erc721.burn(tokenId1);
        erc721.burn(tokenId2);

        uint256 tokensWeight = calcWeight(
            nftData1.staked + nftData2.staked,
            nftData1.nftMultiplier + checkLevel(nftData1.staked) + nftData2.nftMultiplier + checkLevel(nftData2.staked)
        );
        uint256 tokenLevels = checkLevel(nftData1.staked) + checkLevel(nftData2.staked);
        s.totalWeight -= tokensWeight;
        s.totalMultipliers -= nftData1.nftMultiplier + nftData2.nftMultiplier;
        s.totalLevels -= tokenLevels;

        newTokenId = s.startMergeTokenId++;

        erc721.mint(sender, newTokenId);

        NftData storage newNftData = s.nftData[newTokenId];

        newNftData.staked = nftData1.staked + nftData2.staked;
        newNftData.nftMultiplier = s.rarityMultiplier[Rarity(uint8(s.nftRarity[nftData1.nftMultiplier]) + 1)];
        s.rewardsData.lastClaimedAmount[newTokenId] = s.rewardsData.rewardsAmount;

        uint256 mergeWeight = calcWeight(newNftData.staked, newNftData.nftMultiplier + checkLevel(newNftData.staked));
        uint256 mergeLevels = checkLevel(newNftData.staked);

        s.totalWeight += mergeWeight;
        s.totalMultipliers += newNftData.nftMultiplier;
        s.totalLevels += mergeLevels;

        _setTokenForAirdrop(newTokenId);

        delete s.nftData[tokenId1];
        delete s.nftData[tokenId2];

        emit NFTsMerged(tokenId1, tokenId2, newTokenId);
    }

    function stake(uint256 tokenId, uint256 amount) public whenNotPaused {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId) != address(0), InvalidTokenId());

        NftData storage nftData = s.nftData[tokenId];

        LockedData storage lockedData = nftData.lockedData;

        address from = _msgSender();

        if (from != address(this)) {
            IERC20 stakeToken = s.stakeToken;
            stakeToken.safeTransferFrom(from, address(this), amount);
        }

        require(!lockedData.isCurrentLocked, TokenLocked());

        require(nftData.staked + amount <= s.maxStakeAmount, MaxStakeAmountReached());

        _setTokenForAirdrop(tokenId);

        if (nftData.staked == 0) {
            s.rewardsData.lastClaimedAmount[tokenId] = s.rewardsData.rewardsAmount;
            s.totalMultipliers += nftData.nftMultiplier;
        }

        uint256 levelBefore = checkLevel(nftData.staked);

        uint256 weightBefore = calcWeight(nftData.staked, nftData.nftMultiplier + levelBefore);

        nftData.staked += amount;

        uint256 levelAfter = checkLevel(nftData.staked);

        uint256 weightAfter = calcWeight(nftData.staked, nftData.nftMultiplier + levelAfter);

        s.totalWeight += weightAfter - weightBefore;

        s.totalLevels += levelAfter - levelBefore;

        emit StakeInNFT(tokenId, amount);
    }

    function lockNFT(uint256 tokenId) external whenNotPaused {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        address sender = _msgSender();

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId) == sender, InvalidTokenOwner());

        NftData storage nftData = s.nftData[tokenId];

        LockedData storage lockedData = nftData.lockedData;

        require(nftData.staked > s.minLockedAmount, NotEnoughStaked());

        require(!lockedData.isCurrentLocked, TokenLocked());

        uint256 unlockTimestamp = block.timestamp + s.minLockedTime;

        lockedData.unlockTimestamp = unlockTimestamp;

        lockedData.isCurrentLocked = true;

        $.lockedTokens.push(tokenId);

        emit NFTLocked(tokenId, unlockTimestamp);
    }

    function unlockNFT(uint256 tokenId) external whenNotPaused {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        address sender = _msgSender();

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId) == sender, InvalidTokenOwner());

        NftData storage nftData = s.nftData[tokenId];

        LockedData storage lockedData = nftData.lockedData;

        require(lockedData.isCurrentLocked, TokenLocked());

        require(lockedData.unlockTimestamp <= block.timestamp, TokenLocked());

        lockedData.isCurrentLocked = false;

        emit NFTUnlocked(tokenId, block.timestamp);
    }

    function withdraw(uint256 tokenId, uint256 amount) public nonReentrant whenNotPaused returns (uint256 amountToWithdraw) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        NftData storage nftData = s.nftData[tokenId];

        LockedData storage lockedData = nftData.lockedData;

        address sender = _msgSender();

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId) == sender || sender == address(this), InvalidTokenOwner());

        require(!lockedData.isCurrentLocked, TokenLocked());

        require(nftData.staked != 0 && nftData.staked > amount, NotEnoughStaked());

        _setTokenForAirdrop(tokenId);

        if (lockedData.initialUnlockTimestamp > block.timestamp) {
            require(lockedData.initialVestingAmount - nftData.staked > amount, NotEnoughStaked());
        }

        uint256 levelBefore = checkLevel(nftData.staked);

        uint256 weightBefore = calcWeight(nftData.staked, nftData.nftMultiplier + levelBefore);

        nftData.staked -= amount;

        uint256 levelAfter = checkLevel(nftData.staked);

        uint256 weightAfter = calcWeight(nftData.staked, nftData.nftMultiplier + levelAfter);

        s.totalWeight -= weightBefore - weightAfter;

        s.totalLevels -= levelBefore - levelAfter;

        uint256 feeAmount = (amount * s.withdrawFee) / WHOLE;

        amountToWithdraw = amount - feeAmount;

        if (sender != address(this)) {
            IERC20 stakeToken = s.stakeToken;
            stakeToken.safeTransfer(sender, amountToWithdraw);
        }

        emit WithdrawStaked(tokenId, amountToWithdraw, feeAmount);
    }

    function claim(uint256 tokenId) public whenNotPaused returns (uint256 claimedRewards) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;
        NftData storage nftData = s.nftData[tokenId];

        require(nftData.staked != 0, NothingToClaim());

        address sender = _msgSender();

        IERC721MintBurn erc721 = IERC721MintBurn(address(this));

        require(erc721.ownerOf(tokenId) == sender || sender == address(this), InvalidTokenOwner());

        _setTokenForAirdrop(tokenId);

        claimedRewards = _claimRewards(tokenId);

        s.rewardsData.lastClaimedAmount[tokenId] = s.rewardsData.rewardsAmount;

        require(claimedRewards != 0, NothingToClaim());

        if (sender != address(this)) {
            IERC20 stakeToken = s.stakeToken;
            stakeToken.safeTransfer(sender, claimedRewards);
        }

        emit RewardsClaimed(tokenId, claimedRewards);
    }

    function _claimRewards(uint256 tokenId) private view returns (uint256 claimedRewards) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;
        RewardsData storage rewardsData = s.rewardsData;
        mapping(uint256 => uint256) storage lastClaimedAmount = rewardsData.lastClaimedAmount;

        if (lastClaimedAmount[tokenId] == rewardsData.rewardsAmount) {
            return 0;
        }

        uint256 airdropId = $.airdropId;
        if (airdropId == 0) {
            return 0;
        }

        mapping(uint256 => AirdropData) storage airdropById = $.airdropById;

        for (uint256 airdropTarget; airdropTarget < airdropId; airdropTarget++) {
            AirdropData storage airdropData = airdropById[airdropTarget];
            mapping(uint256 => uint256) storage tokenWeight = airdropData.tokenWeight;
            mapping(uint256 => uint256) storage tokenMultipliers = airdropData.tokenMultipliers;
            if (lastClaimedAmount[tokenId] >= airdropData.airdropAmount) {
                continue;
            }

            claimedRewards = ABDKMathQuad.toUInt(
                ABDKMathQuad.mul(
                    ABDKMathQuad.div(
                        ABDKMathQuad.fromUInt((airdropData.airdropAmount - lastClaimedAmount[tokenId]) >> 1),
                        ABDKMathQuad.fromUInt(airdropData.totalMultipliers + airdropData.totalLevels)
                    ),
                    ABDKMathQuad.fromUInt(tokenMultipliers[tokenId])
                )
            );

            claimedRewards += ABDKMathQuad.toUInt(
                ABDKMathQuad.mul(
                    ABDKMathQuad.div(ABDKMathQuad.fromUInt(tokenWeight[tokenId]), ABDKMathQuad.fromUInt(airdropData.totalWeight)),
                    ABDKMathQuad.fromUInt((airdropData.airdropAmount - lastClaimedAmount[tokenId]) >> 1)
                )
            );
        }
    }

    function _setTokenForAirdrop(uint256 tokenId) private {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        NftData storage nftData = s.nftData[tokenId];

        RewardsData storage rewardsData = s.rewardsData;

        uint256 airdropId = $.airdropId;
        if (airdropId == 0) {
            return;
        }
        mapping(uint256 => AirdropData) storage airdropById = $.airdropById;

        for (uint256 airdropTarget; airdropTarget < airdropId; airdropTarget++) {
            AirdropData storage airdropData = airdropById[airdropTarget];

            if (rewardsData.lastClaimedAmount[tokenId] < airdropData.airdropAmount) {
                if (airdropData.tokenMultipliers[tokenId] == 0) {
                    uint256 staked = nftData.staked;
                    uint256 nftMultiplier = nftData.nftMultiplier;
                    uint256 level = checkLevel(staked);
                    uint256 tokenWeight = calcWeight(staked, nftMultiplier + level);
                    airdropData.tokenWeight[tokenId] = tokenWeight;
                    airdropData.tokenMultipliers[tokenId] = nftMultiplier + level;
                }
            }
        }
    }

    function checkLevel(uint256 staked) public view returns (uint256) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage stakerData = $.stakerData;
        mapping(uint256 => uint256) storage levelStakedNeeded = stakerData.levelStakedNeeded;

        uint256 totalSum;

        if (staked == totalSum) return 0;

        for (uint256 i = 0; i <= 20; i++) {
            if (staked >= levelStakedNeeded[i] + totalSum) {
                totalSum += levelStakedNeeded[i];
            } else {
                return i;
            }
        }
        return 20;
    }

    function calcWeight(uint256 nftStaked, uint256 tokenMultipliers) public pure returns (uint256) {
        uint256 weight = ABDKMathQuad.toUInt(ABDKMathQuad.mul(ABDKMathQuad.fromUInt(nftStaked), ABDKMathQuad.fromUInt(tokenMultipliers)));
        return weight;
    }
}
