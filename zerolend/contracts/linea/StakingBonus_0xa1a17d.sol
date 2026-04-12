// SPDX-License-Identifier: EXTRACTED
// Contract: StakingBonus
// Address: 0xa1a17d3601836b4a881030a7fcb318e47e4d9c91
// Compiler: v0.8.20+commit.a1b79de6
// Classification: zerolend_custom
// Source: Etherscan verified (project files only, libraries excluded)
// Extracted: 2026-04-13

// ======================================================================
// FILE: contracts/interfaces/IERC20Burnable.sol
// ======================================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IERC20Burnable is IERC20 {
    function burn(uint256 amount) external;

    function burnFrom(address from, uint256 amount) external;
}

// ======================================================================
// FILE: contracts/interfaces/IStakingBonus.sol
// ======================================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IERC20Burnable} from "./IERC20Burnable.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/interfaces/IERC721Receiver.sol";

interface IStakingBonus is IERC721Receiver {
    function setBonusBps(uint256 amount) external;

    function calculateBonus(uint256 amount, uint256 duration) external returns (uint256);

    function bonusBps() external returns (uint256);

    event SetBonusBPS(uint256 oldValue, uint256 newValue);
}

// ======================================================================
// FILE: contracts/interfaces/IVestedZeroNFT.sol
// ======================================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

// import {IERC721} from "@openzeppelin/contracts/interfaces/IERC721.sol";

interface IVestedZeroNFT {
    enum VestCategory {
        PRIVATE_SALE,
        EARLY_ZERO,
        NORMAL,
        AIRDROP
    }

    struct LockDetails {
        uint256 cliffDuration;
        uint256 unlockDate;
        uint256 pendingClaimed;
        uint256 pending;
        uint256 upfrontClaimed;
        uint256 upfront;
        uint256 linearDuration;
        uint256 createdAt;
        bool hasPenalty;
        VestCategory category;
    }

    /// Mints a vesting nft for a user. This is a privileged function meant to only be called by a contract or a deployer
    /// @param who For whom we are vesting tokesn for
    /// @param pending How much tokens the user gets after the cliff is over during the linear vesting
    /// @param upfront How much tokens the user gets upfront (befoer the cliff after the unlockDate)
    /// @param linearDuration How long is the linear vesting
    /// @param cliffDuration How long is the cliff (normally 1 month)
    /// @param unlockDate When will this vest start
    /// @param hasPenalty Will the user get penalized for withdrawing early (Radiant-style punishements)
    /// @param category A read-only value just to keep track of a NFT.
    function mint(
        address who,
        uint256 pending,
        uint256 upfront,
        uint256 linearDuration,
        uint256 cliffDuration,
        uint256 unlockDate,
        bool hasPenalty,
        VestCategory category
    ) external returns (uint256);

    function togglePause() external;

    function freeze(uint256 tokenId, bool what) external;

    /// Used by an admin to bulk update the cliff duration and linear distribution for a vest
    /// @param tokenIds the nfts to update
    /// @param linearDurations the linear duration to update with
    /// @param cliffDurations the cliff duration to update with
    function updateCliffDuration(
        uint256[] memory tokenIds,
        uint256[] memory linearDurations,
        uint256[] memory cliffDurations
    ) external;

    /// How much ZERO tokens this vesting nft can claim
    /// @param tokenId the id of the nft contract
    /// @return upfront how much tokens upfront this nft can claim
    /// @return pending how much tokens in the linear vesting (after the cliff) this nft can claim
    function claimable(
        uint256 tokenId
    ) external view returns (uint256 upfront, uint256 pending);

    /// Executes a claim of tokens for a given nft
    /// @param id the nft id to claim tokens for
    function claim(uint256 id) external returns (uint256 toClaim);

    /// How much tokens have been claimed so far
    /// @param tokenId the nft id
    function claimed(uint256 tokenId) external view returns (uint256);

    /// How much tokens haven't been claimed so far
    /// @param tokenId the nft id
    function unclaimed(uint256 tokenId) external view returns (uint256);

    /// Calculate how much penalty the user will have to pay
    /// @param tokenId the nft id
    function penalty(uint256 tokenId) external view returns (uint256);

    /// Splits a vesting NFT into smaller vests so that it can be easily traded
    /// @param tokenId The nft to split for
    /// @param fraction By how much bps the split should happen (10000 bps = 100%)
    function split(uint256 tokenId, uint256 fraction) external;

    /// In case the a nft gets sold in the OTC market, would be great if the team could
    /// claim fees against the vested tokens
    /// @param salePrice The price the asset is going to be sold for
    /// @return royaltyReceiver The address that will receive the royalties
    /// @return royaltyAmount The royalty amount
    function royaltyInfo(
        uint256,
        uint256 salePrice
    ) external view returns (address, uint256);

    /// Claim unvested tokens by the bonus staking contract
    /// @param tokenId The nft id
    function claimUnvested(uint256 tokenId) external;

    /// Metadata helper for nft platforms like openzea
    /// @param tokenId The nft id
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ======================================================================
// FILE: contracts/interfaces/IZeroLocker.sol
// ======================================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IERC721} from "@openzeppelin/contracts/interfaces/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/interfaces/IERC721Receiver.sol";

interface IZeroLocker is IERC721 {
    function balanceOfNFT(uint256) external view returns (uint256);

    function merge(uint256 _from, uint256 _to) external;

    function depositFor(uint256 _tokenId, uint256 _value) external;

    function createLockFor(
        uint256 _value,
        uint256 _lockDuration,
        address _to,
        bool _stakeNFT
    ) external returns (uint256);

    function createLock(
        uint256 _value,
        uint256 _lockDuration,
        bool _stakeNFT
    ) external returns (uint256);

    enum DepositType {
        DEPOSIT_FOR_TYPE,
        CREATE_LOCK_TYPE,
        INCREASE_LOCK_AMOUNT,
        INCREASE_UNLOCK_TIME,
        MERGE_TYPE
    }

    struct LockedBalance {
        uint256 amount;
        uint256 end;
        uint256 start;
        uint256 power;
    }

    event Deposit(
        address indexed provider,
        uint256 tokenId,
        uint256 value,
        uint256 indexed locktime,
        DepositType deposit_type,
        uint256 ts
    );

    event Withdraw(
        address indexed provider,
        uint256 tokenId,
        uint256 value,
        uint256 ts
    );

    event Supply(uint256 prevSupply, uint256 supply);
}

// ======================================================================
// FILE: contracts/vesting/StakingBonus.sol
// ======================================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// ███████╗███████╗██████╗  ██████╗
// ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
//   ███╔╝ █████╗  ██████╔╝██║   ██║
//  ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
// ███████╗███████╗██║  ██║╚██████╔╝
// ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝

// Website: https://zerolend.xyz
// Discord: https://discord.gg/zerolend
// Twitter: https://twitter.com/zerolendxyz

import {IStakingBonus} from "../interfaces/IStakingBonus.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IVestedZeroNFT} from "../interfaces/IVestedZeroNFT.sol";
import {IERC20Burnable} from "../interfaces/IERC20Burnable.sol";
import {IERC2612} from "@openzeppelin/contracts/interfaces/IERC2612.sol";
import {IZeroLocker} from "../interfaces/IZeroLocker.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/// @title Staking bonus contract
/// @author Deadshot Ryker <ryker@zerolend.xyz>
/// @notice A contract that rewards users with tokens for converting their unvested/unclaimed tokens into a 4 year stake
contract StakingBonus is OwnableUpgradeable, IStakingBonus {
    IERC20 public zero;
    IVestedZeroNFT public vestedZERO;
    IZeroLocker public locker;
    uint256 public bonusBps;

    // constructor() {
    //     _disableInitializers();
    // }

    function init(
        address _zero,
        address _locker,
        address _vestedZERO,
        uint256 _bonusBps
    ) external initializer {
        __Ownable_init(msg.sender);
        zero = IERC20(_zero);
        locker = IZeroLocker(_locker);
        vestedZERO = IVestedZeroNFT(_vestedZERO);
        bonusBps = _bonusBps;

        zero.approve(_locker, type(uint256).max);
    }

    function onERC721Received(
        address,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4) {
        require(msg.sender == address(vestedZERO), "!vestedZERO");

        // check how much unvested tokens the nft has
        uint256 pending = vestedZERO.unclaimed(tokenId);

        // decode data; by default stake the NFT
        bool stake = true;
        address to = from;
        uint256 duration = 4 * 365 days;
        if (data.length > 1)
            (stake, to, duration) = abi.decode(data, (bool, address, uint256));

        // calculate the bonus
        uint256 bonus = calculateBonus(pending, duration);

        // get the unvested tokens into this contract
        vestedZERO.claimUnvested(tokenId);

        // Staking for either 4 years or the time provided
        locker.createLockFor(
            pending + bonus, // uint256 _value,
            duration, // uint256 _lockDuration,
            to, // address _to,
            stake // bool _stakeNFT
        );

        return this.onERC721Received.selector;
    }

    function createLock(uint256 amount, uint256 duration, bool stake) external {
        zero.transferFrom(msg.sender, address(this), amount);
        uint256 bonus = calculateBonus(amount, duration);

        locker.createLockFor(
            amount + bonus, // uint256 _value,
            duration, // uint256 _lockDuration,
            msg.sender, // address _to,
            stake // bool _stakeNFT
        );
    }

    function setBonusBps(uint256 _bps) external override onlyOwner {
        emit SetBonusBPS(bonusBps, _bps);
        bonusBps = _bps;
    }

    function calculateBonus(
        uint256 amount,
        uint256 duration
    ) public view override returns (uint256) {
        uint256 rewardPercentage = bonusBps;
        if (duration > 0) {
            uint256 lockDurationInYears = duration / 31536000;
            if (lockDurationInYears > 0) {
                rewardPercentage = 500 * lockDurationInYears;
            }
        }

        uint256 bonus = (amount * rewardPercentage) / 10000;

        // if we don't have enough funds to pay out bonuses, then return 0
        if (zero.balanceOf(address(this)) < bonus) return 0;

        return bonus;
    }
}
