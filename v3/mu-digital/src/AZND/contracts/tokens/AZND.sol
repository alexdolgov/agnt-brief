// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { OFTBaseUpgradeable, Errors } from "../commons/OFTBaseUpgradeable.sol";
import { IAccessManager } from "../interfaces/IAccessManager.sol";

/**
 * @title AZND
 * @notice ERC20 representation of the token on a spoke chain for cross-chain functionality
 * @dev This contract represents the tokens on spoke chains. It inherits from
 * LayerZero's OFT (Omnichain Fungible Token) to enable seamless cross-chain transfers of
 * tokens between the hub chain and spoke chains. This contract is designed to work
 * with ERC4626-compliant vaults, enabling standardized cross-chain vault interactions.
 *
 * Token ownership can be redeemed for the underlying asset on the hub chain. The OFT
 * mechanism ensures that tokens maintain their value and can be freely moved across
 * supported chains while preserving the vault's accounting integrity.
 */
contract AZND is OFTBaseUpgradeable {
    constructor(address lzEndpoint) OFTBaseUpgradeable(lzEndpoint) {}

    /**
     * @dev Modifier to restrict access to certain functions to the admin(MANAGER_AZND) role.
     **/
    modifier onlyAdmin() override {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_AZND"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }
}
