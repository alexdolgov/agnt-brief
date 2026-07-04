// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

import "./interfaces/IvBuni.sol";
import "./interfaces/IBunicornRoller.sol";
import "./interfaces/ITrainerRoller.sol";

contract MysteryBoxV2 is Initializable, AccessControlUpgradeable {
    using SafeMath for uint256;

    IvBuni public vBuni;
    IBunicornRoller public bunicornRoller;
    ITrainerRoller public trainerRoller;
    uint256 totalOpen;
    uint8 element;

    uint256 MIN_GUARANTEE;
    uint256 MAX_GUARANTEE;

    mapping(uint256 => Rarity) public tokenRarity;
    mapping(uint256 => bool) public openedBoxes;

    mapping(address => uint256) userSeed;

    uint256[4] guarantees;
    uint256[4] rarityQuantity;

    bool public isEmergencyPause;

    enum Rarity {
        Unset,
        Chest,
        Egg,
        RareEgg,
        EpicEgg
    }

    modifier notInEmergencyPause() {
        _notInEmergencyPause();
        _;
    }

    function _notInEmergencyPause() internal view {
        require(!isEmergencyPause, "mystery box: emergency pause");
    }

    modifier restricted() {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "Not game admin");
        _;
    }

    modifier notOpened(uint256 _id) {
        require(!openedBoxes[_id], "Box is opened");
        _;
    }

    modifier contractNotAllowed() {
        require(tx.origin == msg.sender, "Contract are not allowed to call");
        _;
    }

    modifier onlyNftOwner(uint256 _id) {
        require(getVbuniOwner(_id) == msg.sender, "Not owner of NFT");
        _;
    }

    event OpenBox(
        uint256 indexed boxId,
        Rarity rarity,
        address opener,
        uint256 timestamp
    );

    function initialize(
        IvBuni _vBuni,
        IBunicornRoller _bunicornRoller,
        ITrainerRoller _trainerRoller
    ) public initializer {
        __AccessControl_init_unchained();

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        vBuni = _vBuni;
        bunicornRoller = _bunicornRoller;
        trainerRoller = _trainerRoller;

        MIN_GUARANTEE = 100;
        MAX_GUARANTEE = 300;

        guarantees = [200000e18, 10000e18, 5000e18, 2000e18];
        rarityQuantity = [10000e18, 5000e18, 2000e18, 1000e18];
        element = 3;
    }

    function setEmergencyPause(bool _isEmergencyPause) public {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "Not admin");
        isEmergencyPause = _isEmergencyPause;
    }

    function changeVbuni(IvBuni _newVbuni) public restricted {
        vBuni = _newVbuni;
    }

    function changeBunicornRoller(IBunicornRoller _newBunicornRoller) public restricted {
        bunicornRoller = _newBunicornRoller;
    }

    function changeTrainerRoller(ITrainerRoller _newTrainerRoller) public restricted {
        trainerRoller = _newTrainerRoller;
    }

    function setGuaranteeRate(uint256[4] memory _guarantees) public restricted {
        guarantees = _guarantees;
    }

    function openMysteryBox(uint256 _id)
        external
        notInEmergencyPause
        notOpened(_id)
        contractNotAllowed
        onlyNftOwner(_id)
    {
        openedBoxes[_id] = true;
        totalOpen = totalOpen.add(1);
        uint256 vestedAmount = getVestedAmount(_id);

        // Open logic
        Rarity rarity = tokenRarity[_id];

        require(rarity != Rarity.Unset, "This VBuni not setted for opening");
        // Calculate logic
        if (rarity == Rarity.Chest) {
            openChest(msg.sender);
        } else if (rarity == Rarity.Egg) {
            openEgg(msg.sender, vestedAmount);
        } else if (rarity == Rarity.RareEgg) {
            openRareEgg(msg.sender, vestedAmount);
        }
        if (rarity == Rarity.EpicEgg) {
            openEpicEgg(msg.sender, vestedAmount);
        }

        // Emit Events
        emit OpenBox(_id, rarity, msg.sender, block.timestamp);
    }

    function openChest(address _receiver) private {
        uint256 randomNumber = random();
        uint256 rolled = randomNumber.mod(1e3);

        bunicornRoller.mintOneRandomBunicornWithStar(_receiver, 0, rolled % 100);
        trainerRoller.mintOneRandomTrainer(_receiver, rolled % 100);
    }

    function openEgg(address _receiver, uint256 _amount) private {
        uint256 randomNumber = random();

        uint256 guarantee = guarantees[2];
        uint256 minimumQuantity = rarityQuantity[2];

        uint256 rolled = randomNumber.mod(1e3);

        uint256 currentRate = ((_amount - minimumQuantity) * 1e3) /
            (guarantee - minimumQuantity);

        uint256 rate = getGuaranteeRate(currentRate);
        if (rolled <= rate) {
            bunicornRoller.mintOneRandomBunicornWithStarAndElement(
                _receiver,
                2,
                element,
                rolled % 100
            );
        } else {
            bunicornRoller.mintOneRandomBunicornWithStarAndElement(
                _receiver,
                1,
                element,
                rolled % 100
            );
        }
    }

    function openRareEgg(address _receiver, uint256 _amount) private {
        uint256 randomNumber = random();

        uint256 guarantee = guarantees[1];
        uint256 minimumQuantity = rarityQuantity[1];

        uint256 rolled = randomNumber.mod(1e3);

        uint256 currentRate = ((_amount - minimumQuantity) * 1e3) /
            (guarantee - minimumQuantity);

        uint256 rate = getGuaranteeRate(currentRate);
        if (rolled <= rate) {
            bunicornRoller.mintOneRandomBunicornWithStarAndElement(
                _receiver,
                3,
                element,
                rolled % 100
            );
        } else {
            bunicornRoller.mintOneRandomBunicornWithStarAndElement(
                _receiver,
                2,
                element,
                rolled % 100
            );
        }
    }

    function openEpicEgg(address _receiver, uint256 _amount) private {
        uint256 randomNumber = random();

        uint256 guarantee = guarantees[0];
        uint256 minimumQuantity = rarityQuantity[0];

        uint256 rolled = randomNumber.mod(1e3);

        uint256 currentRate = ((_amount - minimumQuantity) * 1e3) /
            (guarantee - minimumQuantity);

        uint256 rate = getGuaranteeRate(currentRate);
        if (rolled <= rate) {
            bunicornRoller.mintOneRandomBunicornWithStarAndElement(
                _receiver,
                4,
                element,
                rolled % 100
            );
        } else {
            bunicornRoller.mintOneRandomBunicornWithStarAndElement(
                _receiver,
                3,
                element,
                rolled % 100
            );
        }
    }

    function getDefaultRarity(uint256 _id) public view returns (Rarity rarity) {
        uint256 amount = getVestedAmount(_id);
        require(
            amount >= rarityQuantity[3],
            "Token not reach minimum quantity for opening"
        );

        if (amount >= rarityQuantity[0]) {
            return Rarity.EpicEgg;
        }

        if (amount >= rarityQuantity[1]) {
            return Rarity.RareEgg;
        }

        if (amount >= rarityQuantity[2]) {
            return Rarity.Egg;
        }

        return Rarity.Chest;
    }

    function getVestedAmount(uint256 _id) public view returns (uint256 amount) {
        (, amount, , ) = vBuni.getTokenInfo(_id);
    }

    function getVbuniOwner(uint256 _id) public view returns (address owner) {
        return vBuni.ownerOf(_id);
    }

    function getTokenRarity(uint256 _token)
        public
        view
        returns (Rarity rarity)
    {
        return tokenRarity[_token];
    }

    function getBoxStatus(uint256 _id) external view returns (bool opened) {
        return openedBoxes[_id];
    }

    function assignRarity(uint256[] memory _tokens, Rarity[] memory _rarities)
        external
        restricted
    {
        for (uint256 i = 0; i < _tokens.length; i++) {
            uint256 tokenId = _tokens[i];
            Rarity rarity = _rarities[i];

            tokenRarity[tokenId] = rarity;
        }
    }

    function random() internal view returns (uint256 randomNumber) {
        // sha3 and now have been deprecated
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        _msgSender(),
                        totalOpen
                    )
                )
            );
    }

    function getGuaranteeRate(uint256 rolledRate)
        internal
        view
        returns (uint256)
    {
        if (rolledRate < MIN_GUARANTEE) {
            return MIN_GUARANTEE;
        }
        if (rolledRate > MAX_GUARANTEE) {
            return MAX_GUARANTEE;
        }
        return rolledRate;
    }
}
