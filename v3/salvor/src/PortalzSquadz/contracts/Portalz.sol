// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

import "./IPortalz.sol";
import "./Tokens.sol";

/**
 @dev Portalz are ERC1155 receivers as they can own bonus rewards and
 be themselves bonusRewardSender.
 */
contract Portalz is IPortalz, Ownable, Pausable, ERC1155Holder {
    /**
     @dev Max number of bonus rewardz used to iterate in the mapping.
    */
    uint8 public constant MAX_BONUS_REWARDZ = 100;

    /* ********************************** */
    /*         Allowed NFTs Amount        */
    /* ********************************** */

    /**
     @notice Allowed type of NFTs to be staked.
     */
    mapping(address => uint256) public allowedNFTAmountPerSquadz;

    /* ********************************** */
    /*                Info                */
    /* ********************************** */

    /**
     @notice Name of the Portalz.
     */
    string public name;

    /**
     @notice Above this number of days, rewards don't increase anymore.
     User will have to unstake then stake again to continue to earn rewards.
     @dev this value shouldn't exceed 366.
     */
    uint256 public maxPeriod = 166;

    /* ********************************** */
    /*             Multiplier             */
    /* ********************************** */

    /**
     @notice Multiplier of the basic reward of the Portalz.
     @dev Value expressed in **18.
     For example: a basic reward of 10 with a `multiplier`
     of 10**16 will result in a reward of 10*10**16/10**18 ether
     */
    uint256 public multiplier;

    /**
     @notice Max number of days during which the multiplier is increased.
    */
    uint256 public maxMultiplierPeriod = 100;

    /* ********************************** */
    /*            Token Reward            */
    /* ********************************** */

    /**
     @notice Basic reward token of the Portalz.
     
     Note that it has to be an ERC20 contract.
     */
    address public rewardTokenAddress;

    /**
     @notice Wallet address supposed to send the reward.
     @dev This `rewardSender` address must own enough ERC20 tokens and
     provide enough allowance of `rewardTokenAddress` token to
     the Squadz contract.
     */
    address public rewardSender;

    /* ********************************** */
    /*        Bonus ERC1155 Rewardz       */
    /* ********************************** */

    struct BonusERC1155Rewardz {
        // tokens to drop
        Tokens.ERC165Token token;
        // 0 if never dropped
        uint16 dropChance;
        // max drop chance whatever staking period and squadz size
        uint16 maxDropChance;
    }

    /**
     @notice Optional bonus rewardz that could be granted.

     @dev child Portalz contract has to define the address of the
     ERC1155 token and its chance to drop.
     
     Note When deploying a Portalz, we need to send the bonus ERC1155 tokens
     to the Portalz.
     */
    mapping(uint8 => BonusERC1155Rewardz) public bonusRewardz;

    /**
     @notice Wallet address supposed to send the bonus reward.
     @dev This `bonusRewardSender` address must own enough ERC1155 tokens
     and approve the Squadz contract to spend the tokens.
     @dev Portalz contracts can also own the bonus tokens, therefore `bonusRewardSender`
     will be the same value as the Portalz' contract address.
     */
    address public bonusRewardSender;

    /* ********************************** */
    /*            Constructor             */
    /* ********************************** */

    constructor(
        string memory _name,
        uint256 _multiplier,
        address _rewardTokenAddress,
        address _rewardSender,
        BonusERC1155Rewardz[] memory _bonusRewardz,
        address _bonusRewardSender
    ) {
        name = _name;
        multiplier = _multiplier;
        rewardTokenAddress = _rewardTokenAddress;
        rewardSender = _rewardSender == address(0)
            ? address(this)
            : _rewardSender;
        for (uint8 i = 0; i < _bonusRewardz.length; i++) {
            bonusRewardz[i] = _bonusRewardz[i];
        }
        bonusRewardSender = _bonusRewardSender == address(0)
            ? address(this)
            : _bonusRewardSender;
    }

    function withdraw() external onlyOwner {
        require(address(this).balance > 0, "1001");
        payable(msg.sender).transfer(address(this).balance);
    }

    function approveRewardToken(address stakingContract, uint256 amount)
        external
        onlyOwner
        returns (bool)
    {
        IERC20 rewardTokenContract = IERC20(rewardTokenAddress);
        return rewardTokenContract.approve(stakingContract, amount);
    }

    function approveBonusRewardToken(
        address stakingContract,
        Tokens.ERC165Token calldata token,
        bool approved
    ) external onlyOwner {
        IERC1155 bonusRewardTokenContract = IERC1155(token.contractAddress);
        bonusRewardTokenContract.setApprovalForAll(stakingContract, approved);
    }

    /* ********************************** */
    /*               Getter               */
    /* ********************************** */

    function areTokensAllowed(Tokens.ERC165Token[] calldata tokens)
        external
        view
        returns (bool)
    {
        require(tokens.length > 0, "1014");

        address[] memory tokensCountAddress = new address[](tokens.length);
        uint256[] memory tokensCountNumber = new uint256[](tokens.length);
        uint256 numberOfDifferentTokensTypes;

        for (uint256 i = 0; i < tokens.length; i++) {
            bool tokenFound = false;
            uint256 j = 0;
            while (j < numberOfDifferentTokensTypes) {
                if (tokensCountAddress[j] == tokens[i].contractAddress) {
                    tokensCountNumber[j]++;

                    if (
                        tokensCountNumber[j] >
                        allowedNFTAmountPerSquadz[tokens[i].contractAddress]
                    ) {
                        return false;
                    }

                    tokenFound = true;
                    break;
                }
                j++;
            }

            if (allowedNFTAmountPerSquadz[tokens[i].contractAddress] > 0) {
                if (!tokenFound) {
                    tokensCountAddress[j] = tokens[i].contractAddress;
                    tokensCountNumber[j] = 1;
                    numberOfDifferentTokensTypes++;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    /**
     @notice Calculates the reward eligible to be earned during a time period.
     @param tokensBaseDailyReward is the base amount of token for day 0 (in ether).
     @param period is the number of days the tokens have been staked during.
     This value is capped to maxPeriod.
     @return reward the total reward expressed in ^18.

     @dev 10**14 is just 1 ether / BASIS_POINT (which is 10000) because multiplier
     is expressed in BASIS_POINT.
     */
    function calculateRewardsForDays(
        uint256 tokensBaseDailyReward,
        uint256 period
    ) external view returns (uint256 reward) {
        if (period == 0) {
            return 0;
        }

        uint256 _maxPeriod = period > maxPeriod ? maxPeriod : period;

        reward = tokensBaseDailyReward * 1 ether;
        for (uint256 day = 1; day < _maxPeriod; day++) {
            reward += tokensBaseDailyReward * currentMultiplier(day);
        }

        return reward;
    }

    /**
     @notice Calculates the multiplier for a given number of days with
     tokens staked in a row.
     @param period is the number of days the tokens have been staked during.
     This value is capped to maxMultiplierPeriod.
     @return mult the current multiplier expressed in ^18
     */
    function currentMultiplier(uint256 period)
        public
        view
        returns (uint256 mult)
    {
        uint256 maxMultPeriod = period > maxMultiplierPeriod
            ? maxMultiplierPeriod
            : period;

        mult = 1 ether + (multiplier * maxMultPeriod);
        return mult;
    }

    function bonusRewardzLength() external view returns (uint256) {
        for (uint8 i = 0; i < MAX_BONUS_REWARDZ; i = i++) {
            if (
                bonusRewardz[i].dropChance == 0 &&
                bonusRewardz[i].maxDropChance == 0
            ) {
                return i;
            }
        }
        return MAX_BONUS_REWARDZ;
    }

    /* ********************************** */
    /*              Setters               */
    /* ********************************** */

    function addAllowedNFT(address contractAddress, uint256 maxAmountPerSquadz)
        external
        onlyOwner
    {
        require(allowedNFTAmountPerSquadz[contractAddress] == 0, "1020");
        allowedNFTAmountPerSquadz[contractAddress] = maxAmountPerSquadz;
    }

    function removeAllowedNFT(address contractAddress) external onlyOwner {
        require(allowedNFTAmountPerSquadz[contractAddress] > 0, "1021");
        allowedNFTAmountPerSquadz[contractAddress] = 0;
    }

    function setName(string calldata _name) external onlyOwner {
        name = _name;
    }

    function setMaxPeriod(uint256 _maxPeriod) external onlyOwner {
        maxPeriod = _maxPeriod;
    }

    function setMultiplier(uint256 _multiplier) external onlyOwner {
        multiplier = _multiplier;
    }

    function setMaxMultiplierPeriod(uint256 _maxMultiplierPeriod)
        external
        onlyOwner
    {
        maxMultiplierPeriod = _maxMultiplierPeriod;
    }

    function setRewardTokenAddress(address _rewardTokenAddress)
        external
        onlyOwner
    {
        rewardTokenAddress = _rewardTokenAddress;
    }

    function setRewardSender(address _rewardSender) external onlyOwner {
        rewardSender = _rewardSender;
    }

    function setBonusRewardSender(address _bonusRewardSender)
        external
        onlyOwner
    {
        bonusRewardSender = _bonusRewardSender;
    }

    function setBonusRewardz(BonusERC1155Rewardz[] memory _bonusRewardz)
        external
        onlyOwner
    {
        for (uint8 i = 0; i < _bonusRewardz.length; i++) {
            bonusRewardz[i] = _bonusRewardz[i];
        }
    }

    /* ********************************** */
    /*               Pauser               */
    /* ********************************** */

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}
