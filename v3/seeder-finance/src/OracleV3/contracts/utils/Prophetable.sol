// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


abstract contract Prophetable is OwnableUpgradeable {
    event ProphetSet(address account, bool isProphet);

    mapping(address => bool) public prophets;

    function __Prophetable_init() internal initializer {
        __Ownable_init();
    }

    function isProphet(address account) external view returns (bool) {
        return prophets[account];
    }

    function setProphet(address account, bool isProphet_) external onlyOwner {
        prophets[account] = isProphet_;

        emit ProphetSet(account, isProphet_);
    }

    modifier onlyProphet() {
        require(prophets[msg.sender], "Prophet: Caller is not prophet");
        _;
    }
}