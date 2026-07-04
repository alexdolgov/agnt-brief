// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./util.sol";

import "./interfaces/v2.0/ITrainersV2.sol";
import "./interfaces/INFTNameTag.sol";

contract TrainersV2 is ITrainersV2, Initializable, ERC721Upgradeable, AccessControlUpgradeable {

    using SafeMath for uint16;
    using SafeMath for uint8;

    bytes32 public constant ROLE_GAME_CONTRACT = keccak256("ROLE_GAME_CONTRACT");
    bytes32 public constant ROLE_NOT_LOCK_NEXT_TRANSFER = keccak256("ROLE_NOT_LOCK_NEXT_TRANSFER");
    bytes32 public constant ROLE_MIGRATOR_CONTRACT = keccak256("ROLE_MIGRATOR_CONTRACT");

    uint256 public constant TRANSFER_COOLDOWN_IN_SECONDS = 1 days;

    uint256 public constant MAXIMUM_STAMINA = 200;
    uint256 public constant STAMINA_RECOVER_SPEED_IN_SECONDS = 300; // 5 mins 1 STA

    // testnet contract
    // INFTNameTag public constant NAME_TAG_CONTRACT = INFTNameTag(0x1aE4A04CDaB183261cDF55b5890A527e0eb78bCe);

    // mainnet contract
    INFTNameTag public constant NAME_TAG_CONTRACT = INFTNameTag(0xe13F72a8DF31Ed12Deb410e71E94d5380e802cbe);

    function initialize () public initializer {
        __ERC721_init("Buni Universal Trainer", "BUT");
        __AccessControl_init_unchained();
        // set admin role
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        fusionMilestones = [9, 19, 29, 39, 49, 99, 149, 199, 249, 255]; 
    }

    function setExperiences(uint256[255] memory _experiences) public {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "Not admin");

        for (uint256 i = 0; i < _experiences.length; i++) {
            experiences[i] = _experiences[i];
        }
    }

    function setPowers(uint256[255] memory _powers) public {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "Not admin");

        for (uint256 i = 0; i < _powers.length; i++) {
            powers[i] = _powers[i];
        }
    }

    function setEmergencyPause(bool _isEmergencyPause) public {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "Not admin");
        isEmergencyPause = _isEmergencyPause;
    }

    struct Trainer {
        uint16 exp;
        uint8 level;
        uint8 element;
    }

    Trainer[] private trainers;

    uint256[256] private experiences;
    uint256[256] private powers;

    uint8[] private fusionMilestones;

    uint256 private lastMintedBlock;
    uint256 private firstMintedOfLastBlock;

    mapping(uint256 => uint8) private lastFusionLevel;

    mapping(uint256 => uint64) staminaTimestamp;

    mapping(uint256 => uint256) public lastTransferTimestamp;

    bool public isEmergencyPause;

    event NewTrainer(uint256 indexed trainer, address indexed minter);

    event LevelUp(address indexed owner, uint256 indexed trainer, uint16 level);

    event Fused(address indexed owner, uint256 indexed fused, uint256 indexed burned);

    modifier onlyGameContract() {
        _onlyGameContract();
        _;
    }

    function _onlyGameContract() internal view {
        require(hasRole(ROLE_GAME_CONTRACT, msg.sender), "trainer: not game contract");
    }

    modifier onlyMigratorContract() {
        _onlyMigratorContract();
        _;
    }

    function _onlyMigratorContract() internal view {
        require(hasRole(ROLE_MIGRATOR_CONTRACT, msg.sender), "trainer: not migrator contract");
    }

    modifier notInEmergencyPause() {
        _notInEmergencyPause();
        _;
    }

    function _notInEmergencyPause() internal view {
        require(!isEmergencyPause, "trainer: emergency pause");
    }

    modifier noFreshLookup(uint256 id) {
        _noFreshLookup(id);
        _;
    }

    function _noFreshLookup(uint256 id) internal view {
        require(id < firstMintedOfLastBlock || lastMintedBlock < block.number, "Too fresh for lookup");
    }

    function transferCooldownEnd(uint256 tokenId) public view returns (uint256) {
        return lastTransferTimestamp[tokenId].add(TRANSFER_COOLDOWN_IN_SECONDS);
    }

    function transferCooldownLeft(uint256 tokenId) public view returns (uint256) {
        (bool success, uint256 secondsLeft) =
            lastTransferTimestamp[tokenId].trySub(
                block.timestamp.sub(TRANSFER_COOLDOWN_IN_SECONDS)
            );

        return success ? secondsLeft : 0;
    }

    function get(uint256 id) public view noFreshLookup(id) 
        returns (uint16 _exp, uint8 _level, uint8 _element, uint64 _staminaTimestamp, uint24 _power, string memory _tag) {

        Trainer memory trainer = trainers[id];
        _exp = trainer.exp;
        _level = trainer.level;
        _element = trainer.element;
        _staminaTimestamp = staminaTimestamp[id];
        _power = uint24(powers[trainer.level]);

        _tag = NAME_TAG_CONTRACT.getNameTag(address(this), id);
    }

    function getMaxStaminaCooldown() public pure returns (uint64) {
        return _getMaxStaminaCooldown();
    }

    function _getMaxStaminaCooldown() private pure returns (uint64) {
        return uint64(MAXIMUM_STAMINA * STAMINA_RECOVER_SPEED_IN_SECONDS);
    }

    function getLevel(uint256 id) public view noFreshLookup(id) returns (uint8) {
        return trainers[id].level;
    }

    function getRequiredExpForNextLevel(uint8 _level) public view returns (uint16) {
        return uint16(experiences[_level]);
    }

    function getTrainerPower(uint256 id) external view noFreshLookup(id) returns (uint24) {
        return _getTrainerPowerAtLevel(trainers[id].level);
    }  

    function _getTrainerPowerAtLevel(uint8 level) private view returns (uint24) {
        return uint24(powers[level]);
    }

    function getElement(uint256 id) external view noFreshLookup(id) returns (uint8) {
        return trainers[id].element;
    }

    function getTrainerExp(uint256 id) public view noFreshLookup(id) returns (uint32) {
        return trainers[id].exp;
    }

    function getStaminaTimestamp(uint256 id) public view noFreshLookup(id) returns (uint64) {
        return staminaTimestamp[id];
    }

    function setStaminaTimestamp(uint256 id, uint64 _timestamp) public onlyGameContract {
        staminaTimestamp[id] = _timestamp;
    }

    function getStaminaPoints(uint256 id) public view noFreshLookup(id) returns (uint8) {
        return _getStaminaPointsFromTimestamp(staminaTimestamp[id]);
    }

    function _getStaminaPointsFromTimestamp(uint64 _timestamp) private view returns (uint8) {
        if(_timestamp  > now) {
            return 0;
        }

        uint256 points = (now - _timestamp) / STAMINA_RECOVER_SPEED_IN_SECONDS;
        if(points > MAXIMUM_STAMINA) {
            points = MAXIMUM_STAMINA;
        }
        return uint8(points);
    }

    function isStaminaFull(uint256 id) public view noFreshLookup(id) returns (bool) {
        return getStaminaPoints(id) >= MAXIMUM_STAMINA;
    }

    // =========================== MINT ===========================
    function mintOneTrainerBySpecs(address _minter, uint8 _element) external override onlyGameContract notInEmergencyPause {
        uint256 tokenID = trainers.length;

        if(block.number != lastMintedBlock) {
            firstMintedOfLastBlock = tokenID;
        }
        lastMintedBlock = block.number;

        uint16 exp = 0;
        uint8 level = 0;

        trainers.push(Trainer(exp, level, _element));
        _mint(_minter, tokenID);

        staminaTimestamp[tokenID] = uint64(now.sub(_getMaxStaminaCooldown()));

        emit NewTrainer(tokenID, _minter);
    }
    // =========================== MINT ===========================

    // =========================== BATTLE ===========================
    function getBattleDataAndDrainStamina(uint256 id, uint8 _stamina) external onlyGameContract notInEmergencyPause returns(uint96) {
        Trainer storage trainer = trainers[id];
        uint8 staminaPoints = _getStaminaPointsFromTimestamp(staminaTimestamp[id]);
        require(staminaPoints >= _stamina, "insufficient trainer stamina");

        uint64 drainTime = uint64(_stamina * STAMINA_RECOVER_SPEED_IN_SECONDS);
        uint64 preTimestamp = staminaTimestamp[id];
        if(staminaPoints >= MAXIMUM_STAMINA) {
            staminaTimestamp[id] = uint64(now - _getMaxStaminaCooldown() + drainTime);
        }
        else {
            staminaTimestamp[id] = uint64(staminaTimestamp[id] + drainTime);
        }
        return uint96(trainer.element | (uint96(_getTrainerPowerAtLevel(trainer.level)) << 8) | (uint96(preTimestamp) << 32));
    }
    // =========================== BATTLE ===========================

    // =========================== FUSION ===========================
    function getFusionMilestones() public view returns(uint8[] memory) {
        uint8[] memory milestones = new uint8[](fusionMilestones.length);
        for (uint8 i = 0; i < fusionMilestones.length; i++) {
            milestones[i] = fusionMilestones[i];
        }
        return milestones;
    }

    function getLastFusionLevel(uint256 id) public view returns(uint8) {
        return lastFusionLevel[id];
    }

    function hasFused(uint256 id) public view returns(bool) {
        uint8 trainerLevel = trainers[id].level;
        return lastFusionLevel[id] == _getFusionMaxLevel(trainerLevel);
    }

    function fuse(uint256 _fusionID, uint256 _burnID) public onlyGameContract notInEmergencyPause {
        uint8 trainerLevel = trainers[_fusionID].level;
        uint8 burnTrainerLevel = trainers[_burnID].level;

        require(trainerLevel < 255 && trainerLevel.add(1).div(10) < experiences.length.div(10), "Fusion unnecessary");
        require(
            _getFusionMinLevel(trainerLevel) <= burnTrainerLevel && burnTrainerLevel <= trainerLevel,
            "Burn trainer not the same level range"
        );
        if (lastFusionLevel[_fusionID] != 0) {
            require(lastFusionLevel[_fusionID] < trainerLevel, "cannot fuse twice per level");
        }

        lastFusionLevel[_fusionID] = _getFusionMaxLevel(trainerLevel);
        _burn(_burnID);

        emit Fused(ownerOf(_fusionID), _fusionID, _burnID);
    }

    function _getFusionMinLevel(uint8 _level) internal view returns(uint8 minLevel) {
        if (_level <= fusionMilestones[0]) {
            return 0;
        }

        for (uint8 i = 0; i < fusionMilestones.length; i++) {
            if (_level <= fusionMilestones[i]) {
                break;
            }
            minLevel = fusionMilestones[i] + 1;
        }
    }

    function _getFusionMaxLevel(uint8 _level) internal view returns(uint8 maxLevel) {
        for (uint8 i = 0; i < fusionMilestones.length; i++) {
            maxLevel = fusionMilestones[i];
            if (_level <= fusionMilestones[i]) {
                break;
            }
        }
    }
    // =========================== FUSION ===========================

    // =========================== CLAIM EXP ===========================
    function claimExp(uint256 id, uint16 exp) public onlyGameContract notInEmergencyPause {
        Trainer storage trainer = trainers[id];
        if(trainer.level < 255) {
            uint newExp = trainer.exp.add(exp);
            uint totalExpToLevel = experiences[trainer.level];
            while(newExp >= totalExpToLevel) {
                newExp = newExp - totalExpToLevel;
                trainer.level += 1;
                emit LevelUp(ownerOf(id), id, trainer.level);
                if(trainer.level < 255)
                    totalExpToLevel = experiences[trainer.level];
                else
                    newExp = 0;
            }
            trainer.exp = uint16(newExp);
        }
    }

    function getMaxClaimExp(uint256 id) public view returns(uint256) {
        Trainer storage trainer = trainers[id];
        if (trainer.level < 255) {
            uint256 maxClaimExp = 0;
            uint8 maxLevel = _levelMax(id);
            for (uint8 i = trainer.level; i <= maxLevel; i++) {
                maxClaimExp = maxClaimExp.add(experiences[i]);
            }
            if (maxClaimExp > trainer.exp && maxLevel != 254) {
                maxClaimExp = maxClaimExp.sub(trainer.exp).sub(1);
            }
            if (maxClaimExp > 65535) {
                maxClaimExp = 65535;
            }
            return maxClaimExp;
        }
        return 0;
    }

    function _levelMax(uint256 id) internal view returns(uint8) {
        uint8 level = trainers[id].level;
        uint8 maxLevel = _getFusionMaxLevel(level);
        // check if trainer has fused
        if (maxLevel == lastFusionLevel[id]) {
            // move to next
            for (uint8 i = 0; i < fusionMilestones.length; i++) {
                if (maxLevel < fusionMilestones[i]) {
                    maxLevel = fusionMilestones[i];
                    break;
                }
            }
        }

        if (maxLevel > 254) {
            maxLevel = 254;
        }
        return maxLevel;
    }
    // =========================== CLAIM EXP ===========================

    // =========================== MIGRATOR ===========================
    function getTotalTrainers() external view override onlyMigratorContract returns(uint256) {
        return trainers.length;
    }

    function tokenExists(uint256 _tokenId) external view returns(bool) {
        return _exists(_tokenId);
    }

    function mintByMigrator(
        address _tokenOwner,
        uint8 _element,
        uint16 _exp,
        uint8 _level,
        uint8 _fusionLevel
    ) external override onlyMigratorContract {
        uint256 tokenID = trainers.length;

        if(block.number != lastMintedBlock) {
            firstMintedOfLastBlock = tokenID;
        }
        lastMintedBlock = block.number;

        trainers.push(Trainer(_exp, _level, _element));
        if (_tokenOwner != address(0)) {
            _mint(_tokenOwner, tokenID);
        }

        staminaTimestamp[tokenID] = uint64(now.sub(_getMaxStaminaCooldown()));

        lastFusionLevel[tokenID] = _fusionLevel;

        emit NewTrainer(tokenID, _tokenOwner);
    }
    // =========================== MIGRATOR ===========================

    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override {
        // Ignore this guard for minting & buring action
        if (from == address(0) || to == address(0)) {
            return;
        }
        
        // only allow transferring a particular token every TRANSFER_COOLDOWN_IN_SECONDS seconds
        require(lastTransferTimestamp[tokenId] < block.timestamp.sub(TRANSFER_COOLDOWN_IN_SECONDS), "Transfer cooldown");

        // Set the time stamp to restrict next transfer if the recipient is not the market
        if (!hasRole(ROLE_NOT_LOCK_NEXT_TRANSFER, to)) {
            lastTransferTimestamp[tokenId] = block.timestamp;
        }
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return string(abi.encodePacked("https://nft.bunicorn.exchange/trainers/", tokenId.toString()));
    }
}