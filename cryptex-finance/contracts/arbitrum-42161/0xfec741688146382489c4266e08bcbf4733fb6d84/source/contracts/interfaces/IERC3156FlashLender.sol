//SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import { UFixed18 } from "@equilibria/root/number/types/UFixed18.sol";
import { Token18 } from "@equilibria/root/token/types/Token18.sol";
import { UFixed6 } from "@equilibria/root/number/types/UFixed6.sol";
import { Token6 } from "@equilibria/root/token/types/Token6.sol";
import { IERC3156FlashBorrower, IERC3156FlashBorrower6 } from "./IERC3156FlashBorrower.sol";

interface IERC3156FlashLender {
    function maxFlashLoan(Token18 token) external view returns (UFixed18);
    function flashFee(Token18 token, UFixed18 amount) external view returns (UFixed18);
    function flashLoan(IERC3156FlashBorrower receiver, Token18 token, UFixed18 amount, bytes calldata data) external returns (bool);
}

interface IERC3156FlashLender6 {
    function maxFlashLoan(Token6 token) external view returns (UFixed6);
    function flashFee(Token6 token, UFixed6 amount) external view returns (UFixed6);
    function flashLoan(IERC3156FlashBorrower6 receiver, Token6 token, UFixed6 amount, bytes calldata data) external returns (bool);
}