// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./TradingCompetitionSpot.sol";

/// @title TC Spot Factory
/// @author Prometheus, Perseus - Thena Finance
/// @notice This contract deploys the SPOT trading competition
contract TradingCompetitionSpotFactory  {

    address public manager;
   
    constructor(address _manager) {
        require(_manager != address(0));
        manager = _manager;
    }

    modifier onlyManager() {
        require(msg.sender == manager, 'TCSF: not manager');
        _;
    }

    function deployTradingCompetition(address _owner, uint _id) external onlyManager returns(address) {
        return address( new TradingCompetitionSpot(_owner, manager, _id) );
    }
     

}
