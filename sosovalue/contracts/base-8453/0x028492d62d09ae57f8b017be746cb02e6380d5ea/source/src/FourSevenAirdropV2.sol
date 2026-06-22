// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";

interface IFourSevenAirdrop {
    function rewardToken() external view returns (address);
    function ticketSigner() external view returns (address);
    function expiration() external view returns (uint256);
    function claimedCnt() external view returns (uint256);
    function claimedTotalAmount() external view returns (uint256);
    function claimedAmount(address account) external view returns (uint256);
    function getRewards()
        external
        view
        returns (
            uint256[] memory rewardLimits_,
            uint256[] memory rewardAmounts_,
            uint256 totalRewardLimit_,
            uint256 totalRewardAmount_
        );
}

contract FourSevenAirdropV2 is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;

    uint256 public expiration;
    address public rewardToken;
    address public ticketSigner;

    uint256 public claimedCnt;
    uint256 public claimedTotalAmount;
    mapping(address => uint256) claimedAmount_;

    uint256 public totalRewardLimit;
    uint256 public totalRewardAmount;
    uint256[] rewardLimits;
    uint256[] rewardAmounts;

    uint256 initTotalRewardLimit;
    uint256[] initRewardLimits;

    IFourSevenAirdrop oldAirdrop;

    event Claim(address account, uint256 reward);
    event Withdraw(address token);
    event UpdateConfig(
        address rewardToken,
        address ticketSigner,
        uint256 expiration
    );
    event UpdateRewards(
        uint256[] rewardLimits,
        uint256[] rewardAmounts,
        uint256 totalRewardLimit,
        uint256 totalRewardAmount
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function initialize(
        address owner_,
        address rewardToken_,
        address ticketSigner_,
        uint256 expiration_
    ) public initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(owner_);
        __Pausable_init();
        _updateConfig(rewardToken_, ticketSigner_, expiration_);
        uint256[5] memory fixedRewardLimits_ = [
            uint256(1),
            uint256(47),
            uint256(470),
            uint256(4700),
            uint256(61766)
        ];
        uint256[5] memory fixedRewardAmounts_ = [
            uint256(47000_00),
            uint256(4700_00),
            uint256(470_00),
            uint256(47_00),
            uint256(4_70)
        ];
        uint256[] memory rewardLimits_ = new uint256[](
            fixedRewardLimits_.length
        );
        uint256[] memory rewardAmounts_ = new uint256[](
            fixedRewardAmounts_.length
        );
        for (uint256 i = 0; i < fixedRewardLimits_.length; i++) {
            rewardLimits_[i] = fixedRewardLimits_[i];
            rewardAmounts_[i] = fixedRewardAmounts_[i];
        }
        _updateRewards(rewardLimits_, rewardAmounts_);
    }

    function migrateFrom(address oldAirdropAddress) external onlyOwner {
        oldAirdrop = IFourSevenAirdrop(oldAirdropAddress);
        require(oldAirdrop.expiration() < block.timestamp, "not expired");
        require(
            oldAirdrop.rewardToken() == rewardToken,
            "not the same reward token"
        );
        (
            uint256[] memory rewardLimits_,
            uint256[] memory rewardAmounts_,
            ,

        ) = oldAirdrop.getRewards();
        uint256 factor = 10 ** IERC20Metadata(rewardToken).decimals();
        for (uint i = 0; i < rewardAmounts_.length; i++) {
            rewardAmounts_[i] = (rewardAmounts_[i] * 100) / factor;
        }
        _updateRewards(rewardLimits_, rewardAmounts_);
        claimedCnt = oldAirdrop.claimedCnt();
        claimedTotalAmount = oldAirdrop.claimedTotalAmount();
    }

    function claim(
        address account,
        uint256 ticket,
        bytes memory signature
    ) external whenNotPaused returns (uint256 amount) {
        require(msg.sender == account, "msg sender is not the account");
        require(block.timestamp <= expiration, "expired");
        require(claimedAmount(account) == 0, "already claimed");
        bytes32 ticketHash = keccak256(abi.encodePacked(account, ticket));
        require(
            SignatureChecker.isValidSignatureNow(
                ticketSigner,
                ticketHash,
                signature
            ),
            "ticket signature not valid"
        );
        require(totalRewardLimit > 0 && totalRewardAmount > 0, "airdrop end");
        uint256 rewardIdx = uint256(ticketHash) % initTotalRewardLimit;
        uint256 cumRewardLimit = 0;
        for (uint i = 0; i < initRewardLimits.length; i++) {
            cumRewardLimit += initRewardLimits[i];
            if (rewardIdx < cumRewardLimit) {
                uint256 rewardId = i;
                if (rewardLimits[rewardId] == 0) {
                    for (uint j = rewardLimits.length - 1; j >= 0; j--) {
                        if (rewardLimits[j] > 0) {
                            rewardId = j;
                            break;
                        }
                    }
                }
                amount = rewardAmounts[rewardId];
                emit Claim(account, amount);
                claimedCnt += 1;
                claimedTotalAmount += amount;
                claimedAmount_[account] = amount;
                require(
                    IERC20(rewardToken).balanceOf(address(this)) >= amount,
                    "not enough token to claim"
                );
                rewardLimits[rewardId] -= 1;
                totalRewardLimit -= 1;
                totalRewardAmount -= amount;
                IERC20(rewardToken).safeTransfer(account, amount);
                break;
            }
        }
    }

    function updateConfig(
        address rewardToken_,
        address ticketSigner_,
        uint256 expiration_
    ) external onlyOwner {
        _updateConfig(rewardToken_, ticketSigner_, expiration_);
    }

    function _updateConfig(
        address rewardToken_,
        address ticketSigner_,
        uint256 expiration_
    ) internal {
        require(rewardToken_ != address(0));
        require(ticketSigner_ != address(0));
        require(expiration_ >= block.timestamp);
        rewardToken = rewardToken_;
        ticketSigner = ticketSigner_;
        expiration = expiration_;
        emit UpdateConfig(rewardToken, ticketSigner, expiration);
    }

    function updateRewards(
        uint256[] memory rewardLimits_,
        uint256[] memory rewardAmounts_
    ) external onlyOwner {
        _updateRewards(rewardLimits_, rewardAmounts_);
    }

    function _updateRewards(
        uint256[] memory rewardLimits_,
        uint256[] memory rewardAmounts_
    ) internal {
        require(
            rewardLimits_.length == rewardAmounts_.length,
            "reward length not equal"
        );
        delete rewardLimits;
        delete rewardAmounts;
        delete initRewardLimits;
        totalRewardLimit = 0;
        totalRewardAmount = 0;
        uint256 factor = 10 ** IERC20Metadata(rewardToken).decimals();
        for (uint256 i = 0; i < rewardLimits_.length; i++) {
            rewardLimits.push(rewardLimits_[i]);
            rewardAmounts.push((rewardAmounts_[i] * factor) / 100);
            initRewardLimits.push(rewardLimits[i]);
            totalRewardLimit += rewardLimits[i];
            totalRewardAmount += rewardAmounts[i] * rewardLimits[i];
        }
        initTotalRewardLimit = totalRewardLimit;
        emit UpdateRewards(
            rewardLimits,
            rewardAmounts,
            totalRewardLimit,
            totalRewardAmount
        );
    }

    function getRewards()
        external
        view
        returns (
            uint256[] memory rewardLimits_,
            uint256[] memory rewardAmounts_,
            uint256 totalRewardLimit_,
            uint256 totalRewardAmount_
        )
    {
        (
            rewardLimits_,
            rewardAmounts_,
            totalRewardLimit_,
            totalRewardAmount_
        ) = (rewardLimits, rewardAmounts, totalRewardLimit, totalRewardAmount);
    }

    function withdraw(address token) external onlyOwner {
        uint256 withdrawAmount = IERC20(token).balanceOf(address(this));
        require(withdrawAmount > 0, "nothing to withdraw");
        IERC20(token).safeTransfer(owner(), withdrawAmount);
        emit Withdraw(token);
    }

    function claimedAmount(
        address account
    ) public view returns (uint256 amount) {
        amount = claimedAmount_[account];
        if (address(oldAirdrop) != address(0)) {
            uint256 oldAmount = oldAirdrop.claimedAmount(account);
            if (oldAmount > amount) {
                amount = oldAmount;
            }
        }
    }
}
