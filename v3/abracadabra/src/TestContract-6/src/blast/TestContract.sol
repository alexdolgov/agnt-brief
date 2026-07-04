// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import {BlastYields} from "/blast/libraries/BlastYields.sol";
import {LibClone} from "solady/utils/LibClone.sol";

contract TestContract {
    error ErrZeroAddress();
    event Cloned(address indexed);

    bytes32 public slot;
    address public immutable governor;

    constructor(address governor_) {
        if (governor_ == address(0)) {
            revert ErrZeroAddress();
        }

        governor = governor_;
        init();
    }

    function init() public {
        BlastYields.configureDefaultClaimables(governor);
    }

    function spendGas(uint loop) public {
        for (uint i = 0; i < loop; i++) {
            slot = keccak256(abi.encodePacked(slot, i));
        }
    }

    function clone() public returns (address deployed) {
        deployed = LibClone.clone(address(this));
        emit Cloned(deployed);
    }
}
