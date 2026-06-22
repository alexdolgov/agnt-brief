/*
        [....     [... [......  [.. ..
      [..    [..       [..    [..    [..
    [..        [..     [..     [..         [..       [..
    [..        [..     [..       [..     [.   [..  [..  [..
    [..        [..     [..          [.. [..... [..[..   [..
      [..     [..      [..    [..    [..[.        [..   [..
        [....          [..      [.. ..    [....     [.. [...

    https://otsea.io
    https://t.me/OTSeaPortal
    https://twitter.com/OTSeaERC20
*/

// SPDX-License-Identifier: MIT
pragma solidity =0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import "contracts/libraries/OTSeaErrors.sol";

/// @title Abstract signature helper contract
abstract contract SignatureHelper is EIP712, Ownable {
    address public signer;

    error ExpiredSignature();
    error InvalidSignature();
    error SignatureRequired();

    event SignerUpdated(address signer);

    /**
     * @param _name Name of contract
     * @param _version Version of contract
     * @param _signer Address of signer
     */
    constructor(
        string memory _name,
        string memory _version,
        address _signer
    ) EIP712(_name, _version) {
        if (_signer == address(0)) revert OTSeaErrors.InvalidAddress();
        signer = _signer;
    }

    /**
     * @notice Set the signer
     * @param _signer New signer address
     */
    function setSigner(address _signer) external onlyOwner {
        if (_signer == address(0)) revert OTSeaErrors.InvalidAddress();
        signer = _signer;
        emit SignerUpdated(_signer);
    }

    /**
     * @param _data Reconstructed message
     * @param _signature Signature
     * @dev reverts if signature is invalid
     */
    function _checkSignature(
        bytes memory _data,
        bytes calldata _signature,
        uint256 _expiration
    ) internal view {
        if (_expiration < block.number) revert ExpiredSignature();
        if (
            !SignatureChecker.isValidSignatureNow(
                signer,
                _hashTypedDataV4(keccak256(_data)),
                _signature
            )
        ) revert InvalidSignature();
    }
}
