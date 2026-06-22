// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IAuthModule} from "../interfaces/IAuthModule.sol";
import {IGo} from "../interfaces/IGo.sol";

contract Auth is IAuthModule {
    uint256[] allowedUID = [0, 1, 2, 3];

    address immutable go;

    constructor(address _go) {
        go = _go;
    }

    function authenticate(address usr) public view returns (bool) {
        return IGo(go).goOnlyIdTypes(usr, allowedUID);
    }
}
