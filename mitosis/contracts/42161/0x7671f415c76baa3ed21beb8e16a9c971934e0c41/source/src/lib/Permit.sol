// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IERC20} from "@oz/token/ERC20/IERC20.sol";
import {IERC20Permit} from "@oz/token/ERC20/extensions/IERC20Permit.sol";

library LibPermit {
    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    bytes32 internal constant EIP712_DOMAIN_TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 domain,address verifyingContract)");

    function decodeData(bytes calldata data) internal pure returns (uint256 deadline, uint8 v, bytes32 r, bytes32 s) {
        deadline = uint256(bytes32(data[0:32]));
        v = uint8(data[32]);
        r = bytes32(data[33:65]);
        s = bytes32(data[65:97]);

        return (deadline, v, r, s);
    }

    function encodeData(uint256 deadline, uint8 v, bytes32 r, bytes32 s) internal pure returns (bytes memory) {
        return abi.encodePacked(deadline, v, r, s);
    }

    function trustlessPermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        // Try permit() before allowance check to advance nonce if possible
        try token.permit(owner, spender, value, deadline, v, r, s) {
            return;
        } catch {
            // Permit potentially got frontran. Continue anyways if allowance is sufficient.
            if (IERC20(address(token)).allowance(owner, spender) >= value) {
                return;
            }
        }
        revert("Permit failure");
    }

    function makeDomainSeparator(string memory name, string memory version, uint256 _domain, address _contract)
        internal
        pure
        returns (bytes32)
    {
        return keccak256(abi.encode(EIP712_DOMAIN_TYPE_HASH, name, version, _domain, _contract));
    }

    function makeStructHash(address _owner, address _spender, uint256 _value, uint256 _nonce, uint256 _deadline)
        internal
        pure
        returns (bytes32)
    {
        return keccak256(abi.encode(PERMIT_TYPEHASH, _owner, _spender, _value, _nonce, _deadline));
    }

    function toTypedDataHashByAssembly(bytes32 _domainSeparator, bytes32 structHash)
        internal
        pure
        returns (bytes32 data)
    {
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, "\x19\x01")
            mstore(add(ptr, 0x02), _domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            data := keccak256(ptr, 0x42)
        }
    }

    function toTypedDataHash(bytes32 _domainSeparator, bytes32 structHash) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", _domainSeparator, structHash));
    }
}
