// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/IAddressesProvider.sol";

contract KycStore is Initializable {
    mapping(address => bool) public users;
    mapping(address => string) public userCountries;
    mapping(address => uint) public approvedAt;
    mapping(address => uint) public disabledAt;
    IAddressesProvider public addressesProvider;
    bool public isKycEnabledInTheApp;
    mapping(string => bool) public restrictedIso3Countries;

    event Approve(address user, uint timestamp);
    event Disable(address user, uint timestamp);
    event KycEnabledInTheAppChanged(bool isKycEnabledInTheApp);
    event DeniedCountryAdded(string iso3Country);
    event AllowedCountryAdded(string iso3Country);

    modifier onlyKycAdmin() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isKycOracle(msg.sender), "KycStore: The caller is not KYC oracle");
        _;
    }

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "KycStore: The caller is not super oracle");
        _;
    }

    function initialize(address _addressesProvider) external initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
        isKycEnabledInTheApp = true;
    }

    function getVersion() external pure returns (uint256) {
        return 4;
    }

    function isOperable(address userAddress) public view returns (bool) {
        if (!isKycEnabledInTheApp) {
            return true;
        }
        return users[userAddress] && !restrictedIso3Countries[userCountries[userAddress]];
    }

    function approveWithCountry(address userAddress, string calldata country) public onlyKycAdmin {
        users[userAddress] = true;
        userCountries[userAddress] = country;
        approvedAt[userAddress] = block.timestamp;
        emit Approve(userAddress, block.timestamp);
    }

    function disable(address userAddress) public onlyKycAdmin {
        users[userAddress] = false;
        disabledAt[userAddress] = block.timestamp;
        emit Disable(userAddress, block.timestamp);
    }

    function setIsKycEnabledInTheApp(bool _isEnabledInTheApp) public onlyKycAdmin {
        isKycEnabledInTheApp = _isEnabledInTheApp;
        emit KycEnabledInTheAppChanged(_isEnabledInTheApp);
    }

    function denyIso3Country(string calldata countryIso3) public onlySuperOracle {
        restrictedIso3Countries[countryIso3] = true;
        emit DeniedCountryAdded(countryIso3);
    }

    function allowIso3Country(string calldata countryIso3) public onlySuperOracle {
        restrictedIso3Countries[countryIso3] = false;
        emit AllowedCountryAdded(countryIso3);
    }
}
