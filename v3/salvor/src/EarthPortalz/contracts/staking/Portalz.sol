// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '@openzeppelin/contracts/access/AccessControl.sol';
import '@openzeppelin/contracts/security/Pausable.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import '@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@chainlink/contracts/src/v0.8/interfaces/VRFCoordinatorV2Interface.sol';
import '@chainlink/contracts/src/v0.8/VRFConsumerBaseV2.sol';

import './Tokens.sol';
import './MetadataStorage.sol';

import 'hardhat/console.sol';

/**
 * Portalz abstract contract defining all the required methods and properties to
    implement in any portalz.
 * @dev do not forget to set every existing role to `msg.sender` in every child-portalz
    constructor.
 * @dev Portalz are ERC1155 receivers as they can own bonus rewards and
    be themselves bonusRewardSender.
 */
abstract contract Portalz is VRFConsumerBaseV2, AccessControl, Pausable, ERC1155Holder {
    /* ********************************** */
    /*              Constants             */
    /* ********************************** */

    uint256 internal constant BASIS_POINT = 10000;

    bytes32 public constant SQUADZ_ROLE = keccak256('SQUADZ_ROLE');

    /* ********************************** */
    /*                Events              */
    /* ********************************** */

    event NoMoreTokenReward(
        uint256 timestamp,
        address portalzAddress,
        address rewardTokenAddress,
        uint256 rewardAmount
    );

    event NoMoreBonusTokenReward(uint256 timestamp, address portalzAddress, Tokens.ERC165Token bonusToken);

    event BonusTokenFound(
        uint256 timestamp,
        address portalzAddress,
        address userAddress,
        Tokens.ERC165Token bonusToken
    );

    event NoBonusTokenFound(uint256 timestamp, address portalzAddress, address userAddress);

    event BonusTokenCheckDone(uint256 timestamp, address portalzAddress, address userAddress);

    event UpdatedAllowedNFTs(uint256 timestamp, address portalzAddress, ERC165StakingRule[] stakingRules);

    event UpdatedAllowedRelics(uint256 timestamp, address portalzAddress, uint256[] relicIds, bool[] isAllowed);

    event UpdatedAllowedRunes(uint256 timestamp, address portalzAddress, uint256[] runeIds, bool[] isAllowed);

    /* ********************************** */
    /*      Verifiable Random Function    */
    /* ********************************** */

    // Event needed by Chainlink to trigger the generation of random words
    event VrfRequestSent(uint256 requestId, uint256 numWords);

    struct RequestStatus {
        bool fulfilled; // whether the request has been successfully fulfilled
        bool exists; // whether a requestId exists
        uint256[] chancesToDrop;
        uint256 startTime;
        address userAddress;
    }
    mapping(uint256 => RequestStatus) public vrfRequests; /* requestId --> requestStatus */

    VRFCoordinatorV2Interface public vrfCoordinatorV2Contract;
    uint64 public vrfSubscriptionId;
    uint16 public vrfRequestConfirmations = 3;
    bytes32 public vrfKeyHash;
    uint32 public vrfCallbackGasLimit = 100000;

    function setVrfSubscriptionId(uint64 _vrfSubscriptionId) external onlyRole(DEFAULT_ADMIN_ROLE) {
        vrfSubscriptionId = _vrfSubscriptionId;
    }

    function setVrfRequestConfirmations(uint16 _vrfRequestConfirmations) external onlyRole(DEFAULT_ADMIN_ROLE) {
        vrfRequestConfirmations = _vrfRequestConfirmations;
    }

    function setVrfKeyHash(bytes32 _vrfKeyHash) external onlyRole(DEFAULT_ADMIN_ROLE) {
        vrfKeyHash = _vrfKeyHash;
    }

    function setVrfCallbackGasLimit(uint32 _vrfCallbackGasLimit) external onlyRole(DEFAULT_ADMIN_ROLE) {
        vrfCallbackGasLimit = _vrfCallbackGasLimit;
    }

    /* ********************************** */
    /*             Allowed NFTs           */
    /* ********************************** */

    struct ERC165StakingRule {
        address contractAddress;
        uint256 minAmount;
        uint256 maxAmount;
    }

    /**
     @notice Allowed type of NFTs to be staked.
     */
    mapping(uint16 => ERC165StakingRule) public stakingRulesPerSquadz;
    uint16 private stakingRulesLength;

    /**
     * Checks if given ERC165 tokens are allowed to be staked in the Portalz.
     * @param tokens ERC165 tokens we want to check.
     * @dev /!\ It must be implemented in child contract.
     */
    function areNFTsAllowed(Tokens.ERC165Token[] calldata tokens) external view returns (bool) {
        require(tokens.length > 0, '2002');

        // If no rule, then no NFTs are allowed in this Portalz
        if (stakingRulesLength == 0) {
            return false;
        }

        address[] memory tokensCountAddress = new address[](tokens.length);
        uint256[] memory tokensCountNumber = new uint256[](tokens.length);
        uint256 numberOfDifferentTokensTypes;

        // Count NFTs grouped by collection
        for (uint16 i = 0; i < tokens.length; i++) {
            bool tokenFound = false;
            uint16 j = 0;
            while (j < numberOfDifferentTokensTypes) {
                if (tokensCountAddress[j] == tokens[i].contractAddress) {
                    tokensCountNumber[j]++;
                    tokenFound = true;
                    break;
                }
                j++;
            }

            if (!tokenFound) {
                tokensCountAddress[j] = tokens[i].contractAddress;
                tokensCountNumber[j] = 1;
                numberOfDifferentTokensTypes++;
            }
        }

        // Iterate through the rules
        for (uint16 i = 0; i < stakingRulesLength; i++) {
            // Only rules with a minimum > 0 are mandatory
            bool isMandatoryRuleNotChecked = stakingRulesPerSquadz[i].minAmount > 0;
            // We check the rule is not broken by each tokens collections we are checking
            for (uint16 j = 0; j < tokensCountAddress.length; j++) {
                if (stakingRulesPerSquadz[i].contractAddress == tokensCountAddress[j]) {
                    if (
                        tokensCountNumber[j] >= stakingRulesPerSquadz[i].minAmount &&
                        tokensCountNumber[j] <= stakingRulesPerSquadz[i].maxAmount
                    ) {
                        isMandatoryRuleNotChecked = false;
                    } else {
                        return false;
                    }
                }
            }
            if (isMandatoryRuleNotChecked) {
                return false;
            }
        }

        return true;
    }

    function updateAllowedNFTs(ERC165StakingRule[] calldata stakingRules) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(stakingRules.length > 0, '2001');

        uint16 i = 0;
        for (i; i < stakingRules.length; i++) {
            stakingRulesPerSquadz[i] = stakingRules[i];
        }
        for (i; i < stakingRulesLength; i++) {
            stakingRulesPerSquadz[i] = ERC165StakingRule(address(0), 0, 0);
        }

        stakingRulesLength = uint16(stakingRules.length);

        emit UpdatedAllowedNFTs(block.timestamp, address(this), stakingRules);
    }

    /* ********************************** */
    /*            Allowed Relics          */
    /* ********************************** */

    /**
     @notice Allowed Relics to be staked with NFTs.
     The property indicates if a certain tokenId from a certain contract address is allowed.
     */
    mapping(uint256 => bool) public allowedRelics;

    /**
     * Checks if given Relics are allowed to be staked in the Portalz.
     * @param relicIds Token ids we want to check.
     */
    function areRelicsAllowed(uint256[] calldata relicIds) external view returns (bool) {
        for (uint256 i = 0; i < relicIds.length; i++) {
            if (!allowedRelics[relicIds[i]]) {
                return false;
            }
        }

        return true;
    }

    function updateAllowedRelics(
        uint256[] calldata relicIds,
        bool[] calldata isAllowed
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(relicIds.length == isAllowed.length, '2001');

        for (uint16 i = 0; i < relicIds.length; i++) {
            allowedRelics[relicIds[i]] = isAllowed[i];
        }

        emit UpdatedAllowedRelics(block.timestamp, address(this), relicIds, isAllowed);
    }

    /* ********************************** */
    /*             Allowed Runes          */
    /* ********************************** */

    /**
     @notice Allowed Runes to be staked with NFTs.
     The property indicates if a certain tokenId from a certain contract address is allowed.
     */
    mapping(uint256 => bool) public allowedRunes;

    /**
     * Checks if given Runes are allowed to be staked in the Portalz.
     * @param runeIds Token ids we want to check.
     */
    function areRunesAllowed(uint256[] calldata runeIds) external view returns (bool) {
        for (uint256 i = 0; i < runeIds.length; i++) {
            if (!allowedRunes[runeIds[i]]) {
                return false;
            }
        }

        return true;
    }

    function updateAllowedRunes(
        uint256[] calldata runeIds,
        bool[] calldata isAllowed
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(runeIds.length == isAllowed.length, '2001');

        for (uint16 i = 0; i < runeIds.length; i++) {
            allowedRunes[runeIds[i]] = isAllowed[i];
        }

        emit UpdatedAllowedRunes(block.timestamp, address(this), runeIds, isAllowed);
    }

    /* ********************************** */
    /*           Staking period           */
    /* ********************************** */

    /**
     @notice Above this number of days, rewards don't increase anymore.
     User will have to unstake then stake again to continue to earn rewards.
     @dev this value shouldn't exceed 366.
     /!\ It must be implemented in child contract.
     */
    function maxPeriod() public view virtual returns (uint256);

    function setMaxPeriod(uint256 _maxPeriod) external virtual;

    /**
     * @dev method can be override is child portalz to enable for example minimum
     * staking period. This way people could commit to a portalz with their NFTs
     * for a certain period of time.
     */
    function canUnstake(
        uint256 /*startTime*/,
        Tokens.ERC165Token[] calldata /*tokens*/,
        uint256[] memory /*relicIds*/,
        uint256[] memory /*runeIds*/
    ) external view virtual returns (bool) {
        return true;
    }

    /**
     * @dev method can be override is child portalz to enable for example minimum
     * period of time before claiming.
     */
    function canClaim(
        uint256 /*startTime*/,
        Tokens.ERC165Token[] calldata /*tokens*/,
        uint256[] memory /*relicIds*/,
        uint256[] memory /*runeIds*/
    ) external view virtual returns (bool) {
        return true;
    }

    /* ********************************** */
    /*             Multiplier             */
    /* ********************************** */

    /**
     @notice Multiplier of the basic reward of the Portalz.
     @dev Value expressed in **18.
     For example: a basic reward of 10 with a `multiplier`
     of 10**16 will result in a reward of 10*10**16/10**18 ether
     /!\ It must be implemented in child contract.
     */
    function multiplier() public view virtual returns (uint256);

    /**
     @notice Max number of days during which the multiplier is increased.
     @dev /!\ It must be implemented in child contract.
    */
    function maxMultiplierPeriod() public view virtual returns (uint256);

    /**
     @notice Calculates the multiplier for a given number of days with
     tokens staked in a row.
     @param period is the number of days the tokens have been staked during.
     This value is capped to maxMultiplierPeriod.
     @return mult the current multiplier expressed in ^18

     /!\ It must be implemented in child contract for any specificities related to tokens, relics and runes.
     */
    function currentMultiplier(
        uint256 period,
        Tokens.ERC165Token[] calldata /*tokens*/,
        uint256[] calldata /*relicIds*/,
        uint256[] calldata /*runeIds*/
    ) public view virtual returns (uint256 mult) {
        uint256 maxMultPeriod = period > maxMultiplierPeriod() ? maxMultiplierPeriod() : period;

        mult = 1 ether + (multiplier() * maxMultPeriod);
        return mult;
    }

    function setMultiplier(uint256 _multiplier) external virtual;

    function setMaxMultiplierPeriod(uint256 _maxMultiplierPeriod) external virtual;

    /* ********************************** */
    /*            Token Reward            */
    /* ********************************** */

    /**
     @notice Basic reward token of the Portalz.
     
     Note that it has to be an ERC20 contract.
     */
    address public rewardTokenAddress;

    /**
     * Send a certain amount of reward to a given user.
     * @dev it can and should only be called by the squadz contract.
     * @param to user's address to send the reward to.
     * @param rewardAmount amount of the reward to send.
     */
    function sendRewardTo(address to, uint256 rewardAmount) external onlyRole(SQUADZ_ROLE) whenNotPaused {
        IERC20 rewardTokenContract = IERC20(rewardTokenAddress);
        if (rewardTokenContract.balanceOf(address(this)) >= rewardAmount) {
            rewardTokenContract.transfer(to, rewardAmount);
        } else {
            emit NoMoreTokenReward(block.timestamp, address(this), rewardTokenAddress, rewardAmount);
        }
    }

    /**
     @notice Calculates the reward eligible to be earned since a start time.
     @param startTime is the timestamp when the tokens have been staked.
     This value is capped to maxPeriod.
     @param tokens are the staked tokens.
     @return reward the total reward expressed in ^18.

     @dev 10**14 is just 1 ether / BASIS_POINT (which is 10000) because multiplier
     is expressed in BASIS_POINT.

     /!\ It must be implemented in child contract for any specificities related to tokens, relics and runes.
     */
    function calculateRewardsSinceStartTime(
        uint256 startTime,
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata runeIds
    ) external view virtual returns (uint256 reward) {
        if (block.timestamp <= startTime) {
            return 0;
        }

        uint256 period = (block.timestamp - startTime) > (maxPeriod() * 1 days)
            ? (maxPeriod() * 1 days)
            : (block.timestamp - startTime);
        uint256 fullDaysPeriod = period / 1 days;

        uint256 tokensBaseDailyReward;
        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            tokensBaseDailyReward += metadataStorage.rarityReward(tokens[i].contractAddress, tokens[i].tokenId);
        }

        uint256 fullDaysReward = tokensBaseDailyReward * 1 ether;
        for (uint256 day = 1; day < fullDaysPeriod; day++) {
            fullDaysReward += tokensBaseDailyReward * currentMultiplier(day, tokens, relicIds, runeIds);
        }

        uint256 currentDayRewards = ((period % 1 days) *
            currentMultiplier(fullDaysPeriod, tokens, relicIds, runeIds) *
            tokensBaseDailyReward) / 1 days;

        return fullDaysReward + currentDayRewards;
    }

    function setRewardTokenAddress(address _rewardTokenAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        rewardTokenAddress = _rewardTokenAddress;
    }

    /* ********************************** */
    /*        Bonus ERC1155 Rewardz       */
    /* ********************************** */

    struct BonusERC1155Reward {
        // bonus reward token
        Tokens.ERC165Token token;
        // 0 can't be rewarded (in BASIS_POINT)
        uint16 dropChance;
        // max drop chance whatever staking period and squadz size  (in BASIS_POINT)
        uint16 maxDropChance;
    }

    /**
     @notice Optional bonus rewardz that could be granted.

     @dev child Portalz contract has to define the address of the
     ERC1155 token and its chance to drop.
     @dev Note When deploying a Portalz, we need to send the bonus ERC1155 tokens
     to the Portalz.
     @dev Max 500 bonus rewards because of Chainlink max number of words we can request at once.
     */
    mapping(uint8 => BonusERC1155Reward) public bonusRewardz;

    uint32 public bonusRewardzLength;

    /**
     Runs the random and returns a token or not.
     @dev this method must only be accessed by the squadz contract as it truly runs the random.
     @param userAddress the initial user calling the Squadz contract.
     @param startTime is the timestamp when the tokens have been staked.
     @param tokens are the staked tokens.
     @param relicIds the relic token ids, can be empty.
     @param runeIds the rune token ids, can be empty.
     /!\ It must be implemented in child contract for any specificities related to tokens, relics and runes.
     */
    function drawBonusReward(
        address userAddress,
        uint256 startTime,
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata runeIds
    ) external virtual onlyRole(SQUADZ_ROLE) returns (uint256 vrfRequestId) {
        if (startTime < block.timestamp) {
            uint256 period = (block.timestamp - startTime) > (maxPeriod() * 1 days)
                ? (maxPeriod() * 1 days)
                : (block.timestamp - startTime);
            uint256 fullDaysPeriod = period / 1 days;

            uint256[] memory chancesToDrop = new uint256[](bonusRewardzLength);
            for (uint i = 0; i < bonusRewardzLength; i++) {
                chancesToDrop[i] = chanceToDrop(tokens, relicIds, runeIds, fullDaysPeriod, i);
            }

            // Will revert if subscription is not set and funded.
            // Here we request as many random number as there is potential bonus rewards to earn.
            vrfRequestId = vrfCoordinatorV2Contract.requestRandomWords(
                vrfKeyHash,
                vrfSubscriptionId,
                vrfRequestConfirmations,
                vrfCallbackGasLimit,
                bonusRewardzLength
            );
            vrfRequests[vrfRequestId] = RequestStatus({
                fulfilled: false,
                exists: true,
                chancesToDrop: chancesToDrop,
                startTime: startTime,
                userAddress: userAddress
            });
            emit VrfRequestSent(vrfRequestId, bonusRewardzLength);
            return vrfRequestId;
        }
    }

    function fulfillRandomWords(uint256 _requestId, uint256[] memory _randomWords) internal override {
        address userAddress = vrfRequests[_requestId].userAddress;
        for (uint256 i = 0; i < bonusRewardzLength; i = unsafeInc(i)) {
            uint256 random = _randomWords[i] % (BASIS_POINT);
            if (random <= vrfRequests[_requestId].chancesToDrop[i]) {
                emit BonusTokenFound(block.timestamp, address(this), userAddress, bonusRewardz[uint8(i)].token);

                Tokens.ERC165Token memory bonusToken = bonusRewardz[uint8(i)].token;
                IERC1155 bonusTokenContract = IERC1155(bonusToken.contractAddress);
                if (bonusTokenContract.balanceOf(address(this), bonusToken.tokenId) > 0) {
                    bonusTokenContract.safeTransferFrom(address(this), userAddress, bonusToken.tokenId, 1, '');
                } else {
                    emit NoMoreBonusTokenReward(block.timestamp, address(this), bonusToken);
                }
            } else {
                emit NoBonusTokenFound(block.timestamp, address(this), userAddress);
            }
        }
        emit BonusTokenCheckDone(block.timestamp, address(this), userAddress);
    }

    /**
     @notice Returns the drop rate of a given reward from a portalz (10000 = 100%).
     @dev The bigger the squadz is and the longer the squadz is staked,
     the bigger the drop rate will be.
     @param tokens squadz sent to the portalz.
     @param stakedPeriod number of days the squadz has been sent to the portalz.
     @param bonusIndex index of the potential bonus from the portalz.
    */
    function chanceToDrop(
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata runeIds,
        uint256 stakedPeriod,
        uint256 bonusIndex
    ) public view virtual returns (uint256);

    /**
     @dev bonuses should be sorted from the rarest to most common when they are set.
     @dev WE CANNOT HAVE MORE THAN 500 BONUS REWARDS, because of Chainlink max number of words we can request at once.
     */
    function setBonusRewards(BonusERC1155Reward[] calldata _bonusRewardz) external onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint8 i = 0; i < _bonusRewardz.length; i++) {
            bonusRewardz[i] = _bonusRewardz[i];
        }
        bonusRewardzLength = uint32(_bonusRewardz.length);
    }

    /* ********************************** */
    /*               Withdraw             */
    /* ********************************** */

    function withdraw() public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(address(this).balance > 0, '1001');
        payable(msg.sender).transfer(address(this).balance);
    }

    function withdrawRewards() public onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20 rewardTokenContract = IERC20(rewardTokenAddress);
        rewardTokenContract.transfer(msg.sender, rewardTokenContract.balanceOf(address(this)));
    }

    function withdrawBonusRewards() public onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint8 i = 0; i < bonusRewardzLength; i++) {
            IERC1155 bonusTokenContract = IERC1155(bonusRewardz[i].token.contractAddress);
            bonusTokenContract.safeTransferFrom(
                address(this),
                msg.sender,
                bonusRewardz[i].token.tokenId,
                bonusTokenContract.balanceOf(address(this), bonusRewardz[i].token.tokenId),
                ''
            );
        }
    }

    function withdrawAll() external onlyRole(DEFAULT_ADMIN_ROLE) {
        withdraw();
        withdrawRewards();
        withdrawBonusRewards();
    }

    /* ********************************** */
    /*           MetadataStorage          */
    /* ********************************** */

    MetadataStorage internal metadataStorage;

    function setMetadaStorage(address _metadataStorage) external onlyRole(DEFAULT_ADMIN_ROLE) {
        metadataStorage = MetadataStorage(_metadataStorage);
    }

    /* ********************************** */
    /*               Pauser               */
    /* ********************************** */

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /* ********************************** */
    /*               Helper               */
    /* ********************************** */

    function unsafeInc(uint256 x) internal pure returns (uint256) {
        unchecked {
            return x + 1;
        }
    }

    /* ********************************** */
    /*              Solidity              */
    /* ********************************** */

    function supportsInterface(bytes4 interfaceId) public view override(AccessControl, ERC1155Receiver) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
