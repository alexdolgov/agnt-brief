// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/IAddressesProvider.sol";
import "./ResellPoolFactory.sol";

contract KycStore is Initializable {
    mapping(address => bool) public users;
    mapping(address => string) public userCountries;
    mapping(address => uint) public approvedAt;
    mapping(address => uint) public disabledAt;
    IAddressesProvider public addressesProvider;
    bool public isKycEnabledInTheApp;
    mapping(string => bool) public restrictedIso3Countries;
    uint256 public initialReward;

    event Approve(address user, uint timestamp);
    event Disable(address user, uint timestamp);
    event KycEnabledInTheAppChanged(bool isKycEnabledInTheApp);
    event DeniedCountryAdded(string iso3Country);
    event AllowedCountryAdded(string iso3Country);

    modifier onlyKycAdmin() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.can(msg.sender, IAccessManager.Action.ManageKycList), "Permission denied: ManageKycList");
        _;
    }

    modifier onlyAppConfigurator() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.can(msg.sender, IAccessManager.Action.ConfigureApp), "Permission denied: ConfigureApp");
        _;
    }

    function initialize(address _addressesProvider) external initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
        isKycEnabledInTheApp = true;
    }

    function getVersion() external pure returns (uint256) {
        return 7;
    }

    function isOperable(address userAddress) public view returns (bool) {
        if (!isKycEnabledInTheApp) {
            return true;
        }
        return users[userAddress] && !restrictedIso3Countries[userCountries[userAddress]];
    }

    function approveWithCountry(address payable userAddress, string calldata country) public payable onlyKycAdmin {
        users[userAddress] = true;
        userCountries[userAddress] = country;
        uint256 reward = availableRewardFor(userAddress);
        if (reward > 0) {
            (bool sent, bytes memory data) = userAddress.call{value: initialReward}("");
            // we do not send ether if it's not provided by TX sender - that's ok
            // ... and we do not throw an exception here
        }
        approvedAt[userAddress] = block.timestamp;
        emit Approve(userAddress, block.timestamp);
    }

    function disable(address userAddress) public onlyKycAdmin {
        users[userAddress] = false;
        disabledAt[userAddress] = block.timestamp;
        emit Disable(userAddress, block.timestamp);
    }

    function withdraw(address payable userAddress) public onlyAppConfigurator {
        uint256 amount = address(this).balance;
        require(amount > 0, "Empty balance");

        (bool sent, ) = userAddress.call{value: amount}("");
        require(sent, "KycStore: Failed to withdraw Ether");
    }

    function setInitialReward(uint256 reward) public onlyAppConfigurator {
        initialReward = reward;
    }

    function availableRewardFor(address userAddress) public view returns (uint256) {
        if (userAddress.balance < initialReward && approvedAt[userAddress] == 0) {
            // to not pay reward twice
            return initialReward;
        } else {
            return 0;
        }
    }

    function setIsKycEnabledInTheApp(bool _isEnabledInTheApp) public onlyAppConfigurator {
        isKycEnabledInTheApp = _isEnabledInTheApp;
        emit KycEnabledInTheAppChanged(_isEnabledInTheApp);
    }

    function denyIso3Country(string calldata countryIso3) public onlyAppConfigurator {
        restrictedIso3Countries[countryIso3] = true;
        emit DeniedCountryAdded(countryIso3);
    }

    function allowIso3Country(string calldata countryIso3) public onlyAppConfigurator {
        restrictedIso3Countries[countryIso3] = false;
        emit AllowedCountryAdded(countryIso3);
    }
}
