//SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import { UFixed18 } from "@equilibria/root/number/types/UFixed18.sol";
import { Token18 } from "@equilibria/root/token/types/Token18.sol";
import { UFixed6 } from "@equilibria/root/number/types/UFixed6.sol";
import { Token6 } from "@equilibria/root/token/types/Token6.sol";

interface IERC3156FlashBorrower {
    function onFlashLoan(
        address initiator,
        Token18 token,
        UFixed18 amount,
        UFixed18 fee,
        bytes calldata data
    ) external returns (bytes32);
}

interface IERC3156FlashBorrower6 {
    function onFlashLoan(
        address initiator,
        Token6 token,
        UFixed6 amount,
        UFixed6 fee,
        bytes calldata data
    ) external returns (bytes32);
}
