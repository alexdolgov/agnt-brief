// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

import "@openzeppelin/contracts/proxy/Proxy.sol";
import "../interfaces/IPAllAction.sol";
import "../interfaces/IDiamondLoupe.sol";
import "../interfaces/IDiamondCut.sol";

// solhint-disable no-empty-blocks
contract PendleRouter is Proxy, IDiamondLoupe {
    address internal immutable ACTION_ADD_REMOVE_LIQ;
    address internal immutable ACTION_SWAP_PT;
    address internal immutable ACTION_SWAP_YT;
    address internal immutable ACTION_MISC;

    event DiamondCut(IDiamondCut.FacetCut[] _diamondCut, address _init, bytes _calldata);

    constructor(
        address _ACTION_ADD_REMOVE_LIQ,
        address _ACTION_SWAP_PT,
        address _ACTION_SWAP_YT,
        address _ACTION_MISC
    ) {
        ACTION_ADD_REMOVE_LIQ = _ACTION_ADD_REMOVE_LIQ;
        ACTION_SWAP_PT = _ACTION_SWAP_PT;
        ACTION_SWAP_YT = _ACTION_SWAP_YT;
        ACTION_MISC = _ACTION_MISC;
        _emitEvents();
    }

    function _emitEvents() internal {
        Facet[] memory facets_ = facets();

        uint256 nFacets = facets_.length;

        IDiamondCut.FacetCut[] memory cuts = new IDiamondCut.FacetCut[](nFacets);
        for (uint256 i; i < nFacets;) {
            cuts[i].facetAddress = facets_[i].facetAddress;
            cuts[i].action = IDiamondCut.FacetCutAction.Add;
            cuts[i].functionSelectors = facets_[i].functionSelectors;
            unchecked {
                ++i;
            }
        }

        emit DiamondCut(cuts, address(0), "");
    }

    receive() external payable virtual override {}

    /// @notice Gets all facet addresses and their four byte function selectors.
    /// @return facets_ Facet
    function facets() public view returns (Facet[] memory facets_) {
        address[] memory facetAddresses_ = facetAddresses();
        uint256 numFacets = facetAddresses_.length;

        facets_ = new Facet[](numFacets);
        for (uint256 i; i < numFacets;) {
            facets_[i].facetAddress = facetAddresses_[i];
            facets_[i].functionSelectors = facetFunctionSelectors(facetAddresses_[i]);
            unchecked {
                i++;
            }
        }
    }

    function facetFunctionSelectors(address facet) public view returns (bytes4[] memory res) {
        if (facet == address(this)) {
            res = new bytes4[](4);
            res[0] = 0x52ef6b2c; // facetAddresses
            res[1] = 0x7a0ed627; // facets
            res[2] = 0xadfca15e; // facetFunctionSelectors
            res[3] = 0xcdffacc6; // facetAddress
        }
        if (facet == ACTION_ADD_REMOVE_LIQ) {
            res = new bytes4[](12);
            res[0] = 0x17eb5cce; // addLiquiditySingleToken
            res[1] = 0x1ab7a03e; // removeLiquiditySingleSy
            res[2] = 0x2756ce06; // addLiquidityDualTokenAndPt
            res[3] = 0x30f9e6c8; // addLiquiditySinglePt
            res[4] = 0x3dbe1c55; // addLiquiditySingleTokenKeepYt
            res[5] = 0x5d8e6054; // removeLiquiditySingleToken
            res[6] = 0x844384aa; // addLiquiditySingleSyKeepYt
            res[7] = 0x888a2843; // addLiquiditySingleSy
            res[8] = 0x97ee279e; // addLiquidityDualSyAndPt
            res[9] = 0xb00f09d7; // removeLiquidityDualTokenAndPt
            res[10] = 0xb7d75b8b; // removeLiquidityDualSyAndPt
            res[11] = 0xbce3faa7; // removeLiquiditySinglePt
        }
        if (facet == ACTION_SWAP_YT) {
            res = new bytes4[](7);
            res[0] = 0x233548e7; // swapExactSyForYt
            res[1] = 0x287b21a2; // swapExactYtForToken
            res[2] = 0x423a1dac; // swapExactTokenForYt
            res[3] = 0x448b9b95; // swapExactYtForPt
            res[4] = 0xc861a898; // swapExactPtForYt
            res[5] = 0xd91a37b0; // swapExactYtForSy
            res[6] = 0xfa483e72; // swapCallback
        }
        if (facet == ACTION_SWAP_PT) {
            res = new bytes4[](4);
            res[0] = 0x18300b27; // swapExactTokenForPt
            res[1] = 0x71ea75aa; // swapExactSyForPt
            res[2] = 0x82064435; // swapExactPtForSy
            res[3] = 0xf392f08d; // swapExactPtForToken
        }
        if (facet == ACTION_MISC) {
            res = new bytes4[](11);
            res[0] = 0x1a8631b2; // mintPyFromSy
            res[1] = 0x2e071dc6; // mintSyFromToken
            res[2] = 0x339748cb; // redeemPyToSy
            res[3] = 0x339a5572; // redeemSyToToken
            res[4] = 0x47f1de22; // redeemPyToToken
            res[5] = 0x60fc8466; // multicall
            res[6] = 0x7ad2c7af; // multicallRevert
            res[7] = 0x8ee52744; // callThenRevert
            res[8] = 0xacdb32df; // approveInf
            res[9] = 0xd0f42385; // mintPyFromToken
            res[10] = 0xf7e375e8; // redeemDueInterestAndRewards
        }
    }

    function facetAddress(bytes4 sig) public view returns (address) {
        if (sig < 0x7a0ed627) {
            if (sig < 0x339748cb) {
                if (sig < 0x233548e7) {
                    if (sig == 0x17eb5cce) return ACTION_ADD_REMOVE_LIQ; //addLiquiditySingleToken
                    if (sig == 0x18300b27) return ACTION_SWAP_PT; //swapExactTokenForPt
                    if (sig == 0x1a8631b2) return ACTION_MISC; //mintPyFromSy
                    if (sig == 0x1ab7a03e) return ACTION_ADD_REMOVE_LIQ; //removeLiquiditySingleSy
                } else {
                    if (sig < 0x287b21a2) {
                        if (sig == 0x233548e7) return ACTION_SWAP_YT; //swapExactSyForYt
                        if (sig == 0x2756ce06) return ACTION_ADD_REMOVE_LIQ; //addLiquidityDualTokenAndPt
                    } else {
                        if (sig == 0x287b21a2) return ACTION_SWAP_YT; //swapExactYtForToken
                        if (sig == 0x2e071dc6) return ACTION_MISC; //mintSyFromToken
                        if (sig == 0x30f9e6c8) return ACTION_ADD_REMOVE_LIQ; //addLiquiditySinglePt
                    }
                }
            } else {
                if (sig < 0x47f1de22) {
                    if (sig < 0x3dbe1c55) {
                        if (sig == 0x339748cb) return ACTION_MISC; //redeemPyToSy
                        if (sig == 0x339a5572) return ACTION_MISC; //redeemSyToToken
                    } else {
                        if (sig == 0x3dbe1c55) return ACTION_ADD_REMOVE_LIQ; //addLiquiditySingleTokenKeepYt
                        if (sig == 0x423a1dac) return ACTION_SWAP_YT; //swapExactTokenForYt
                        if (sig == 0x448b9b95) return ACTION_SWAP_YT; //swapExactYtForPt
                    }
                } else {
                    if (sig < 0x5d8e6054) {
                        if (sig == 0x47f1de22) return ACTION_MISC; //redeemPyToToken
                        if (sig == 0x52ef6b2c) return address(this); //facetAddresses
                    } else {
                        if (sig == 0x5d8e6054) return ACTION_ADD_REMOVE_LIQ; //removeLiquiditySingleToken
                        if (sig == 0x60fc8466) return ACTION_MISC; //multicall
                        if (sig == 0x71ea75aa) return ACTION_SWAP_PT; //swapExactSyForPt
                    }
                }
            }
        } else {
            if (sig < 0xb00f09d7) {
                if (sig < 0x888a2843) {
                    if (sig == 0x7a0ed627) return address(this); //facets
                    if (sig == 0x7ad2c7af) return ACTION_MISC; //multicallRevert
                    if (sig == 0x82064435) return ACTION_SWAP_PT; //swapExactPtForSy
                    if (sig == 0x844384aa) return ACTION_ADD_REMOVE_LIQ; //addLiquiditySingleSyKeepYt
                } else {
                    if (sig < 0x97ee279e) {
                        if (sig == 0x888a2843) return ACTION_ADD_REMOVE_LIQ; //addLiquiditySingleSy
                        if (sig == 0x8ee52744) return ACTION_MISC; //callThenRevert
                    } else {
                        if (sig == 0x97ee279e) return ACTION_ADD_REMOVE_LIQ; //addLiquidityDualSyAndPt
                        if (sig == 0xacdb32df) return ACTION_MISC; //approveInf
                        if (sig == 0xadfca15e) return address(this); //facetFunctionSelectors
                    }
                }
            } else {
                if (sig < 0xd0f42385) {
                    if (sig < 0xbce3faa7) {
                        if (sig == 0xb00f09d7) return ACTION_ADD_REMOVE_LIQ; //removeLiquidityDualTokenAndPt
                        if (sig == 0xb7d75b8b) return ACTION_ADD_REMOVE_LIQ; //removeLiquidityDualSyAndPt
                    } else {
                        if (sig == 0xbce3faa7) return ACTION_ADD_REMOVE_LIQ; //removeLiquiditySinglePt
                        if (sig == 0xc861a898) return ACTION_SWAP_YT; //swapExactPtForYt
                        if (sig == 0xcdffacc6) return address(this); //facetAddress
                    }
                } else {
                    if (sig < 0xf392f08d) {
                        if (sig == 0xd0f42385) return ACTION_MISC; //mintPyFromToken
                        if (sig == 0xd91a37b0) return ACTION_SWAP_YT; //swapExactYtForSy
                    } else {
                        if (sig == 0xf392f08d) return ACTION_SWAP_PT; //swapExactPtForToken
                        if (sig == 0xf7e375e8) return ACTION_MISC; //redeemDueInterestAndRewards
                        if (sig == 0xfa483e72) return ACTION_SWAP_YT; //swapCallback
                    }
                }
            }
        }
        revert Errors.RouterInvalidAction(sig);
        // NUM_FUNC: 38 AVG:4.74 WORST_CASE:6 STOP_BRANCH:4
    }

    function facetAddresses() public view returns (address[] memory) {
        address[] memory res = new address[](5);
        res[0] = address(this);
        res[1] = ACTION_ADD_REMOVE_LIQ;
        res[2] = ACTION_SWAP_YT;
        res[3] = ACTION_SWAP_PT;
        res[4] = ACTION_MISC;
        return res;
    }

    function _implementation() internal view override returns (address) {
        return facetAddress(msg.sig);
    }
}
