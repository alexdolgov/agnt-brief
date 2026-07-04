// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IERC20} from "./interfaces/IERC20.sol";
import {IERC20Burnable} from "./interfaces/IERC20Burnable.sol";
import {MathLib} from "./libraries/MathLib.sol";
import {UtilsLib} from "./libraries/UtilsLib.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721Enumerable} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title sbIMF - the IMF slow burn
 *
 * @dev This contract implements the IMF slow burn feature.
 * Users can deposit their IMF tokens and recieve an NFT, which
 * represent their share in the staking pool.
 *
 * The contract, as the name implies, slowly burns deposited IMF tokens
 * for Rewards.
 *
 * The rate of burn is controled by the amount of total stake,
 * the greater the total stake relative to totalSupply, the faster
 * the burn.
 */
contract sbIMF is ERC721, ERC721Enumerable, Ownable2Step {
    using MathLib for uint256;

    uint256 public constant REWARD_PER_SHARE_SCALING_FACTOR = 1e12;

    address public immutable imfToken;
    address public rewardToken;

    mapping(uint256 => uint256) public rewardDebt;
    mapping(uint256 => uint256) public sharesOf;

    mapping(uint256 => uint256) public timelock;
    mapping(uint256 => uint256) public lockedWithdrawal;

    uint256 public totalShares;
    uint256 public totalAssets;
    uint256 public unclaimedRewards;
    uint256 public accRewardPerShare;
    uint256 public lastBurnTimestamp;
    uint256 public withdrawDelay;
    uint256 private _tokenIdCounter;

    event Deposit(address account, uint256 tokenId, uint256 assets, uint256 shares);
    event Withdraw(address account, uint256 tokenId, uint256 assets, uint256 shares);
    event Release(address account, address to, uint256 tokenId, uint256 assets);
    event RewardsClaimed(address account, uint256 tokenId, uint256 amount);

    constructor(address _imfToken, address _rewardToken) ERC721("The IMF Slow Burn", "sbIMF") {
        require(_imfToken != address(0), "sbIMF: zero address imfToken");
        require(_rewardToken != address(0), "sbIMF: zero address rewardToken");
        imfToken = _imfToken;
        rewardToken = _rewardToken;
        lastBurnTimestamp = block.timestamp;
        withdrawDelay = 6.9 days;
    }

    function setWithdrawDelay(uint256 _withdrawDelay) public onlyOwner {
        withdrawDelay = _withdrawDelay;
    }

    function pendingImfBurn() public view returns (uint256) {
        return totalAssets.mulDivUp(totalAssets, IERC20(imfToken).totalSupply()).mulDivDown(
            block.timestamp - lastBurnTimestamp, 365 days
        );
    }

    function burnImf() public {
        uint256 burnAmount = pendingImfBurn();
        totalAssets -= burnAmount;
        lastBurnTimestamp = block.timestamp;
        IERC20Burnable(imfToken).burn(burnAmount);
    }

    function mint(uint256 assets, uint256 shares) external returns (uint256, uint256) {
        uint256 tokenId = _tokenIdCounter++;
        _mint(msg.sender, tokenId);
        return deposit(tokenId, assets, shares, false);
    }

    function deposit(uint256 tokenId, uint256 assets, uint256 shares, bool fromWithdrawnImf) public returns (uint256, uint256) {
        require(UtilsLib.exactlyOneZero(assets, shares), ErrorsLib.INCONSISTENT_INPUT);
        require(msg.sender == address(this) || ownerOf(tokenId) == msg.sender, "sbIMF: Not token owner");

        burnImf();
        _updateRewardsPerShare();

        if (totalShares == 0) {
            if (assets > 0) shares = assets;
            else assets = shares;
        } else {
            if (assets > 0) shares = assets.mulDivUp(totalShares, totalAssets);
            else assets = shares.mulDivDown(totalAssets, totalShares);
        }

        sharesOf[tokenId] += shares;
        totalShares += shares;
        totalAssets += assets;
        rewardDebt[tokenId] += accRewardPerShare.mulDivUp(shares, REWARD_PER_SHARE_SCALING_FACTOR);

        if (fromWithdrawnImf) {
            // No need for > 0 check, as should underflow error
            lockedWithdrawal[tokenId] -= assets;
        } else {
            IERC20(imfToken).transferFrom(msg.sender, address(this), assets);
        }

        emit Deposit(msg.sender, tokenId, assets, shares);

        return (assets, shares);
    }

    function withdraw(uint256 tokenId, uint256 assets, uint256 shares) public returns (uint256, uint256) {
        require(ownerOf(tokenId) == msg.sender, "sbIMF: Not token owner");

        burnImf();
        claimRewards(tokenId);

        if (assets > 0) shares = assets.mulDivDown(totalShares, totalAssets);
        else assets = shares.mulDivUp(totalAssets, totalShares);

        require(sharesOf[tokenId] >= shares, "sbIMF: Insufficient shares");
        sharesOf[tokenId] = sharesOf[tokenId] - shares;
        totalShares = UtilsLib.zeroFloorSub(totalShares, shares);
        totalAssets = UtilsLib.zeroFloorSub(totalAssets, assets);

        lockedWithdrawal[tokenId] += assets;
        timelock[tokenId] = block.timestamp + withdrawDelay;

        return (assets, shares);
    }

    function release(uint256 tokenId, address to) public {
        require(ownerOf(tokenId) == msg.sender, "sbIMF: Not token owner");
        require(timelock[tokenId] < block.timestamp, "sbIMF: withdrawn tokens timelocked");

        uint256 assets = lockedWithdrawal[tokenId];

        timelock[tokenId] = 0;
        lockedWithdrawal[tokenId] = 0;

        IERC20(imfToken).transfer(to, assets);

        emit Release(msg.sender, to, tokenId, assets);
    }

    function redeem(uint256 tokenId, address to) external {
        require(timelock[tokenId] < block.timestamp, "sbIMF: withdrawn tokens timelocked");
        require(sharesOf[tokenId] == 0, "sbIMF: un-withdrawn IMF tokens");

        release(tokenId, to);

        sharesOf[tokenId] = 0;
        rewardDebt[tokenId] = 0;

        _burn(tokenId);
    }

    function _updateRewardsPerShare() internal {
        if (totalShares == 0) {
            return;
        }

        uint256 newRewards = IERC20(rewardToken).balanceOf(address(this)) - unclaimedRewards;
        accRewardPerShare += newRewards.mulDivDown(REWARD_PER_SHARE_SCALING_FACTOR, totalShares);
        unclaimedRewards += newRewards;
    }

    function unclaimedRewardsFor(uint256 tokenId) external view returns (uint256) {
        uint256 newRewards = IERC20(rewardToken).balanceOf(address(this)) - unclaimedRewards;
        uint256 rewardPerShare = accRewardPerShare + newRewards.mulDivDown(REWARD_PER_SHARE_SCALING_FACTOR, totalShares);
        return UtilsLib.zeroFloorSub(rewardPerShare.mulDivDown(sharesOf[tokenId], REWARD_PER_SHARE_SCALING_FACTOR), rewardDebt[tokenId]);
    }

    function claimRewards(uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "sbIMF: Not token owner");
        burnImf();
        _updateRewardsPerShare();
        uint256 claimableAmount =
            UtilsLib.zeroFloorSub(accRewardPerShare.mulDivDown(sharesOf[tokenId], REWARD_PER_SHARE_SCALING_FACTOR), rewardDebt[tokenId]);

        if (claimableAmount == 0) {
            return;
        }

        rewardDebt[tokenId] += claimableAmount;
        unclaimedRewards -= claimableAmount;

        IERC20(rewardToken).transfer(msg.sender, claimableAmount);
        emit RewardsClaimed(msg.sender, tokenId, claimableAmount);
    }

    // Override required by Solidity for ERC721Enumerable
    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    // Override required by Solidity for ERC721Enumerable
    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    // Override so we have a hook to render something cool when users have a stake in their
    // wallet
    function _baseURI() internal pure override(ERC721) returns (string memory) {
        return "https://metadata.internationalmeme.fund/";
    }
}
