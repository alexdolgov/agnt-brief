// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {IDiamondCut} from "./../interfaces/IDiamondCut.sol";
import {LibDiamond} from "./../libraries/LibDiamond.sol";

/// @notice Minimal DiamondCutFacet which exposes diamondCut to the owner.
/// The heavy lifting is implemented in LibDiamond (diamondCut).
contract DiamondCutFacet is IDiamondCut {
    /// @notice Only the diamond owner can perform diamondCut
    function diamondCut(FacetCut[] calldata _diamondCut, address _init, bytes calldata _calldata) external override {
        // enforce ownership inside library
        LibDiamond.enforceIsFactory();
        LibDiamond.diamondCut(_diamondCut, _init, _calldata);
    }
}
