// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface ITokenTemplate {

    function mint(address to, uint256 amount) external;

    function burn(address account, uint256 value) external;

    function setBlacklistStatus(address _address, bool _isBlacklisted) external;

    function totalSupply() external view returns (uint256);

    function blacklistedAddresses(address _address) external view returns (bool);


    function approve(address spender, uint256 amount) external returns (bool);

    function transfer(address to, uint256 amount) external returns (bool);

    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    function balanceOf(address account) external view returns (uint256);

    function setWhitelistedAddresses(Whitelist calldata whitelist) external;

    function extendWhitelist(address[] calldata _addresses) external;

    function setCreator(address _creator) external;

    struct Whitelist {
        address[] addresses;
        uint256 startTsOffset;
        uint256 duration;
        uint256 transferLimit;
        uint256 balanceLimit;
    }


    function getWhiteListInformation(address _user) external view returns (bool isWhitelisted, uint256 whiteListOffTs, uint256 maxAmount, uint256 maxBalance, uint256 receivedAmount, uint256 startTimestamp);
}
