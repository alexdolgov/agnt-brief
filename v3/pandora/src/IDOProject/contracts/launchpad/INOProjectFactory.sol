// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "@openzeppelin/contracts/utils/Create2.sol";
import  "./INOProject.sol";

contract INOProjectFactory {
    function createINO(
        uint _projectId,
        address _operator,
        address _userLevel,
        address _launchpad
    ) external returns(address) {
        address _projectAddress = _calculateAddress(_projectId, _operator);
        _initialize(_projectId, _operator, _userLevel, _projectAddress, _launchpad);
        return _projectAddress;

    }

    function _calculateAddress(uint _projectId, address _operator) internal returns(address) {
        bytes memory bytecode = type(INOProject).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(_projectId, _operator, block.timestamp));
        address _projectAddress = Create2.deploy(0, salt, bytecode);
        return _projectAddress;
    }

    function _initialize(
        uint _projectId,
        address _operator,
        address _userLevel,
        address _projectAddress,
        address _launchpad
    ) internal {
        bool check = INOProject(_projectAddress).initialize(_projectId, _operator, _userLevel, _launchpad);
        require(check, "deploy failed");
    }
}
