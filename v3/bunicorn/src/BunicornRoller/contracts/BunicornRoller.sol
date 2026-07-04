// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./util.sol";

import "./interfaces/IBunicornRoller.sol";
import "./interfaces/v2.0/IBunicornsV2.sol";

contract BunicornRoller is IBunicornRoller, Initializable, AccessControlUpgradeable {

    using SafeMath for uint256;

    bytes32 public constant ROLE_GAME_CONTRACT = keccak256("ROLE_GAME_CONTRACT");

    function initialize (IBunicornsV2 _bunicornsContract) public initializer {
        __AccessControl_init_unchained();
        // set admin role for deployer
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        
        bunicornsContract = _bunicornsContract;
    }

    IBunicornsV2 public bunicornsContract;

    modifier onlyGameContract() {
        _onlyGameContract();
        _;
    }

    function _onlyGameContract() internal view {
        require(hasRole(ROLE_GAME_CONTRACT, msg.sender), "bunicorn roller: not game contract");
    }

    function mintOneRandomBunicorn(address _minter, uint256 _seed)
        external override
        onlyGameContract
        returns(uint256)
    {
        uint8 element = uint8(RandomUtil.randomSeededMinMax(0, 3, RandomUtil.combineSeeds(_seed, 1)));
        uint8 stars = _getRandomStars(_seed);
        return _mintOneRandomBunicornWithStarAndElement(_minter, stars, element, _seed);
    }

    function mintOneRandomBunicornWithElement(address _minter, uint8 _element, uint256 _seed)
        external override
        onlyGameContract
        returns(uint256)
    {
        uint8 stars = _getRandomStars(_seed);
        return _mintOneRandomBunicornWithStarAndElement(_minter, stars, _element, _seed);
    }

    function mintOneRandomBunicornWithStar(address _minter, uint8 _stars, uint256 _seed)
        external override
        onlyGameContract
        returns(uint256) {

        uint8 element = uint8(RandomUtil.randomSeededMinMax(0, 3, RandomUtil.combineSeeds(_seed, 1)));
        return _mintOneRandomBunicornWithStarAndElement(_minter, _stars, element, _seed);
    }

    function mintOneRandomBunicornWithStarAndElement(address _minter, uint8 _stars, uint8 _element, uint256 _seed)
        external override
        onlyGameContract
        returns(uint256)
    {
        return _mintOneRandomBunicornWithStarAndElement(_minter, _stars, _element, _seed);
    }

    function _mintOneRandomBunicornWithStarAndElement(address _minter, uint8 _stars, uint8 _element, uint256 _seed)
        private returns(uint256)
    {
        require(_stars < 8, "too many stars");

        (uint16 attr1, uint16 attr2, uint16 attr3) = _getRandomAttributes(_stars, _seed);
        uint16 properties = _getRandomProperties(_stars, _element, _seed);
        return bunicornsContract.mintOneBunicornBySpecs(_minter, properties, attr1, attr2, attr3);
    }

    function _getRandomStars(uint256 _seed) private pure returns (uint8) {
        uint256 roll = _seed % 10000;

        // 1-star: 4400 / 10000 ~ 44%
        if (roll >= 5600) {  
            return 0;
        }

        // 2-star: (5600 - 2100) / 10000 ~ 35%
        if (roll >= 2100) {
            return 1;
        }

        // 3-star: (2100 - 600) / 10000 ~ 15%
        if (roll >= 600) {
            return 2;
        }

        // 4-star: (600 - 100) / 10000 ~ 5%
        if (roll >= 100) {
            return 3;
        }

        // 5-star: 100 / 10000 ~ 1%
        return 4;
    }

    function _getRandomProperties(uint8 _stars, uint8 _element, uint256 _seed) private pure returns (uint16) {
        return uint16((_stars & 0x7) // stars aren't randomized here!
            | ((_element & 0x3) << 3) // element aren't randomized here!
            | ((RandomUtil.randomSeededMinMax(0, 124, RandomUtil.combineSeeds(_seed, 2)) & 0x7F) << 5)); // attrPattern
    }

    function _getRandomAttributes(uint8 _stars, uint256 _seed) private pure returns (uint16, uint16, uint16) {
        uint16 minRoll = getMinAttributeOfGivenStar(_stars);
        uint16 maxRoll = getMaxAttributeOfGivenStar(_stars);
        uint8 attrCount = getAttributeCountOfGivenStar(_stars);

        uint16 attr1 = _getRandomAttr(minRoll, maxRoll, _seed, 11);
        uint16 attr2 = 0;
        uint16 attr3 = 0;

        if (attrCount > 1) {
            attr2 = _getRandomAttr(minRoll, maxRoll, _seed, 12);
        }

        if (attrCount > 2) {
            attr3 = _getRandomAttr(minRoll, maxRoll, _seed, 13);
        }

        return (attr1, attr2, attr3);
    }

    function _getRandomAttr(uint16 _minRoll, uint16 _maxRoll, uint256 _seed1, uint256 _seed2) private pure returns (uint16) {
        return uint16(
            RandomUtil.randomSeededMinMax(_minRoll, _maxRoll, RandomUtil.combineSeeds(_seed1, _seed2))
        );
    }

    function getMinAttributeOfGivenStar(uint256 _stars) private pure returns (uint16) {
        if (_stars == 0) {
            return 4;
        }
        if (_stars == 1) {
            return 180;
        }
        if (_stars == 2) {
            return 280;
        }
        if (_stars == 3) {
            return 200;
        }
        return 268;
    }

    function getMaxAttributeOfGivenStar(uint256 _stars) private pure returns (uint16) {
        if (_stars > 1) {
            return 400;
        }
        if (_stars > 0) {
            return 300;
        }
        return 200;
    }

    function getAttributeCountOfGivenStar(uint256 _stars) private pure returns (uint8) {
        if (_stars < 3) {
            return 1;
        }
        return uint8(_stars)-1;
    }
}