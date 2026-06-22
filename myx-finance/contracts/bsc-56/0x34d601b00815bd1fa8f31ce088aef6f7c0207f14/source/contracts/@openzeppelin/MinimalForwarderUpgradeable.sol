// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (metatx/MinimalForwarder.sol)

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @dev Simple minimal forwarder to be used together with an ERC2771 compatible contract. See {ERC2771Context}.
 *
 * MinimalForwarder is mainly meant for testing, as it is missing features to be a good production-ready forwarder. This
 * contract does not intend to have all the properties that are needed for a sound forwarding system. A fully
 * functioning forwarding system with good properties requires more complexity. We suggest you look at other projects
 * such as the GSN which do have the goal of building a system like that.
 */
abstract contract MinimalForwarderUpgradeable is Initializable, EIP712Upgradeable {
    using ECDSAUpgradeable for bytes32;

    bytes32 private constant _TYPEHASH =
        keccak256("ForwardRequest(address from,address to,uint256 value,uint256 gas,uint256 nonce,bytes data)");


    struct ContextStorage {
        // Map of contract addresses (identifier => contractAddress)
        mapping(address => uint256) _nonces;
    }

    // keccak256(abi.encode(uint256(keccak256("myx.storage.Forward")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ContextStorageLocation = 0xec462236189cc9edaed59006ecaae18d7097964a11930a47d191903bacea3300;

    function _getContextStorage() private pure returns (ContextStorage storage $) {
        assembly {
            $.slot := ContextStorageLocation
        }
        return $;
    }

    function __MinimalForwarder_init() internal onlyInitializing {
        __EIP712_init_unchained("MinimalForwarder", "0.0.1");
    }

    function __MinimalForwarder_init_unchained() internal onlyInitializing {}

    function getNonce(address from) public view returns (uint256) {
        ContextStorage storage $ = _getContextStorage();
        return  $._nonces[from];
    }

    function verify(
        address from,
        address to,
        uint256 value,
        uint256 gas,
        uint256 nonce,
        bytes calldata data,
        bytes calldata signature
    ) public view returns (bool) {
        address signer = _hashTypedDataV4(
            keccak256(abi.encode(_TYPEHASH, from, to, value, gas, nonce, keccak256(data)))
        ).recover(signature);
        return getNonce(from) == nonce && signer == from;
    }

    function execute(
        address from,
        address to,
        uint256 value,
        uint256 gas,
        uint256 nonce,
        bytes calldata data,
        bytes calldata signature
    ) public payable virtual returns (bool, bytes memory)
    {
        require(verify(from, to, value, gas, nonce, data, signature), "MinimalForwarder: signature does not match request");
        ContextStorage storage $ = _getContextStorage();
        $._nonces[from] = $._nonces[from] + 1;

        (bool success, bytes memory returndata) = to.call{gas: gas, value: value}(
            abi.encodePacked(data, from)
        );

        // Validate that the relayer has sent enough gas for the call.
        // See https://ronan.eth.link/blog/ethereum-gas-dangers/
        if (gasleft() <= gas / 63) {
            // We explicitly trigger invalid opcode to consume all gas and bubble-up the effects, since
            // neither revert or assert consume all gas since Solidity 0.8.0
            // https://docs.soliditylang.org/en/v0.8.0/control-structures.html#panic-via-assert-and-error-via-require
            /// @solidity memory-safe-assembly
            assembly {
                invalid()
            }
        }

        return (success, returndata);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;

    function _recoverForwardRequestSigner(
        address from,
        address to,
        uint256 value,
        uint256 gas,
        uint256 nonce,
        bytes calldata data,
        bytes calldata signature
    ) internal view returns (address) {
        return _hashTypedDataV4(
            keccak256(abi.encode(_TYPEHASH, from, to, value, gas, nonce, keccak256(data)))
        ).recover(signature);
    }
}
