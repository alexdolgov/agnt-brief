/*
  Copyright 2019-2025 StarkWare Industries Ltd.

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

import "starkware/solidity/components/ReferableFactRegistry.sol";
import "starkware/solidity/upgrade/BaseCallProxy.sol";
import "starkware/solidity/components/Roles.sol";
import "starkware/solidity/libraries/RolesLib.sol";
import "starkware/solidity/libraries/NamedStorage8.sol";

/**
  CallProxy is a 'call' based proxy, implementing the BaseCallProxy contract,
  in a manner that meets Sharp verifier needs.
  By default transactions are passed to the `callProxyImplementation` for processing,
  as calls, so that the state is recorded on the called contract and not on the proxy.

  Admin (AppGovernor) can assign a reference depth to an address (aka operator).
  In case the operator depth `D` is greater than 0, its transactions are passed not to the
  callProxyImplementation but to the implementation referenced by it, at the depth `D`.
  Upon depth assignment, the depth is checked for validity.

  The contract stores the address of the referenced fact registry set to the operator.
  Thus even if the depth of the reference changes upon upgrade, as long as it remains
  a part of the reference chain, and doesn't expire, it will remain valid.

  Expired reference will not be accessed to prevent fact discrepancy.
  (I.e. all facts that are registered on any part of the chain, are valid from its top).
*/
contract CallProxy is BaseCallProxy, Roles(false) {
    using Addresses for address;

    event CustomReferenceSet(address indexed operator, address customReference);
    event CustomReferenceCleared(address indexed operator);

    string internal constant CUSTOM_FR_SLOT_TAG = "CUSTOM_FR_SLOT_TAG";

    function getEffectiveFactRegistry(address operator) public view returns (address) {
        address impl = customFactReference()[operator];
        if (impl == address(0)) {
            return callProxyImplementation();
        }
        require(isValidReference(impl), "REFERENCE_NOT_VALID");
        return impl;
    }

    /**
      Storage variable access.
      Returns the operator depth mapping.
    */
    function customFactReference() internal pure returns (mapping(address => address) storage) {
        return NamedStorage.addressToAddressMapping(CUSTOM_FR_SLOT_TAG);
    }

    function CALL_PROXY_VERSION() public virtual override returns (string memory ver) {
        ver = "4.0.0";
    }

    function isInitialized() internal view override returns (bool) {
        return RolesLib.governanceRolesInitialized();
    }

    /*
      Required by ContractInitializer, Called by ProxySupport.
      Initialize roles, so appRoleAdmin can assign operators.
      No init data is expected in calldata.
    */
    function initializeContractState(bytes calldata data) internal override {
        require(data.length == 0, "UNEXPECTED_DATA");
        RolesLib.initialize();
    }

    /**
      Sets the operator depth
      The depth is the depth of the verifier reference for which the opertor's txs are passed.
      I.e. if the depth is 0, the operator's txs are passed to the callProxyImplementation.
      If the depth is 2, the operator's txs are passed
        to the implementation referenced
          by the implementation referenced
            by the callProxyImplementation.
      And so on.
    */
    function setReferenceDepth(address operator, uint256 depth) external onlyAppGovernor {
        address impl = getImplByDepth(depth);
        customFactReference()[operator] = impl;
        emit CustomReferenceSet(operator, impl);
    }

    /**
      Sets operator custom reference
      The custom reference is a custom fact registry that the operator's txs are passed to.
      It can be used to override the default reference chain.
      Reference validity is checked before setting.
      Valid reference means that it is a part of the reference chain, and hasn expire.
    */
    function setCustomReference(address operator, address customReference)
        external
        onlyAppGovernor
    {
        require(isValidReference(customReference), "REFERENCE_NOT_VALID");
        customFactReference()[operator] = customReference;
        emit CustomReferenceSet(operator, customReference);
    }

    /**
      Clears operator custom reference
      The operator's txs will be passed to the default reference chain.
    */
    function clearCustomReference(address operator) external onlyAppGovernor {
        delete customFactReference()[operator];
        emit CustomReferenceCleared(operator);
    }

    function implementation() internal view override returns (address _implementation) {
        _implementation = getEffectiveFactRegistry(msg.sender);
    }

    function getImplByDepth(uint256 depth) internal view returns (address _impl) {
        ReferableFactRegistry ref = ReferableFactRegistry(callProxyImplementation());
        for (uint256 i = 0; i < depth; i++) {
            require(ref.referralExpirationTime() > block.timestamp, "INVALID_DEPTH");
            ref = ReferableFactRegistry(address(ref.referenceFactRegistry()));
        }
        require(address(ref) != address(0), "INVALID_DEPTH");
        _impl = address(ref);
    }

    function isValidReference(address testedReference) internal view returns (bool) {
        ReferableFactRegistry ref = ReferableFactRegistry(callProxyImplementation());
        while (address(ref) != testedReference) {
            // Check if the reference is expired.
            // If it is - we cannot use it, and return false.
            if (ref.referralExpirationTime() < block.timestamp) {
                return false;
            }
            ref = ReferableFactRegistry(address(ref.referenceFactRegistry()));
            if (address(ref) == address(0)) {
                return false;
            }
        }
        return true;
    }
}
