// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

abstract contract SignatureResolver {
    function _checkSignOperator(
        bytes memory signature,
        string[] memory ipfsHashes,
        address signOperator
    ) internal view returns (bool) {
        string memory ipfsHashesString;
        for (uint256 i = 0; i < ipfsHashes.length; i++) {
            if (i > 0) {
                ipfsHashesString = string(
                    abi.encodePacked(ipfsHashesString, "-", ipfsHashes[i])
                );
            } else {
                ipfsHashesString = ipfsHashes[i];
            }
        }

        bytes memory data = abi.encodePacked(
            "0x",
            _toAsciiString(msg.sender),
            " can mint:",
            ipfsHashesString
        );

        bytes32 hash = _toEthSignedMessage(data);
        address signer = ECDSA.recover(hash, signature);

        return signer == signOperator;
    }

    function _toAsciiString(address x) internal pure returns (string memory) {
        bytes memory s = new bytes(40);
        for (uint256 i = 0; i < 20; i++) {
            bytes1 b = bytes1(
                uint8(uint256(uint160(x)) / (2 ** (8 * (19 - i))))
            );
            bytes1 hi = bytes1(uint8(b) / 16);
            bytes1 lo = bytes1(uint8(b) - 16 * uint8(hi));
            s[2 * i] = _char(hi);
            s[2 * i + 1] = _char(lo);
        }
        return string(s);
    }

    function _char(bytes1 b) private pure returns (bytes1 c) {
        if (uint8(b) < 10) return bytes1(uint8(b) + 0x30);
        else return bytes1(uint8(b) + 0x57);
    }

    function _toEthSignedMessage(
        bytes memory message
    ) internal pure returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    "\x19Ethereum Signed Message:\n",
                    Strings.toString(message.length),
                    message
                )
            );
    }
}
