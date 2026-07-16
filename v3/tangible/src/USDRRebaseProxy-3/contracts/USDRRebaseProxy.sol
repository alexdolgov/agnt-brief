// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/interfaces/IERC20.sol";

import "./constants/addresses.sol";
import "./constants/roles.sol";

import "./AddressAccessor.sol";

contract USDRRebaseProxy is AddressAccessor {
    address[] public pools;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function addPool(address pool) external onlyRole(DEFAULT_ADMIN_ROLE) {
        pools.push(pool);
    }

    function triggerRebase(uint256 depositAmount)
        external
        onlyRole(CONTROLLER_ROLE)
    {
        (address underlying, address treasury) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(UNDERLYING_ADDRESS, TREASURY_ADDRESS)
            ),
            (address, address)
        );
        if (depositAmount > 0) {
            IERC20(underlying).transferFrom(
                msg.sender,
                address(this),
                depositAmount
            );
            IERC20(underlying).approve(treasury, depositAmount);
        }
        bool success;
        bytes memory result;
        (success, result) = treasury.call(
            abi.encodeWithSelector(
                USDRRebaseProxy.triggerRebase.selector,
                depositAmount
            )
        );
        if (success == false) {
            assembly {
                revert(add(result, 32), mload(result))
            }
        }
        address[] memory pools_ = pools;
        for (uint256 i = pools_.length; i > 0; ) {
            i--;
            (success, result) = pools_[i].call(
                abi.encodeWithSignature("sync()")
            );
            if (success == false) {
                assembly {
                    revert(add(result, 32), mload(result))
                }
            }
        }
    }
}
