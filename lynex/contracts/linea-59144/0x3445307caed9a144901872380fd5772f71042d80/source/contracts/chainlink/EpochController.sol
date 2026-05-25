// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../chainlink/AutomationCompatible.sol";
import "../interfaces/IMinter.sol";
import "../interfaces/IVoter.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

contract EpochController is AutomationCompatibleInterface, Ownable2StepUpgradeable  {

    address public automationRegistry;

    IVoter public voter;

    IMinter public minter;
    // last time automation was called
    uint256 public lastCalledAt;
    // last time automation completed all distribution
    uint256 public lastCompletedAt;
    // delta from last lastCompletedAt and the previous
    uint256 public deltaTimestamp;
    // max number of gauges for batch (used to limit gas on each call)
    uint256 public maxLoops;
    // track pool length
    uint256 public index;


    constructor() {}

    function initialize(IMinter _minter, IVoter _voter, address _automationRegistry) public initializer {
        __Ownable_init();
        minter = _minter;
        voter = _voter;
        automationRegistry = _automationRegistry;
        lastCompletedAt = minter.active_period();
    }

    function checkUpkeep(bytes memory /*checkdata*/) public view override returns (bool upkeepNeeded, bytes memory /*performData*/) {
        //upkeepneeded should be true monday, friday at 14 UTC, wednesday at 18UTC
        //If more than 3 days have passed since lastCompletedAt we must update!
        upkeepNeeded = minter.check();
        if (block.timestamp - lastCompletedAt > 7 days) {
            upkeepNeeded = true;
        } 
    }

    function performUpkeep(bytes calldata /*performData*/) external override {
        require(msg.sender == automationRegistry || msg.sender == owner(), 'cannot execute');
        (bool upkeepNeeded, ) = checkUpkeep('0');
        require(upkeepNeeded, "condition not met");
        _performUpkeep();
    }

    function _performUpkeep() internal {
        lastCalledAt = block.timestamp;

        address[] memory tempGauges = new address[](maxLoops);
        uint256 i = 0;
        for (; i < maxLoops && index < voter.length(); i++) {
            address gauge = address(0x0);
            gauge = voter.gauges(voter.pools(index));

            // check wheter a gauge is alive and != address(0), else sub 1 by i. We need 20 clean gauge for batch
            if(gauge != address(0) && voter.isAlive(gauge)) tempGauges[i] = gauge;
            else i == 0? i = 0 : i--;
            
            index++;
        }
        
        if(i >= maxLoops) {
            voter.distribute(tempGauges);
        } else {
            address[] memory gauges = new address[](i);
            for(uint256 j = 0; j < i; j++) {
                gauges[j] = tempGauges[j];
            }
            if(gauges.length > 0)
                voter.distribute(gauges);
        }

        if(index >= voter.length()) {
            deltaTimestamp = block.timestamp - lastCompletedAt;
            lastCompletedAt = block.timestamp;
            index = 0;
        }
    }

    function setMaxLoops(uint256 _maxLoops) external onlyOwner {
        maxLoops = _maxLoops;
    }

    function setAutomationRegistry(address _automationRegistry) external onlyOwner {
        require(_automationRegistry != address(0));
        automationRegistry = _automationRegistry;
    }

    function setVoter(IVoter _voter) external onlyOwner {
        require(address(_voter) != address(0));
        voter = _voter;
    }

    function setMinter(address _minter ) external onlyOwner {
        require(_minter != address(0));
        minter = IMinter(_minter);
    }
}