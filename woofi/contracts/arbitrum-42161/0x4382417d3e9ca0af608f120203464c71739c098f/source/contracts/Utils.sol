// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";

contract Utils {
    using Address for address;

    function isContract(address account) external view returns (bool) {
        return account.isContract();
    }
}
