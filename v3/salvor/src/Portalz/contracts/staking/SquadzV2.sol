// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '@openzeppelin/contracts/access/AccessControl.sol';
import '@openzeppelin/contracts/security/Pausable.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol';

import '@openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import '@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol';
import '@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol';

import 'lockerz-ticketz/contracts/LockerzTicketz.sol';

import './Tokens.sol';
import './Portalz.sol';

interface IrFleshToken is IERC20 {
    function burnFrom(address account, uint256 amount) external;
}

contract SquadzV2 is AccessControl, Pausable, ERC721Holder, ERC1155Holder, ReentrancyGuard {
    /* ********************************** */
    /*              Constants             */
    /* ********************************** */

    bytes32 public constant TOKEN_BURNER = keccak256('TOKEN_BURNER');

    /* ********************************** */
    /*               Events               */
    /* ********************************** */

    event StakedTokens(
        uint256 timestamp,
        address sender,
        Tokens.ERC165Token[] tokens,
        uint256[] relicIds,
        uint256[] runeIds,
        uint256 squadzId,
        address portalzAddress
    );

    event UnstakedTokens(
        uint256 timestamp,
        address sender,
        Tokens.ERC165Token[] tokens,
        uint256[] relicIds,
        uint256[] runeIds,
        uint256 squadzId,
        address portalzAddress,
        uint256 rewardAmount,
        address rewardAddress
    );

    event ClaimedRewards(
        uint256 timestamp,
        address sender,
        uint256 squadzId,
        address portalzAddress,
        uint256 rewardAmount,
        address rewardAddress
    );

    event UnlockedNewSquadz(uint256 timestamp, address sender, uint256 squadzId, uint256 price);

    event UnlockedNewSlot(uint256 timestamp, address sender, uint256 squadzId, uint256 slots, uint256 price);

    IrFleshToken private _rFleshToken;
    LockerzTicketz private _lockerzTicketz;
    IERC1155 private _relics;
    ERC1155Burnable private _runes;

    mapping(address => bool) public canStakeInPortalz;
    mapping(address => bool) public canUnstakeFromPortalz;

    // Current max number of Squadz a user can unlock
    uint256 public currentMaxSquadz;
    // Current max number of Slots in a single Squadz
    uint256 public currentMaxSlots;
    // Current max number of Runes a user can burn at once when staking
    uint256 public currentMaxRunes;

    /// @notice Detail info of a squad
    struct Squadz {
        /// Tokens staked (contract address and token id), only filled when staked
        Tokens.ERC165Token[] tokens;
        /// Relic ids staked, only filled when staked
        uint256[] relicIds;
        /// Rune ids burned during staking, only filled when staked
        uint256[] runeIds;
        /// Address of the portalz the squad was sent in, only != address(0) when staked
        address portalzAddress;
        /// Time when the squad was sent, only > 0 when staked
        uint256 sentStartTime;
        /// Number of staking slots the staker has unlocked for this squad
        uint256 slotsAvailable;
    }

    // Mapping of User Address to Staker info
    mapping(address => mapping(uint256 => Squadz)) public stakers;

    /// Prices for each slots in FLSH
    mapping(uint256 => mapping(uint256 => uint256)) public squadzPrices;

    constructor(address rFleshToken, address lockerzTicketz, address relics, uint256[][] memory _squadzPrices) {
        _rFleshToken = IrFleshToken(rFleshToken);
        _lockerzTicketz = LockerzTicketz(lockerzTicketz);
        _relics = IERC1155(relics);

        // Almost like the `setSquadzPrices` method
        uint256 _currentMaxSlots;
        for (uint256 i = 0; i < _squadzPrices.length; i = unsafeInc(i)) {
            for (uint256 j = 0; j < _squadzPrices[i].length; j = unsafeInc(j)) {
                squadzPrices[i][j] = _squadzPrices[i][j];
            }
            _currentMaxSlots = Math.max(_currentMaxSlots, _squadzPrices[i].length);
        }
        currentMaxSquadz = _squadzPrices.length;
        currentMaxSlots = _currentMaxSlots;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(TOKEN_BURNER, msg.sender);
    }

    function withdraw() external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(address(this).balance > 0, '1001');
        payable(msg.sender).transfer(address(this).balance);
    }

    /* ********************************** */
    /*              Staking               */
    /* ********************************** */

    function stake(
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata runeIds,
        uint256 squadzId,
        address portalzAddress
    ) external nonReentrant {
        require(canStakeInPortalz[portalzAddress], '1002');
        require(squadzId < numberOfSquadz(msg.sender), '1004');

        require(
            stakers[msg.sender][squadzId].tokens.length == 0 &&
                stakers[msg.sender][squadzId].sentStartTime == 0 &&
                stakers[msg.sender][squadzId].portalzAddress == address(0),
            '1005'
        );
        require(tokens.length <= stakers[msg.sender][squadzId].slotsAvailable, '1006');
        require(relicIds.length <= tokens.length, '1012');
        require(runeIds.length <= currentMaxRunes, '1013');

        Portalz portalz = Portalz(portalzAddress);
        require(portalz.areNFTsAllowed(tokens), '1007');
        require(portalz.areRelicsAllowed(relicIds), '1020');
        require(portalz.areRunesAllowed(runeIds), '1021');

        // Transfering tokens
        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            IERC721 token = IERC721(tokens[i].contractAddress);
            token.transferFrom(msg.sender, address(this), tokens[i].tokenId);
            stakers[msg.sender][squadzId].tokens.push(tokens[i]);
            _lockerzTicketz.safeMint(msg.sender, LockerzTicketz.Ticketz(tokens[i].contractAddress, tokens[i].tokenId));
        }

        // Transfering relics
        if (relicIds.length > 0) {
            uint256[] memory amounts = new uint256[](relicIds.length);
            for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
                stakers[msg.sender][squadzId].relicIds.push(relicIds[i]);
                amounts[i] = 1;
            }
            _relics.safeBatchTransferFrom(msg.sender, address(this), relicIds, amounts, '');
        }

        // Burning runes
        if (runeIds.length > 0) {
            uint256[] memory amounts = new uint256[](runeIds.length);
            for (uint256 i = 0; i < runeIds.length; i = unsafeInc(i)) {
                stakers[msg.sender][squadzId].runeIds.push(runeIds[i]);
                amounts[i] = 1;
            }
            _runes.burnBatch(msg.sender, runeIds, amounts);
        }

        stakers[msg.sender][squadzId].portalzAddress = portalzAddress;
        stakers[msg.sender][squadzId].sentStartTime = block.timestamp;

        emit StakedTokens(block.timestamp, msg.sender, tokens, relicIds, runeIds, squadzId, portalzAddress);
    }

    /**
     Unstake a squad and claim the normal reward from it.
     It also sends a request to Chainlink in order to randomize the bonus rewards.
     @param squadzId id of the squadz the user is unstaking.
     @return vrfRequestId the request id associated used to follow-up on that request for off-chain randomised (Chainlink).
    */
    function unstake(uint256 squadzId) external nonReentrant returns (uint256 vrfRequestId) {
        require(squadzId < numberOfSquadz(msg.sender), '1009');

        Tokens.ERC165Token[] memory tokens = stakers[msg.sender][squadzId].tokens;
        uint256[] memory relicIds = stakers[msg.sender][squadzId].relicIds;
        uint256[] memory runeIds = stakers[msg.sender][squadzId].runeIds;
        uint256 sentStartTime = stakers[msg.sender][squadzId].sentStartTime;
        address portalzAddress = stakers[msg.sender][squadzId].portalzAddress;

        require(tokens.length > 0 && sentStartTime > 0 && portalzAddress != address(0), '1010');
        require(canUnstakeFromPortalz[portalzAddress], '1003');

        // Normal reward
        uint256 rewardAmount = calculateRewards(squadzId);
        Portalz portalz = Portalz(portalzAddress);
        require(portalz.canUnstake(sentStartTime, tokens, relicIds, runeIds), '1014');

        if (rewardAmount > 0) {
            portalz.sendRewardTo(msg.sender, rewardAmount);
        }

        // Bonus reward
        if (portalz.bonusRewardzLength() > 0) {
            vrfRequestId = portalz.drawBonusReward(msg.sender, sentStartTime, tokens, relicIds, runeIds);
        }

        // Transfer back the NFTs and burn the locker ticket
        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            IERC721 token = IERC721(tokens[i].contractAddress);
            token.transferFrom(address(this), msg.sender, tokens[i].tokenId);
            _lockerzTicketz.safeBurn(LockerzTicketz.Ticketz(tokens[i].contractAddress, tokens[i].tokenId));
        }

        // Transfer back the Relics
        if (relicIds.length > 0) {
            uint256[] memory amounts = new uint256[](relicIds.length);
            for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
                amounts[i] = 1;
            }
            _relics.safeBatchTransferFrom(address(this), msg.sender, relicIds, amounts, '');
        }

        // Reset the state
        delete stakers[msg.sender][squadzId].tokens;
        delete stakers[msg.sender][squadzId].relicIds;
        delete stakers[msg.sender][squadzId].runeIds;
        delete stakers[msg.sender][squadzId].portalzAddress;
        delete stakers[msg.sender][squadzId].sentStartTime;

        emit UnstakedTokens(
            block.timestamp,
            msg.sender,
            tokens,
            relicIds,
            runeIds,
            squadzId,
            portalzAddress,
            rewardAmount,
            portalz.rewardTokenAddress()
        );
        return vrfRequestId;
    }

    /**
     Claim earnings from a squad and let it staked.
     It also sends a request to Chainlink in order to randomize the bonus rewards.
     @param squadzId id of the squadz the user is unstaking.
     @return vrfRequestId the request id associated used to follow-up on that request for off-chain randomised (Chainlink).
    */
    function claim(uint256 squadzId) external nonReentrant returns (uint256 vrfRequestId) {
        require(squadzId < numberOfSquadz(msg.sender), '1009');

        Tokens.ERC165Token[] memory tokens = stakers[msg.sender][squadzId].tokens;
        uint256[] memory relicIds = stakers[msg.sender][squadzId].relicIds;
        uint256[] memory runeIds = stakers[msg.sender][squadzId].runeIds;
        uint256 sentStartTime = stakers[msg.sender][squadzId].sentStartTime;
        address portalzAddress = stakers[msg.sender][squadzId].portalzAddress;

        require(tokens.length > 0 && sentStartTime > 0 && portalzAddress != address(0), '1010');
        require(canUnstakeFromPortalz[portalzAddress], '1003');

        // Normal reward
        uint256 rewardAmount = calculateRewards(squadzId);
        Portalz portalz = Portalz(portalzAddress);
        require(portalz.canClaim(sentStartTime, tokens, relicIds, runeIds), '1011');

        if (rewardAmount > 0) {
            portalz.sendRewardTo(msg.sender, rewardAmount);
        }

        // Bonus reward
        if (portalz.bonusRewardzLength() > 0) {
            vrfRequestId = portalz.drawBonusReward(msg.sender, sentStartTime, tokens, relicIds, runeIds);
        }

        // Reset the state
        delete stakers[msg.sender][squadzId].runeIds;
        stakers[msg.sender][squadzId].sentStartTime = block.timestamp;

        emit ClaimedRewards(
            block.timestamp,
            msg.sender,
            squadzId,
            portalzAddress,
            rewardAmount,
            portalz.rewardTokenAddress()
        );
        return vrfRequestId;
    }

    /**
     @notice Calculate reward for a given staker by calculating the time passed
     @param squadzId the index of the squadz
     @return uint256 the calculated reward for a given staked squadz of tokens
    */
    function calculateRewards(uint256 squadzId) public view returns (uint256) {
        require(squadzId < numberOfSquadz(msg.sender), '1009');

        Tokens.ERC165Token[] memory tokens = stakers[msg.sender][squadzId].tokens;
        uint256[] memory relicIds = stakers[msg.sender][squadzId].relicIds;
        uint256[] memory runeIds = stakers[msg.sender][squadzId].runeIds;
        uint256 sentStartTime = stakers[msg.sender][squadzId].sentStartTime;
        address portalzAddress = stakers[msg.sender][squadzId].portalzAddress;

        require(tokens.length > 0 && sentStartTime > 0 && portalzAddress != address(0), '1010');

        return Portalz(portalzAddress).calculateRewardsSinceStartTime(sentStartTime, tokens, relicIds, runeIds);
    }

    /**
     @notice Returns the drop rate of a given reward from a portalz.
     @dev The bigger the squadz is and the longer the squadz is staked,
     the bigger the drop rate will be.
     @param squadzId id of the squadz sent to the portalz.
     @param stakedPeriod number of days the squadz has been sent to the portalz.
     @param bonusIndex index of the potential bonus from the portalz.
    */
    function chanceToDrop(uint256 squadzId, uint256 stakedPeriod, uint256 bonusIndex) external view returns (uint256) {
        Tokens.ERC165Token[] memory tokens = stakers[msg.sender][squadzId].tokens;
        uint256[] memory relicIds = stakers[msg.sender][squadzId].relicIds;
        uint256[] memory runeIds = stakers[msg.sender][squadzId].runeIds;
        address portalzAddress = stakers[msg.sender][squadzId].portalzAddress;

        require(tokens.length > 0 && portalzAddress != address(0), '1012');

        return Portalz(portalzAddress).chanceToDrop(tokens, relicIds, runeIds, stakedPeriod, bonusIndex);
    }

    /* ********************************** */
    /*              Squadz                */
    /* ********************************** */

    function buyNextSquadz() external whenNotPaused nonReentrant {
        uint256 nextSquadzId = numberOfSquadz(msg.sender);
        // throws an exception if no more available squads
        uint256 price = nextSquadzPrice();
        require(_rFleshToken.balanceOf(msg.sender) >= price, '1015');

        _rFleshToken.burnFrom(msg.sender, price);

        stakers[msg.sender][nextSquadzId].slotsAvailable = 1;

        emit UnlockedNewSquadz(block.timestamp, msg.sender, nextSquadzId, price);
    }

    function buyNextSquadzForFree(address user) external whenNotPaused nonReentrant onlyRole(TOKEN_BURNER) {
        uint256 nextSquadzId = numberOfSquadz(user);
        require(nextSquadzId < currentMaxSquadz, '1016');

        stakers[user][nextSquadzId].slotsAvailable = 1;

        emit UnlockedNewSquadz(block.timestamp, user, nextSquadzId, 0);
    }

    /**
     @notice Returns the price of the next squadz to unlock.
     Triggers an exception if there is no more squadz to unlock.
     @return uint256 next squadz's price
    */
    function nextSquadzPrice() public view returns (uint256) {
        uint256 nextSquadzId = numberOfSquadz(msg.sender);
        require(nextSquadzId < currentMaxSquadz, '1016');
        return squadzPrices[nextSquadzId][0] * 1 ether; // converts eth to wei
    }

    /**
     @notice Returns the current number of squadz available for a given user.
     @param staker address.
     @return uint256 The number of squadz.
     */
    function numberOfSquadz(address staker) public view returns (uint256) {
        for (uint256 i = 0; i < currentMaxSquadz; i = unsafeInc(i)) {
            if (stakers[staker][i].slotsAvailable == 0) {
                return i;
            }
        }
        return currentMaxSquadz;
    }

    /* ********************************** */
    /*               Slots                */
    /* ********************************** */

    function buyNextSlot(uint256 squadzId) external whenNotPaused nonReentrant {
        // throws an exception if no more available slots
        uint256 price = nextSlotPrice(squadzId);
        require(_rFleshToken.balanceOf(msg.sender) >= price, '1015');

        _rFleshToken.burnFrom(msg.sender, price);

        stakers[msg.sender][squadzId].slotsAvailable++;

        emit UnlockedNewSlot(
            block.timestamp,
            msg.sender,
            squadzId,
            stakers[msg.sender][squadzId].slotsAvailable,
            price
        );
    }

    function buyNextSlotForFree(
        address user,
        uint256 squadzId
    ) external whenNotPaused nonReentrant onlyRole(TOKEN_BURNER) {
        uint256 nextSquadzId = numberOfSquadz(user);
        require(nextSquadzId > 0, '1017');
        require(squadzId < nextSquadzId, '1018');
        require(stakers[user][squadzId].slotsAvailable < maxNumberOfSlots(squadzId), '1019');

        stakers[user][squadzId].slotsAvailable++;

        emit UnlockedNewSlot(block.timestamp, user, squadzId, stakers[user][squadzId].slotsAvailable, 0);
    }

    /**
     @notice Internal method to the price of the next slot to buy for a given squad
     @param squadzId id of the squad
     @return uint256 next slot's price
     */
    function nextSlotPrice(uint256 squadzId) public view returns (uint256) {
        uint256 nextSquadzId = numberOfSquadz(msg.sender);
        require(nextSquadzId > 0, '1017');
        require(squadzId < nextSquadzId, '1018');
        require(stakers[msg.sender][squadzId].slotsAvailable < maxNumberOfSlots(squadzId), '1019');
        return squadzPrices[squadzId][stakers[msg.sender][squadzId].slotsAvailable] * 1 ether; // converts eth to wei
    }

    /**
     @notice Returns the maximum number of slots available to unlock for a given Squadz.
     @param squadzId Id of the Squadz.
     @return uint256 The number of slots.
     */
    function maxNumberOfSlots(uint256 squadzId) public view returns (uint256) {
        for (uint256 i = 0; i < currentMaxSlots; i = unsafeInc(i)) {
            if (squadzPrices[squadzId][i] == 0 && (squadzId > 0 || i > 0)) {
                return i;
            }
        }
        return currentMaxSlots;
    }

    /**
     @notice Returns the current number of slots available for a given Squadz.
     @param staker address.
     @param squadzId Id of the squadz.
     @return uint256 The number of slots.
     */
    function numberOfSlots(address staker, uint256 squadzId) external view returns (uint256) {
        return stakers[staker][squadzId].slotsAvailable;
    }

    /* ********************************** */
    /*             Getters                */
    /* ********************************** */

    function stakerInfo(address staker) external view returns (Squadz[] memory squadz) {
        squadz = new Squadz[](numberOfSquadz(staker));
        for (uint256 i = 0; i < numberOfSquadz(staker); i++) {
            squadz[i] = stakers[staker][i];
        }
        return squadz;
    }

    /* ********************************** */
    /*              Setters               */
    /* ********************************** */

    function setSquadzPrices(uint256[][] calldata _squadzPrices) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 _currentMaxSlots;
        for (uint256 i = 0; i < currentMaxSquadz; i = unsafeInc(i)) {
            for (uint256 j = 0; j < currentMaxSlots; j = unsafeInc(j)) {
                squadzPrices[i][j] = 0;
            }
        }
        for (uint256 i = 0; i < _squadzPrices.length; i = unsafeInc(i)) {
            for (uint256 j = 0; j < _squadzPrices[i].length; j = unsafeInc(j)) {
                squadzPrices[i][j] = _squadzPrices[i][j];
                _currentMaxSlots = Math.max(_currentMaxSlots, _squadzPrices[i].length);
            }
        }
        currentMaxSquadz = _squadzPrices.length;
        currentMaxSlots = _currentMaxSlots;
    }

    function setRottenFleshToken(address rFleshToken) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _rFleshToken = IrFleshToken(rFleshToken);
    }

    function setLockerzTicketz(address lockerzTicketz) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _lockerzTicketz = LockerzTicketz(lockerzTicketz);
    }

    function setRelics(address relics) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _relics = IERC1155(relics);
    }

    function setRunes(address runes) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _runes = ERC1155Burnable(runes);
    }

    function setCurrentMaxRunes(uint256 _currentMaxRunes) external onlyRole(DEFAULT_ADMIN_ROLE) {
        currentMaxRunes = _currentMaxRunes;
    }

    function setStakersInfo(
        address[] calldata users,
        uint256[][] calldata slotsAvailable
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(users.length == slotsAvailable.length, '1022');
        for (uint i = 0; i < users.length; i++) {
            for (uint squadId = 0; squadId < slotsAvailable[i].length; squadId++) {
                stakers[users[i]][squadId].slotsAvailable = slotsAvailable[i][squadId];
            }
        }
    }

    /* ********************************** */
    /*              Pausable              */
    /* ********************************** */

    function pauseStakingInPortalz(address portalzAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        canStakeInPortalz[portalzAddress] = false;
    }

    function pauseUnstakingFromPortalz(address portalzAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        canUnstakeFromPortalz[portalzAddress] = false;
    }

    function unpauseStakingInPortalz(address portalzAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        canStakeInPortalz[portalzAddress] = true;
    }

    function unpauseUnstakingFromPortalz(address portalzAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        canUnstakeFromPortalz[portalzAddress] = true;
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /* ********************************** */
    /*               Helper               */
    /* ********************************** */

    function unsafeInc(uint256 x) private pure returns (uint256) {
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
