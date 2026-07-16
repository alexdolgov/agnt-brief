// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../chainlink/AutomationCompatible.sol";
import "../interfaces/IMinter.sol";
import "../interfaces/IVoter.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

contract EpochController is AutomationCompatibleInterface, Ownable2StepUpgradeable  {

    address public automationRegistry;

    address public minter;
    address public voter;


    constructor() {}

    function initialize(address _minter, address _voter, address _automationRegistry) public initializer {
        __Ownable_init();
        minter = _minter;
        voter = _voter;
        automationRegistry = _automationRegistry;
    }


    function checkUpkeep(bytes memory /*checkdata*/) public view override returns (bool upkeepNeeded, bytes memory /*performData*/) {
        upkeepNeeded = IMinter(minter).check();
    }

    function performUpkeep(bytes calldata /*performData*/) external override {
        require(msg.sender == automationRegistry || msg.sender == owner(), 'cannot execute');
        (bool upkeepNeeded, ) = checkUpkeep('0');
        require(upkeepNeeded, "condition not met");
        IVoter(voter).distributeAll();
    }

    function setAutomationRegistry(address _automationRegistry) external onlyOwner {
        require(_automationRegistry != address(0));
        automationRegistry = _automationRegistry;
    }

    function setVoter(address _voter) external onlyOwner {
        require(_voter != address(0));
        voter = _voter;
    }

    function setMinter(address _minter ) external onlyOwner {
        require(_minter != address(0));
        minter = _minter;
    }



}