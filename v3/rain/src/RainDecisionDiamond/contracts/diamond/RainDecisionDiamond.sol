// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IDiamondCut } from "./dependencies/diamond/interfaces/IDiamondCut.sol";
import { Diamond } from "./dependencies/diamond/Diamond.sol";

/**
 * @title RainDecisionDiamond
 * @author Rain Team
 * @notice Core diamond contract for the Rain Decision protocol.
 * @dev Implements the EIP-2535 Diamond standard and serves as the central execution and storage hub for all market,
 * utility, and administrative facets. This contract is responsible for facet management and delegatecall routing of
 * shared application storage.
 */
contract RainDecisionDiamond is Diamond {
    /* ========================== CONSTRUCTOR ========================== */

    /**
     * @dev Executes facet cuts and optionally runs initialization logic using delegatecall.
     * @param cuts_ Initial set of facet cuts to apply.
     * @param init_ Address of the contract or facet used for initialization.
     * @param data_ Calldata executed on `init_` using delegatecall.
     */
    constructor(IDiamondCut.FacetCut[] memory cuts_, address init_, bytes memory data_) Diamond(cuts_, init_, data_) {}
}
