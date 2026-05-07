// ============================================================
// FILE: contracts/arbitrum/IBridge.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2021, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.6.11;

interface IBridge {
  event MessageDelivered(
    uint256 indexed messageIndex,
    bytes32 indexed beforeInboxAcc,
    address inbox,
    uint8 kind,
    address sender,
    bytes32 messageDataHash
  );

  event BridgeCallTriggered(
    address indexed outbox,
    address indexed destAddr,
    uint256 amount,
    bytes data
  );

  event InboxToggle(address indexed inbox, bool enabled);

  event OutboxToggle(address indexed outbox, bool enabled);

  function deliverMessageToInbox(
    uint8 kind,
    address sender,
    bytes32 messageDataHash
  ) external payable returns (uint256);

  function executeCall(
    address destAddr,
    uint256 amount,
    bytes calldata data
  ) external returns (bool success, bytes memory returnData);

  // These are only callable by the admin
  function setInbox(address inbox, bool enabled) external;

  function setOutbox(address inbox, bool enabled) external;

  // View functions

  function activeOutbox() external view returns (address);

  function allowedInboxes(address inbox) external view returns (bool);

  function allowedOutboxes(address outbox) external view returns (bool);

  function inboxAccs(uint256 index) external view returns (bytes32);

  function messageCount() external view returns (uint256);
}

// ============================================================
// FILE: contracts/arbitrum/IInbox.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2021, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.6.11;

import "./IMessageProvider.sol";

interface IInbox is IMessageProvider {
  function sendL2Message(bytes calldata messageData) external returns (uint256);

  function sendUnsignedTransaction(
    uint256 maxGas,
    uint256 gasPriceBid,
    uint256 nonce,
    address destAddr,
    uint256 amount,
    bytes calldata data
  ) external returns (uint256);

  function sendContractTransaction(
    uint256 maxGas,
    uint256 gasPriceBid,
    address destAddr,
    uint256 amount,
    bytes calldata data
  ) external returns (uint256);

  function sendL1FundedUnsignedTransaction(
    uint256 maxGas,
    uint256 gasPriceBid,
    uint256 nonce,
    address destAddr,
    bytes calldata data
  ) external payable returns (uint256);

  function sendL1FundedContractTransaction(
    uint256 maxGas,
    uint256 gasPriceBid,
    address destAddr,
    bytes calldata data
  ) external payable returns (uint256);

  function createRetryableTicket(
    address destAddr,
    uint256 arbTxCallValue,
    uint256 maxSubmissionCost,
    address submissionRefundAddress,
    address valueRefundAddress,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes calldata data
  ) external payable returns (uint256);

  function createRetryableTicketNoRefundAliasRewrite(
    address destAddr,
    uint256 arbTxCallValue,
    uint256 maxSubmissionCost,
    address submissionRefundAddress,
    address valueRefundAddress,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes calldata data
  ) external payable returns (uint256);

  function depositEth(uint256 maxSubmissionCost) external payable returns (uint256);

  function bridge() external view returns (address);

  function pauseCreateRetryables() external;

  function unpauseCreateRetryables() external;

  function startRewriteAddress() external;

  function stopRewriteAddress() external;
}

// ============================================================
// FILE: contracts/arbitrum/IMessageProvider.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2021, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.6.11;

interface IMessageProvider {
  event InboxMessageDelivered(uint256 indexed messageNum, bytes data);

  event InboxMessageDeliveredFromOrigin(uint256 indexed messageNum);
}

// ============================================================
// FILE: contracts/arbitrum/IOutbox.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2021, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.6.11;

interface IOutbox {
  event OutboxEntryCreated(
    uint256 indexed batchNum,
    uint256 outboxEntryIndex,
    bytes32 outputRoot,
    uint256 numInBatch
  );
  event OutBoxTransactionExecuted(
    address indexed destAddr,
    address indexed l2Sender,
    uint256 indexed outboxEntryIndex,
    uint256 transactionIndex
  );

  function l2ToL1Sender() external view returns (address);

  function l2ToL1Block() external view returns (uint256);

  function l2ToL1EthBlock() external view returns (uint256);

  function l2ToL1Timestamp() external view returns (uint256);

  function l2ToL1BatchNum() external view returns (uint256);

  function l2ToL1OutputId() external view returns (bytes32);

  function processOutgoingMessages(bytes calldata sendsData, uint256[] calldata sendLengths)
    external;

  function outboxEntryExists(uint256 batchNum) external view returns (bool);
}

// ============================================================
// FILE: contracts/l1/L1CrossDomainEnabled.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-or-later
// Copyright (C) 2021 Dai Foundation
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.11;

import "../arbitrum/IBridge.sol";
import "../arbitrum/IInbox.sol";
import "../arbitrum/IOutbox.sol";

abstract contract L1CrossDomainEnabled {
  IInbox public inbox;

  event TxToL2(address indexed from, address indexed to, uint256 indexed seqNum, bytes data);

  function __CrossDomainEnabled_init(address _inbox) internal {
    inbox = IInbox(_inbox);
  }

  modifier onlyL2Counterpart(address l2Counterpart) {
    // a message coming from the counterpart gateway was executed by the bridge
    address bridge = inbox.bridge();
    require(msg.sender == bridge, "NOT_FROM_BRIDGE");

    // and the outbox reports that the L2 address of the sender is the counterpart gateway
    address l2ToL1Sender = IOutbox(IBridge(bridge).activeOutbox()).l2ToL1Sender();
    require(l2ToL1Sender == l2Counterpart, "ONLY_COUNTERPART_GATEWAY");
    _;
  }

  function sendTxToL2(
    address target,
    address user,
    uint256 maxSubmissionCost,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes memory data
  ) internal returns (uint256) {
    uint256 seqNum = inbox.createRetryableTicket{value: msg.value}(
      target,
      0, // we always assume that l2CallValue = 0
      maxSubmissionCost,
      user,
      user,
      maxGas,
      gasPriceBid,
      data
    );
    emit TxToL2(user, target, seqNum, data);
    return seqNum;
  }

  function sendTxToL2NoAliasing(
    address target,
    address user,
    uint256 l1CallValue,
    uint256 maxSubmissionCost,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes memory data
  ) internal returns (uint256) {
    uint256 seqNum = inbox.createRetryableTicketNoRefundAliasRewrite{value: l1CallValue}(
      target,
      0, // we always assume that l2CallValue = 0
      maxSubmissionCost,
      user,
      user,
      maxGas,
      gasPriceBid,
      data
    );
    emit TxToL2(user, target, seqNum, data);
    return seqNum;
  }
}

// ============================================================
// FILE: contracts/l1/L1ITokenGateway.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-or-later
// Copyright (C) 2021 Dai Foundation
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.11;

// differences between L1 and L2 version of this interface:
// - payable modifier on outboundTransfer
// - events
interface L1ITokenGateway {
  event DepositInitiated(
    address l1Token,
    address indexed from,
    address indexed to,
    uint256 indexed sequenceNumber,
    uint256 amount
  );

  event WithdrawalFinalized(
    address l1Token,
    address indexed from,
    address indexed to,
    uint256 indexed exitNum,
    uint256 amount
  );

  function outboundTransfer(
    address token,
    address to,
    uint256 amount,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes calldata data
  ) external payable returns (bytes memory);

  function finalizeInboundTransfer(
    address token,
    address from,
    address to,
    uint256 amount,
    bytes calldata data
  ) external;

  // if token is not supported this should return 0x0 address
  function calculateL2TokenAddress(address l1Token) external view returns (address);

  // used by router
  function counterpartGateway() external view returns (address);
}

// ============================================================
// FILE: contracts/l1/L1USXGateway.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-or-later
// Copyright (C) 2021 Dai Foundation
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.11;

import "./L1ITokenGateway.sol";
import "../l2/L2ITokenGateway.sol";
import "./L1CrossDomainEnabled.sol";
import "../library/Initializable.sol";

interface TokenLike {
  function transferFrom(
    address _from,
    address _to,
    uint256 _value
  ) external returns (bool success);
}

contract L1USXGateway is Initializable, L1CrossDomainEnabled, L1ITokenGateway {
  // --- Auth ---
  mapping(address => uint256) public wards;

  function rely(address usr) external auth {
    wards[usr] = 1;
    emit Rely(usr);
  }

  function deny(address usr) external auth {
    wards[usr] = 0;
    emit Deny(usr);
  }

  modifier auth() {
    require(wards[msg.sender] == 1, "L1USXGateway/not-authorized");
    _;
  }

  event Rely(address indexed usr);
  event Deny(address indexed usr);

  address public l1USX;
  address public l2USX;
  address public l1Escrow;
  address public l1Router;
  address public l2Counterpart;
  uint256 public isOpen;

  event Closed();

  constructor(
    address _l2Counterpart,
    address _l1Router,
    address _inbox,
    address _l1USX,
    address _l2USX,
    address _l1Escrow
  ) public {
    initialize(_l2Counterpart, _l1Router, _inbox, _l1USX, _l2USX, _l1Escrow);
  }

  function initialize(
    address _l2Counterpart,
    address _l1Router,
    address _inbox,
    address _l1USX,
    address _l2USX,
    address _l1Escrow
  ) public initializer {
    isOpen = 1;
    wards[msg.sender] = 1;
    emit Rely(msg.sender);

    l1USX = _l1USX;
    l2USX = _l2USX;
    l1Escrow = _l1Escrow;
    l1Router = _l1Router;
    l2Counterpart = _l2Counterpart;

    __CrossDomainEnabled_init(_inbox);
  }

  function close() external auth {
    isOpen = 0;

    emit Closed();
  }

  function outboundTransfer(
    address l1Token,
    address to,
    uint256 amount,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes calldata data
  ) external payable override returns (bytes memory) {
    // do not allow initiating new xchain messages if bridge is closed
    require(isOpen == 1, "L1USXGateway/closed");
    require(l1Token == l1USX, "L1USXGateway/token-not-USX");

    // we use nested scope to avoid stack too deep errors
    address from;
    uint256 seqNum;
    bytes memory extraData;
    {
      uint256 maxSubmissionCost;
      (from, maxSubmissionCost, extraData) = parseOutboundData(data);
      // require(extraData.length == 0, "L1USXGateway/call-hook-data-not-allowed");

      TokenLike(l1Token).transferFrom(from, l1Escrow, amount);

      bytes memory outboundCalldata = getOutboundCalldata(l1Token, from, to, amount, extraData);
      seqNum = sendTxToL2(
        l2Counterpart,
        from,
        maxSubmissionCost,
        maxGas,
        gasPriceBid,
        outboundCalldata
      );
    }

    emit DepositInitiated(l1Token, from, to, seqNum, amount);

    return abi.encode(seqNum);
  }

  function getOutboundCalldata(
    address l1Token,
    address from,
    address to,
    uint256 amount,
    bytes memory data
  ) public pure returns (bytes memory outboundCalldata) {
    bytes memory emptyBytes = "";

    outboundCalldata = abi.encodeWithSelector(
      L2ITokenGateway.finalizeInboundTransfer.selector,
      l1Token,
      from,
      to,
      amount,
      abi.encode(emptyBytes, data)
    );

    return outboundCalldata;
  }

  function finalizeInboundTransfer(
    address l1Token,
    address from,
    address to,
    uint256 amount,
    bytes calldata data
  ) external override onlyL2Counterpart(l2Counterpart) {
    require(l1Token == l1USX, "L1USXGateway/token-not-USX");
    (uint256 exitNum, ) = abi.decode(data, (uint256, bytes));

    TokenLike(l1Token).transferFrom(l1Escrow, to, amount);

    emit WithdrawalFinalized(l1Token, from, to, exitNum, amount);
  }

  function parseOutboundData(bytes memory data)
    internal
    view
    returns (
      address from,
      uint256 maxSubmissionCost,
      bytes memory extraData
    )
  {
    if (msg.sender == l1Router) {
      // router encoded
      (from, extraData) = abi.decode(data, (address, bytes));
    } else {
      from = msg.sender;
      extraData = data;
    }
    // user encoded
    (maxSubmissionCost, extraData) = abi.decode(extraData, (uint256, bytes));
  }

  function calculateL2TokenAddress(address l1Token) external view override returns (address) {
    if (l1Token != l1USX) {
      return address(0);
    }

    return l2USX;
  }

  function counterpartGateway() external view override returns (address) {
    return l2Counterpart;
  }
}

// ============================================================
// FILE: contracts/l2/L2ITokenGateway.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-or-later
// Copyright (C) 2021 Dai Foundation
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.11;

interface L2ITokenGateway {
  event DepositFinalized(
    address indexed l1Token,
    address indexed from,
    address indexed to,
    uint256 amount
  );

  event WithdrawalInitiated(
    address l1Token,
    address indexed from,
    address indexed to,
    uint256 indexed l2ToL1Id,
    uint256 exitNum,
    uint256 amount
  );

  function outboundTransfer(
    address token,
    address to,
    uint256 amount,
    uint256 maxGas,
    uint256 gasPriceBid,
    bytes calldata data
  ) external returns (bytes memory);

  function finalizeInboundTransfer(
    address token,
    address from,
    address to,
    uint256 amount,
    bytes calldata data
  ) external;

  // if token is not supported this should return 0x0 address
  function calculateL2TokenAddress(address l1Token) external view returns (address);

  // used by router
  function counterpartGateway() external view returns (address);
}

// ============================================================
// FILE: contracts/library/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since a proxied contract can't have a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {UpgradeableProxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private _initialized;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        require(
            !_initialized,
            "Initializable: contract is already initialized"
        );

        _;

        _initialized = true;
    }
}
