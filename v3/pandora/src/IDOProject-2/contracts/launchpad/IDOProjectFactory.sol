// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Create2.sol";
import  "./IDOProject.sol";

contract IDOProjectFactory {

    function createProject(uint _projectId, address _operator, address _userLevel) external returns(address) {
        bytes memory bytecode = type(IDOProject).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(_projectId, _operator));
        address _projectAddress = Create2.deploy(0, salt, bytecode);
        bool check = IDOProject(_projectAddress).initialize(_projectId, _operator, _userLevel);
        require(check, "deploy failed");
        return _projectAddress;
    }
}
