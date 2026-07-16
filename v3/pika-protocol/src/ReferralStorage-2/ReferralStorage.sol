/**
 *Submitted for verification at Optimistic.Etherscan.io on 2023-09-24
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IReferralStorage {
    function codeOwners(bytes32 _code) external view returns (address);
    function traderReferralCodes(address _account) external view returns (bytes32);
    function referrerDiscountRates(address _account) external view returns (uint256);
    function referrerTiers(address _account) external view returns (uint256);
    function getTraderReferralInfo(address _account) external view returns (bytes32, address);
    function setTraderReferralCode(address _account, bytes32 _code) external;
    function setTier(uint256 _tierId, uint256 _rebateRate, uint256 _discountRate) external;
    function setReferrerTier(address _referrer, uint256 _tierId) external;
    function govSetCodeOwner(bytes32 _code, address _newAccount) external;
}

contract Governable {
    address public gov;

    constructor() public {
        gov = msg.sender;
    }

    modifier onlyGov() {
        require(msg.sender == gov, "Governable: forbidden");
        _;
    }

    function setGov(address _gov) external onlyGov {
        gov = _gov;
    }
}


// adapted from https://github.com/gmx-io/gmx-contracts/blob/master/contracts/referrals/ReferralStorage.sol
contract ReferralStorage is Governable, IReferralStorage {

    struct Tier {
        uint256 rebateRate; // e.g. 1000 for 10%
        uint256 discountRate; // e.g. 2000 for 20%
    }

    uint256 public constant BASIS_POINTS = 10000;

    mapping (address => uint256) public override referrerDiscountRates; // to override default value in tier
    mapping (address => uint256) public override referrerTiers; // link between user <> tier
    mapping (uint256 => Tier) public tiers;

    mapping (address => bool) public isHandler;

    mapping (bytes32 => address) public override codeOwners;
    mapping (address => bytes32) public override traderReferralCodes;

    event SetHandler(address handler, bool isActive);
    event SetTraderReferralCode(address account, bytes32 code);
    event SetTier(uint256 tierId, uint256 rebateRate, uint256 discountRate);
    event SetReferrerTier(address referrer, uint256 tierId);
    event SetReferrerDiscountRate(address referrer, uint256 discountRate);
    event RegisterCode(address account, bytes32 code);
    event SetCodeOwner(address account, address newAccount, bytes32 code);
    event GovSetCodeOwner(bytes32 code, address newAccount);

    modifier onlyHandler() {
        require(isHandler[msg.sender], "ReferralStorage: forbidden");
        _;
    }

    function setHandler(address _handler, bool _isActive) external onlyGov {
        isHandler[_handler] = _isActive;
        emit SetHandler(_handler, _isActive);
    }

    function setTier(uint256 _tierId, uint256 _rebateRate, uint256 _discountRate) external override onlyGov {
        require(_rebateRate <= BASIS_POINTS, "ReferralStorage: invalid rebateRate");
        require(_discountRate <= BASIS_POINTS, "ReferralStorage: invalid discountRate");

        Tier memory tier = tiers[_tierId];
        tier.rebateRate = _rebateRate;
        tier.discountRate = _discountRate;
        tiers[_tierId] = tier;
        emit SetTier(_tierId, _rebateRate, _discountRate);
    }

    function setReferrerTier(address _referrer, uint256 _tierId) external override onlyGov {
        referrerTiers[_referrer] = _tierId;
        emit SetReferrerTier(_referrer, _tierId);
    }

    function setReferrerDiscountRate(uint256 _discountRate) external {
        require(_discountRate <= BASIS_POINTS, "ReferralStorage: invalid discountRate");

        referrerDiscountRates[msg.sender] = _discountRate;
        emit SetReferrerDiscountRate(msg.sender, _discountRate);
    }

    function setTraderReferralCode(address _account, bytes32 _code) external override onlyHandler {
        _setTraderReferralCode(_account, _code);
    }

    function setTraderReferralCodeByUser(bytes32 _code) external {
        _setTraderReferralCode(msg.sender, _code);
    }

    function registerCode(bytes32 _code) external {
        require(_code != bytes32(0), "ReferralStorage: invalid _code");
        require(codeOwners[_code] == address(0), "ReferralStorage: code already exists");

        codeOwners[_code] = msg.sender;
        emit RegisterCode(msg.sender, _code);
    }

    function setCodeOwner(bytes32 _code, address _newAccount) external {
        require(_code != bytes32(0), "ReferralStorage: invalid _code");

        address account = codeOwners[_code];
        require(msg.sender == account, "ReferralStorage: forbidden");

        codeOwners[_code] = _newAccount;
        emit SetCodeOwner(msg.sender, _newAccount, _code);
    }

    function govSetCodeOwner(bytes32 _code, address _newAccount) external override onlyGov {
        require(_code != bytes32(0), "ReferralStorage: invalid _code");

        codeOwners[_code] = _newAccount;
        emit GovSetCodeOwner(_code, _newAccount);
    }

    function getTraderReferralInfo(address _account) external override view returns (bytes32, address) {
        bytes32 code = traderReferralCodes[_account];
        address referrer;
        if (code != bytes32(0)) {
            referrer = codeOwners[code];
        }
        return (code, referrer);
    }

    function _setTraderReferralCode(address _account, bytes32 _code) private {
        traderReferralCodes[_account] = _code;
        emit SetTraderReferralCode(_account, _code);
    }
}