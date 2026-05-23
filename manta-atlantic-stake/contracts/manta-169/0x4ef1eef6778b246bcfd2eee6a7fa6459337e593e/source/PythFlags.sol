// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
import "../access/Governable.sol";

contract PythFlags is Governable {
    mapping(address => bool) public flags;

    function getFlag(address subject) external view returns (bool) {
        return flags[subject];
    }

    function modifyFlag(address subject, bool raise) public onlyGov {
        flags[subject] = raise;
    }
}
