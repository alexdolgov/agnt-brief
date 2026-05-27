// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import {ICoordinator} from "../interfaces/ICoordinator.sol";
import {IUserProxyImplementation} from "../interfaces/IUserProxyImplementation.sol";

/// @notice ERC20 Token transfer hook adapter for the agave ConditionalSwapper.
/// @author Luigy-Lemon
/// @dev Requires ERC20 token where this adapter is imported to have the _Transfer() function with support for _beforeTokenTransfer and _afterTokenTransfer.
abstract contract ConditionalSwapperAdapterUpgradeable {
    ICoordinator ConditionalSwapper;
    address GPv2Settlement;

    function updateConditionalSwapper(address newRegistryAddress) internal {
        ConditionalSwapper = ICoordinator(newRegistryAddress);
        GPv2Settlement = ConditionalSwapper.GPv2Settlement();
    }

    /*//////////////////////////////////////////////////////////////
                        TRANSFER HOOKS
    //////////////////////////////////////////////////////////////*/

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal {
        // check if receiver is the GPv2Settlement contract to determine if there's a chance the Agave Swapper is being used
        if (to == GPv2Settlement) {
            //check if sender is a proxy associated with a registered user account
            address proxyOwner = ConditionalSwapper.proxyOwnerAddress(from);
            if (proxyOwner != address(0)) {
                //initiates interaction with user proxy before settlement with the the token being sold and the amount being sent which is relevant for identifying a orderUId by iterating the "filledAmount[orderUId]"
                IUserProxyImplementation(from).beforeSettlement(
                    address(this)
                );
            }
        }
    }

    function _afterTokenTransfer(
		address from,
		address to,
		uint256 amount
	) internal {
		// check if sender is the GPv2Settlement contract to determine if there's a chance the Agave Swapper is being used
		if (from == GPv2Settlement){ 
			//check if receiver is a proxy associated with a registered user account
        	address proxyOwner = ConditionalSwapper.proxyOwnerAddress(to);
			if (proxyOwner != address(0)){ 
				//initiates interaction with user proxy after settlement with the token bought and the amount received which is relevant for identifying orderUId by iterating "filledAmount[orderUId]"
				IUserProxyImplementation(to).afterSettlement(address(this));				
			}
		}
	}
}
