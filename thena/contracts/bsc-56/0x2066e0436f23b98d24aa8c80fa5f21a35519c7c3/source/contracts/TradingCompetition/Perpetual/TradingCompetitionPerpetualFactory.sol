// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "./TradingCompetitionPerpetualAccountManager.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IManager {
    function accountImplementation() external view returns(bytes calldata);
}

/// @title TC Spot Factory
/// @author Prometheus/Perseus - Thena Finance
/// @notice This contract deploys the PERP trading competition
contract TradingCompetitionPerpetualFactory is Ownable {

    address public manager;
    address public symmioaddress;
    
    constructor(address _manager, address _symmioaddress) {
        require(_manager != address(0));
        manager = _manager;
        symmioaddress = _symmioaddress;
    }

    modifier onlyManager() {
        require(msg.sender == manager, 'TCPF: not manager');
        _;
    }

    function deployTradingCompetition(address creator, uint _id, bytes calldata accountimplementation) external onlyManager returns(address perp_tc) {
        // constructor(address admin, uint _id, address _perpManager, address symmioAddress_,bytes memory accountImplementation_) {
        return address( new TradingCompetitionPerpetualAccountManager(creator, _id, manager, symmioaddress, accountimplementation) );
    }


    function setSymmio(address _symmio) external onlyOwner {
        require(_symmio != address(0));
        symmioaddress = _symmio;
    }


}
