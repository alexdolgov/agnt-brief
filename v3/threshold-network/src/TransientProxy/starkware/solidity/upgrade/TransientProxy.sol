/*
  Copyright 2019-2024 StarkWare Industries Ltd.

  Licensed under the Apache License, Version 2.0 (the "License").
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  https://www.starkware.co/open-source-license/

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions
  and limitations under the License.
*/
// SPDX-License-Identifier: Apache-2.0.
pragma solidity ^0.8.0;

/**
  The TransientProxy contract implements delegation of calls to other contracts (`implementations`), with
  proper forwarding of return values and revert reasons.

  The TransientProxy contract is initialized with a fixed implementation that is set in deployment.
  The implementation cannot be altered post deployment,
  however it remains active only for a specified duration, also passed in deployment.

  The intention is that this proxy is a facade that makes the deployed contract temporary,

  Upon deployment, an optional bytes array is passed, and is delegated to the implementation address,
  as an initializer.
*/
contract TransientProxy {
    string public constant PROXY_VERSION = "4.5.0";
    address public immutable implementation;
    uint256 public immutable expiration;

    constructor(
        address implementation_address,
        bytes memory init_data,
        uint256 contractDuration
    ) {
        require(implementation_address != address(0x0), "NO_IMPLEMENTATION_PROVIDED");
        _initialize(implementation_address, init_data);
        implementation = implementation_address;
        expiration = expireAt(contractDuration);
    }

    function expireAt(uint256 duration) internal view returns (uint256) {
        // We want to allow duration = max_uint etc. so we should handle with care overflow.
        uint256 maxdiff = type(uint256).max - duration;
        return (maxdiff < block.timestamp) ? type(uint256).max : (block.timestamp + duration);
    }

    /*
      This method blocks delegation to initialize().
      Only delegate call to initialize() should be done only in deployment.
    */
    function initialize(
        bytes calldata /*data*/
    ) external pure {
        revert("CANNOT_CALL_INITIALIZE");
    }

    receive() external payable {
        revert("CONTRACT_NOT_EXPECTED_TO_RECEIVE");
    }

    /*
      Contract's default function. Delegates execution to the implementation contract.
      It returns back to the external caller whatever the implementation delegated code returns.
    */
    fallback() external payable {
        require(block.timestamp <= expiration, "CONTRACT_EXPIRED");
        address _implementation = implementation;

        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 for now, as we don't know the out size yet.
            let result := delegatecall(gas(), _implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /*
      If data is not empty, delegate-calls the initialize.
    */
    function _initialize(address _implementation, bytes memory data) private {
        if (data.length > 0) {
            // NOLINTNEXTLINE: low-level-calls controlled-delegatecall.
            (bool success, bytes memory returndata) = _implementation.delegatecall(
                abi.encodeWithSelector(this.initialize.selector, data)
            );
            require(success, string(returndata));
        }
    }
}
