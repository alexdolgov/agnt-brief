// SPDX-License-Identifier: EXTRACTED
// Contract: UpOFT
// Address: 0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b
// Compiler: v0.8.30+commit.73712a01
// Source: Etherscan verified source (project files only, libraries excluded)
// Extracted: 2026-04-12

// ======================================================================
// FILE: src/UP/UpOFT.sol
// ======================================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

/**
 * @title UpOFT
 * @author Superform Foundation
 * @notice Native OFT representation of the UP token on non-Ethereum chains.
 * @dev Mints UP tokens when bridging in, burns when bridging out.
 *      Deploy this on chains (e.g., Base) where UP is not natively deployed.
 */
contract UpOFT is OFT {
    error NATIVE_TRANSFER_FAILED();
    error ADDRESS_NOT_VALID();

    /**
     * @notice Initializes the OFT with the LayerZero endpoint.
     * @param _lzEndpoint The LayerZero v2 endpoint address for this chain
     * @param _delegate The delegate capable of making OApp configurations (typically the owner)
     */
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFT("Superform", "UP", _lzEndpoint, _delegate) Ownable(_delegate) {

        if (_lzEndpoint == address(0) || _lzEndpoint.code.length == 0) {
            revert ADDRESS_NOT_VALID();
        }
     }

    function sweepNative(address payable to) external onlyOwner {
        (bool s, ) = to.call{value: address(this).balance}("");
        if(!s) revert NATIVE_TRANSFER_FAILED();
    }
}
