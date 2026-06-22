// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

abstract contract TrustCallerUpgradeable is OwnableUpgradeable {
    event TrustCallerSet(address caller, bool isTrusted);

    mapping(address => bool) private _trustCallers;
    
    function __TrustCallerUpgradeable_init_chained() internal initializer () {
        __Ownable_init();
    }

    function isTrustCaller(address contractAddress) external view returns (bool) {
        return _trustCallers[contractAddress];
    }

    function setTrustCaller(address callerAddress, bool isTrusted) external onlyOwner {
        _trustCallers[callerAddress] = isTrusted;

        emit TrustCallerSet(callerAddress, isTrusted);
    }

    modifier onlyTrustCaller() {
        require(_trustCallers[msg.sender], "Caller is not trust");
        _;
    }
}