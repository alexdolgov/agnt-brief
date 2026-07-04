// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.6;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

import "../interfaces/IPartners.sol";

contract Partners_R1 is
    IPartners,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable
{
    /**
     * Variables
     */

    uint256 public percentOfDailyRewards; // 0 .. 100%

    address private _operator;
    /// @custom:oz-renamed-from _tokenHubAddress
    address private _poolAddress;

    mapping(address => uint256) private _partnersCodes;
    mapping(uint256 => address) private _codePartners;
    mapping(uint256 => uint256) private _partnersRewards;

    uint256 private _operatorCommission;
    uint256 private _totalPartnersRewards;
    address private _treasuryAddress;

    /**
     * Modifiers
     */

    modifier onlyOperator() {
        require(msg.sender == _operator, "Operator: not allowed");
        _;
    }

    modifier onlyPartner() {
        require(_partnersCodes[msg.sender] > 0, "Partner: not allowed");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address operator,
        address tokenHub,
        uint256 percent
    ) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __Ownable_init();
        _operator = operator;
        _poolAddress = tokenHub;
        percentOfDailyRewards = percent;
    }

    function addPartner(
        address partnerAddress,
        uint256 code
    ) external onlyOperator {
        require(code > 0 && partnerAddress != address(0), "wrong params");
        require(
            _codePartners[code] == address(0) &&
                _partnersCodes[partnerAddress] == 0,
            "already exists"
        );
        _codePartners[code] = partnerAddress;
        _partnersCodes[partnerAddress] = code;
        emit PartnerAdded(code, partnerAddress);
    }

    function ifExistPartnerByCode(
        uint256 referralCode
    ) external view override returns (bool) {
        address partner = _codePartners[referralCode];
        if (partner != address(0)) {
            return true;
        }
        return false;
    }

    function getPartnerCodeByAddress(
        address partnerAddress
    ) external view returns (uint256) {
        return _partnersCodes[partnerAddress];
    }

    function getPartnerAddressByCode(
        uint256 code
    ) external view returns (address) {
        return _codePartners[code];
    }

    function updatePartnerAddress(
        uint256 code,
        address newAddress
    ) external onlyOperator {
        require(newAddress != address(0), "new address is zero");
        address partnerAddress = _codePartners[code];
        require(partnerAddress != address(0), "has not got such partner");
        _codePartners[code] = newAddress;
        delete _partnersCodes[partnerAddress];
        _partnersCodes[newAddress] = code;
        emit PartnerAddressUpdated(code, newAddress);
    }

    function removePartner(uint256 code) external onlyOperator {
        address partnerAddress = _codePartners[code];
        delete _codePartners[code];
        delete _partnersCodes[partnerAddress];
        emit PartnerRemoved(code, partnerAddress);
    }

    function addRewardsForPartners(
        uint256[] calldata amounts,
        uint256[] calldata codes,
        uint256 operatorCommission
    ) external nonReentrant onlyOperator {
        uint256[] memory missing = new uint256[](codes.length);
        _operatorCommission += operatorCommission;
        for (uint256 i = 0; i < codes.length; i++) {
            uint256 code = codes[i];
            address partnerAddress = _codePartners[code];
            if (partnerAddress == address(0)) {
                missing[i] = code;
                continue;
            }
            _partnersRewards[code] += amounts[i];
            _totalPartnersRewards += amounts[i];
        }
        require(
            address(this).balance >=
                _operatorCommission + _totalPartnersRewards,
            "not enough balance on the contract"
        );
        emit RewardsAddedForPartners(codes, amounts, missing);
    }

    function addRewardsFor(
        uint256 amount,
        uint256 code
    ) external nonReentrant onlyOperator {
        // check existing of partner
        address partnerAddress = _codePartners[code];
        require(partnerAddress != address(0), "has not got such partner");
        _totalPartnersRewards += amount;
        require(
            address(this).balance >=
                _operatorCommission + _totalPartnersRewards,
            "not enough balance on the contract"
        );
        _partnersRewards[code] += amount;
        emit RewardsAddedFor(code, amount);
    }

    function getRewardsOf(uint256 code) public view returns (uint256) {
        return _partnersRewards[code];
    }

    function claimRewards() external nonReentrant onlyPartner {
        uint256 code = _partnersCodes[msg.sender];
        uint256 availableRewards = _partnersRewards[code];
        require(availableRewards > 0, "has not got rewards");
        _partnersRewards[code] = 0;
        _totalPartnersRewards -= availableRewards;
        address payable wallet = payable(msg.sender);
        bool success;
        assembly {
            success := call(10000, wallet, availableRewards, 0, 0, 0, 0)
        }
        require(success, "failed to send rewards to the partner");
        emit RewardsClaimed(code, availableRewards);
    }

    function withdrawOperatorCommission() external nonReentrant {
        require(_treasuryAddress != address(0), "treasury is not set");
        uint256 commission = _operatorCommission;
        require(commission > 0, "has not got commission");
        _operatorCommission = 0;
        address payable wallet = payable(_treasuryAddress);
        bool success;
        assembly {
            success := call(10000, wallet, commission, 0, 0, 0, 0)
        }
        require(success, "failed to send commission to the operator");
        emit CommissionWithdrawn(commission);
    }

    function getVariables() public view returns (address, address, uint256) {
        return (_poolAddress, _operator, _operatorCommission);
    }

    function changePoolAddress(address newPoolAddress) external onlyOwner {
        require(newPoolAddress != address(0), "zero address");
        require(
            AddressUpgradeable.isContract(newPoolAddress),
            "non-contract address"
        );
        _poolAddress = newPoolAddress;
        emit PoolAddressChanged(newPoolAddress);
    }

    function changeTreasuryAddress(
        address newTreasuryAddress
    ) external onlyOwner {
        require(newTreasuryAddress != address(0), "zero address");
        _treasuryAddress = newTreasuryAddress;
        emit TreasuryAddressChanged(newTreasuryAddress);
    }

    function changePercentOfDailyRewards(
        uint256 newPercent
    ) external onlyOwner {
        percentOfDailyRewards = newPercent;
        emit PercentOfDailyRewardsChanged(percentOfDailyRewards);
    }

    receive() external payable {
        if (msg.sender == _poolAddress) {
            emit RewardsReceived(msg.value);
        }
    }
}
