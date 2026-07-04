// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/Multicall.sol";

import "lockerz-ticketz/contracts/LockerzTicketz.sol";

import "./Tokens.sol";
import "./Portalz.sol";
import "./MetadataStorage.sol";

// ERC20 interface
interface IFleshToken is IERC20 {
    function activateRottingRatio(address account) external;
}

interface IrFleshToken is IERC20 {
    function burnFrom(address account, uint256 amount) external;
}

contract PortalzSquadz is Ownable, Pausable, ERC721Holder, Multicall {
    uint256 public constant BASIS_POINT = 10000;

    /**
     @dev Max number of squadz used to iterate in the mapping.
    */
    uint8 public constant MAX_SQUADZ = 100;

    /**
     @dev Max number of slots used to iterate in the mapping.
    */
    uint8 public constant MAX_SLOTS = 100;

    event StakedTokens(
        uint256 timestamp,
        address sender,
        Tokens.ERC165Token[] tokens,
        uint256 squadzId,
        address portalzAddress
    );

    event UnstakedTokens(
        uint256 timestamp,
        address sender,
        Tokens.ERC165Token[] tokens,
        uint256 squadzId,
        address portalzAddress,
        uint256 rewardAmount,
        address rewardAddress,
        Tokens.ERC165Token bonusToken
    );

    event UnlockedNewSquadz(
        uint256 timestamp,
        address sender,
        uint256 squadzId
    );

    event UnlockedNewSlot(
        uint256 timestamp,
        address sender,
        uint256 squadzId,
        uint256 slots
    );

    event NoMoreTokenReward(
        uint256 timestamp,
        address sender,
        uint256 squadzId,
        address portalzAddress,
        uint256 rewardAmount
    );

    event NoMoreBonusTokenReward(
        uint256 timestamp,
        address sender,
        uint256 squadzId,
        address portalzAddress,
        Tokens.ERC165Token bonusToken
    );

    IFleshToken private _fleshToken;
    IrFleshToken private _rFleshToken;
    MetadataStorage private _metadataStorage;
    LockerzTicketz private _lockerzTicketz;

    mapping(address => bool) public canStakeInPortalz;
    mapping(address => bool) public canUnstakeFromPortalz;

    // Current max number of Squadz a user can unlock
    uint8 public currentMaxSquadz = 3;

    /// @notice Detail info of a squad
    struct Squadz {
        /// Tokens staked (contract address and token id), only filled when staked
        Tokens.ERC165Token[] tokens;
        /// Address of the portalz the squad was sent in, only != address(0) when staked
        address portalzAddress;
        /// Time when the squad was sent, only > 0 when staked
        uint256 sentStartTime;
        /// Number of staking slots the staker has unlocked for this squad
        uint256 slotsAvailable;
    }

    // Mapping of User Address to Staker info
    mapping(address => mapping(uint256 => Squadz)) private _stakers;

    /// Prices for each slots in FLSH
    mapping(uint256 => mapping(uint256 => uint256)) private _squadzPrices;

    constructor(
        address fleshToken,
        address rFleshToken,
        address metadataStorage,
        address lockerzTicketz,
        uint256[][] memory squadzPrices
    ) {
        _fleshToken = IFleshToken(fleshToken);
        _rFleshToken = IrFleshToken(rFleshToken);
        _metadataStorage = MetadataStorage(metadataStorage);
        _lockerzTicketz = LockerzTicketz(lockerzTicketz);

        for (uint256 i = 0; i < squadzPrices.length; i = unsafeInc(i)) {
            for (uint256 j = 0; j < squadzPrices[i].length; j = unsafeInc(j)) {
                _squadzPrices[i][j] = squadzPrices[i][j];
            }
        }
    }

    function withdraw() external onlyOwner {
        require(address(this).balance > 0, "1001");
        payable(msg.sender).transfer(address(this).balance);
    }

    /* ********************************** */
    /*              Staking               */
    /* ********************************** */

    function stake(
        Tokens.ERC165Token[] calldata tokens,
        uint256 squadzId,
        address portalzAddress
    ) external {
        require(canStakeInPortalz[portalzAddress], "1002");
        require(squadzId < numberOfSquadz(msg.sender), "1004");

        require(
            _stakers[msg.sender][squadzId].tokens.length == 0 &&
                _stakers[msg.sender][squadzId].sentStartTime == 0 &&
                _stakers[msg.sender][squadzId].portalzAddress == address(0),
            "1005"
        );
        require(
            tokens.length <= _stakers[msg.sender][squadzId].slotsAvailable,
            "1006"
        );

        Portalz portalz = Portalz(portalzAddress);
        require(portalz.areTokensAllowed(tokens), "1007");

        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            IERC721 token = IERC721(tokens[i].contractAddress);
            require(token.ownerOf(tokens[i].tokenId) == msg.sender, "1008");
            token.transferFrom(msg.sender, address(this), tokens[i].tokenId);
            _stakers[msg.sender][squadzId].tokens.push(tokens[i]);
            _lockerzTicketz.safeMint(
                msg.sender,
                LockerzTicketz.Ticketz(
                    tokens[i].contractAddress,
                    tokens[i].tokenId
                )
            );
        }
        _stakers[msg.sender][squadzId].portalzAddress = portalzAddress;
        _stakers[msg.sender][squadzId].sentStartTime = block.timestamp;

        emit StakedTokens(
            block.timestamp,
            msg.sender,
            tokens,
            squadzId,
            portalzAddress
        );
    }

    function unstake(uint256 squadzId) external {
        require(squadzId < numberOfSquadz(msg.sender), "1009");

        Tokens.ERC165Token[] memory tokens = _stakers[msg.sender][squadzId]
            .tokens;
        uint256 sentStartTime = _stakers[msg.sender][squadzId].sentStartTime;

        address portalzAddress = _stakers[msg.sender][squadzId].portalzAddress;
        require(canUnstakeFromPortalz[portalzAddress], "1003");

        require(
            tokens.length > 0 &&
                sentStartTime > 0 &&
                portalzAddress != address(0),
            "1010"
        );

        // Normal reward
        uint256 rewardAmount = calculateRewards(squadzId);
        Portalz portalz = Portalz(portalzAddress);
        if (rewardAmount > 0) {
            IERC20 rewardTokenContract = IERC20(portalz.rewardTokenAddress());
            if (
                rewardTokenContract.allowance(
                    portalz.rewardSender(),
                    address(this)
                ) >=
                rewardAmount &&
                rewardTokenContract.balanceOf(portalz.rewardSender()) >=
                rewardAmount
            ) {
                rewardTokenContract.transferFrom(
                    portalz.rewardSender(),
                    msg.sender,
                    rewardAmount
                );
            } else {
                emit NoMoreTokenReward(
                    block.timestamp,
                    msg.sender,
                    squadzId,
                    portalzAddress,
                    rewardAmount
                );
            }
        }

        // Bonus reward
        Tokens.ERC165Token memory bonusToken = calculateBonusRewardz(squadzId);
        if (bonusToken.contractAddress != address(0)) {
            IERC1155 bonusTokenContract = IERC1155(bonusToken.contractAddress);
            if (
                bonusTokenContract.isApprovedForAll(
                    portalz.bonusRewardSender(),
                    address(this)
                ) &&
                bonusTokenContract.balanceOf(
                    portalz.bonusRewardSender(),
                    bonusToken.tokenId
                ) >=
                1
            ) {
                bonusTokenContract.safeTransferFrom(
                    portalz.bonusRewardSender(),
                    msg.sender,
                    bonusToken.tokenId,
                    1,
                    ""
                );
            } else {
                emit NoMoreBonusTokenReward(
                    block.timestamp,
                    msg.sender,
                    squadzId,
                    portalzAddress,
                    bonusToken
                );
            }
        }

        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            IERC721 token = IERC721(tokens[i].contractAddress);
            token.transferFrom(address(this), msg.sender, tokens[i].tokenId);
            _lockerzTicketz.safeBurn(
                LockerzTicketz.Ticketz(
                    tokens[i].contractAddress,
                    tokens[i].tokenId
                )
            );
        }
        delete _stakers[msg.sender][squadzId].tokens;
        delete _stakers[msg.sender][squadzId].portalzAddress;
        delete _stakers[msg.sender][squadzId].sentStartTime;

        emit UnstakedTokens(
            block.timestamp,
            msg.sender,
            tokens,
            squadzId,
            portalzAddress,
            rewardAmount,
            portalz.rewardTokenAddress(),
            bonusToken
        );
    }

    /// @notice Calculate reward for a given staker by calculating the time passed
    /// @param squadzId the index of the squadz
    /// @return uint256 the calculated reward for a given staked squadz of tokens
    function calculateRewards(uint256 squadzId) public view returns (uint256) {
        require(squadzId < numberOfSquadz(msg.sender), "1009");

        Tokens.ERC165Token[] memory tokens = _stakers[msg.sender][squadzId]
            .tokens;
        uint256 sentStartTime = _stakers[msg.sender][squadzId].sentStartTime;
        address portalzAddress = _stakers[msg.sender][squadzId].portalzAddress;

        require(
            tokens.length > 0 &&
                sentStartTime > 0 &&
                portalzAddress != address(0),
            "1010"
        );

        uint256 squadzPeriod = (block.timestamp - sentStartTime) / 1 days;

        uint256 tokensBaseDailyReward;
        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            tokensBaseDailyReward += _metadataStorage.rarityReward(
                tokens[i].contractAddress,
                tokens[i].tokenId
            );
        }

        Portalz portalz = Portalz(portalzAddress);

        uint256 currentDayRewards = (((block.timestamp - sentStartTime) %
            1 days) *
            portalz.currentMultiplier(squadzPeriod) *
            tokensBaseDailyReward) / 1 days;

        return
            portalz.calculateRewardsForDays(
                tokensBaseDailyReward,
                squadzPeriod
            ) + currentDayRewards;
    }

    /**
     @notice Returns a bonus token if conditions and chances are met.
     @param squadzId the id of the squadz staked.
     */
    function calculateBonusRewardz(
        uint256 squadzId
    ) internal view whenNotPaused returns (Tokens.ERC165Token memory token) {
        require(squadzId < numberOfSquadz(msg.sender), "1009");

        uint256 sentStartTime = _stakers[msg.sender][squadzId].sentStartTime;
        address portalzAddress = _stakers[msg.sender][squadzId].portalzAddress;

        require(sentStartTime > 0 && portalzAddress != address(0), "1011");

        Portalz portalz = Portalz(portalzAddress);

        uint256 stakedPeriod = (block.timestamp - sentStartTime) / 1 days;

        if (portalz.bonusRewardzLength() > 0) {
            uint256 randomCounter = 1;
            for (
                uint256 i = 0;
                i < portalz.bonusRewardzLength();
                i = unsafeInc(i)
            ) {
                uint256 random = uint256(
                    keccak256(
                        abi.encodePacked(
                            block.difficulty,
                            block.timestamp,
                            msg.sender,
                            randomCounter,
                            blockhash(block.number)
                        )
                    )
                ) % (BASIS_POINT);
                randomCounter += 1;

                uint256 dropChanceFromStaking = chanceToDrop(
                    squadzId,
                    stakedPeriod,
                    i
                );

                if (random <= dropChanceFromStaking) {
                    (token, , ) = portalz.bonusRewardz(uint8(i));
                    return token;
                }
            }
        }
    }

    /**
     @notice Returns the drop rate of a given reward from a portalz.
     @dev The bigger the squadz is and the longer the squadz is staked,
     the bigger the drop rate will be.
     @param squadzId id of the squadz sent to the portalz.
     @param stakedPeriod number of days the squadz has been sent to the portalz.
     @param bonusIndex index of the potential bonus from the portalz.
    */
    function chanceToDrop(
        uint256 squadzId,
        uint256 stakedPeriod,
        uint256 bonusIndex
    ) public view returns (uint256) {
        Tokens.ERC165Token[] memory tokens = _stakers[msg.sender][squadzId]
            .tokens;
        address portalzAddress = _stakers[msg.sender][squadzId].portalzAddress;

        require(tokens.length > 0 && portalzAddress != address(0), "1012");

        Portalz portalz = Portalz(portalzAddress);

        require(bonusIndex < portalz.bonusRewardzLength(), "1013");

        (, uint16 dropChance, uint16 maxDropChance) = portalz.bonusRewardz(
            uint8(bonusIndex)
        );
        uint256 dropChanceFromStaking = dropChance *
            tokens.length *
            stakedPeriod;
        if (dropChanceFromStaking > maxDropChance) {
            dropChanceFromStaking = maxDropChance;
        }
        return dropChanceFromStaking;
    }

    /* ********************************** */
    /*              Squadz                */
    /* ********************************** */

    function buyNextSquadz() external whenNotPaused {
        uint256 nextSquadzId = numberOfSquadz(msg.sender);
        uint256 price = nextSquadzPrice();
        require(_rFleshToken.balanceOf(msg.sender) >= price, "1015");

        _rFleshToken.burnFrom(msg.sender, price);

        _stakers[msg.sender][nextSquadzId].slotsAvailable = 1;

        emit UnlockedNewSquadz(block.timestamp, msg.sender, nextSquadzId);
    }

    /**
     @notice Returns the price of the next squadz to unlock.
     Triggers an exception if there is no more squadz to unlock.
     @return uint256 next squadz's price
    */
    function nextSquadzPrice() public view returns (uint256) {
        uint256 nextSquadzId = numberOfSquadz(msg.sender);
        require(nextSquadzId < currentMaxSquadz, "1016");
        return _squadzPrices[nextSquadzId][0] * 1 ether; // converts eth to wei
    }

    function numberOfSquadz(address staker) internal view returns (uint256) {
        for (uint256 i = 0; i < MAX_SQUADZ; i = unsafeInc(i)) {
            if (_stakers[staker][i].slotsAvailable == 0) {
                return i;
            }
        }
        return MAX_SQUADZ;
    }

    /* ********************************** */
    /*               Slots                */
    /* ********************************** */

    function buyNextSlot(uint256 squadzId) external whenNotPaused {
        // throw an exception if no more available slots
        uint256 price = nextSlotPrice(squadzId);
        require(_rFleshToken.balanceOf(msg.sender) >= price, "1015");

        _rFleshToken.burnFrom(msg.sender, price);

        _stakers[msg.sender][squadzId].slotsAvailable++;

        emit UnlockedNewSlot(
            block.timestamp,
            msg.sender,
            squadzId,
            _stakers[msg.sender][squadzId].slotsAvailable
        );
    }

    /// @notice Internal method to the price of the next slot to buy for a given squad
    /// @param squadzId id of the squad
    /// @return uint256 next slot's price
    function nextSlotPrice(uint256 squadzId) public view returns (uint256) {
        uint256 nextSquadzId = numberOfSquadz(msg.sender);
        require(nextSquadzId > 0, "1017");
        require(squadzId < nextSquadzId, "1018");
        require(
            _stakers[msg.sender][squadzId].slotsAvailable <
                maxNumberOfSlots(squadzId),
            "1019"
        );
        return
            _squadzPrices[squadzId][
                _stakers[msg.sender][squadzId].slotsAvailable
            ] * 1 ether; // converts eth to wei
    }

    /// @notice Returns the maximum number of slots available to unlock for a given Squadz.
    /// @param squadzId Id of the Squadz.
    /// @return uint256 The number of slots.
    function maxNumberOfSlots(uint256 squadzId) public view returns (uint256) {
        for (uint256 i = 0; i < MAX_SLOTS; i = unsafeInc(i)) {
            if (_squadzPrices[squadzId][i] == 0 && (squadzId > 0 || i > 0)) {
                return i;
            }
        }
        return MAX_SLOTS;
    }

    /* ********************************** */
    /*             Getters                */
    /* ********************************** */

    function stakerInfo() public view returns (Squadz[] memory squadz) {
        squadz = new Squadz[](numberOfSquadz(msg.sender));
        for (uint256 i = 0; i < numberOfSquadz(msg.sender); i++) {
            squadz[i] = _stakers[msg.sender][i];
        }
        return squadz;
    }

    function otherStakerInfo(
        address otherStaker
    ) public view onlyOwner returns (Squadz[] memory squadz) {
        squadz = new Squadz[](numberOfSquadz(otherStaker));
        for (uint256 i = 0; i < numberOfSquadz(otherStaker); i++) {
            squadz[i] = _stakers[otherStaker][i];
        }
        return squadz;
    }

    /* ********************************** */
    /*              Setters               */
    /* ********************************** */

    function setSquadzPrices(
        uint256[][] calldata squadzPrices
    ) external onlyOwner {
        for (uint256 i = 0; i < squadzPrices.length; i = unsafeInc(i)) {
            for (uint256 j = 0; j < squadzPrices[i].length; j = unsafeInc(j)) {
                _squadzPrices[i][j] = squadzPrices[i][j];
            }
        }
    }

    function setCurrentMaxSquadz(uint8 _currentMaxSquadz) external onlyOwner {
        currentMaxSquadz = _currentMaxSquadz;
    }

    function setFleshToken(address fleshToken) external onlyOwner {
        _fleshToken = IFleshToken(fleshToken);
    }

    function setRottenFleshToken(address rFleshToken) external onlyOwner {
        _rFleshToken = IrFleshToken(rFleshToken);
    }

    function setMetadaStorage(address metadataStorage) external onlyOwner {
        _metadataStorage = MetadataStorage(metadataStorage);
    }

    function setLockerzTicketz(address lockerzTicketz) external onlyOwner {
        _lockerzTicketz = LockerzTicketz(lockerzTicketz);
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
    /*               Pauser               */
    /* ********************************** */

    function pauseStakingInPortalz(address portalzAddress) external onlyOwner {
        canStakeInPortalz[portalzAddress] = false;
    }

    function pauseUnstakingFromPortalz(
        address portalzAddress
    ) external onlyOwner {
        canUnstakeFromPortalz[portalzAddress] = false;
    }

    function unpauseStakingInPortalz(
        address portalzAddress
    ) external onlyOwner {
        canStakeInPortalz[portalzAddress] = true;
    }

    function unpauseUnstakingFromPortalz(
        address portalzAddress
    ) external onlyOwner {
        canUnstakeFromPortalz[portalzAddress] = true;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}
