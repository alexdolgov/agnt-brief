// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

enum Rarity {
    OG,
    Plentiful,
    Common,
    Uncommon,
    Rare,
    Epic,
    Legendary,
    Mythic,
    Godly,
    Handmade
}

enum ActionType {
    Transfer,
    Stake,
    Claim,
    Withdraw,
    BurnAndRedeem,
    ConfirmAction,
    RevertAction
}

enum ActionStatus {
    Pending,
    Success,
    Failure
}

struct StakerStorage {
    uint256 totalWeight;
    uint256 totalMultipliers;
    uint256 totalLevels;
    uint256 minLockedTime;
    uint256 minLockedAmount;
    uint256 maxStakeAmount;
    uint256 startMergeTokenId;
    uint256 withdrawFee;
    IERC20 stakeToken;
    RewardsData rewardsData;
    mapping(uint256 level => uint256 stakedNeeded) levelStakedNeeded;
    mapping(uint256 tokenId => NftData nftData) nftData;
    mapping(Rarity nftRarity => uint256 multiplier) rarityMultiplier;
    mapping(uint256 nftMultiplier => Rarity) nftRarity;
}

struct AirdropData {
    uint256 airdropAmount;
    uint256 totalWeight;
    uint256 totalMultipliers;
    uint256 totalLevels;
    mapping(uint256 tokenId => uint256) tokenWeight;
    mapping(uint256 tokenId => uint256) tokenMultipliers;
}

struct NftData {
    uint256 staked;
    uint256 nftMultiplier;
    LockedData lockedData;
}

struct RewardsData {
    uint256 rewardsAmount;
    mapping(uint256 tokenId => uint256 claimedAmount) lastClaimedAmount;
}

struct StakerConfig {
    uint256[] stakedNeededForLevels;
    uint256[] rarityMultipliers;
    uint256 minLockedTime;
    uint256 minLockedAmount;
    uint256 maxStakeAmount;
    uint256 startMergeTokenId;
    uint256 withdrawFee;
    address stakeToken;
    ERC721TokenConfig nftConfig;
}

struct ERC721TokenConfig {
    string name;
    string symbol;
    string baseURI;
}

struct LockedData {
    uint256 initialVestingAmount;
    uint256 initialUnlockTimestamp;
    uint256 lockedAmount;
    uint256 unlockTimestamp;
    bool isCurrentLocked;
}

struct ONFTReceipt {
    uint256 tokenId;
    uint256 amount;
    address user;
    ActionType actionType;
    ActionStatus status;
}

library ONFTStakerStorage {
    struct Layout {
        StakerStorage stakerData;
        mapping(uint256 airdropId => AirdropData) airdropById;
        mapping(address user => bool) isAuthorized;
        mapping(bytes32 guid => ONFTReceipt) receipts;
        uint256[] lockedTokens;
        uint256 airdropId;
        uint256 mainChainEid;
    }

    // keccak256(abi.encode(uint256(keccak256("primefi.storage.onftstakerUpgradrable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant STORAGE_SLOT = 0xf2aa4d769a4fdf5e9d792f5551a58444d1a6aaafc110864e9eaa9186e77a8000;

    function layout() internal pure returns (Layout storage l) {
        assembly {
            l.slot := STORAGE_SLOT
        }
    }
}
