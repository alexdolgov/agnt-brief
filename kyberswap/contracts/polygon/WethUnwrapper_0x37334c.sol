// ============================================================
// FILE: src/extension/WethUnwrapper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/*
“Copyright (c) 2019-2021 1inch
Permission is hereby granted, free of charge, to any person obtaining a copy of this software
and associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:
The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE”.
*/

import '../offchain/interfaces/InteractiveNotificationReceiver.sol';
import '../offchain/interfaces/IWithdrawable.sol';

contract WethUnwrapper is InteractiveNotificationReceiver {
  // solhint-disable-next-line no-empty-blocks
  receive() external payable {}

  function notifyFillOrder(
    address, /* taker */
    address, /* makerAsset */
    address takerAsset,
    uint256, /* makingAmount */
    uint256 takingAmount,
    bytes calldata interactiveData
  ) external override {
    address payable makerAddress;
    // solhint-disable-next-line no-inline-assembly
    assembly {
      makerAddress := shr(96, calldataload(interactiveData.offset))
    }
    IWithdrawable(takerAsset).withdraw(takingAmount);
    makerAddress.call{value: takingAmount}(new bytes(0));
  }
}

// ============================================================
// FILE: src/offchain/interfaces/InteractiveNotificationReceiver.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title Interface for interactor which acts between `maker => taker` and `taker => maker` transfers.
interface InteractiveNotificationReceiver {
  /// @notice Callback method that gets called after taker transferred funds to maker but before
  /// the opposite transfer happened
  function notifyFillOrder(
    address taker,
    address makerAsset,
    address takerAsset,
    uint256 makingAmount,
    uint256 takingAmount,
    bytes memory interactiveData
  ) external;
}

// ============================================================
// FILE: src/offchain/interfaces/IWithdrawable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IWithdrawable {
  function withdraw(
    uint256 wad
  ) external;
}
