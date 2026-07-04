// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC5267 } from "@openzeppelin/contracts/interfaces/IERC5267.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

import { LibEIP712 } from "../dependencies/openzeppelin/libraries/LibEIP712.sol";

import { LibIntrospection } from "../libraries/LibIntrospection.sol";

/**
 * @title MetadataFacet
 * @author Rain Team
 * @notice Exposes metadata and descriptive information about the diamond.
 * @dev Intended for introspection tooling. Does not modify state.
 */
contract MetadataFacet is IERC5267, IERC165 {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IERC5267
     */
    function eip712Domain()
        public
        view
        virtual
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        )
    {
        return LibEIP712.eip712Domain();
    }

    /**
     * @inheritdoc IERC165
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool) {
        return LibIntrospection.supportsInterface(interfaceId);
    }
}
