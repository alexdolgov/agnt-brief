// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IAuthModule} from "../interfaces/IAuthModule.sol";
import {IGo} from "../interfaces/IGo.sol";
import {IUniqueIdentity} from "../interfaces/IUniqueIdentity.sol";

contract Auth is IAuthModule {
    uint256[] allowedUID = [0, 1, 2, 3];

    address immutable uid;

    constructor(address _uid) {
        uid = _uid;
    }

    function authenticate(address usr) public view returns (bool) {
        for (uint256 i = 0; i < allowedUID.length; i++) {
            if (IUniqueIdentity(uid).balanceOf(usr, allowedUID[i]) > 0) {
                return true;
            }
        }
        return false;
    }
}
