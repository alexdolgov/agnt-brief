// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../Chainlink/AutomationCompatibleInterface.sol";

interface ITarget {
    function check() external view returns (bool canExec, bytes memory execPayload);
    function run() external;
}


contract GaugeSimpleFeeDistributionAutomation is Ownable, AutomationCompatibleInterface {

    using SafeERC20 for IERC20;

    ITarget public target;

    constructor() {
        target = ITarget(0x8646eCb742649E8E3803Aaf619Ee3EECB851B0FE);
    }

    /// @notice check if automation can be called
    function checkUpkeep(bytes memory /*checkdata*/) public view override returns (bool upkeepNeeded, bytes memory performData){
        return (_check(), "");
    }
    
    /// @notice internal checks if automation can run
    function _check() internal view returns(bool) {
        (bool status, ) = target.check();
        return status;
    }

    /// @notice Run automation
    function performUpkeep(bytes calldata /*performData*/) external override {
        target.run();
    }

}