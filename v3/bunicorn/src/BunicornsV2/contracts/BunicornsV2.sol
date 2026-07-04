// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "abdk-libraries-solidity/ABDKMath64x64.sol";
import "./util.sol";

import "./interfaces/v2.0/IBunicornsV2.sol";

contract BunicornsV2 is IBunicornsV2, Initializable, ERC721Upgradeable, AccessControlUpgradeable {
    using ABDKMath64x64 for int128;
    using ABDKMath64x64 for uint16;

    bytes32 public constant ROLE_GAME_CONTRACT = keccak256("ROLE_GAME_CONTRACT");
    bytes32 public constant ROLE_NOT_LOCK_NEXT_TRANSFER = keccak256("ROLE_NOT_LOCK_NEXT_TRANSFER");
    bytes32 public constant ROLE_MIGRATOR_CONTRACT = keccak256("ROLE_MIGRATOR_CONTRACT");

    uint256 public constant TRANSFER_COOLDOWN_IN_SECONDS = 1 days;

    uint256 public constant MAXIMUM_ENHANCE_STARS = 100;
    uint256 public constant ENHANCED_STAR_MULTIPLIER_BONUS = 12;

    uint256 public constant MAXIMUM_STAMINA = 20;
    uint256 public constant STAMINA_RECOVER_SPEED_IN_SECONDS = 3000; // 50 mins 1 STA

    int128 public constant BUNICORN_STATS_BASELINE = 36893488147419103; // It's 0.002 ~ 1/500 (assumption average stats is 500)
    int128 public constant ELEMENT_NEUTRAL_FACTOR = 19369081277395029196; // It's 1.05
    int128 public constant ELEMENT_MATCHED_FACTOR = 20291418481080506777; // It's 1.1

    int128 public constant ONE = 18446744073709551616; // it's just number 1.0

    function initialize () public initializer {
        __ERC721_init("Buni Universal Bunicorn", "BUB");
        __AccessControl_init_unchained();
        // set admin role
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    struct Bunicorn {
        uint16 props;
        uint16 attr1;
        uint16 attr2;
        uint16 attr3;
        uint8 level;
    }

    struct EnhancementCounters {
        uint8 bronzeEnhanced;
        uint8 sliverEnhanced;
        uint8 goldEnhanced;
    }

    Bunicorn[] private bunicorns;
    mapping(uint256 => EnhancementCounters) private enhancementCounters;

    uint256 private lastMintedBlock;
    uint256 private firstMintedOfLastBlock;

    mapping(uint256 => uint64) staminaTimestamp;

    mapping(uint256 => uint256) public lastTransferTimestamp;

    bool public isEmergencyPause;

    event NewBunicorn(uint256 indexed bunicorn, address indexed minter);

    event Enhanced(address indexed owner, uint256 indexed enhanced, uint256 indexed burned, uint8 bronzeEnhanced, uint8 sliverEnhanced, uint8 goldEnhanced);

    // =========================== MODIFIER ===========================
    modifier onlyGameContract() {
        _onlyGameContract();
        _;
    }

    function _onlyGameContract() internal view {
        require(hasRole(ROLE_GAME_CONTRACT, msg.sender), "bunicorn: not game contract");
    }

    modifier onlyMigratorContract() {
        _onlyMigratorContract();
        _;
    }

    function _onlyMigratorContract() internal view {
        require(hasRole(ROLE_MIGRATOR_CONTRACT, msg.sender), "bunicorn: not migrator contract");
    }

    modifier notInEmergencyPause() {
        _notInEmergencyPause();
        _;
    }

    function _notInEmergencyPause() internal view {
        require(!isEmergencyPause, "bunicorn: emergency pause");
    }

    modifier noFreshLookup(uint256 id) {
        _noFreshLookup(id);
        _;
    }

    function _noFreshLookup(uint256 id) internal view {
        require(id < firstMintedOfLastBlock || lastMintedBlock < block.number, "Too fresh for lookup");
    }
    // =========================== MODIFIER ===========================

    function setEmergencyPause(bool _isEmergencyPause) public {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "Not admin");
        isEmergencyPause = _isEmergencyPause;
    }

    // =========================== GETTER, SETTER ===========================
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

    function getStaminaTimestamp(uint256 id) public view returns (uint64) {
        return staminaTimestamp[id];
    }

    function setStaminaTimestamp(uint256 id, uint64 _timestamp) public onlyGameContract {
        staminaTimestamp[id] = _timestamp;
    }

    function getStaminaPoints(uint256 id) public view returns (uint8) {
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

    function isStaminaFull(uint256 id) public view returns (bool) {
        return getStaminaPoints(id) >= MAXIMUM_STAMINA;
    }

    function getMaxStaminaCooldown() public pure returns (uint64) {
        return _getMaxStaminaCooldown();
    }

    function _getMaxStaminaCooldown() private pure returns (uint64) {
        return uint64(MAXIMUM_STAMINA * STAMINA_RECOVER_SPEED_IN_SECONDS);
    }

    function getAttrs(uint256 id) internal view
        returns (uint16 _props, uint16 _attr1, uint16 _attr2, uint16 _attr3, uint8 _level) {

        Bunicorn memory bunicorn = bunicorns[id];
        return (bunicorn.props, bunicorn.attr1, bunicorn.attr2, bunicorn.attr3, bunicorn.level);
    }

    function get(uint256 id) public view noFreshLookup(id)
        returns (
            uint16 _props, uint16 _attr1, uint16 _attr2, uint16 _attr3, uint8 _level,
            uint24 _enhancementCounters, 
            uint24 _bonusAttribute // bonus attribute
    ) {
        return _get(id);
    }

    function _get(uint256 id) internal view
        returns (
            uint16 _props, uint16 _attr1, uint16 _attr2, uint16 _attr3, uint8 _level,
            uint24 _enhancementCounters, 
            uint24 _bonusAttribute // bonus power
    ) {
        (_props, _attr1, _attr2, _attr3, _level) = getAttrs(id);

        EnhancementCounters memory counters = enhancementCounters[id];
        _enhancementCounters =
            uint24(counters.bronzeEnhanced) |
            (uint24(counters.sliverEnhanced) << 8) |
            (uint24(counters.goldEnhanced) << 16);

        _bonusAttribute = _getBonusAttribute(id);
    }
    // =========================== GETTER, SETTER ===========================

    // =========================== MINT ===========================

    /**
     * This method is called by bunicorn roller
     * It will just mint a bunicorn with all specified properties & attributes
     * All the randomness should happen in the roller already
     */
    function mintOneBunicornBySpecs(
        address _minter, uint16 _props,
        uint16 _attr1, uint16 _attr2, uint16 _attr3)
        external override
        onlyGameContract
        notInEmergencyPause
        returns(uint256)
    {
        return _performMintBunicorn(_minter, _props, _attr1, _attr2, _attr3);
    }

    function _performMintBunicorn(
        address _minter, uint16 _props,
        uint16 _attr1, uint16 _attr2, uint16 _attr3
    ) internal returns(uint256) {
        uint256 tokenID = bunicorns.length;

        if(block.number != lastMintedBlock) {
            firstMintedOfLastBlock = tokenID;
        }
        lastMintedBlock = block.number;

        bunicorns.push(Bunicorn(_props, _attr1, _attr2, _attr3, 0));
        _mint(_minter, tokenID);

        staminaTimestamp[tokenID] = uint64(now.sub(_getMaxStaminaCooldown()));

        emit NewBunicorn(tokenID, _minter);
        return tokenID;
    }
    // =========================== MINT ===========================

    function getProperties(uint256 id) public view noFreshLookup(id) returns (uint16) {
        return bunicorns[id].props;
    }

    function getStars(uint256 id) public view noFreshLookup(id) returns (uint8) {
        return _getStarsFromProps(getProperties(id));
    }

    function _getStarsFromProps(uint16 _props) private pure returns (uint8) {
        return uint8(_props & 0x7); // first two bits for stars
    }

    function getElement(uint256 id) public view noFreshLookup(id) returns (uint8) {
        return _getElementFromProps(getProperties(id));
    }

    function _getElementFromProps(uint16 _props) private pure returns (uint8) {
        return uint8((_props >> 3) & 0x3); // two bits after star bits (3)
    }

    function getAttrPattern(uint256 id) public view noFreshLookup(id) returns (uint8) {
        return _getAttrPatternFromProps(getProperties(id));
    }

    function _getAttrPatternFromProps(uint16 _props) private pure returns (uint8) {
        return uint8((_props >> 5) & 0x7F); // 7 bits after star(3) and element(2) bits
    }

    function getAttr1Element(uint8 _attrPattern) private pure returns (uint8) {
        return uint8(uint256(_attrPattern) % 5); // 0-3 regular elements, 4 = elementless (NEUTRAL)
    }

    function getAttr2Element(uint8 _attrPattern) private pure returns (uint8) {
        return uint8(SafeMath.div(_attrPattern, 5) % 5); // 0-3 regular elements, 4 = elementless (NEUTRAL)
    }

    function getAttr3Element(uint8 _attrPattern) private pure returns (uint8) {
        return uint8(SafeMath.div(_attrPattern, 25) % 5); // 0-3 regular elements, 4 = elementless (NEUTRAL)
    }

    function getLevel(uint256 id) public view noFreshLookup(id) returns (uint8) {
        return bunicorns[id].level;
    }

    function getAttr1(uint256 id) public view noFreshLookup(id) returns (uint16) {
        return bunicorns[id].attr1;
    }

    function getAttr2(uint256 id) public view noFreshLookup(id) returns (uint16) {
        return bunicorns[id].attr2;
    }

    function getAttr3(uint256 id) public view noFreshLookup(id) returns (uint16) {
        return bunicorns[id].attr3;
    }

    function getPowerMultiplierForElement(
        uint16 _props,
        uint16 _attr1, uint16 _attr2, uint16 _attr3,
        uint8 _element,
        uint24 bonusAttribute
    ) public pure returns(int128) {
        return _getPowerMultiplierForElement(_props, _attr1, _attr2, _attr3, _element, bonusAttribute);
    }

    function _getPowerMultiplierForElement(
        uint16 _props,
        uint16 _attr1, uint16 _attr2, uint16 _attr3,
        uint8 _element,
        uint24 bonusAttribute
    ) private pure returns(int128) {
        uint8 attrPattern = _getAttrPatternFromProps(_props);
        int128 result = ONE;
        
        if (bonusAttribute > 0) {
            result = result.add(ABDKMath64x64.fromUInt(bonusAttribute).mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_NEUTRAL_FACTOR));
        }

        if (_attr1 > 0) {
            if (getAttr1Element(attrPattern) == _element) {
                result = result.add(_attr1.fromUInt().mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_MATCHED_FACTOR));
            }
            else if(getAttr1Element(attrPattern) == 4) { // NEUTRAL, elementless
                result = result.add(_attr1.fromUInt().mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_NEUTRAL_FACTOR));
            }
            else {
                result = result.add(_attr1.fromUInt().mul(BUNICORN_STATS_BASELINE));
            }
        }

        if (_attr2 > 0) {
            if (getAttr2Element(attrPattern) == _element) {
                result = result.add(_attr2.fromUInt().mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_MATCHED_FACTOR));
            }
            else if(getAttr2Element(attrPattern) == 4) { // NEUTRAL, elementless
                result = result.add(_attr2.fromUInt().mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_NEUTRAL_FACTOR));
            }
            else {
                result = result.add(_attr2.fromUInt().mul(BUNICORN_STATS_BASELINE));
            }
        }

        if (_attr3 > 0) {
            if (getAttr3Element(attrPattern) == _element) {
                result = result.add(_attr3.fromUInt().mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_MATCHED_FACTOR));
            }
            else if(getAttr3Element(attrPattern) == 4) { // NEUTRAL, elementless
                result = result.add(_attr3.fromUInt().mul(BUNICORN_STATS_BASELINE).mul(ELEMENT_NEUTRAL_FACTOR));
            }
            else {
                result = result.add(_attr3.fromUInt().mul(BUNICORN_STATS_BASELINE));
            }
        }

        return result;
    }
    
    // =========================== ENHANCE ===========================
    function enhance(uint256 _enhanceID, uint256 _burnID) public onlyGameContract notInEmergencyPause {
        // Calculate the number of stars will be added from burnt bunicorn
        (uint8[3] memory values, uint8 totalStars) = _calculateEnhancedCounters(_burnID);

        // Make sure after adding burnt stars, it will not exceed the limit
        EnhancementCounters storage counters = enhancementCounters[_enhanceID];
        uint8 currentBurntStars = uint8(counters.bronzeEnhanced + counters.sliverEnhanced + counters.goldEnhanced);
        require(currentBurntStars + totalStars <= MAXIMUM_ENHANCE_STARS, "Enhance capped");

        // Apply the enhancement
        counters.bronzeEnhanced += values[0];
        counters.sliverEnhanced += values[1];
        counters.goldEnhanced += values[2];

        // Burn the burnt bunicorn
        _burn(_burnID);

        emit Enhanced(
            ownerOf(_enhanceID),
            _enhanceID, _burnID,
            counters.bronzeEnhanced, counters.sliverEnhanced, counters.goldEnhanced
        );
    }

    function _calculateEnhancedCounters(uint256 _burnID) private view returns(uint8[3] memory values, uint8 totalStars) {
        // Carried burning enhance counters.
        EnhancementCounters storage counters = enhancementCounters[_burnID];

        values[0] = counters.bronzeEnhanced / 2;
        values[1] = counters.sliverEnhanced / 2;
        values[2] = counters.goldEnhanced / 2;

        // Stars-based enhance counters
        Bunicorn storage bunicorn = bunicorns[_burnID];
        uint8 stars = _getStarsFromProps(bunicorn.props);
        if(stars < 3) {
            values[0] += (stars + 1);
        }
        else if(stars == 3) {
            values[1] += 4; // add 4 stars to enhance
        }
        else if(stars == 4) {
            values[2] += 5;  // add 5 stars to enhance
        }

        totalStars = values[0] + values[1] + values[2]; 
    }

    // =========================== ENHANCE ===========================

    // =========================== BATTLE ===========================
    function getBonusAttribute(uint256 id) public view noFreshLookup(id) returns (uint24) {
        return _getBonusAttribute(id);
    }

    function _getBonusAttribute(uint256 id) internal view noFreshLookup(id) returns (uint24) {
        EnhancementCounters storage counters = enhancementCounters[id];
        return uint24(
            uint256(counters.bronzeEnhanced + counters.sliverEnhanced * 2 + counters.goldEnhanced * 4)
                .mul(ENHANCED_STAR_MULTIPLIER_BONUS)
        );
    }

    function getPowerMultiplier(uint256 id) external view noFreshLookup(id) returns (int128 powerMultiplier, uint8 bunicornElement) {
        return _getPowerMultiplier(id);
    }

    function _getPowerMultiplier(uint256 id) private view returns (int128 powerMultiplier, uint8 bunicornElement) {
        Bunicorn storage bunicorn = bunicorns[id];

        uint24 bonusAttribute = _getBonusAttribute(id);
        uint8 element = _getElementFromProps(bunicorn.props);
        int128 powerMultiplierForElement = _getPowerMultiplierForElement(bunicorn.props, bunicorn.attr1, bunicorn.attr2, bunicorn.attr3, element, bonusAttribute);
        
        return (powerMultiplierForElement, element);
    }

    function getPowerMultiplierAndDrainStamina(uint256 id, uint8 _stamina)
        external
        notInEmergencyPause
        onlyGameContract
        noFreshLookup(id)
        returns (int128 powerMultiplier, uint8 bunicornElement) {

        uint8 staminaPoints = _getStaminaPointsFromTimestamp(staminaTimestamp[id]);
        require(staminaPoints >= _stamina, "insufficient bunicorn stamina");

        uint64 drainTime = uint64(_stamina * STAMINA_RECOVER_SPEED_IN_SECONDS);
        if(staminaPoints >= MAXIMUM_STAMINA) {
            staminaTimestamp[id] = uint64(now - _getMaxStaminaCooldown() + drainTime);
        }
        else {
            staminaTimestamp[id] = uint64(staminaTimestamp[id] + drainTime);
        }
        
        return _getPowerMultiplier(id);
    }
    // =========================== BATTLE ===========================

    // =========================== MIGRATOR ===========================
    function getTotalBunicorns() external view override onlyMigratorContract returns(uint256) {
        return bunicorns.length;
    }

    function tokenExists(uint256 _tokenId) external view returns(bool) {
        return _exists(_tokenId);
    }

    function mintByMigrator(
        address _tokenOwner,
        uint16 _props,
        uint16 _attr1,
        uint16 _attr2,
        uint16 _attr3,
        uint8 _level
    ) external override onlyMigratorContract {
        uint256 tokenID = bunicorns.length;

        if(block.number != lastMintedBlock) {
            firstMintedOfLastBlock = tokenID;
        }
        lastMintedBlock = block.number;

        bunicorns.push(Bunicorn(_props, _attr1, _attr2, _attr3, _level));
        if (_tokenOwner != address(0)) {
            _mint(_tokenOwner, tokenID);
        }

        staminaTimestamp[tokenID] = uint64(now.sub(_getMaxStaminaCooldown()));

        emit NewBunicorn(tokenID, _tokenOwner);
    }

    function setEnhancePowerByMigrator(
        uint256 _tokenId,
        uint8 _lowBurnPoints,
        uint8 _fourBurnPoints,
        uint8 _fiveBurnPoints
    ) external override onlyMigratorContract {
        EnhancementCounters storage counters = enhancementCounters[_tokenId];

        counters.bronzeEnhanced = _lowBurnPoints / 2;
        counters.sliverEnhanced = (_fourBurnPoints / 2) * 4;
        counters.goldEnhanced = (_fiveBurnPoints / 2) * 5;
    }
    // =========================== MIGRATOR ===========================

    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override {
        // // Ignore this guard for minting & buring action
        // if (from == address(0) || to == address(0)) {
        //     return;
        // }
        
        // // only allow transferring a particular token every TRANSFER_COOLDOWN_IN_SECONDS seconds
        // require(lastTransferTimestamp[tokenId] < block.timestamp.sub(TRANSFER_COOLDOWN_IN_SECONDS), "Transfer cooldown");

        // // Set the time stamp to restrict next transfer if the recipient is not the market
        // if (!hasRole(ROLE_NOT_LOCK_NEXT_TRANSFER, to)) {
        //     lastTransferTimestamp[tokenId] = block.timestamp;
        // }
    }
}
