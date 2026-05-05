// ============================================================
// FILE: @layerzerolabs/solidity-examples/contracts/libraries/BytesLib.sol
// ============================================================

// SPDX-License-Identifier: Unlicense
/*
 * @title Solidity Bytes Arrays Utils
 * @author Gonçalo Sá <goncalo.sa@consensys.net>
 *
 * @dev Bytes tightly packed arrays utility library for ethereum contracts written in Solidity.
 *      The library lets you concatenate, slice and type cast bytes arrays both in memory and storage.
 */
pragma solidity >=0.8.0 <0.9.0;

library BytesLib {
    function concat(bytes memory _preBytes, bytes memory _postBytes) internal pure returns (bytes memory) {
        bytes memory tempBytes;

        assembly {
            // Get a location of some free memory and store it in tempBytes as
            // Solidity does for memory variables.
            tempBytes := mload(0x40)

            // Store the length of the first bytes array at the beginning of
            // the memory for tempBytes.
            let length := mload(_preBytes)
            mstore(tempBytes, length)

            // Maintain a memory counter for the current write location in the
            // temp bytes array by adding the 32 bytes for the array length to
            // the starting location.
            let mc := add(tempBytes, 0x20)
            // Stop copying when the memory counter reaches the length of the
            // first bytes array.
            let end := add(mc, length)

            for {
                // Initialize a copy counter to the start of the _preBytes data,
                // 32 bytes into its memory.
                let cc := add(_preBytes, 0x20)
            } lt(mc, end) {
                // Increase both counters by 32 bytes each iteration.
                mc := add(mc, 0x20)
                cc := add(cc, 0x20)
            } {
                // Write the _preBytes data into the tempBytes memory 32 bytes
                // at a time.
                mstore(mc, mload(cc))
            }

            // Add the length of _postBytes to the current length of tempBytes
            // and store it as the new length in the first 32 bytes of the
            // tempBytes memory.
            length := mload(_postBytes)
            mstore(tempBytes, add(length, mload(tempBytes)))

            // Move the memory counter back from a multiple of 0x20 to the
            // actual end of the _preBytes data.
            mc := end
            // Stop copying when the memory counter reaches the new combined
            // length of the arrays.
            end := add(mc, length)

            for {
                let cc := add(_postBytes, 0x20)
            } lt(mc, end) {
                mc := add(mc, 0x20)
                cc := add(cc, 0x20)
            } {
                mstore(mc, mload(cc))
            }

            // Update the free-memory pointer by padding our last write location
            // to 32 bytes: add 31 bytes to the end of tempBytes to move to the
            // next 32 byte block, then round down to the nearest multiple of
            // 32. If the sum of the length of the two arrays is zero then add
            // one before rounding down to leave a blank 32 bytes (the length block with 0).
            mstore(
                0x40,
                and(
                    add(add(end, iszero(add(length, mload(_preBytes)))), 31),
                    not(31) // Round down to the nearest 32 bytes.
                )
            )
        }

        return tempBytes;
    }

    function concatStorage(bytes storage _preBytes, bytes memory _postBytes) internal {
        assembly {
            // Read the first 32 bytes of _preBytes storage, which is the length
            // of the array. (We don't need to use the offset into the slot
            // because arrays use the entire slot.)
            let fslot := sload(_preBytes.slot)
            // Arrays of 31 bytes or less have an even value in their slot,
            // while longer arrays have an odd value. The actual length is
            // the slot divided by two for odd values, and the lowest order
            // byte divided by two for even values.
            // If the slot is even, bitwise and the slot with 255 and divide by
            // two to get the length. If the slot is odd, bitwise and the slot
            // with -1 and divide by two.
            let slength := div(and(fslot, sub(mul(0x100, iszero(and(fslot, 1))), 1)), 2)
            let mlength := mload(_postBytes)
            let newlength := add(slength, mlength)
            // slength can contain both the length and contents of the array
            // if length < 32 bytes so let's prepare for that
            // v. http://solidity.readthedocs.io/en/latest/miscellaneous.html#layout-of-state-variables-in-storage
            switch add(lt(slength, 32), lt(newlength, 32))
            case 2 {
                // Since the new array still fits in the slot, we just need to
                // update the contents of the slot.
                // uint256(bytes_storage) = uint256(bytes_storage) + uint256(bytes_memory) + new_length
                sstore(
                    _preBytes.slot,
                    // all the modifications to the slot are inside this
                    // next block
                    add(
                        // we can just add to the slot contents because the
                        // bytes we want to change are the LSBs
                        fslot,
                        add(
                            mul(
                                div(
                                    // load the bytes from memory
                                    mload(add(_postBytes, 0x20)),
                                    // zero all bytes to the right
                                    exp(0x100, sub(32, mlength))
                                ),
                                // and now shift left the number of bytes to
                                // leave space for the length in the slot
                                exp(0x100, sub(32, newlength))
                            ),
                            // increase length by the double of the memory
                            // bytes length
                            mul(mlength, 2)
                        )
                    )
                )
            }
            case 1 {
                // The stored value fits in the slot, but the combined value
                // will exceed it.
                // get the keccak hash to get the contents of the array
                mstore(0x0, _preBytes.slot)
                let sc := add(keccak256(0x0, 0x20), div(slength, 32))

                // save new length
                sstore(_preBytes.slot, add(mul(newlength, 2), 1))

                // The contents of the _postBytes array start 32 bytes into
                // the structure. Our first read should obtain the `submod`
                // bytes that can fit into the unused space in the last word
                // of the stored array. To get this, we read 32 bytes starting
                // from `submod`, so the data we read overlaps with the array
                // contents by `submod` bytes. Masking the lowest-order
                // `submod` bytes allows us to add that value directly to the
                // stored value.

                let submod := sub(32, slength)
                let mc := add(_postBytes, submod)
                let end := add(_postBytes, mlength)
                let mask := sub(exp(0x100, submod), 1)

                sstore(sc, add(and(fslot, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00), and(mload(mc), mask)))

                for {
                    mc := add(mc, 0x20)
                    sc := add(sc, 1)
                } lt(mc, end) {
                    sc := add(sc, 1)
                    mc := add(mc, 0x20)
                } {
                    sstore(sc, mload(mc))
                }

                mask := exp(0x100, sub(mc, end))

                sstore(sc, mul(div(mload(mc), mask), mask))
            }
            default {
                // get the keccak hash to get the contents of the array
                mstore(0x0, _preBytes.slot)
                // Start copying to the last used word of the stored array.
                let sc := add(keccak256(0x0, 0x20), div(slength, 32))

                // save new length
                sstore(_preBytes.slot, add(mul(newlength, 2), 1))

                // Copy over the first `submod` bytes of the new data as in
                // case 1 above.
                let slengthmod := mod(slength, 32)
                let mlengthmod := mod(mlength, 32)
                let submod := sub(32, slengthmod)
                let mc := add(_postBytes, submod)
                let end := add(_postBytes, mlength)
                let mask := sub(exp(0x100, submod), 1)

                sstore(sc, add(sload(sc), and(mload(mc), mask)))

                for {
                    sc := add(sc, 1)
                    mc := add(mc, 0x20)
                } lt(mc, end) {
                    sc := add(sc, 1)
                    mc := add(mc, 0x20)
                } {
                    sstore(sc, mload(mc))
                }

                mask := exp(0x100, sub(mc, end))

                sstore(sc, mul(div(mload(mc), mask), mask))
            }
        }
    }

    function slice(
        bytes memory _bytes,
        uint _start,
        uint _length
    ) internal pure returns (bytes memory) {
        require(_length + 31 >= _length, "slice_overflow");
        require(_bytes.length >= _start + _length, "slice_outOfBounds");

        bytes memory tempBytes;

        assembly {
            switch iszero(_length)
            case 0 {
                // Get a location of some free memory and store it in tempBytes as
                // Solidity does for memory variables.
                tempBytes := mload(0x40)

                // The first word of the slice result is potentially a partial
                // word read from the original array. To read it, we calculate
                // the length of that partial word and start copying that many
                // bytes into the array. The first word we copy will start with
                // data we don't care about, but the last `lengthmod` bytes will
                // land at the beginning of the contents of the new array. When
                // we're done copying, we overwrite the full first word with
                // the actual length of the slice.
                let lengthmod := and(_length, 31)

                // The multiplication in the next line is necessary
                // because when slicing multiples of 32 bytes (lengthmod == 0)
                // the following copy loop was copying the origin's length
                // and then ending prematurely not copying everything it should.
                let mc := add(add(tempBytes, lengthmod), mul(0x20, iszero(lengthmod)))
                let end := add(mc, _length)

                for {
                    // The multiplication in the next line has the same exact purpose
                    // as the one above.
                    let cc := add(add(add(_bytes, lengthmod), mul(0x20, iszero(lengthmod))), _start)
                } lt(mc, end) {
                    mc := add(mc, 0x20)
                    cc := add(cc, 0x20)
                } {
                    mstore(mc, mload(cc))
                }

                mstore(tempBytes, _length)

                //update free-memory pointer
                //allocating the array padded to 32 bytes like the compiler does now
                mstore(0x40, and(add(mc, 31), not(31)))
            }
            //if we want a zero-length slice let's just return a zero-length array
            default {
                tempBytes := mload(0x40)
                //zero out the 32 bytes slice we are about to return
                //we need to do it because Solidity does not garbage collect
                mstore(tempBytes, 0)

                mstore(0x40, add(tempBytes, 0x20))
            }
        }

        return tempBytes;
    }

    function toAddress(bytes memory _bytes, uint _start) internal pure returns (address) {
        require(_bytes.length >= _start + 20, "toAddress_outOfBounds");
        address tempAddress;

        assembly {
            tempAddress := div(mload(add(add(_bytes, 0x20), _start)), 0x1000000000000000000000000)
        }

        return tempAddress;
    }

    function toUint8(bytes memory _bytes, uint _start) internal pure returns (uint8) {
        require(_bytes.length >= _start + 1, "toUint8_outOfBounds");
        uint8 tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0x1), _start))
        }

        return tempUint;
    }

    function toUint16(bytes memory _bytes, uint _start) internal pure returns (uint16) {
        require(_bytes.length >= _start + 2, "toUint16_outOfBounds");
        uint16 tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0x2), _start))
        }

        return tempUint;
    }

    function toUint32(bytes memory _bytes, uint _start) internal pure returns (uint32) {
        require(_bytes.length >= _start + 4, "toUint32_outOfBounds");
        uint32 tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0x4), _start))
        }

        return tempUint;
    }

    function toUint64(bytes memory _bytes, uint _start) internal pure returns (uint64) {
        require(_bytes.length >= _start + 8, "toUint64_outOfBounds");
        uint64 tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0x8), _start))
        }

        return tempUint;
    }

    function toUint96(bytes memory _bytes, uint _start) internal pure returns (uint96) {
        require(_bytes.length >= _start + 12, "toUint96_outOfBounds");
        uint96 tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0xc), _start))
        }

        return tempUint;
    }

    function toUint128(bytes memory _bytes, uint _start) internal pure returns (uint128) {
        require(_bytes.length >= _start + 16, "toUint128_outOfBounds");
        uint128 tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0x10), _start))
        }

        return tempUint;
    }

    function toUint256(bytes memory _bytes, uint _start) internal pure returns (uint) {
        require(_bytes.length >= _start + 32, "toUint256_outOfBounds");
        uint tempUint;

        assembly {
            tempUint := mload(add(add(_bytes, 0x20), _start))
        }

        return tempUint;
    }

    function toBytes32(bytes memory _bytes, uint _start) internal pure returns (bytes32) {
        require(_bytes.length >= _start + 32, "toBytes32_outOfBounds");
        bytes32 tempBytes32;

        assembly {
            tempBytes32 := mload(add(add(_bytes, 0x20), _start))
        }

        return tempBytes32;
    }

    function equal(bytes memory _preBytes, bytes memory _postBytes) internal pure returns (bool) {
        bool success = true;

        assembly {
            let length := mload(_preBytes)

            // if lengths don't match the arrays are not equal
            switch eq(length, mload(_postBytes))
            case 1 {
                // cb is a circuit breaker in the for loop since there's
                //  no said feature for inline assembly loops
                // cb = 1 - don't breaker
                // cb = 0 - break
                let cb := 1

                let mc := add(_preBytes, 0x20)
                let end := add(mc, length)

                for {
                    let cc := add(_postBytes, 0x20)
                    // the next line is the loop condition:
                    // while(uint256(mc < end) + cb == 2)
                } eq(add(lt(mc, end), cb), 2) {
                    mc := add(mc, 0x20)
                    cc := add(cc, 0x20)
                } {
                    // if any of these checks fails then arrays are not equal
                    if iszero(eq(mload(mc), mload(cc))) {
                        // unsuccess:
                        success := 0
                        cb := 0
                    }
                }
            }
            default {
                // unsuccess:
                success := 0
            }
        }

        return success;
    }

    function equalStorage(bytes storage _preBytes, bytes memory _postBytes) internal view returns (bool) {
        bool success = true;

        assembly {
            // we know _preBytes_offset is 0
            let fslot := sload(_preBytes.slot)
            // Decode the length of the stored array like in concatStorage().
            let slength := div(and(fslot, sub(mul(0x100, iszero(and(fslot, 1))), 1)), 2)
            let mlength := mload(_postBytes)

            // if lengths don't match the arrays are not equal
            switch eq(slength, mlength)
            case 1 {
                // slength can contain both the length and contents of the array
                // if length < 32 bytes so let's prepare for that
                // v. http://solidity.readthedocs.io/en/latest/miscellaneous.html#layout-of-state-variables-in-storage
                if iszero(iszero(slength)) {
                    switch lt(slength, 32)
                    case 1 {
                        // blank the last byte which is the length
                        fslot := mul(div(fslot, 0x100), 0x100)

                        if iszero(eq(fslot, mload(add(_postBytes, 0x20)))) {
                            // unsuccess:
                            success := 0
                        }
                    }
                    default {
                        // cb is a circuit breaker in the for loop since there's
                        //  no said feature for inline assembly loops
                        // cb = 1 - don't breaker
                        // cb = 0 - break
                        let cb := 1

                        // get the keccak hash to get the contents of the array
                        mstore(0x0, _preBytes.slot)
                        let sc := keccak256(0x0, 0x20)

                        let mc := add(_postBytes, 0x20)
                        let end := add(mc, mlength)

                        // the next line is the loop condition:
                        // while(uint256(mc < end) + cb == 2)
                        for {

                        } eq(add(lt(mc, end), cb), 2) {
                            sc := add(sc, 1)
                            mc := add(mc, 0x20)
                        } {
                            if iszero(eq(sload(sc), mload(mc))) {
                                // unsuccess:
                                success := 0
                                cb := 0
                            }
                        }
                    }
                }
            }
            default {
                // unsuccess:
                success := 0
            }
        }

        return success;
    }
}

// ============================================================
// FILE: @layerzerolabs/solidity-examples/contracts/libraries/ExcessivelySafeCall.sol
// ============================================================

// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.7.6;

library ExcessivelySafeCall {
    uint constant LOW_28_MASK = 0x00000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    /// @notice Use when you _really_ really _really_ don't trust the called
    /// contract. This prevents the called contract from causing reversion of
    /// the caller in as many ways as we can.
    /// @dev The main difference between this and a solidity low-level call is
    /// that we limit the number of bytes that the callee can cause to be
    /// copied to caller memory. This prevents stupid things like malicious
    /// contracts returning 10,000,000 bytes causing a local OOG when copying
    /// to memory.
    /// @param _target The address to call
    /// @param _gas The amount of gas to forward to the remote contract
    /// @param _maxCopy The maximum number of bytes of returndata to copy
    /// to memory.
    /// @param _calldata The data to send to the remote contract
    /// @return success and returndata, as `.call()`. Returndata is capped to
    /// `_maxCopy` bytes.
    function excessivelySafeCall(
        address _target,
        uint _gas,
        uint16 _maxCopy,
        bytes memory _calldata
    ) internal returns (bool, bytes memory) {
        // set up for assembly call
        uint _toCopy;
        bool _success;
        bytes memory _returnData = new bytes(_maxCopy);
        // dispatch message to recipient
        // by assembly calling "handle" function
        // we call via assembly to avoid memcopying a very large returndata
        // returned by a malicious contract
        assembly {
            _success := call(
                _gas, // gas
                _target, // recipient
                0, // ether value
                add(_calldata, 0x20), // inloc
                mload(_calldata), // inlen
                0, // outloc
                0 // outlen
            )
            // limit our copy to 256 bytes
            _toCopy := returndatasize()
            if gt(_toCopy, _maxCopy) {
                _toCopy := _maxCopy
            }
            // Store the length of the copied bytes
            mstore(_returnData, _toCopy)
            // copy the bytes from returndata[0:_toCopy]
            returndatacopy(add(_returnData, 0x20), 0, _toCopy)
        }
        return (_success, _returnData);
    }

    /// @notice Use when you _really_ really _really_ don't trust the called
    /// contract. This prevents the called contract from causing reversion of
    /// the caller in as many ways as we can.
    /// @dev The main difference between this and a solidity low-level call is
    /// that we limit the number of bytes that the callee can cause to be
    /// copied to caller memory. This prevents stupid things like malicious
    /// contracts returning 10,000,000 bytes causing a local OOG when copying
    /// to memory.
    /// @param _target The address to call
    /// @param _gas The amount of gas to forward to the remote contract
    /// @param _maxCopy The maximum number of bytes of returndata to copy
    /// to memory.
    /// @param _calldata The data to send to the remote contract
    /// @return success and returndata, as `.call()`. Returndata is capped to
    /// `_maxCopy` bytes.
    function excessivelySafeStaticCall(
        address _target,
        uint _gas,
        uint16 _maxCopy,
        bytes memory _calldata
    ) internal view returns (bool, bytes memory) {
        // set up for assembly call
        uint _toCopy;
        bool _success;
        bytes memory _returnData = new bytes(_maxCopy);
        // dispatch message to recipient
        // by assembly calling "handle" function
        // we call via assembly to avoid memcopying a very large returndata
        // returned by a malicious contract
        assembly {
            _success := staticcall(
                _gas, // gas
                _target, // recipient
                add(_calldata, 0x20), // inloc
                mload(_calldata), // inlen
                0, // outloc
                0 // outlen
            )
            // limit our copy to 256 bytes
            _toCopy := returndatasize()
            if gt(_toCopy, _maxCopy) {
                _toCopy := _maxCopy
            }
            // Store the length of the copied bytes
            mstore(_returnData, _toCopy)
            // copy the bytes from returndata[0:_toCopy]
            returndatacopy(add(_returnData, 0x20), 0, _toCopy)
        }
        return (_success, _returnData);
    }

    /**
     * @notice Swaps function selectors in encoded contract calls
     * @dev Allows reuse of encoded calldata for functions with identical
     * argument types but different names. It simply swaps out the first 4 bytes
     * for the new selector. This function modifies memory in place, and should
     * only be used with caution.
     * @param _newSelector The new 4-byte selector
     * @param _buf The encoded contract args
     */
    function swapSelector(bytes4 _newSelector, bytes memory _buf) internal pure {
        require(_buf.length >= 4);
        uint _mask = LOW_28_MASK;
        assembly {
            // load the first word of
            let _word := mload(add(_buf, 0x20))
            // mask out the top 4 bytes
            // /x
            _word := and(_word, _mask)
            _word := or(_newSelector, _word)
            mstore(add(_buf, 0x20), _word)
        }
    }
}

// ============================================================
// FILE: @layerzerolabs/solidity-examples/contracts/lzApp/interfaces/ILayerZeroEndpoint.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

import "./ILayerZeroUserApplicationConfig.sol";

interface ILayerZeroEndpoint is ILayerZeroUserApplicationConfig {
    // @notice send a LayerZero message to the specified address at a LayerZero endpoint.
    // @param _dstChainId - the destination chain identifier
    // @param _destination - the address on destination chain (in bytes). address length/format may vary by chains
    // @param _payload - a custom bytes payload to send to the destination contract
    // @param _refundAddress - if the source transaction is cheaper than the amount of value passed, refund the additional amount to this address
    // @param _zroPaymentAddress - the address of the ZRO token holder who would pay for the transaction
    // @param _adapterParams - parameters for custom functionality. e.g. receive airdropped native gas from the relayer on destination
    function send(
        uint16 _dstChainId,
        bytes calldata _destination,
        bytes calldata _payload,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes calldata _adapterParams
    ) external payable;

    // @notice used by the messaging library to publish verified payload
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source contract (as bytes) at the source chain
    // @param _dstAddress - the address on destination chain
    // @param _nonce - the unbound message ordering nonce
    // @param _gasLimit - the gas limit for external contract execution
    // @param _payload - verified payload to send to the destination contract
    function receivePayload(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        address _dstAddress,
        uint64 _nonce,
        uint _gasLimit,
        bytes calldata _payload
    ) external;

    // @notice get the inboundNonce of a lzApp from a source chain which could be EVM or non-EVM chain
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source chain contract address
    function getInboundNonce(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (uint64);

    // @notice get the outboundNonce from this source chain which, consequently, is always an EVM
    // @param _srcAddress - the source chain contract address
    function getOutboundNonce(uint16 _dstChainId, address _srcAddress) external view returns (uint64);

    // @notice gets a quote in source native gas, for the amount that send() requires to pay for message delivery
    // @param _dstChainId - the destination chain identifier
    // @param _userApplication - the user app address on this EVM chain
    // @param _payload - the custom message to send over LayerZero
    // @param _payInZRO - if false, user app pays the protocol fee in native token
    // @param _adapterParam - parameters for the adapter service, e.g. send some dust native token to dstChain
    function estimateFees(
        uint16 _dstChainId,
        address _userApplication,
        bytes calldata _payload,
        bool _payInZRO,
        bytes calldata _adapterParam
    ) external view returns (uint nativeFee, uint zroFee);

    // @notice get this Endpoint's immutable source identifier
    function getChainId() external view returns (uint16);

    // @notice the interface to retry failed message on this Endpoint destination
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source chain contract address
    // @param _payload - the payload to be retried
    function retryPayload(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        bytes calldata _payload
    ) external;

    // @notice query if any STORED payload (message blocking) at the endpoint.
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source chain contract address
    function hasStoredPayload(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (bool);

    // @notice query if the _libraryAddress is valid for sending msgs.
    // @param _userApplication - the user app address on this EVM chain
    function getSendLibraryAddress(address _userApplication) external view returns (address);

    // @notice query if the _libraryAddress is valid for receiving msgs.
    // @param _userApplication - the user app address on this EVM chain
    function getReceiveLibraryAddress(address _userApplication) external view returns (address);

    // @notice query if the non-reentrancy guard for send() is on
    // @return true if the guard is on. false otherwise
    function isSendingPayload() external view returns (bool);

    // @notice query if the non-reentrancy guard for receive() is on
    // @return true if the guard is on. false otherwise
    function isReceivingPayload() external view returns (bool);

    // @notice get the configuration of the LayerZero messaging library of the specified version
    // @param _version - messaging library version
    // @param _chainId - the chainId for the pending config change
    // @param _userApplication - the contract address of the user application
    // @param _configType - type of configuration. every messaging library has its own convention.
    function getConfig(
        uint16 _version,
        uint16 _chainId,
        address _userApplication,
        uint _configType
    ) external view returns (bytes memory);

    // @notice get the send() LayerZero messaging library version
    // @param _userApplication - the contract address of the user application
    function getSendVersion(address _userApplication) external view returns (uint16);

    // @notice get the lzReceive() LayerZero messaging library version
    // @param _userApplication - the contract address of the user application
    function getReceiveVersion(address _userApplication) external view returns (uint16);
}

// ============================================================
// FILE: @layerzerolabs/solidity-examples/contracts/lzApp/interfaces/ILayerZeroReceiver.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface ILayerZeroReceiver {
    // @notice LayerZero endpoint will invoke this function to deliver the message on the destination
    // @param _srcChainId - the source endpoint identifier
    // @param _srcAddress - the source sending contract address from the source chain
    // @param _nonce - the ordered message nonce
    // @param _payload - the signed payload is the UA bytes has encoded to be sent
    function lzReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) external;
}

// ============================================================
// FILE: @layerzerolabs/solidity-examples/contracts/lzApp/interfaces/ILayerZeroUserApplicationConfig.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface ILayerZeroUserApplicationConfig {
    // @notice set the configuration of the LayerZero messaging library of the specified version
    // @param _version - messaging library version
    // @param _chainId - the chainId for the pending config change
    // @param _configType - type of configuration. every messaging library has its own convention.
    // @param _config - configuration in the bytes. can encode arbitrary content.
    function setConfig(
        uint16 _version,
        uint16 _chainId,
        uint _configType,
        bytes calldata _config
    ) external;

    // @notice set the send() LayerZero messaging library version to _version
    // @param _version - new messaging library version
    function setSendVersion(uint16 _version) external;

    // @notice set the lzReceive() LayerZero messaging library version to _version
    // @param _version - new messaging library version
    function setReceiveVersion(uint16 _version) external;

    // @notice Only when the UA needs to resume the message flow in blocking mode and clear the stored payload
    // @param _srcChainId - the chainId of the source chain
    // @param _srcAddress - the contract address of the source contract at the source chain
    function forceResumeReceive(uint16 _srcChainId, bytes calldata _srcAddress) external;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    function __Ownable_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal onlyInitializing {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized != type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts/access/AccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;

import "./IAccessControl.sol";
import "../utils/Context.sol";
import "../utils/Strings.sol";
import "../utils/introspection/ERC165.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        Strings.toHexString(account),
                        " is missing role ",
                        Strings.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/AccessControlEnumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (access/AccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControlEnumerable.sol";
import "./AccessControl.sol";
import "../utils/structs/EnumerableSet.sol";

/**
 * @dev Extension of {AccessControl} that allows enumerating the members of each role.
 */
abstract contract AccessControlEnumerable is IAccessControlEnumerable, AccessControl {
    using EnumerableSet for EnumerableSet.AddressSet;

    mapping(bytes32 => EnumerableSet.AddressSet) private _roleMembers;

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlEnumerable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) public view virtual override returns (address) {
        return _roleMembers[role].at(index);
    }

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) public view virtual override returns (uint256) {
        return _roleMembers[role].length();
    }

    /**
     * @dev Overload {_grantRole} to track enumerable memberships
     */
    function _grantRole(bytes32 role, address account) internal virtual override {
        super._grantRole(role, account);
        _roleMembers[role].add(account);
    }

    /**
     * @dev Overload {_revokeRole} to track enumerable memberships
     */
    function _revokeRole(bytes32 role, address account) internal virtual override {
        super._revokeRole(role, account);
        _roleMembers[role].remove(account);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControlEnumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControl.sol";

/**
 * @dev External interface of AccessControlEnumerable declared to support ERC165 detection.
 */
interface IAccessControlEnumerable is IAccessControl {
    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) external view returns (address);

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) external view returns (uint256);
}

// ============================================================
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC5267.sol)

pragma solidity ^0.8.0;

interface IERC5267 {
    /**
     * @dev MAY be emitted to signal that the domain could have changed.
     */
    event EIP712DomainChanged();

    /**
     * @dev returns the fields and values that describe the domain separator used by this contract for EIP-712
     * signature.
     */
    function eip712Domain()
        external
        view
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        );
}

// ============================================================
// FILE: @openzeppelin/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./extensions/IERC20Metadata.sol";
import "../../utils/Context.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/draft-ERC20Permit.sol)

pragma solidity ^0.8.0;

// EIP-2612 is Final as of 2022-11-01. This file is deprecated.

import "./ERC20Permit.sol";

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/ERC20Permit.sol)

pragma solidity ^0.8.0;

import "./IERC20Permit.sol";
import "../ERC20.sol";
import "../../../utils/cryptography/ECDSA.sol";
import "../../../utils/cryptography/EIP712.sol";
import "../../../utils/Counters.sol";

/**
 * @dev Implementation of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * _Available since v3.4._
 */
abstract contract ERC20Permit is ERC20, IERC20Permit, EIP712 {
    using Counters for Counters.Counter;

    mapping(address => Counters.Counter) private _nonces;

    // solhint-disable-next-line var-name-mixedcase
    bytes32 private constant _PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    /**
     * @dev In previous versions `_PERMIT_TYPEHASH` was declared as `immutable`.
     * However, to ensure consistency with the upgradeable transpiler, we will continue
     * to reserve a slot.
     * @custom:oz-renamed-from _PERMIT_TYPEHASH
     */
    // solhint-disable-next-line var-name-mixedcase
    bytes32 private _PERMIT_TYPEHASH_DEPRECATED_SLOT;

    /**
     * @dev Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to `"1"`.
     *
     * It's a good idea to use the same `name` that is defined as the ERC20 token name.
     */
    constructor(string memory name) EIP712(name, "1") {}

    /**
     * @dev See {IERC20Permit-permit}.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual override {
        require(block.timestamp <= deadline, "ERC20Permit: expired deadline");

        bytes32 structHash = keccak256(abi.encode(_PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSA.recover(hash, v, r, s);
        require(signer == owner, "ERC20Permit: invalid signature");

        _approve(owner, spender, value);
    }

    /**
     * @dev See {IERC20Permit-nonces}.
     */
    function nonces(address owner) public view virtual override returns (uint256) {
        return _nonces[owner].current();
    }

    /**
     * @dev See {IERC20Permit-DOMAIN_SEPARATOR}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view override returns (bytes32) {
        return _domainSeparatorV4();
    }

    /**
     * @dev "Consume a nonce": return the current value and increment.
     *
     * _Available since v4.1._
     */
    function _useNonce(address owner) internal virtual returns (uint256 current) {
        Counters.Counter storage nonce = _nonces[owner];
        current = nonce.current();
        nonce.increment();
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Counters.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Counters.sol)

pragma solidity ^0.8.0;

/**
 * @title Counters
 * @author Matt Condon (@shrugs)
 * @dev Provides counters that can only be incremented, decremented or reset. This can be used e.g. to track the number
 * of elements in a mapping, issuing ERC721 ids, or counting request ids.
 *
 * Include with `using Counters for Counters.Counter;`
 */
library Counters {
    struct Counter {
        // This variable should never be directly accessed by users of the library: interactions must be restricted to
        // the library's function. As of Solidity v0.5.2, this cannot be enforced, though there is a proposal to add
        // this feature: see https://github.com/ethereum/solidity/issues/4637
        uint256 _value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(Counter storage counter) internal {
        unchecked {
            counter._value += 1;
        }
    }

    function decrement(Counter storage counter) internal {
        uint256 value = counter._value;
        require(value > 0, "Counter: decrement overflow");
        unchecked {
            counter._value = value - 1;
        }
    }

    function reset(Counter storage counter) internal {
        counter._value = 0;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.0;

import "../Strings.sol";

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS,
        InvalidSignatureV // Deprecated in v4.8
    }

    function _throwError(RecoverError error) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert("ECDSA: invalid signature");
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert("ECDSA: invalid signature length");
        } else if (error == RecoverError.InvalidSignatureS) {
            revert("ECDSA: invalid signature 's' value");
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature` or error string. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     *
     * _Available since v4.3._
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength);
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, signature);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     *
     * _Available since v4.3._
     */
    function tryRecover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address, RecoverError) {
        bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        uint8 v = uint8((uint256(vs) >> 255) + 27);
        return tryRecover(hash, v, r, s);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     *
     * _Available since v4.2._
     */
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, r, vs);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     *
     * _Available since v4.3._
     */
    function tryRecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address, RecoverError) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature);
        }

        return (signer, RecoverError.NoError);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, v, r, s);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from a `hash`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32 message) {
        // 32 is the length in bytes of hash,
        // enforced by the type signature above
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, "\x19Ethereum Signed Message:\n32")
            mstore(0x1c, hash)
            message := keccak256(0x00, 0x3c)
        }
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from `s`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n", Strings.toString(s.length), s));
    }

    /**
     * @dev Returns an Ethereum Signed Typed Data, created from a
     * `domainSeparator` and a `structHash`. This produces hash corresponding
     * to the one signed with the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`]
     * JSON-RPC method as part of EIP-712.
     *
     * See {recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32 data) {
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, "\x19\x01")
            mstore(add(ptr, 0x02), domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            data := keccak256(ptr, 0x42)
        }
    }

    /**
     * @dev Returns an Ethereum Signed Data with intended validator, created from a
     * `validator` and `data` according to the version 0 of EIP-191.
     *
     * See {recover}.
     */
    function toDataWithIntendedValidatorHash(address validator, bytes memory data) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x00", validator, data));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/cryptography/EIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/cryptography/EIP712.sol)

pragma solidity ^0.8.8;

import "./ECDSA.sol";
import "../ShortStrings.sol";
import "../../interfaces/IERC5267.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP 712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding specified in the EIP is very generic, and such a generic implementation in Solidity is not feasible,
 * thus this contract does not implement the encoding itself. Protocols need to implement the type-specific encoding
 * they need in their contracts using a combination of `abi.encode` and `keccak256`.
 *
 * This contract implements the EIP 712 domain separator ({_domainSeparatorV4}) that is used as part of the encoding
 * scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA
 * ({_hashTypedDataV4}).
 *
 * The implementation of the domain separator was designed to be as efficient as possible while still properly updating
 * the chain id to protect against replay attacks on an eventual fork of the chain.
 *
 * NOTE: This contract implements the version of the encoding known as "v4", as implemented by the JSON RPC method
 * https://docs.metamask.io/guide/signing-data.html[`eth_signTypedDataV4` in MetaMask].
 *
 * NOTE: In the upgradeable version of this contract, the cached values will correspond to the address, and the domain
 * separator of the implementation contract. This will cause the `_domainSeparatorV4` function to always rebuild the
 * separator from the immutable values, which is cheaper than accessing a cached version in cold storage.
 *
 * _Available since v3.4._
 *
 * @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
 */
abstract contract EIP712 is IERC5267 {
    using ShortStrings for *;

    bytes32 private constant _TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    // Cache the domain separator as an immutable value, but also store the chain id that it corresponds to, in order to
    // invalidate the cached domain separator if the chain id changes.
    bytes32 private immutable _cachedDomainSeparator;
    uint256 private immutable _cachedChainId;
    address private immutable _cachedThis;

    bytes32 private immutable _hashedName;
    bytes32 private immutable _hashedVersion;

    ShortString private immutable _name;
    ShortString private immutable _version;
    string private _nameFallback;
    string private _versionFallback;

    /**
     * @dev Initializes the domain separator and parameter caches.
     *
     * The meaning of `name` and `version` is specified in
     * https://eips.ethereum.org/EIPS/eip-712#definition-of-domainseparator[EIP 712]:
     *
     * - `name`: the user readable name of the signing domain, i.e. the name of the DApp or the protocol.
     * - `version`: the current major version of the signing domain.
     *
     * NOTE: These parameters cannot be changed except through a xref:learn::upgrading-smart-contracts.adoc[smart
     * contract upgrade].
     */
    constructor(string memory name, string memory version) {
        _name = name.toShortStringWithFallback(_nameFallback);
        _version = version.toShortStringWithFallback(_versionFallback);
        _hashedName = keccak256(bytes(name));
        _hashedVersion = keccak256(bytes(version));

        _cachedChainId = block.chainid;
        _cachedDomainSeparator = _buildDomainSeparator();
        _cachedThis = address(this);
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        if (address(this) == _cachedThis && block.chainid == _cachedChainId) {
            return _cachedDomainSeparator;
        } else {
            return _buildDomainSeparator();
        }
    }

    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(_TYPE_HASH, _hashedName, _hashedVersion, block.chainid, address(this)));
    }

    /**
     * @dev Given an already https://eips.ethereum.org/EIPS/eip-712#definition-of-hashstruct[hashed struct], this
     * function returns the hash of the fully encoded EIP712 message for this domain.
     *
     * This hash can be used together with {ECDSA-recover} to obtain the signer of a message. For example:
     *
     * ```solidity
     * bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
     *     keccak256("Mail(address to,string contents)"),
     *     mailTo,
     *     keccak256(bytes(mailContents))
     * )));
     * address signer = ECDSA.recover(digest, signature);
     * ```
     */
    function _hashTypedDataV4(bytes32 structHash) internal view virtual returns (bytes32) {
        return ECDSA.toTypedDataHash(_domainSeparatorV4(), structHash);
    }

    /**
     * @dev See {EIP-5267}.
     *
     * _Available since v4.9._
     */
    function eip712Domain()
        public
        view
        virtual
        override
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
        return (
            hex"0f", // 01111
            _name.toStringWithFallback(_nameFallback),
            _version.toStringWithFallback(_versionFallback),
            block.chainid,
            address(this),
            bytes32(0),
            new uint256[](0)
        );
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

import "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/ShortStrings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/ShortStrings.sol)

pragma solidity ^0.8.8;

import "./StorageSlot.sol";

// | string  | 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA   |
// | length  | 0x                                                              BB |
type ShortString is bytes32;

/**
 * @dev This library provides functions to convert short memory strings
 * into a `ShortString` type that can be used as an immutable variable.
 *
 * Strings of arbitrary length can be optimized using this library if
 * they are short enough (up to 31 bytes) by packing them with their
 * length (1 byte) in a single EVM word (32 bytes). Additionally, a
 * fallback mechanism can be used for every other case.
 *
 * Usage example:
 *
 * ```solidity
 * contract Named {
 *     using ShortStrings for *;
 *
 *     ShortString private immutable _name;
 *     string private _nameFallback;
 *
 *     constructor(string memory contractName) {
 *         _name = contractName.toShortStringWithFallback(_nameFallback);
 *     }
 *
 *     function name() external view returns (string memory) {
 *         return _name.toStringWithFallback(_nameFallback);
 *     }
 * }
 * ```
 */
library ShortStrings {
    // Used as an identifier for strings longer than 31 bytes.
    bytes32 private constant _FALLBACK_SENTINEL = 0x00000000000000000000000000000000000000000000000000000000000000FF;

    error StringTooLong(string str);
    error InvalidShortString();

    /**
     * @dev Encode a string of at most 31 chars into a `ShortString`.
     *
     * This will trigger a `StringTooLong` error is the input string is too long.
     */
    function toShortString(string memory str) internal pure returns (ShortString) {
        bytes memory bstr = bytes(str);
        if (bstr.length > 31) {
            revert StringTooLong(str);
        }
        return ShortString.wrap(bytes32(uint256(bytes32(bstr)) | bstr.length));
    }

    /**
     * @dev Decode a `ShortString` back to a "normal" string.
     */
    function toString(ShortString sstr) internal pure returns (string memory) {
        uint256 len = byteLength(sstr);
        // using `new string(len)` would work locally but is not memory safe.
        string memory str = new string(32);
        /// @solidity memory-safe-assembly
        assembly {
            mstore(str, len)
            mstore(add(str, 0x20), sstr)
        }
        return str;
    }

    /**
     * @dev Return the length of a `ShortString`.
     */
    function byteLength(ShortString sstr) internal pure returns (uint256) {
        uint256 result = uint256(ShortString.unwrap(sstr)) & 0xFF;
        if (result > 31) {
            revert InvalidShortString();
        }
        return result;
    }

    /**
     * @dev Encode a string into a `ShortString`, or write it to storage if it is too long.
     */
    function toShortStringWithFallback(string memory value, string storage store) internal returns (ShortString) {
        if (bytes(value).length < 32) {
            return toShortString(value);
        } else {
            StorageSlot.getStringSlot(store).value = value;
            return ShortString.wrap(_FALLBACK_SENTINEL);
        }
    }

    /**
     * @dev Decode a string that was encoded to `ShortString` or written to storage using {setWithFallback}.
     */
    function toStringWithFallback(ShortString value, string storage store) internal pure returns (string memory) {
        if (ShortString.unwrap(value) != _FALLBACK_SENTINEL) {
            return toString(value);
        } else {
            return store;
        }
    }

    /**
     * @dev Return the length of a string that was encoded to `ShortString` or written to storage using {setWithFallback}.
     *
     * WARNING: This will return the "byte length" of the string. This may not reflect the actual length in terms of
     * actual characters as the UTF-8 encoding of a single character can span over multiple bytes.
     */
    function byteLengthWithFallback(ShortString value, string storage store) internal view returns (uint256) {
        if (ShortString.unwrap(value) != _FALLBACK_SENTINEL) {
            return byteLength(value);
        } else {
            return bytes(store).length;
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, `uint256`._
 * _Available since v4.9 for `string`, `bytes`._
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/Math.sol";
import "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toString(int256 value) internal pure returns (string memory) {
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMath.abs(value))));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * As of v3.3.0, sets of type `bytes32` (`Bytes32Set`), `address` (`AddressSet`)
 * and `uint256` (`UintSet`) are supported.
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSet {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position of the value in the `values` array, plus 1 because index 0
        // means a value is not in the set.
        mapping(bytes32 => uint256) _indexes;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We read and store the value's index to prevent multiple reads from the same storage slot
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            if (lastIndex != toDeleteIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the last value to the index where the value to delete is
                set._values[toDeleteIndex] = lastValue;
                // Update the index for the moved value
                set._indexes[lastValue] = valueIndex; // Replace lastValue's index to valueIndex
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the index for the deleted slot
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: contracts/wombat-core/asset/Asset.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol';

import '../interfaces/IAsset.sol';

/**
 * @title Asset
 * @notice Contract presenting an asset in a pool
 * @dev Expect to be owned by Timelock for management, and pool links to Pool for coordination
 */
contract Asset is Ownable, ERC20, ERC20Permit, IAsset {
    using SafeERC20 for IERC20;

    /// @notice The underlying underlyingToken represented by this asset
    address public immutable override underlyingToken;

    uint8 public immutable override underlyingTokenDecimals;

    /// @notice The Pool
    address public override pool;

    // fit into a 256 bit storage slot

    /// @notice Cash balance, normally it should align with IERC20(underlyingToken).balanceOf(address(this))
    /// @dev 18.18 fixed point decimals
    uint120 public override cash;
    /// @notice Total liability, equals to the sum of deposit and dividend
    /// @dev 18.18 fixed point decimals
    uint120 public override liability;

    /// @notice maxSupply the maximum amount of asset the pool is allowed to mint. 18 decimals
    /// @dev if 0, means asset has no max
    uint256 public maxSupply;

    /// @notice An event thats emitted when max supply is updated
    event SetMaxSupply(uint256 previousMaxSupply, uint256 newMaxSupply);

    /// @notice An event thats emitted when pool address is updated
    event SetPool(address previousPoolAddr, address newPoolAddr);

    error WOMBAT_FORBIDDEN();
    error ASSET_OVERFLOW();

    /// @dev Modifier ensuring that certain function can only be called by pool
    modifier onlyPool() {
        if (msg.sender != pool) revert WOMBAT_FORBIDDEN();
        _;
    }

    /**
     * @notice Constructor.
     * @param underlyingToken_ The token represented by the asset
     * @param name_ The name of the asset
     * @param symbol_ The symbol of the asset
     */
    constructor(
        address underlyingToken_,
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) ERC20Permit(name_) {
        underlyingToken = underlyingToken_;
        underlyingTokenDecimals = ERC20(underlyingToken_).decimals();
    }

    /**
     * TODO: move pool address setup within contract initialization
     * @notice Changes the pool. Can only be set by the contract owner.
     * @param pool_ new pool's address
     */
    function setPool(address pool_) external override onlyOwner {
        require(pool_ != address(0), 'Wombat: Pool address cannot be zero');
        emit SetPool(pool, pool_);
        pool = pool_;
    }

    /**
     * @notice Changes asset max supply. Can only be set by the contract owner. 18 decimals
     * @param maxSupply_ the new asset's max supply
     */
    function setMaxSupply(uint256 maxSupply_) external onlyOwner {
        emit SetMaxSupply(maxSupply, maxSupply_);
        maxSupply = maxSupply_;
    }

    /**
     * @notice Returns the decimals of Asset, fixed to 18 decimals
     * @return decimals for asset
     */
    function decimals() public view virtual override(ERC20, IAsset) returns (uint8) {
        return 18;
    }

    /**
     * @notice Get underlying Token Balance
     * @return Returns the actual balance of ERC20 underlyingToken
     */
    function underlyingTokenBalance() external view override returns (uint256) {
        return IERC20(underlyingToken).balanceOf(address(this));
    }

    /**
     * @notice Transfers ERC20 underlyingToken from this contract to another account. Can only be called by Pool.
     * @dev Not to be confused with transferring Wombat Assets.
     * @param to address to transfer the token to
     * @param amount amount to transfer
     */
    function transferUnderlyingToken(address to, uint256 amount) external override onlyPool {
        IERC20(underlyingToken).safeTransfer(to, amount);
    }

    /**
     * @notice Mint ERC20 Asset LP Token, expect pool coordinates other state updates. Can only be called by Pool.
     * @param to address to transfer the token to
     * @param amount amount to transfer
     */
    function mint(address to, uint256 amount) external override onlyPool {
        if (maxSupply != 0) {
            // if maxSupply == 0, asset is uncapped.
            require(amount + this.totalSupply() <= maxSupply, 'Wombat: MAX_SUPPLY_REACHED');
        }
        return _mint(to, amount);
    }

    /**
     * @notice Burn ERC20 Asset LP Token, expect pool coordinates other state updates. Can only be called by Pool.
     * @param to address holding the tokens
     * @param amount amount to burn
     */
    function burn(address to, uint256 amount) external override onlyPool {
        return _burn(to, amount);
    }

    /**
     * @notice Adds cash, expects actual ERC20 underlyingToken got transferred in. Can only be called by Pool.
     * @param amount amount to add
     */
    function addCash(uint256 amount) external override onlyPool {
        if (amount > type(uint120).max) revert ASSET_OVERFLOW();
        cash += uint120(amount);
    }

    /**
     * @notice Deducts cash, expect actual ERC20 got transferred out (by transferUnderlyingToken()).
     * Can only be called by Pool.
     * @param amount amount to remove
     */
    function removeCash(uint256 amount) external override onlyPool {
        require(cash >= amount, 'Wombat: INSUFFICIENT_CASH');
        cash -= uint120(amount);
    }

    /**
     * @notice Adds deposit or dividend, expect LP underlyingToken minted in case of deposit.
     * Can only be called by Pool.
     * @param amount amount to add
     */
    function addLiability(uint256 amount) external override onlyPool {
        if (amount > type(uint120).max) revert ASSET_OVERFLOW();
        liability += uint120(amount);
    }

    /**
     * @notice Removes deposit and dividend earned, expect LP underlyingToken burnt.
     * Can only be called by Pool.
     * @param amount amount to remove
     */
    function removeLiability(uint256 amount) external override onlyPool {
        require(liability >= amount, 'Wombat: INSUFFICIENT_LIABILITY');
        liability -= uint120(amount);
    }
}

// ============================================================
// FILE: contracts/wombat-core/asset/DynamicAsset.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../interfaces/IRelativePriceProvider.sol';
import './Asset.sol';

/**
 * @title Asset with Dynamic Price
 * @notice Contract presenting an asset in a pool
 * @dev The relative price of an asset may change over time.
 * For example, the ratio of staked BNB : BNB increases as staking reward accrues.
 */
contract DynamicAsset is Asset, IRelativePriceProvider {
    constructor(
        address underlyingToken_,
        string memory name_,
        string memory symbol_
    ) Asset(underlyingToken_, name_, symbol_) {}

    /**
     * @notice get the relative price of 1 unit of token in WAD
     */
    function getRelativePrice() external view virtual returns (uint256) {
        return 1e18;
    }
}

// ============================================================
// FILE: contracts/wombat-core/asset/SkimmableAsset.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts/access/AccessControlEnumerable.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

import '../libraries/DSMath.sol';
import './Asset.sol';

/**
 * @title Skimmable Asset
 * @notice Contract presenting an asset in a pool
 * @dev The `SkimAdmin` can extract rebasing reward from the contract by calling `skim`
 * Note that there no tip bucket should be stored in this contract, otherwise it will be `skimm`ed. i.e. `lpDividendRatio + retentionRatio = 1 ether`
 * For V1 contracts, `mintFeeThreshold` needs to be set to 0 since `mintFee` checks `mintFeeThreshold`
 */
contract SkimmableAsset is Asset, ReentrancyGuard, AccessControlEnumerable {
    using SafeERC20 for IERC20;

    bytes32 public constant ROLE_SkimAdmin = keccak256('SkimAdmin');

    /// @notice An event thats emitted when Skim
    event Skim(uint256 amount, address to);

    error NotEnoughCash(uint256 tokenBalance, uint256 cash);

    constructor(
        address underlyingToken_,
        string memory name_,
        string memory symbol_
    ) Asset(underlyingToken_, name_, symbol_) {}

    function addSkimAdmin(address _admin) external onlyOwner {
        _grantRole(ROLE_SkimAdmin, _admin);
    }

    function removeSkimAdmin(address _admin) external onlyOwner {
        _revokeRole(ROLE_SkimAdmin, _admin);
    }

    function skim(address _to) external nonReentrant returns (uint256 amount) {
        require(hasRole(ROLE_SkimAdmin, msg.sender), 'not authorized');

        IPool(pool).mintFee(underlyingToken); // mint fee to LP before skim such that haircut is not skimmed
        amount = _quoteSkimAmount();
        IERC20(underlyingToken).safeTransfer(_to, amount);

        emit Skim(amount, _to);
    }

    function _quoteSkimAmount() internal view returns (uint256 amount) {
        uint256 tokenBalance = IERC20(underlyingToken).balanceOf(address(this));
        uint256 cash_ = DSMath.fromWad(cash, underlyingTokenDecimals);

        if (tokenBalance < cash_) revert NotEnoughCash(tokenBalance, cash_);
        amount = tokenBalance - cash_;
    }
}

interface IPool {
    function mintFee(address token) external;
}

// ============================================================
// FILE: contracts/wombat-core/asset/VolatileAsset.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './DynamicAsset.sol';
import '../interfaces/IVolatileAsset.sol';

/**
 * @title Asset with Dynamic Price
 * @notice Contract presenting an asset in a pool
 * @dev The relative price of an asset may change over time.
 * For example, the ratio of staked BNB : BNB increases as staking reward accrues.
 */
contract VolatileAsset is IVolatileAsset, DynamicAsset {
    /// @notice The current price scale used by the Wombat's invariant
    /// @dev In 18 decimals
    uint128 public priceScale;

    /// @notice The oracle price, which is calculated by the exponential moving average of spot price
    /// @dev In 18 decimals
    uint128 public oraclePrice;

    error PRICE_ORACLE_OVERFLOW();
    error PRICE_SCALE_OVERFLOW();

    constructor(
        address underlyingToken_,
        string memory name_,
        string memory symbol_,
        uint128 priceScale_
    ) DynamicAsset(underlyingToken_, name_, symbol_) {
        priceScale = priceScale_;
        oraclePrice = priceScale_;
    }

    /**
     * @notice get the relative price in WAD
     * @dev return the price scale
     */
    function getRelativePrice() external view override returns (uint256) {
        return priceScale;
    }

    function setOraclePrice(uint256 oraclePrice_) external onlyPool {
        if (oraclePrice_ > type(uint128).max) revert PRICE_ORACLE_OVERFLOW();
        oraclePrice = uint128(oraclePrice_);
    }

    function setPriceScale(uint256 priceScale_) external onlyPool {
        if (priceScale_ > type(uint128).max) revert PRICE_SCALE_OVERFLOW();
        priceScale = uint128(priceScale_);
    }

    function decimals() public view override(Asset, IAsset) returns (uint8) {
        return super.decimals();
    }
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IAdaptor.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

interface IAdaptor {
    /* Cross-chain functions that is used to initiate a cross-chain message, should be invoked by Pool */
    function bridgeCreditAndSwapForTokens(
        address toToken,
        uint256 toChain,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 gasLimit
    ) external payable returns (uint256 trackingId);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IAsset.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IAsset is IERC20 {
    function underlyingToken() external view returns (address);

    function pool() external view returns (address);

    function cash() external view returns (uint120);

    function liability() external view returns (uint120);

    function decimals() external view returns (uint8);

    function underlyingTokenDecimals() external view returns (uint8);

    function setPool(address pool_) external;

    function underlyingTokenBalance() external view returns (uint256);

    function transferUnderlyingToken(address to, uint256 amount) external;

    function mint(address to, uint256 amount) external;

    function burn(address to, uint256 amount) external;

    function addCash(uint256 amount) external;

    function removeCash(uint256 amount) external;

    function addLiability(uint256 amount) external;

    function removeLiability(uint256 amount) external;
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/ICrossChainPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

interface ICrossChainPool {
    /**
     * @notice Initiate a cross chain swap to swap tokens from a chain to tokens in another chain
     * @dev Steps:
     * 1. User call `swapTokensForTokensCrossChain` to swap `fromToken` for credit
     * 2. CrossChainPool request wormhole adaptor to relay the message to the designated chain
     * 3. On the designated chain, wormhole relayer invoke `completeSwapCreditForTokens` to swap credit for `toToken` in the `toChain`
     * Note: Amount of `value` attached to this function can be estimated by `WormholeAdaptor.estimateDeliveryFee`
     */
    function swapTokensForTokensCrossChain(
        address fromToken,
        address toToken,
        uint256 toChain, // wormhole chain ID
        uint256 fromAmount,
        uint256 minimumCreditAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue, // gas to receive at the designated contract
        uint256 gasLimit // gas limit for the relayed transaction
    ) external payable returns (uint256 creditAmount, uint256 fromTokenFee, uint256 id);

    /**
     * @notice Swap credit for tokens (same chain)
     * @dev In case user has some credit, he/she can use this function to swap credit to tokens
     */
    function swapCreditForTokens(
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver
    ) external returns (uint256 actualToAmount, uint256 toTokenFee);

    /**
     * @notice Bridge credit and swap it for `toToken` in the `toChain`
     * @dev In case user has some credit, he/she can use this function to swap credit to tokens in another network
     * Note: Amount of `value` attached to this function can be estimated by `WormholeAdaptor.estimateDeliveryFee`
     */
    function swapCreditForTokensCrossChain(
        address toToken,
        uint256 toChain, // wormhole chain ID
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue, // gas to receive at the designated contract
        uint256 gasLimit // gas limit for the relayed transaction
    ) external payable returns (uint256 id);

    /*
     * Permissioned Functions
     */

    /**
     * @notice Swap credit to tokens; should be called by the adaptor
     */
    function completeSwapCreditForTokens(
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver
    ) external returns (uint256 actualToAmount, uint256 toTokenFee);

    function mintCredit(uint256 creditAmount, address receiver) external;
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

interface IPool {
    function getTokens() external view returns (address[] memory);

    function addressOfAsset(address token) external view returns (address);

    function deposit(
        address token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external returns (uint256 liquidity);

    function withdraw(
        address token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function withdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 actualToAmount, uint256 haircut);

    function quotePotentialDeposit(
        address token,
        uint256 amount
    ) external view returns (uint256 liquidity, uint256 reward);

    function quotePotentialSwap(
        address fromToken,
        address toToken,
        int256 fromAmount
    ) external view returns (uint256 potentialOutcome, uint256 haircut);

    function quotePotentialWithdraw(
        address token,
        uint256 liquidity
    ) external view returns (uint256 amount, uint256 fee);

    function quoteAmountIn(
        address fromToken,
        address toToken,
        int256 toAmount
    ) external view returns (uint256 amountIn, uint256 haircut);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IPoolV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

interface IPoolV3 {
    function getTokens() external view returns (address[] memory);

    function addressOfAsset(address token) external view returns (address);

    function deposit(
        address token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external returns (uint256 liquidity);

    function withdraw(
        address token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function withdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 actualToAmount, uint256 haircut);

    function quotePotentialDeposit(address token, uint256 amount) external view returns (uint256 liquidity);

    function quotePotentialSwap(
        address fromToken,
        address toToken,
        int256 fromAmount
    ) external view returns (uint256 potentialOutcome, uint256 haircut);

    function quotePotentialWithdraw(address token, uint256 liquidity) external view returns (uint256 amount);

    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view returns (uint256 finalAmount, uint256 withdrewAmount);

    function quoteAmountIn(
        address fromToken,
        address toToken,
        int256 toAmount
    ) external view returns (uint256 amountIn, uint256 haircut);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IPoolV4.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

import '../interfaces/IAsset.sol';

interface IPoolV4 {
    function getTokens() external view returns (IERC20[] memory);

    function addressOfAsset(IERC20 token) external view returns (IAsset);

    function deposit(
        IERC20 token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external returns (uint256 liquidity);

    function withdraw(
        IERC20 token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function withdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 amount);

    function swap(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external returns (uint256 actualToAmount, uint256 haircut);

    function quotePotentialDeposit(IERC20 token, uint256 amount) external view returns (uint256 liquidity);

    function quotePotentialSwap(
        IERC20 fromToken,
        IERC20 toToken,
        int256 fromAmount
    ) external view returns (uint256 potentialOutcome, uint256 haircut);

    function quotePotentialWithdraw(IERC20 token, uint256 liquidity) external view returns (uint256 amount);

    function quotePotentialWithdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity
    ) external view returns (uint256 finalAmount, uint256 withdrewAmount);

    function quoteAmountIn(
        IERC20 fromToken,
        IERC20 toToken,
        int256 toAmount
    ) external view returns (uint256 amountIn, uint256 haircut);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IRelativePriceProvider.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

interface IRelativePriceProvider {
    /**
     * @notice get the relative price in WAD
     */
    function getRelativePrice() external view returns (uint256);
}

// ============================================================
// FILE: contracts/wombat-core/interfaces/IVolatileAsset.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import './IAsset.sol';

interface IVolatileAsset is IAsset {
    function priceScale() external view returns (uint128);

    function oraclePrice() external view returns (uint128);

    function setOraclePrice(uint256 oraclePrice_) external;

    function setPriceScale(uint256 priceScale_) external;
}

// ============================================================
// FILE: contracts/wombat-core/layerzero/LzAppUpgradable.sol
// ============================================================

// copied at https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/lzApp/LzApp.sol
// modified to make it upgradable
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@layerzerolabs/solidity-examples/contracts/lzApp/interfaces/ILayerZeroReceiver.sol';
import '@layerzerolabs/solidity-examples/contracts/lzApp/interfaces/ILayerZeroUserApplicationConfig.sol';
import '@layerzerolabs/solidity-examples/contracts/lzApp/interfaces/ILayerZeroEndpoint.sol';
import '@layerzerolabs/solidity-examples/contracts/libraries/BytesLib.sol';

/*
 * a generic LzReceiver implementation
 */
abstract contract LzAppUpgradable is Initializable, OwnableUpgradeable, ILayerZeroReceiver, ILayerZeroUserApplicationConfig {
    using BytesLib for bytes;

    // ua can not send payload larger than this by default, but it can be changed by the ua owner
    uint public constant DEFAULT_PAYLOAD_SIZE_LIMIT = 10000;
    uint public constant DEFAULT_GAS_LIMIT_MINIMUM = 200000;

    ILayerZeroEndpoint public lzEndpoint;
    mapping(uint16 => bytes) public trustedRemoteLookup;
    mapping(uint16 => mapping(uint16 => uint)) public minDstGasLookup;
    mapping(uint16 => uint) public payloadSizeLimitLookup;
    address public precrime;

    event SetPrecrime(address precrime);
    event SetTrustedRemote(uint16 _remoteChainId, bytes _path);
    event SetTrustedRemoteAddress(uint16 _remoteChainId, bytes _remoteAddress);
    event SetMinDstGas(uint16 _dstChainId, uint16 _type, uint _minDstGas);

    function __LzApp_init(address _endpoint) internal virtual onlyInitializing {
        __Ownable_init();
        lzEndpoint = ILayerZeroEndpoint(_endpoint);
    }

    function lzReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) public virtual override {
        // lzReceive must be called by the endpoint for security
        require(_msgSender() == address(lzEndpoint), "LzApp: invalid endpoint caller");

        bytes memory trustedRemote = trustedRemoteLookup[_srcChainId];
        // if will still block the message pathway from (srcChainId, srcAddress). should not receive message from untrusted remote.
        require(
            _srcAddress.length == trustedRemote.length && trustedRemote.length > 0 && keccak256(_srcAddress) == keccak256(trustedRemote),
            "LzApp: invalid source sending contract"
        );

        _blockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    // abstract function - the default behaviour of LayerZero is blocking. See: NonblockingLzApp if you dont need to enforce ordered messaging
    function _blockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual;

    function _lzSend(
        uint16 _dstChainId,
        bytes memory _payload,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint _nativeFee
    ) internal virtual {
        bytes memory trustedRemote = trustedRemoteLookup[_dstChainId];
        require(trustedRemote.length != 0, "LzApp: destination chain is not a trusted source");
        _checkPayloadSize(_dstChainId, _payload.length);
        lzEndpoint.send{value: _nativeFee}(_dstChainId, trustedRemote, _payload, _refundAddress, _zroPaymentAddress, _adapterParams);
    }

    function _checkGasLimit(
        uint16 _dstChainId,
        uint16 _type,
        uint _gasLimit
    ) internal view virtual {
        uint minGasLimit = minDstGasLookup[_dstChainId][_type];
        if (minGasLimit == 0) {
            minGasLimit = DEFAULT_GAS_LIMIT_MINIMUM;
        }
        require(_gasLimit >= minGasLimit, "LzApp: gas limit is too low");
    }

    function _getGasLimit(bytes memory _adapterParams) internal pure virtual returns (uint gasLimit) {
        require(_adapterParams.length >= 34, "LzApp: invalid adapterParams");
        assembly {
            gasLimit := mload(add(_adapterParams, 34))
        }
    }

    function _checkPayloadSize(uint16 _dstChainId, uint _payloadSize) internal view virtual {
        uint payloadSizeLimit = payloadSizeLimitLookup[_dstChainId];
        if (payloadSizeLimit == 0) {
            // use default if not set
            payloadSizeLimit = DEFAULT_PAYLOAD_SIZE_LIMIT;
        }
        require(_payloadSize <= payloadSizeLimit, "LzApp: payload size is too large");
    }

    //---------------------------UserApplication config----------------------------------------
    function getConfig(
        uint16 _version,
        uint16 _chainId,
        address,
        uint _configType
    ) external view returns (bytes memory) {
        return lzEndpoint.getConfig(_version, _chainId, address(this), _configType);
    }

    // generic config for LayerZero user Application
    function setConfig(
        uint16 _version,
        uint16 _chainId,
        uint _configType,
        bytes calldata _config
    ) external override onlyOwner {
        lzEndpoint.setConfig(_version, _chainId, _configType, _config);
    }

    function setSendVersion(uint16 _version) external override onlyOwner {
        lzEndpoint.setSendVersion(_version);
    }

    function setReceiveVersion(uint16 _version) external override onlyOwner {
        lzEndpoint.setReceiveVersion(_version);
    }

    function forceResumeReceive(uint16 _srcChainId, bytes calldata _srcAddress) external override onlyOwner {
        lzEndpoint.forceResumeReceive(_srcChainId, _srcAddress);
    }

    // _path = abi.encodePacked(remoteAddress, localAddress)
    // this function set the trusted path for the cross-chain communication
    function setTrustedRemote(uint16 _remoteChainId, bytes calldata _path) external onlyOwner {
        trustedRemoteLookup[_remoteChainId] = _path;
        emit SetTrustedRemote(_remoteChainId, _path);
    }

    function setTrustedRemoteAddress(uint16 _remoteChainId, bytes calldata _remoteAddress) external onlyOwner {
        trustedRemoteLookup[_remoteChainId] = abi.encodePacked(_remoteAddress, address(this));
        emit SetTrustedRemoteAddress(_remoteChainId, _remoteAddress);
    }

    function getTrustedRemoteAddress(uint16 _remoteChainId) external view returns (bytes memory) {
        bytes memory path = trustedRemoteLookup[_remoteChainId];
        require(path.length != 0, "LzApp: no trusted path record");
        return path.slice(0, path.length - 20); // the last 20 bytes should be address(this)
    }

    function setPrecrime(address _precrime) external onlyOwner {
        precrime = _precrime;
        emit SetPrecrime(_precrime);
    }

    function setMinDstGas(
        uint16 _dstChainId,
        uint16 _packetType,
        uint _minGas
    ) external onlyOwner {
        minDstGasLookup[_dstChainId][_packetType] = _minGas;
        emit SetMinDstGas(_dstChainId, _packetType, _minGas);
    }

    // if the size is 0, it means default size limit
    function setPayloadSizeLimit(uint16 _dstChainId, uint _size) external onlyOwner {
        payloadSizeLimitLookup[_dstChainId] = _size;
    }

    //--------------------------- VIEW FUNCTION ----------------------------------------
    function isTrustedRemote(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (bool) {
        bytes memory trustedSource = trustedRemoteLookup[_srcChainId];
        return keccak256(trustedSource) == keccak256(_srcAddress);
    }
}

// ============================================================
// FILE: contracts/wombat-core/layerzero/NonblockingLzAppUpgradable.sol
// ============================================================

// copied at https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/lzApp/NonblockingLzApp.sol
// modified to make it upgradable
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './LzAppUpgradable.sol';
import '@layerzerolabs/solidity-examples/contracts/libraries/ExcessivelySafeCall.sol';


/*
 * the default LayerZero messaging behaviour is blocking, i.e. any failed message will block the channel
 * this abstract class try-catch all fail messages and store locally for future retry. hence, non-blocking
 * NOTE: if the srcAddress is not configured properly, it will still block the message pathway from (srcChainId, srcAddress)
 */
abstract contract NonblockingLzAppUpgradable is LzAppUpgradable {
    using ExcessivelySafeCall for address;

    mapping(uint16 => mapping(bytes => mapping(uint64 => bytes32))) public failedMessages;

    event MessageFailed(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload, bytes _reason);
    event RetryMessageSuccess(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes32 _payloadHash);

    // overriding the virtual function in LzReceiver
    function _blockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual override {
        (bool success, bytes memory reason) = address(this).excessivelySafeCall(
            gasleft(),
            150,
            abi.encodeWithSelector(this.nonblockingLzReceive.selector, _srcChainId, _srcAddress, _nonce, _payload)
        );
        // try-catch all errors/exceptions
        if (!success) {
            _storeFailedMessage(_srcChainId, _srcAddress, _nonce, _payload, reason);
        }
    }

    function _storeFailedMessage(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload,
        bytes memory _reason
    ) internal virtual {
        failedMessages[_srcChainId][_srcAddress][_nonce] = keccak256(_payload);
        emit MessageFailed(_srcChainId, _srcAddress, _nonce, _payload, _reason);
    }

    function nonblockingLzReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) public virtual {
        // only internal transaction
        require(_msgSender() == address(this), "NonblockingLzApp: caller must be LzApp");
        _nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    //@notice override this function
    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual;

    function retryMessage(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) public payable virtual {
        // assert there is message to retry
        bytes32 payloadHash = failedMessages[_srcChainId][_srcAddress][_nonce];
        require(payloadHash != bytes32(0), "NonblockingLzApp: no stored message");
        require(keccak256(_payload) == payloadHash, "NonblockingLzApp: invalid payload");
        // clear the stored message
        failedMessages[_srcChainId][_srcAddress][_nonce] = bytes32(0);
        // execute the message. revert if it fails again
        _nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
        emit RetryMessageSuccess(_srcChainId, _srcAddress, _nonce, payloadHash);
    }
}

// ============================================================
// FILE: contracts/wombat-core/libraries/Adaptor.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';

import '../interfaces/IAdaptor.sol';
import '../interfaces/ICrossChainPool.sol';

abstract contract Adaptor is
    IAdaptor,
    Initializable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    ICrossChainPool public crossChainPool;

    uint256 private _used;

    /// @notice whether the token is valid
    /// @dev wormhole chainId => token address => bool
    /// Instead of a security feature, this is a sanity check in case user uses an invalid token address
    mapping(uint256 => mapping(address => bool)) public validToken;

    uint256[50] private __gap;

    event BridgeCreditAndSwapForTokens(
        address toToken,
        uint256 toChain,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 sequence
    );
    event LogError(uint256 emitterChainId, address emitterAddress, bytes data);

    error ADAPTOR__CONTRACT_NOT_TRUSTED();
    error ADAPTOR__INVALID_TOKEN();

    function __Adaptor_init(ICrossChainPool _crossChainPool) internal virtual onlyInitializing {
        __Ownable_init();
        __ReentrancyGuard_init_unchained();

        crossChainPool = _crossChainPool;
    }

    /**
     * @dev Nonce must be non-zero, otherwise wormhole will revert the message
     */
    function bridgeCreditAndSwapForTokens(
        address toToken,
        uint256 toChain,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    ) external payable override returns (uint256 sequence) {
        require(msg.sender == address(crossChainPool), 'Adaptor: not authorized');
        _isValidToken(toChain, toToken);

        sequence = _bridgeCreditAndSwapForTokens(
            toToken,
            toChain,
            fromAmount,
            minimumToAmount,
            receiver,
            receiverValue,
            deliveryGasLimit
        );

        // (emitterChainID, emitterAddress, sequence) is used to retrive the generated VAA from the Guardian Network and for tracking
        emit BridgeCreditAndSwapForTokens(toToken, toChain, fromAmount, minimumToAmount, receiver, sequence);
    }

    /**
     * Internal functions
     */

    function _bridgeCreditAndSwapForTokens(
        address toToken,
        uint256 toChain,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    ) internal virtual returns (uint256 sequence);

    function _isValidToken(uint256 chainId, address tokenAddr) internal view {
        if (!validToken[chainId][tokenAddr]) revert ADAPTOR__INVALID_TOKEN();
    }

    function _swapCreditForTokens(
        uint256 emitterChainId,
        address emitterAddress,
        address toToken,
        uint256 creditAmount,
        uint256 minimumToAmount,
        address receiver
    ) internal returns (bool success, uint256 amount) {
        try crossChainPool.completeSwapCreditForTokens(toToken, creditAmount, minimumToAmount, receiver) returns (
            uint256 actualToAmount,
            uint256
        ) {
            return (true, actualToAmount);
        } catch (bytes memory reason) {
            // TODO: Investigate how can we decode error message from logs
            emit LogError(emitterChainId, emitterAddress, reason);
            crossChainPool.mintCredit(creditAmount, receiver);

            return (false, creditAmount);
        }
    }

    function _encode(
        address toToken,
        uint256 creditAmount,
        uint256 minimumToAmount,
        address receiver
    ) internal pure returns (bytes memory) {
        require(toToken != address(0), 'toToken cannot be zero');
        require(receiver != address(0), 'receiver cannot be zero');
        require(creditAmount != uint256(0), 'creditAmount cannot be zero');
        require(toToken != receiver, 'toToken cannot be receiver');

        return abi.encode(toToken, creditAmount, minimumToAmount, receiver);
    }

    function _decode(
        bytes memory encoded
    ) internal pure returns (address toToken, uint256 creditAmount, uint256 minimumToAmount, address receiver) {
        require(encoded.length == 128, 'byte length must be 128');

        (toToken, creditAmount, minimumToAmount, receiver) = abi.decode(encoded, (address, uint256, uint256, address));

        require(toToken != address(0), 'toToken cannot be zero');
        require(receiver != address(0), 'receiver cannot be zero');

        require(creditAmount != uint256(0), 'creditAmount cannot be zero');
        require(toToken != receiver, 'toToken cannot be receiver');
    }

    /**
     * Permisioneed functions
     */

    function approveToken(uint256 wormholeChainId, address tokenAddr) external onlyOwner {
        require(!validToken[wormholeChainId][tokenAddr]);
        validToken[wormholeChainId][tokenAddr] = true;
    }

    function revokeToken(uint256 wormholeChainId, address tokenAddr) external onlyOwner {
        require(validToken[wormholeChainId][tokenAddr]);
        validToken[wormholeChainId][tokenAddr] = false;
    }
}

// ============================================================
// FILE: contracts/wombat-core/libraries/AssetLibrary.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../interfaces/IAsset.sol';

/**
 * @notice An internal library for assets management and utilities
 */
library AssetLibrary {
    using AssetLibrary for AssetMap;

    /// @notice Asset Map struct holds assets
    struct AssetMap {
        IERC20[] keys;
        mapping(IERC20 => IAsset) values;
        mapping(IERC20 => uint256) indexOf;
    }

    //#region Error

    error WOMBAT_ASSET_NOT_EXISTS();
    error WOMBAT_ASSET_ALREADY_EXIST();

    //#endregion Error

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(AssetLibrary.AssetMap storage assets, IERC20 token, IAsset asset) internal {
        if (assets.containsAsset(token)) revert AssetLibrary.WOMBAT_ASSET_ALREADY_EXIST();
        assets.values[token] = IAsset(asset);
        assets.indexOf[token] = assets.keys.length;
        assets.keys.push(token);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(AssetLibrary.AssetMap storage assets, IERC20 token) internal {
        assets.checkAssetExistFor(token);

        delete assets.values[token];

        uint256 index = assets.indexOf[token];
        uint256 lastIndex = assets.keys.length - 1;
        IERC20 lastKey = assets.keys[lastIndex];

        assets.indexOf[lastKey] = index;
        delete assets.indexOf[token];

        assets.keys[index] = lastKey;
        assets.keys.pop();
    }

    /**
     * @notice get length of asset list
     * @return the size of the asset list
     */
    function count(AssetMap storage assets) internal view returns (uint256) {
        return assets.keys.length;
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @param token The address of ERC20 token
     */
    function assetOf(AssetMap storage assets, IERC20 token) internal view returns (IAsset) {
        if (!assets.containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        return assets.values[token];
    }

    function getAssetAtIndex(AssetMap storage assets, uint256 index) internal view returns (IAsset) {
        return assets.values[assets.keys[index]];
    }

    function checkAssetExistFor(AssetMap storage assets, IERC20 token) internal view {
        if (!assets.containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
    }

    /**
     * @notice Looks if the asset is contained by the list
     * @param token The address of token to look for
     * @return bool true if the asset is in asset list, false otherwise
     */
    function containsAsset(AssetMap storage assets, IERC20 token) internal view returns (bool) {
        return assets.values[token] != IAsset(address(0));
    }
}

// ============================================================
// FILE: contracts/wombat-core/libraries/DSMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/// math.sol -- mixin for inline numerical wizardry

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.8.5;

library DSMath {
    uint256 public constant WAD = 10 ** 18;

    // Babylonian Method
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    //rounds to zero if x*y < WAD / 2
    function wmul(uint256 x, uint256 y) internal pure returns (uint256) {
        return ((x * y) + (WAD / 2)) / WAD;
    }

    function wdiv(uint256 x, uint256 y) internal pure returns (uint256) {
        return ((x * WAD) + (y / 2)) / y;
    }

    // Convert x to WAD (18 decimals) from d decimals.
    function toWad(uint256 x, uint8 d) internal pure returns (uint256) {
        if (d < 18) {
            return x * 10 ** (18 - d);
        } else if (d > 18) {
            return (x / (10 ** (d - 18)));
        }
        return x;
    }

    // Convert x from WAD (18 decimals) to d decimals.
    function fromWad(uint256 x, uint8 d) internal pure returns (uint256) {
        if (d < 18) {
            return (x / (10 ** (18 - d)));
        } else if (d > 18) {
            return x * 10 ** (d - 18);
        }
        return x;
    }

    function to128(uint256 value) internal pure returns (uint128) {
        require(value <= type(uint128).max, 'uint128 overflow');
        return uint128(value);
    }
}

// ============================================================
// FILE: contracts/wombat-core/libraries/SignedSafeMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (utils/math/SignedSafeMath.sol)

pragma solidity ^0.8.5;

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SignedSafeMath` is no longer needed starting with Solidity 0.8. The compiler
 * now has built in overflow checking.
 */
library SignedSafeMath {
    int256 public constant WAD = 10 ** 18;

    //rounds to zero if x*y < WAD / 2
    function wdiv(int256 x, int256 y) internal pure returns (int256) {
        return ((x * WAD) + (y / 2)) / y;
    }

    //rounds to zero if x*y < WAD / 2
    function wmul(int256 x, int256 y) internal pure returns (int256) {
        return ((x * y) + (WAD / 2)) / WAD;
    }

    // Babylonian Method (typecast as int)
    function sqrt(int256 y) internal pure returns (int256 z) {
        if (y > 3) {
            z = y;
            int256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    // Babylonian Method with initial guess (typecast as int)
    function sqrt(int256 y, int256 guess) internal pure returns (int256 z) {
        if (y > 3) {
            if (guess > 0 && guess <= y) {
                z = guess;
            } else if (guess < 0 && -guess <= y) {
                z = -guess;
            } else {
                z = y;
            }
            int256 x = (y / z + z) / 2;
            while (x != z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    // Convert x to WAD (18 decimals) from d decimals.
    function toWad(int256 x, uint8 d) internal pure returns (int256) {
        if (d < 18) {
            return x * int256(10 ** (18 - d));
        } else if (d > 18) {
            return (x / int256(10 ** (d - 18)));
        }
        return x;
    }

    // Convert x from WAD (18 decimals) to d decimals.
    function fromWad(int256 x, uint8 d) internal pure returns (int256) {
        if (d < 18) {
            return (x / int256(10 ** (18 - d)));
        } else if (d > 18) {
            return x * int256(10 ** (d - 18));
        }
        return x;
    }

    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, 'value must be positive');
        return uint256(value);
    }

    function toInt256(uint256 value) internal pure returns (int256) {
        require(value <= uint256(type(int256).max), 'value must be positive');
        return int256(value);
    }

    function abs(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            return uint256(-value);
        } else {
            return uint256(value);
        }
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/CoreV2.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';

/**
 * @title CoreV2
 * @notice Handles math operations of Wombat protocol. Assume all params are signed integer with 18 decimals
 * @dev Uses OpenZeppelin's SignedSafeMath and DSMath's WAD for calculations.
 */
contract CoreV2 {
    using DSMath for uint256;
    using SignedSafeMath for int256;
    int256 internal constant WAD_I = 10 ** 18;
    uint256 internal constant WAD = 10 ** 18;

    error CORE_UNDERFLOW();

    /**
     * @notice Core Wombat stableswap equation
     * @dev This function always returns >= 0
     * @param Ax asset of token x
     * @param Ay asset of token y
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param Dx delta x, i.e. token x amount inputted
     * @param A amplification factor
     * @return quote The quote for amount of token y swapped for token x amount inputted
     */
    function _swapQuoteFunc(
        int256 Ax,
        int256 Ay,
        int256 Lx,
        int256 Ly,
        int256 Dx,
        int256 A
    ) internal pure returns (uint256 quote) {
        if (Lx == 0 || Ly == 0) {
            // in case div of 0
            revert CORE_UNDERFLOW();
        }
        int256 D = Ax + Ay - A.wmul((Lx * Lx) / Ax + (Ly * Ly) / Ay); // flattened _invariantFunc
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 b = (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly); // flattened _coefficientFunc
        int256 ry_ = _solveQuad(b, A);
        int256 Dy = Ly.wmul(ry_) - Ay;
        if (Dy < 0) {
            quote = uint256(-Dy);
        } else {
            quote = uint256(Dy);
        }
    }

    /**
     * @notice Solve quadratic equation
     * @dev This function always returns >= 0
     * @param b quadratic equation b coefficient
     * @param c quadratic equation c coefficient
     * @return x
     */
    function _solveQuad(int256 b, int256 c) internal pure returns (int256) {
        return (((b * b) + (c * 4 * WAD_I)).sqrt(b) - b) / 2;
    }

    /**
     * @notice Equation to get invariant constant between token x and token y
     * @dev This function always returns >= 0
     * @param Lx liability of token x
     * @param rx cov ratio of token x
     * @param Ly liability of token x
     * @param ry cov ratio of token y
     * @param A amplification factor
     * @return The invariant constant between token x and token y ("D")
     */
    function _invariantFunc(int256 Lx, int256 rx, int256 Ly, int256 ry, int256 A) internal pure returns (int256) {
        int256 a = Lx.wmul(rx) + Ly.wmul(ry);
        int256 b = A.wmul(Lx.wdiv(rx) + Ly.wdiv(ry));
        return a - b;
    }

    /**
     * @notice Equation to get quadratic equation b coefficient
     * @dev This function can return >= 0 or <= 0
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param rx_ new asset coverage ratio of token x
     * @param D invariant constant
     * @param A amplification factor
     * @return The quadratic equation b coefficient ("b")
     */
    function _coefficientFunc(int256 Lx, int256 Ly, int256 rx_, int256 D, int256 A) internal pure returns (int256) {
        return Lx.wmul(rx_ - A.wdiv(rx_)).wdiv(Ly) - D.wdiv(Ly);
    }

    /**
     * @return v positive value indicates a reward and negative value indicates a fee
     */
    function depositRewardImpl(
        int256 D,
        int256 SL,
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) internal pure returns (int256 v) {
        if (L_i == 0) {
            // early return in case of div of 0
            return 0;
        }
        if (delta_i + SL == 0) {
            return L_i - A_i;
        }

        int256 r_i_ = _targetedCovRatio(SL, delta_i, A_i, L_i, D, A);
        v = A_i + delta_i - (L_i + delta_i).wmul(r_i_);
    }

    /**
     * @dev should be used only when r* = 1
     */
    function withdrawalAmountInEquilImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) internal pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);
        int256 rho = L_i.wmul(r_i - A.wdiv(r_i));
        int256 beta = (rho + delta_i.wmul(WAD_I - A)) / 2;
        int256 A_i_ = beta + (beta * beta + A.wmul(L_i_ * L_i_)).sqrt(beta);
        amount = A_i - A_i_;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function exactDepositLiquidityInEquilImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) internal pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(WAD_I - A) + 2 * A.wmul(L_i);
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    function _targetedCovRatio(
        int256 SL,
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 D,
        int256 A
    ) internal pure returns (int256 r_i_) {
        int256 r_i = A_i.wdiv(L_i);
        int256 er = _equilCovRatio(D, SL, A);
        int256 er_ = _newEquilCovRatio(er, SL, delta_i);
        int256 D_ = _newInvariantFunc(er_, A, SL, delta_i);

        // Summation of k∈T\{i} is D - L_i.wmul(r_i - A.wdiv(r_i))
        int256 b_ = (D - A_i + (L_i * A) / r_i - D_).wdiv(L_i + delta_i);
        r_i_ = _solveQuad(b_, A);
    }

    function _equilCovRatio(int256 D, int256 SL, int256 A) internal pure returns (int256 er) {
        int256 b = -(D.wdiv(SL));
        er = _solveQuad(b, A);
    }

    function _newEquilCovRatio(int256 er, int256 SL, int256 delta_i) internal pure returns (int256 er_) {
        er_ = (delta_i + SL.wmul(er)).wdiv(delta_i + SL);
    }

    function _newInvariantFunc(int256 er_, int256 A, int256 SL, int256 delta_i) internal pure returns (int256 D_) {
        D_ = (SL + delta_i).wmul(er_ - A.wdiv(er_));
    }

    /**
     * @notice From Yellow Paper (Haircut).
     * @dev Applies haircut rate to amount
     * @param amount The amount that will receive the discount
     * @param rate The rate to be applied
     * @return The result of operation.
     */
    function _haircut(uint256 amount, uint256 rate) internal pure returns (uint256) {
        return amount.wmul(rate);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/CoreV3.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../interfaces/IAsset.sol';
import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';

/**
 * @title CoreV3
 * @notice Handles math operations of Wombat protocol. Assume all params are signed integer with 18 decimals
 * @dev Uses OpenZeppelin's SignedSafeMath and DSMath's WAD for calculations.
 * Change log:
 * - Move view functinos (quotes, high cov ratio fee) from the Pool contract to this contract
 * - Add quote functions for cross chain swaps
 */
library CoreV3 {
    using DSMath for uint256;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    int256 internal constant WAD_I = 10 ** 18;
    uint256 internal constant WAD = 10 ** 18;

    error CORE_UNDERFLOW();
    error CORE_INVALID_VALUE();
    error CORE_INVALID_HIGH_COV_RATIO_FEE();
    error CORE_ZERO_LIQUIDITY();
    error CORE_CASH_NOT_ENOUGH();
    error CORE_COV_RATIO_LIMIT_EXCEEDED();

    /*
     * Public view functions
     */

    /**
     * This function calculate the exactly amount of liquidity of the deposit. Assumes r* = 1
     */
    function quoteDepositLiquidity(
        IAsset asset,
        uint256 amount,
        uint256 ampFactor,
        int256 _equilCovRatio
    ) external view returns (uint256 lpTokenToMint, uint256 liabilityToMint) {
        liabilityToMint = _equilCovRatio == WAD_I
            ? exactDepositLiquidityInEquilImpl(
                amount.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256()
            ).toUint256()
            : exactDepositLiquidityImpl(
                amount.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256(),
                _equilCovRatio
            ).toUint256();

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = asset.liability();
        lpTokenToMint = (liability == 0 ? liabilityToMint : (liabilityToMint * asset.totalSupply()) / liability);
    }

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param asset The asset willing to be withdrawn
     * @param liquidity The liquidity willing to be withdrawn
     * @param _equilCovRatio global equilibrium coverage ratio
     * @param withdrawalHaircutRate withdraw haircut rate
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return withdrawalHaircut Total withdrawal haircut
     */
    function quoteWithdrawAmount(
        IAsset asset,
        uint256 liquidity,
        uint256 ampFactor,
        int256 _equilCovRatio,
        uint256 withdrawalHaircutRate
    ) public view returns (uint256 amount, uint256 liabilityToBurn, uint256 withdrawalHaircut) {
        liabilityToBurn = (asset.liability() * liquidity) / asset.totalSupply();
        if (liabilityToBurn == 0) revert CORE_ZERO_LIQUIDITY();

        amount = _equilCovRatio == WAD_I
            ? withdrawalAmountInEquilImpl(
                -liabilityToBurn.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256()
            ).toUint256()
            : withdrawalAmountImpl(
                -liabilityToBurn.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256(),
                _equilCovRatio
            ).toUint256();

        // charge withdrawal haircut
        if (withdrawalHaircutRate > 0) {
            withdrawalHaircut = amount.wmul(withdrawalHaircutRate);
            amount -= withdrawalHaircut;
        }
    }

    function quoteWithdrawAmountFromOtherAsset(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 liquidity,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate,
        uint256 startCovRatio,
        uint256 endCovRatio,
        int256 _equilCovRatio,
        uint256 withdrawalHaircutRate
    ) external view returns (uint256 finalAmount, uint256 withdrewAmount) {
        // quote withdraw
        uint256 withdrawalHaircut;
        uint256 liabilityToBurn;
        (withdrewAmount, liabilityToBurn, withdrawalHaircut) = quoteWithdrawAmount(
            fromAsset,
            liquidity,
            ampFactor,
            _equilCovRatio,
            withdrawalHaircutRate
        );

        // quote swap
        uint256 fromCash = fromAsset.cash() - withdrewAmount - withdrawalHaircut;
        uint256 fromLiability = fromAsset.liability() - liabilityToBurn;

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            withdrewAmount = (withdrewAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = swapQuoteFunc(
            fromCash.toInt256(),
            int256(uint256(toAsset.cash())),
            fromLiability.toInt256(),
            int256(uint256(toAsset.liability())),
            withdrewAmount.toInt256(),
            ampFactor.toInt256()
        );

        // remove haircut
        finalAmount = idealToAmount - idealToAmount.wmul(haircutRate);

        if (startCovRatio > 0 || endCovRatio > 0) {
            // charge high cov ratio fee
            uint256 fee = highCovRatioFee(
                fromCash,
                fromLiability,
                withdrewAmount,
                finalAmount,
                startCovRatio,
                endCovRatio
            );

            finalAmount -= fee;
        }
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @return actualToAmount The actual amount user would receive
     * @return haircut The haircut that will be applied
     */
    function quoteSwap(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate
    ) external view returns (uint256 actualToAmount, uint256 haircut) {
        // exact output swap quote should count haircut before swap
        if (fromAmount < 0) {
            fromAmount = fromAmount.wdiv(WAD_I - int256(haircutRate));
        }

        uint256 fromCash = uint256(fromAsset.cash());
        uint256 fromLiability = uint256(fromAsset.liability());
        uint256 toCash = uint256(toAsset.cash());

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * scaleFactor.toInt256()) / 1e18;
        }

        uint256 idealToAmount = swapQuoteFunc(
            fromCash.toInt256(),
            toCash.toInt256(),
            fromLiability.toInt256(),
            int256(uint256(toAsset.liability())),
            fromAmount,
            ampFactor.toInt256()
        );
        if ((fromAmount > 0 && toCash < idealToAmount) || (fromAmount < 0 && fromAsset.cash() < uint256(-fromAmount))) {
            revert CORE_CASH_NOT_ENOUGH();
        }

        if (fromAmount > 0) {
            // normal quote
            haircut = idealToAmount.wmul(haircutRate);
            actualToAmount = idealToAmount - haircut;
        } else {
            // exact output swap quote count haircut in the fromAmount
            actualToAmount = idealToAmount;
            haircut = uint256(-fromAmount).wmul(haircutRate);
        }
    }

    /// @dev reverse quote is not supported
    /// haircut is calculated in the fromToken when swapping tokens for credit
    function quoteSwapTokensForCredit(
        IAsset fromAsset,
        uint256 fromAmount,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) external view returns (uint256 creditAmount, uint256 fromTokenFee) {
        if (fromAmount == 0) return (0, 0);
        // haircut
        fromTokenFee = fromAmount.wmul(haircutRate);

        // high coverage ratio fee

        uint256 fromCash = fromAsset.cash();
        uint256 fromLiability = fromAsset.liability();
        fromTokenFee += highCovRatioFee(
            fromCash,
            fromLiability,
            fromAmount,
            fromAmount - fromTokenFee, // calculate haircut in the fromAmount (exclude haircut)
            startCovRatio,
            endCovRatio
        );

        fromAmount -= fromTokenFee;

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * scaleFactor) / 1e18;
        }

        creditAmount = swapToCreditQuote(
            fromCash.toInt256(),
            fromLiability.toInt256(),
            fromAmount.toInt256(),
            ampFactor.toInt256()
        );
    }

    /// @dev reverse quote is not supported
    function quoteSwapCreditForTokens(
        uint256 fromAmount,
        IAsset toAsset,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate
    ) external view returns (uint256 actualToAmount, uint256 toTokenFee) {
        if (fromAmount == 0) return (0, 0);
        uint256 toCash = toAsset.cash();
        uint256 toLiability = toAsset.liability();

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromAmount = (fromAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = swapFromCreditQuote(
            toCash.toInt256(),
            toLiability.toInt256(),
            fromAmount.toInt256(),
            ampFactor.toInt256()
        );
        if (fromAmount > 0 && toCash < idealToAmount) {
            revert CORE_CASH_NOT_ENOUGH();
        }

        // normal quote
        toTokenFee = idealToAmount.wmul(haircutRate);
        actualToAmount = idealToAmount - toTokenFee;
    }

    function equilCovRatio(int256 D, int256 SL, int256 A) public pure returns (int256 er) {
        int256 b = -(D.wdiv(SL));
        er = _solveQuad(b, A);
    }

    /*
     * Pure calculating functions
     */

    /**
     * @notice Core Wombat stableswap equation
     * @dev This function always returns >= 0
     * @param Ax asset of token x
     * @param Ay asset of token y
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param Dx delta x, i.e. token x amount inputted
     * @param A amplification factor
     * @return quote The quote for amount of token y swapped for token x amount inputted
     */
    function swapQuoteFunc(
        int256 Ax,
        int256 Ay,
        int256 Lx,
        int256 Ly,
        int256 Dx,
        int256 A
    ) public pure returns (uint256 quote) {
        if (Lx == 0 || Ly == 0) {
            // in case div of 0
            revert CORE_UNDERFLOW();
        }
        int256 D = Ax + Ay - A.wmul((Lx * Lx) / Ax + (Ly * Ly) / Ay); // flattened _invariantFunc
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 b = (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly); // flattened _coefficientFunc
        int256 ry_ = _solveQuad(b, A);
        int256 Dy = Ly.wmul(ry_) - Ay;
        return Dy.abs();
    }

    /**
     * @dev Calculate the withdrawal amount for any r*
     */
    function withdrawalAmountImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A,
        int256 _equilCovRatio
    ) public pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);
        int256 delta_D = delta_i.wmul(_equilCovRatio) - (delta_i * A) / _equilCovRatio; // The only line that is different
        int256 b = -(L_i.wmul(r_i - A.wdiv(r_i)) + delta_D);
        int256 c = A.wmul(L_i_.wmul(L_i_));
        int256 A_i_ = _solveQuad(b, c);
        amount = A_i - A_i_;
    }

    /**
     * @dev should be used only when r* = 1
     */
    function withdrawalAmountInEquilImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) public pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);

        int256 rho = L_i.wmul(r_i - A.wdiv(r_i));
        int256 beta = (rho + delta_i.wmul(WAD_I - A)) / 2;
        int256 A_i_ = beta + (beta * beta + A.wmul(L_i_ * L_i_)).sqrt(beta);
        // equilvalent to:
        // int256 delta_D = delta_i.wmul(WAD_I - A);
        // int256 b = -(L_i.wmul(r_i - A.wdiv(r_i)) + delta_D);
        // int256 c = A.wmul(L_i_.wmul(L_i_));
        // int256 A_i_ = _solveQuad(b, c);

        amount = A_i - A_i_;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function exactDepositLiquidityImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A,
        int256 _equilCovRatio
    ) public pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(_equilCovRatio) - (k * A) / _equilCovRatio + 2 * A.wmul(L_i); // The only line that is different
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function exactDepositLiquidityInEquilImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) public pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(WAD_I - A) + 2 * A.wmul(L_i);
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    /**
     * @notice quote swapping from tokens for credit
     * @dev This function always returns >= 0
     */
    function swapToCreditQuote(int256 Ax, int256 Lx, int256 Dx, int256 A) public pure returns (uint256 quote) {
        int256 rx = Ax.wdiv(Lx);
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 x = rx_ - A.wdiv(rx_);
        int256 y = rx - A.wdiv(rx);

        // adjsut credit by 1 / (1 + A)
        return ((Lx * (x - y)) / (WAD_I + A)).abs();
    }

    /**
     * @notice quote swapping from credit for tokens
     * @dev This function always returns >= 0
     */
    function swapFromCreditQuote(
        int256 Ax,
        int256 Lx,
        int256 delta_credit,
        int256 A
    ) public pure returns (uint256 quote) {
        int256 rx = Ax.wdiv(Lx);
        // adjsut credit by 1 + A
        int256 b = (delta_credit * (WAD_I + A)) / Lx - rx + A.wdiv(rx); // flattened _coefficientFunc
        int256 rx_ = _solveQuad(b, A);
        int256 Dx = Ax - Lx.wmul(rx_);

        return Dx.abs();
    }

    function highCovRatioFee(
        uint256 fromAssetCash,
        uint256 fromAssetLiability,
        uint256 fromAmount,
        uint256 quotedToAmount,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) public pure returns (uint256 fee) {
        uint256 finalFromAssetCovRatio = (fromAssetCash + fromAmount).wdiv(fromAssetLiability);

        if (finalFromAssetCovRatio > startCovRatio) {
            // charge high cov ratio fee
            uint256 feeRatio = _highCovRatioFee(
                fromAssetCash.wdiv(fromAssetLiability),
                finalFromAssetCovRatio,
                startCovRatio,
                endCovRatio
            );

            if (feeRatio > WAD) revert CORE_INVALID_HIGH_COV_RATIO_FEE();
            fee = feeRatio.wmul(quotedToAmount);
        }
    }

    /*
     * Internal functions
     */

    /**
     * @notice Solve quadratic equation
     * @dev This function always returns >= 0
     * @param b quadratic equation b coefficient
     * @param c quadratic equation c coefficient
     * @return x
     */
    function _solveQuad(int256 b, int256 c) internal pure returns (int256) {
        return (((b * b) + (c * 4 * WAD_I)).sqrt(b) - b) / 2;
    }

    /**
     * @notice Equation to get invariant constant between token x and token y
     * @dev This function always returns >= 0
     * @param Lx liability of token x
     * @param rx cov ratio of token x
     * @param Ly liability of token x
     * @param ry cov ratio of token y
     * @param A amplification factor
     * @return The invariant constant between token x and token y ("D")
     */
    function _invariantFunc(int256 Lx, int256 rx, int256 Ly, int256 ry, int256 A) internal pure returns (int256) {
        int256 a = Lx.wmul(rx) + Ly.wmul(ry);
        int256 b = A.wmul(Lx.wdiv(rx) + Ly.wdiv(ry));
        return a - b;
    }

    /**
     * @notice Equation to get quadratic equation b coefficient
     * @dev This function can return >= 0 or <= 0
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param rx_ new asset coverage ratio of token x
     * @param D invariant constant
     * @param A amplification factor
     * @return The quadratic equation b coefficient ("b")
     */
    function _coefficientFunc(int256 Lx, int256 Ly, int256 rx_, int256 D, int256 A) internal pure returns (int256) {
        return (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly);
    }

    function _targetedCovRatio(
        int256 SL,
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 D,
        int256 A
    ) internal pure returns (int256 r_i_) {
        int256 r_i = A_i.wdiv(L_i);
        int256 er = equilCovRatio(D, SL, A);
        int256 er_ = _newEquilCovRatio(er, SL, delta_i);
        int256 D_ = _newInvariantFunc(er_, A, SL, delta_i);

        // Summation of k∈T\{i} is D - L_i.wmul(r_i - A.wdiv(r_i))
        int256 b_ = (D - A_i + (L_i * A) / r_i - D_).wdiv(L_i + delta_i);
        r_i_ = _solveQuad(b_, A);
    }

    function _newEquilCovRatio(int256 er, int256 SL, int256 delta_i) internal pure returns (int256 er_) {
        er_ = (delta_i + SL.wmul(er)).wdiv(delta_i + SL);
    }

    function _newInvariantFunc(int256 er_, int256 A, int256 SL, int256 delta_i) internal pure returns (int256 D_) {
        D_ = (SL + delta_i).wmul(er_ - A.wdiv(er_));
    }

    /**
     * @notice Calculate the high cov ratio fee in the to-asset in a swap.
     * @dev When cov ratio is in the range [startCovRatio, endCovRatio], the marginal cov ratio is
     * (r - startCovRatio) / (endCovRatio - startCovRatio). Here we approximate the high cov ratio cut
     * by calculating the "average" fee.
     * Note: `finalCovRatio` should be greater than `initCovRatio`
     */
    function _highCovRatioFee(
        uint256 initCovRatio,
        uint256 finalCovRatio,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) internal pure returns (uint256 fee) {
        if (finalCovRatio > endCovRatio) {
            // invalid swap
            revert CORE_COV_RATIO_LIMIT_EXCEEDED();
        } else if (finalCovRatio <= startCovRatio || finalCovRatio <= initCovRatio) {
            return 0;
        }

        // 1. Calculate the area of fee(r) = (r - startCovRatio) / (endCovRatio - startCovRatio)
        // when r increase from initCovRatio to finalCovRatio
        // 2. Then multiply it by (endCovRatio - startCovRatio) / (finalCovRatio - initCovRatio)
        // to get the average fee over the range
        uint256 a = initCovRatio <= startCovRatio ? 0 : (initCovRatio - startCovRatio) * (initCovRatio - startCovRatio);
        uint256 b = (finalCovRatio - startCovRatio) * (finalCovRatio - startCovRatio);
        fee = ((b - a) / (finalCovRatio - initCovRatio) / 2).wdiv(endCovRatio - startCovRatio);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/CoreV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './PoolV4Data.sol';
import '../interfaces/IRelativePriceProvider.sol';
import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

/**
 * @title Core
 * @notice Handles math operations of Wombat protocol. Assume all params are signed integer with 18 decimals
 * @dev Uses OpenZeppelin's SignedSafeMath and DSMath's WAD for calculations.
 * Note: Internal functions are for testing purpose
 * Change log:
 * - Move view functinos (quotes, high cov ratio fee) from the Pool contract to this contract
 * - Add quote functions for cross chain swaps
 */
library CoreV4 {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    int256 private constant WAD_I = 10 ** 18;
    uint256 private constant WAD = 10 ** 18;

    //#region Error

    error CORE_UNDERFLOW();
    error CORE_INVALID_VALUE();
    error CORE_INVALID_HIGH_COV_RATIO_FEE();
    error CORE_ZERO_LIQUIDITY();
    error CORE_CASH_NOT_ENOUGH();
    error CORE_COV_RATIO_LIMIT_EXCEEDED();

    error WOMBAT_FORBIDDEN();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_SAME_ADDRESS();

    //#endregion Error

    //#region Modifier

    function _checkLiquidity(uint256 liquidity) private pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) private pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) private pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) private pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    //#endregion Modifier

    //#region Swap Logic

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function performSwap(
        PoolV4Data storage poolData,
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount,
        uint256 actualToAmount,
        uint256 toTokenFee
    ) external {
        _checkAmount(minimumToAmount, actualToAmount);

        _accumulateFee(poolData, toAsset, toTokenFee);

        fromAsset.addCash(fromAmount);

        // haircut is removed from cash to maintain r* = 1. It is distributed during _mintFee()

        toAsset.removeCash(actualToAmount + toTokenFee);

        // mint fee is skipped for swap to save gas,

        // revert if cov ratio < 1% to avoid precision error
        if (uint256(toAsset.cash()).wdiv(toAsset.liability()) < WAD / 100) revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @param scaleFactor the relative price that should applied on from-amounts in a swap
     * @return actualToAmount The actual amount user would receive
     * @return haircut The haircut that will be applied
     */
    function quoteSwap(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate
    ) public view returns (uint256 actualToAmount, uint256 haircut) {
        // exact output swap quote should count haircut before swap
        if (fromAmount < 0) {
            fromAmount = fromAmount.wdiv(WAD_I - int256(haircutRate));
        }

        uint256 fromCash = uint256(fromAsset.cash());
        uint256 fromLiability = uint256(fromAsset.liability());
        uint256 toCash = uint256(toAsset.cash());

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * scaleFactor.toInt256()) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            fromCash.toInt256(),
            toCash.toInt256(),
            fromLiability.toInt256(),
            int256(uint256(toAsset.liability())),
            fromAmount,
            ampFactor.toInt256()
        );
        if ((fromAmount > 0 && toCash < idealToAmount) || (fromAmount < 0 && fromAsset.cash() < uint256(-fromAmount))) {
            revert CORE_CASH_NOT_ENOUGH();
        }

        if (fromAmount > 0) {
            // normal quote
            haircut = idealToAmount.wmul(haircutRate);
            actualToAmount = idealToAmount - haircut;
        } else {
            // exact output swap quote count haircut in the fromAmount
            actualToAmount = idealToAmount;
            haircut = uint256(-fromAmount).wmul(haircutRate);
        }
    }

    /**
     * @dev Exact output swap (fromAmount < 0) should be only used by off-chain quoting function as it is a gas monster
     */
    function quoteSwapForHighCovRatioPool(
        PoolV4Data storage poolData,
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount,
        uint256 scaleFactor
    ) public view returns (uint256 actualToAmount, uint256 toTokenFee) {
        (actualToAmount, toTokenFee) = quoteSwap(
            fromAsset,
            toAsset,
            fromAmount,
            poolData.ampFactor,
            scaleFactor,
            poolData.haircutRate
        );

        if (poolData.endCovRatio == 0) {
            // early return without taking high cov ratio fee into account
            return (actualToAmount, toTokenFee);
        }

        if (fromAmount >= 0) {
            uint256 highCovRatioFee = _highCovRatioFee(
                fromAsset.cash(),
                fromAsset.liability(),
                uint256(fromAmount),
                actualToAmount,
                poolData.startCovRatio,
                poolData.endCovRatio
            );

            actualToAmount -= highCovRatioFee;
            toTokenFee += highCovRatioFee;
        } else {
            // reverse quote
            uint256 toAssetCash = toAsset.cash();
            uint256 toAssetLiability = toAsset.liability();
            uint256 finalToAssetCovRatio = (toAssetCash + actualToAmount).wdiv(toAssetLiability);
            if (finalToAssetCovRatio <= poolData.startCovRatio) {
                // happy path: no high cov ratio fee is charged
                return (actualToAmount, toTokenFee);
            } else if (toAssetCash.wdiv(toAssetLiability) >= poolData.endCovRatio) {
                // the to-asset exceeds it's cov ratio limit, further swap to increase cov ratio is impossible
                revert CORE_COV_RATIO_LIMIT_EXCEEDED();
            }

            // reverse quote: cov ratio of the to-asset exceed endCovRatio. direct reverse quote is not supported
            // we binary search for a upper bound
            actualToAmount = _findUpperBound(poolData, toAsset, fromAsset, uint256(-fromAmount), scaleFactor);
            (, toTokenFee) = quoteSwapForHighCovRatioPool(
                poolData,
                toAsset,
                fromAsset,
                actualToAmount.toInt256(),
                scaleFactor
            );
        }
    }

    /**
     * @notice Binary search to find the upper bound of `fromAmount` required to swap `fromAsset` to `toAmount` of `toAsset`
     * @dev This function should only used as off-chain view function as it is a gas monster
     */
    function _findUpperBound(
        PoolV4Data storage poolData,
        IAsset fromAsset,
        IAsset toAsset,
        uint256 toAmount,
        uint256 scaleFactor
    ) private view returns (uint256 upperBound) {
        uint8 decimals = fromAsset.underlyingTokenDecimals();
        uint256 toWadFactor = DSMath.toWad(1, decimals);
        // the search value uses the same number of digits as the token
        uint256 high = (uint256(fromAsset.liability()).wmul(poolData.endCovRatio) - fromAsset.cash()).fromWad(decimals);
        uint256 low = 1;

        // verify `high` is a valid upper bound
        uint256 quote;
        (quote, ) = quoteSwapForHighCovRatioPool(
            poolData,
            fromAsset,
            toAsset,
            (high * toWadFactor).toInt256(),
            scaleFactor
        );
        if (quote < toAmount) revert CORE_COV_RATIO_LIMIT_EXCEEDED();

        // Note: we might limit the maximum number of rounds if the request is always rejected by the RPC server
        while (low < high) {
            uint256 mid = (low + high) / 2;
            (quote, ) = quoteSwapForHighCovRatioPool(
                poolData,
                fromAsset,
                toAsset,
                (mid * toWadFactor).toInt256(),
                scaleFactor
            );
            if (quote >= toAmount) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }
        return high * toWadFactor;
    }

    /// @dev reverse quote is not supported
    /// haircut is calculated in the fromToken when swapping tokens for credit
    function quoteSwapTokensForCredit(
        IAsset fromAsset,
        uint256 fromAmount,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) external view returns (uint256 creditAmount, uint256 fromTokenFee) {
        if (fromAmount == 0) return (0, 0);
        // haircut
        fromTokenFee = fromAmount.wmul(haircutRate);

        // high coverage ratio fee

        uint256 fromCash = fromAsset.cash();
        uint256 fromLiability = fromAsset.liability();
        fromTokenFee += _highCovRatioFee(
            fromCash,
            fromLiability,
            fromAmount,
            fromAmount - fromTokenFee, // calculate haircut in the fromAmount (exclude haircut)
            startCovRatio,
            endCovRatio
        );

        fromAmount -= fromTokenFee;

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * scaleFactor) / 1e18;
        }

        creditAmount = _swapToCreditQuote(
            fromCash.toInt256(),
            fromLiability.toInt256(),
            fromAmount.toInt256(),
            ampFactor.toInt256()
        );
    }

    /// @dev reverse quote is not supported
    function quoteSwapCreditForTokens(
        uint256 fromAmount,
        IAsset toAsset,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate
    ) external view returns (uint256 actualToAmount, uint256 toTokenFee) {
        if (fromAmount == 0) return (0, 0);
        uint256 toCash = toAsset.cash();
        uint256 toLiability = toAsset.liability();

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromAmount = (fromAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = _swapFromCreditQuote(
            toCash.toInt256(),
            toLiability.toInt256(),
            fromAmount.toInt256(),
            ampFactor.toInt256()
        );
        if (fromAmount > 0 && toCash < idealToAmount) {
            revert CORE_CASH_NOT_ENOUGH();
        }

        // normal quote
        toTokenFee = idealToAmount.wmul(haircutRate);
        actualToAmount = idealToAmount - toTokenFee;
    }

    //#endregion Swap Logic

    //#region Deposit Logic

    /**
     * @notice Deposits asset in Pool
     * @param asset The asset to be deposited
     * @param amount The amount to be deposited
     * @param minimumLiquidity The minimum amount of liquidity to receive
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        PoolV4Data storage poolData,
        int256 globalEquilCovRatioForDepositWithdrawal,
        IAsset asset,
        uint256 amount,
        uint256 minimumLiquidity,
        address to
    ) external returns (uint256 liquidity) {
        // collect fee before deposit
        _mintFeeIfNeeded(poolData, asset, globalEquilCovRatioForDepositWithdrawal);

        uint256 liabilityToMint;
        (liquidity, liabilityToMint) = _quoteDepositLiquidity(
            asset,
            amount,
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal
        );

        _checkLiquidity(liquidity);
        _checkAmount(minimumLiquidity, liquidity);

        asset.addCash(amount);
        asset.addLiability(liabilityToMint);
        asset.mint(to, liquidity);
    }

    function quotePotentialDeposit(
        PoolV4Data storage poolData,
        IERC20 token,
        uint256 amount,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) external view returns (uint256 liquidity) {
        IAsset asset = poolData.assets.assetOf(token);
        uint8 decimals = asset.underlyingTokenDecimals();
        (liquidity, ) = _quoteDepositLiquidity(
            asset,
            amount.toWad(decimals),
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal
        );
    }

    /**
     * This function calculate the exactly amount of liquidity of the deposit. Assumes r* = 1
     */
    function _quoteDepositLiquidity(
        IAsset asset,
        uint256 amount,
        uint256 ampFactor,
        int256 _equilCovRatio
    ) private view returns (uint256 lpTokenToMint, uint256 liabilityToMint) {
        liabilityToMint = _equilCovRatio == WAD_I
            ? _exactDepositLiquidityInEquilImpl(
                amount.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256()
            ).toUint256()
            : _exactDepositLiquidityImpl(
                amount.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256(),
                _equilCovRatio
            ).toUint256();

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = asset.liability();
        lpTokenToMint = (liability == 0 ? liabilityToMint : (liabilityToMint * asset.totalSupply()) / liability);
    }

    //#endregion Deposit Logic

    //#region Withdrawal Logic

    function withdraw(
        PoolV4Data storage poolData,
        int256 globalEquilCovRatioForDepositWithdrawal,
        IAsset asset,
        uint256 liquidity,
        uint256 minimumAmount
    ) external returns (uint256 amount, uint256 withdrawalHaircut) {
        // collect fee before withdraw
        _mintFeeIfNeeded(poolData, asset, globalEquilCovRatioForDepositWithdrawal);

        // calculate liabilityToBurn and Fee
        uint256 liabilityToBurn;
        (amount, liabilityToBurn, withdrawalHaircut) = _quoteWithdrawAmount(
            asset,
            liquidity,
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal,
            poolData.withdrawalHaircutRate
        );
        _checkAmount(minimumAmount, amount);

        asset.burn(address(asset), liquidity);
        asset.removeCash(amount + withdrawalHaircut);
        asset.removeLiability(liabilityToBurn);

        // revert if cov ratio < 1% to avoid precision error
        if (asset.liability() > 0 && uint256(asset.cash()).wdiv(asset.liability()) < WAD / 100)
            revert WOMBAT_FORBIDDEN();

        if (withdrawalHaircut > 0) {
            _accumulateFee(poolData, asset, withdrawalHaircut);
        }
    }

    function quotePotentialWithdraw(
        PoolV4Data storage poolData,
        int256 globalEquilCovRatioForDepositWithdrawal,
        IERC20 token,
        uint256 liquidity
    ) external view returns (uint256 amount) {
        _checkLiquidity(liquidity);
        IAsset asset = poolData.assets.assetOf(token);
        (amount, , ) = _quoteWithdrawAmount(
            asset,
            liquidity,
            poolData.ampFactor,
            globalEquilCovRatioForDepositWithdrawal,
            poolData.withdrawalHaircutRate
        );

        uint8 decimals = asset.underlyingTokenDecimals();
        amount = amount.fromWad(decimals);
    }

    function quotePotentialWithdrawFromOtherAsset(
        PoolV4Data storage poolData,
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity,
        uint256 scaleFactor,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) external view returns (uint256 finalAmount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(address(fromToken), address(toToken));

        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);
        (finalAmount, withdrewAmount) = _quoteWithdrawAmountFromOtherAsset(
            fromAsset,
            toAsset,
            liquidity,
            poolData.ampFactor,
            scaleFactor,
            poolData.haircutRate,
            poolData.startCovRatio, // this value is 0 for base pool
            poolData.endCovRatio, // this value is 0 for base pool
            globalEquilCovRatioForDepositWithdrawal,
            poolData.withdrawalHaircutRate
        );

        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        finalAmount = finalAmount.fromWad(toAsset.underlyingTokenDecimals());
    }

    function _quoteWithdrawAmountFromOtherAsset(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 liquidity,
        uint256 ampFactor,
        uint256 scaleFactor,
        uint256 haircutRate,
        uint256 startCovRatio,
        uint256 endCovRatio,
        int256 _equilCovRatio,
        uint256 withdrawalHaircutRate
    ) private view returns (uint256 finalAmount, uint256 withdrewAmount) {
        // quote withdraw
        uint256 withdrawalHaircut;
        uint256 liabilityToBurn;
        (withdrewAmount, liabilityToBurn, withdrawalHaircut) = _quoteWithdrawAmount(
            fromAsset,
            liquidity,
            ampFactor,
            _equilCovRatio,
            withdrawalHaircutRate
        );

        // quote swap
        uint256 fromCash = fromAsset.cash() - withdrewAmount - withdrawalHaircut;
        uint256 fromLiability = fromAsset.liability() - liabilityToBurn;

        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            withdrewAmount = (withdrewAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            fromCash.toInt256(),
            int256(uint256(toAsset.cash())),
            fromLiability.toInt256(),
            int256(uint256(toAsset.liability())),
            withdrewAmount.toInt256(),
            ampFactor.toInt256()
        );

        // remove haircut
        finalAmount = idealToAmount - idealToAmount.wmul(haircutRate);

        // `endCovRatio` will be 0 for base pool
        if (endCovRatio > 0) {
            // charge high cov ratio fee
            uint256 fee = _highCovRatioFee(
                fromCash,
                fromLiability,
                withdrewAmount,
                finalAmount,
                startCovRatio,
                endCovRatio
            );

            finalAmount -= fee;
        }
    }

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param asset The asset willing to be withdrawn
     * @param liquidity The liquidity willing to be withdrawn
     * @param _equilCovRatio global equilibrium coverage ratio
     * @param withdrawalHaircutRate withdraw haircut rate
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return withdrawalHaircut Total withdrawal haircut
     */
    function _quoteWithdrawAmount(
        IAsset asset,
        uint256 liquidity,
        uint256 ampFactor,
        int256 _equilCovRatio,
        uint256 withdrawalHaircutRate
    ) private view returns (uint256 amount, uint256 liabilityToBurn, uint256 withdrawalHaircut) {
        liabilityToBurn = (asset.liability() * liquidity) / asset.totalSupply();
        if (liabilityToBurn == 0) revert CORE_ZERO_LIQUIDITY();

        amount = _equilCovRatio == WAD_I
            ? _withdrawalAmountInEquilImpl(
                -liabilityToBurn.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256()
            ).toUint256()
            : _withdrawalAmountImpl(
                -liabilityToBurn.toInt256(),
                int256(uint256(asset.cash())),
                int256(uint256(asset.liability())),
                ampFactor.toInt256(),
                _equilCovRatio
            ).toUint256();

        // charge withdrawal haircut
        if (withdrawalHaircutRate > 0) {
            withdrawalHaircut = amount.wmul(withdrawalHaircutRate);
            amount -= withdrawalHaircut;
        }
    }

    //#endregion Withdrawal Logic

    //#region Fee Logic

    function _accumulateFee(PoolV4Data storage poolData, IAsset asset, uint256 amount) private {
        poolData.feeAndReserve[asset].feeCollected += amount.to128();
    }

    function mintAllFees(PoolV4Data storage poolData, int256 globalEquilCovRatioForDepositWithdrawal) external {
        for (uint256 i; i < poolData.assets.count(); ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);
            mintFee(poolData, asset, globalEquilCovRatioForDepositWithdrawal);
        }
    }

    function _mintFeeIfNeeded(
        PoolV4Data storage poolData,
        IAsset asset,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) private {
        uint256 feeCollected = poolData.feeAndReserve[asset].feeCollected;
        if (feeCollected == 0 || feeCollected < poolData.mintFeeThreshold) {
            return;
        } else {
            mintFee(poolData, asset, globalEquilCovRatioForDepositWithdrawal);
        }
    }

    /**
     * @dev return balance in WAD
     */
    function tipBucketBalance(PoolV4Data storage poolData, IERC20 token) external view returns (uint256 balance) {
        IAsset asset = poolData.assets.assetOf(token);
        return
            asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) -
            asset.cash() -
            poolData.feeAndReserve[asset].feeCollected;
    }

    /**
     * @notice Private function to send fee collected to the fee beneficiary
     * @param asset The address of the asset to collect fee
     */
    function mintFee(
        PoolV4Data storage poolData,
        IAsset asset,
        int256 globalEquilCovRatioForDepositWithdrawal
    ) public returns (uint256 feeCollected) {
        feeCollected = poolData.feeAndReserve[asset].feeCollected;
        if (feeCollected == 0) {
            // early return
            return 0;
        }
        {
            // dividend to veWOM
            uint256 dividend = feeCollected.wmul(WAD - poolData.lpDividendRatio - poolData.retentionRatio);

            if (dividend > 0) {
                asset.transferUnderlyingToken(poolData.feeTo, dividend.fromWad(asset.underlyingTokenDecimals()));
            }
        }
        {
            // dividend to LP
            uint256 lpDividend = feeCollected.wmul(poolData.lpDividendRatio);
            if (lpDividend > 0) {
                // exact deposit to maintain r* = 1
                // increase the value of the LP token, i.e. assetsPerShare
                (, uint256 liabilityToMint) = _quoteDepositLiquidity(
                    asset,
                    lpDividend,
                    poolData.ampFactor,
                    globalEquilCovRatioForDepositWithdrawal
                );
                asset.addLiability(liabilityToMint);
                asset.addCash(lpDividend);
            }
        }
        // remainings are sent to the tipbucket

        poolData.feeAndReserve[asset].feeCollected = 0;
    }

    function _highCovRatioFee(
        uint256 fromAssetCash,
        uint256 fromAssetLiability,
        uint256 fromAmount,
        uint256 quotedToAmount,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) private pure returns (uint256 fee) {
        uint256 finalFromAssetCovRatio = (fromAssetCash + fromAmount).wdiv(fromAssetLiability);

        if (finalFromAssetCovRatio > startCovRatio) {
            // charge high cov ratio fee
            uint256 feeRatio = _highCovRatioFee(
                fromAssetCash.wdiv(fromAssetLiability),
                finalFromAssetCovRatio,
                startCovRatio,
                endCovRatio
            );

            if (feeRatio > WAD) revert CORE_INVALID_HIGH_COV_RATIO_FEE();
            fee = feeRatio.wmul(quotedToAmount);
        }
    }

    //#endregion Fee Logic

    //#region Pure calculating functions

    /**
     * @notice Core Wombat stableswap equation
     * @dev This function always returns >= 0
     * @param Ax asset of token x
     * @param Ay asset of token y
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param Dx delta x, i.e. token x amount inputted
     * @param A amplification factor
     * @return quote The quote for amount of token y swapped for token x amount inputted
     */
    function _swapQuoteFunc(
        int256 Ax,
        int256 Ay,
        int256 Lx,
        int256 Ly,
        int256 Dx,
        int256 A
    ) private pure returns (uint256 quote) {
        if (Lx == 0 || Ly == 0) {
            // in case div of 0
            revert CORE_UNDERFLOW();
        }
        int256 D = Ax + Ay - A.wmul((Lx * Lx) / Ax + (Ly * Ly) / Ay); // flattened _invariantFunc
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 b = (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly); // flattened _coefficientFunc
        int256 ry_ = _solveQuad(b, A);
        int256 Dy = Ly.wmul(ry_) - Ay;
        return Dy.abs();
    }

    /**
     * @dev Calculate the withdrawal amount for any r*
     */
    function _withdrawalAmountImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A,
        int256 _equilCovRatio
    ) private pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);
        int256 delta_D = delta_i.wmul(_equilCovRatio) - (delta_i * A) / _equilCovRatio; // The only line that is different
        int256 b = -(L_i.wmul(r_i - A.wdiv(r_i)) + delta_D);
        int256 c = A.wmul(L_i_.wmul(L_i_));
        int256 A_i_ = _solveQuad(b, c);
        amount = A_i - A_i_;
    }

    /**
     * @dev should be used only when r* = 1
     */
    function _withdrawalAmountInEquilImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) private pure returns (int256 amount) {
        int256 L_i_ = L_i + delta_i;
        int256 r_i = A_i.wdiv(L_i);

        int256 rho = L_i.wmul(r_i - A.wdiv(r_i));
        int256 beta = (rho + delta_i.wmul(WAD_I - A)) / 2;
        int256 A_i_ = beta + (beta * beta + A.wmul(L_i_ * L_i_)).sqrt(beta);
        // equilvalent to:
        // int256 delta_D = delta_i.wmul(WAD_I - A);
        // int256 b = -(L_i.wmul(r_i - A.wdiv(r_i)) + delta_D);
        // int256 c = A.wmul(L_i_.wmul(L_i_));
        // int256 A_i_ = _solveQuad(b, c);

        amount = A_i - A_i_;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function _exactDepositLiquidityImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A,
        int256 _equilCovRatio
    ) private pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(_equilCovRatio) - (k * A) / _equilCovRatio + 2 * A.wmul(L_i); // The only line that is different
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    /**
     * @notice return the deposit reward in token amount when target liquidity (LP amount) is known
     */
    function _exactDepositLiquidityInEquilImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) private pure returns (int256 liquidity) {
        if (L_i == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            return D_i;
        }
        if (A_i + D_i < 0) {
            // impossible
            revert CORE_UNDERFLOW();
        }

        int256 r_i = A_i.wdiv(L_i);
        int256 k = D_i + A_i;
        int256 b = k.wmul(WAD_I - A) + 2 * A.wmul(L_i);
        int256 c = k.wmul(A_i - (A * L_i) / r_i) - k.wmul(k) + A.wmul(L_i).wmul(L_i);
        int256 l = b * b - 4 * A * c;
        return (-b + l.sqrt(b)).wdiv(A) / 2;
    }

    /**
     * @notice quote swapping from tokens for credit
     * @dev This function always returns >= 0
     */
    function _swapToCreditQuote(int256 Ax, int256 Lx, int256 Dx, int256 A) private pure returns (uint256 quote) {
        int256 rx = Ax.wdiv(Lx);
        int256 rx_ = (Ax + Dx).wdiv(Lx);
        int256 x = rx_ - A.wdiv(rx_);
        int256 y = rx - A.wdiv(rx);

        // adjsut credit by 1 / (1 + A)
        return ((Lx * (x - y)) / (WAD_I + A)).abs();
    }

    /**
     * @notice quote swapping from credit for tokens
     * @dev This function always returns >= 0
     */
    function _swapFromCreditQuote(
        int256 Ax,
        int256 Lx,
        int256 delta_credit,
        int256 A
    ) private pure returns (uint256 quote) {
        int256 rx = Ax.wdiv(Lx);
        // adjsut credit by 1 + A
        int256 b = (delta_credit * (WAD_I + A)) / Lx - rx + A.wdiv(rx); // flattened _coefficientFunc
        int256 rx_ = _solveQuad(b, A);
        int256 Dx = Ax - Lx.wmul(rx_);

        return Dx.abs();
    }

    //#endregion Pure calculating functions

    //#region Math functions

    /**
     * @notice Solve quadratic equation
     * @dev This function always returns >= 0
     * @param b quadratic equation b coefficient
     * @param c quadratic equation c coefficient
     * @return x
     */
    function _solveQuad(int256 b, int256 c) private pure returns (int256) {
        return (((b * b) + (c * 4 * WAD_I)).sqrt(b) - b) / 2;
    }

    /**
     * @notice Equation to get invariant constant between token x and token y
     * @dev This function always returns >= 0
     * @param Lx liability of token x
     * @param rx cov ratio of token x
     * @param Ly liability of token x
     * @param ry cov ratio of token y
     * @param A amplification factor
     * @return The invariant constant between token x and token y ("D")
     */
    function _invariantFunc(int256 Lx, int256 rx, int256 Ly, int256 ry, int256 A) private pure returns (int256) {
        int256 a = Lx.wmul(rx) + Ly.wmul(ry);
        int256 b = A.wmul(Lx.wdiv(rx) + Ly.wdiv(ry));
        return a - b;
    }

    /**
     * @notice Equation to get quadratic equation b coefficient
     * @dev This function can return >= 0 or <= 0
     * @param Lx liability of token x
     * @param Ly liability of token y
     * @param rx_ new asset coverage ratio of token x
     * @param D invariant constant
     * @param A amplification factor
     * @return The quadratic equation b coefficient ("b")
     */
    function _coefficientFunc(int256 Lx, int256 Ly, int256 rx_, int256 D, int256 A) private pure returns (int256) {
        return (Lx * (rx_ - A.wdiv(rx_))) / Ly - D.wdiv(Ly);
    }

    function _targetedCovRatio(
        int256 SL,
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 D,
        int256 A
    ) private pure returns (int256 r_i_) {
        int256 r_i = A_i.wdiv(L_i);
        int256 er = _equilCovRatio(D, SL, A);
        int256 er_ = _newEquilCovRatio(er, SL, delta_i);
        int256 D_ = _newInvariantFunc(er_, A, SL, delta_i);

        // Summation of k∈T\{i} is D - L_i.wmul(r_i - A.wdiv(r_i))
        int256 b_ = (D - A_i + (L_i * A) / r_i - D_).wdiv(L_i + delta_i);
        r_i_ = _solveQuad(b_, A);
    }

    function _newEquilCovRatio(int256 er, int256 SL, int256 delta_i) private pure returns (int256 er_) {
        er_ = (delta_i + SL.wmul(er)).wdiv(delta_i + SL);
    }

    function _newInvariantFunc(int256 er_, int256 A, int256 SL, int256 delta_i) private pure returns (int256 D_) {
        D_ = (SL + delta_i).wmul(er_ - A.wdiv(er_));
    }

    /**
     * @notice Calculate the high cov ratio fee in the to-asset in a swap.
     * @dev When cov ratio is in the range [startCovRatio, endCovRatio], the marginal cov ratio is
     * (r - startCovRatio) / (endCovRatio - startCovRatio). Here we approximate the high cov ratio cut
     * by calculating the "average" fee.
     * Note: `finalCovRatio` should be greater than `initCovRatio`
     */
    function _highCovRatioFee(
        uint256 initCovRatio,
        uint256 finalCovRatio,
        uint256 startCovRatio,
        uint256 endCovRatio
    ) private pure returns (uint256 fee) {
        if (finalCovRatio > endCovRatio) {
            // invalid swap
            revert CORE_COV_RATIO_LIMIT_EXCEEDED();
        } else if (finalCovRatio <= startCovRatio || finalCovRatio <= initCovRatio) {
            return 0;
        }

        // 1. Calculate the area of fee(r) = (r - startCovRatio) / (endCovRatio - startCovRatio)
        // when r increase from initCovRatio to finalCovRatio
        // 2. Then multiply it by (endCovRatio - startCovRatio) / (finalCovRatio - initCovRatio)
        // to get the average fee over the range
        uint256 a = initCovRatio <= startCovRatio ? 0 : (initCovRatio - startCovRatio) * (initCovRatio - startCovRatio);
        uint256 b = (finalCovRatio - startCovRatio) * (finalCovRatio - startCovRatio);
        fee = ((b - a) / (finalCovRatio - initCovRatio) / 2).wdiv(endCovRatio - startCovRatio);
    }

    function calculateProposedGlobalEquilCovRatio(
        uint256[] memory newCashValues,
        uint256[] memory liabilities,
        uint256[] memory proposedScales,
        uint256 ampFactor
    ) internal pure returns (uint256 proposedGlobalEquilCovRatio) {
        (int256 invariant, int256 SL) = _globalInvariantFunc(newCashValues, liabilities, proposedScales, ampFactor);
        proposedGlobalEquilCovRatio = _equilCovRatio(invariant, SL, ampFactor.toInt256()).toUint256();
    }

    function _equilCovRatio(int256 D, int256 SL, int256 A) private pure returns (int256 er) {
        int256 b = -(D.wdiv(SL));
        er = _solveQuad(b, A);
    }

    //#endregion Math functions

    //#region r*
    function globalEquilCovRatioForStablePool(
        PoolV4Data storage poolData
    ) external view returns (int256 equilCovRatio_, int256 invariant) {
        uint256 assetCount = poolData.assets.count();

        uint256[] memory cashes = new uint256[](assetCount);
        uint256[] memory liabilities = new uint256[](assetCount);
        uint256[] memory priceScales = new uint256[](assetCount);

        for (uint256 i; i < assetCount; ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);

            cashes[i] = asset.cash();
            liabilities[i] = asset.liability();
            priceScales[i] = WAD;
        }

        int256 SL;
        uint256 A = poolData.ampFactor;
        (invariant, SL) = _globalInvariantFunc(cashes, liabilities, priceScales, poolData.ampFactor);
        equilCovRatio_ = _equilCovRatio(invariant, SL, A.toInt256());
    }

    function globalEquilCovRatioForDynamicPool(
        PoolV4Data storage poolData
    ) external view returns (int256 equilCovRatio_, int256 invariant) {
        uint256 assetCount = poolData.assets.count();

        uint256[] memory cashes = new uint256[](assetCount);
        uint256[] memory liabilities = new uint256[](assetCount);
        uint256[] memory priceScales = new uint256[](assetCount);

        for (uint256 i; i < assetCount; ++i) {
            IAsset asset = poolData.assets.getAssetAtIndex(i);

            cashes[i] = asset.cash();
            liabilities[i] = asset.liability();
            priceScales[i] = IRelativePriceProvider(address(asset)).getRelativePrice();
        }

        int256 SL;
        uint256 A = poolData.ampFactor;
        (invariant, SL) = _globalInvariantFunc(cashes, liabilities, priceScales, poolData.ampFactor);
        equilCovRatio_ = _equilCovRatio(invariant, SL, A.toInt256());
    }

    function _globalInvariantFunc(
        uint256[] memory cashes,
        uint256[] memory liabilities,
        uint256[] memory priceScales,
        uint256 ampFactor
    ) private pure returns (int256 D, int256 SL) {
        int256 A = ampFactor.toInt256();
        uint256 assetCount = cashes.length;

        for (uint256 i; i < assetCount; ++i) {
            // overflow is unrealistic
            int256 A_i = int256(cashes[i]);
            int256 L_i = int256(liabilities[i]);
            int256 P_i = priceScales[i].toInt256();

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += P_i.wmul(L_i);
            D += P_i.wmul(L_i).wmul(r_i - A.wdiv(r_i));
        }
    }

    //#endregion r*
}

// ============================================================
// FILE: contracts/wombat-core/pool/CrossChainPool.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './HighCovRatioFeePoolV3.sol';
import '../interfaces/IAdaptor.sol';
import '../interfaces/ICrossChainPool.sol';

/**
 * @title Mega Pool
 * @notice Mega Pool is able to handle cross-chain swaps in addition to ordinary swap within its own chain
 * @dev Refer to note of `swapTokensForTokensCrossChain` for procedure of a cross-chain swap
 * Note: All variables are 18 decimals, except from that of parameters of external functions and underlying tokens
 */
contract CrossChainPool is HighCovRatioFeePoolV3, ICrossChainPool {
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    /**
     * Storage
     */

    IAdaptor public adaptor;
    bool public swapCreditForTokensEnabled;
    bool public swapTokensForCreditEnabled;

    uint128 public creditForTokensHaircut;
    uint128 public tokensForCreditHaircut;

    uint128 public totalCreditMinted;
    uint128 public totalCreditBurned;

    /// @notice the maximum allowed amount of net mint credit. `totalCreditMinted - totalCreditBurned` should be smaller than this value
    uint128 public maximumOutboundCredit; // Upper limit of net minted credit
    uint128 public maximumInboundCredit; // Upper limit of net burned credit

    mapping(address => uint256) public creditBalance;

    uint256[50] private __gap;

    /**
     * Errors
     */

    error WOMBAT_ZERO_CREDIT_AMOUNT();

    /**
     * Events
     */

    /**
     * @notice Event that is emitted when token is swapped into credit
     */
    event SwapTokensForCredit(
        address indexed sender,
        address indexed fromToken,
        uint256 fromAmount,
        uint256 fromTokenFee,
        uint256 creditAmount
    );

    /**
     * @notice Event that is emitted when credit is swapped into token
     */
    event SwapCreditForTokens(
        uint256 creditAmount,
        address indexed toToken,
        uint256 toAmount,
        uint256 toTokenFee,
        address indexed receiver
    );

    event MintCredit(address indexed receiver, uint256 creditAmount);

    /**
     * Errors
     */

    error POOL__CREDIT_NOT_ENOUGH();
    error POOL__REACH_MAXIMUM_MINTED_CREDIT();
    error POOL__REACH_MAXIMUM_BURNED_CREDIT();
    error POOL__SWAP_TOKENS_FOR_CREDIT_DISABLED();
    error POOL__SWAP_CREDIT_FOR_TOKENS_DISABLED();

    /**
     * External/public functions
     */

    /**
     * @dev refer to documentation in the interface
     */
    function swapTokensForTokensCrossChain(
        address fromToken,
        address toToken,
        uint256 toChain,
        uint256 fromAmount,
        uint256 minimumCreditAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    )
        external
        payable
        override
        nonReentrant
        whenNotPaused
        returns (uint256 creditAmount, uint256 fromTokenFee, uint256 sequence)
    {
        // Assumption: the adaptor should check `toChain` and `toToken`
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();
        requireAssetNotPaused(fromToken);
        _checkAddress(receiver);

        IAsset fromAsset = _assetOf(fromToken);
        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);

        (creditAmount, fromTokenFee) = _swapTokensForCredit(
            fromAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            minimumCreditAmount
        );
        if (creditAmount == 0) revert WOMBAT_ZERO_CREDIT_AMOUNT();

        fromTokenFee = fromTokenFee.fromWad(fromAsset.underlyingTokenDecimals());
        emit SwapTokensForCredit(msg.sender, fromToken, fromAmount, fromTokenFee, creditAmount);

        // Wormhole: computeBudget + applicationBudget + wormholeFee should equal the msg.value
        sequence = adaptor.bridgeCreditAndSwapForTokens{value: msg.value}(
            toToken,
            toChain,
            creditAmount,
            minimumToAmount,
            receiver,
            receiverValue,
            deliveryGasLimit
        );
    }

    /**
     * @dev refer to documentation in the interface
     */
    function swapCreditForTokens(
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver
    ) external override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 toTokenFee) {
        _beforeSwapCreditForTokens(fromAmount, receiver);
        (actualToAmount, toTokenFee) = _doSwapCreditForTokens(toToken, fromAmount, minimumToAmount, receiver);
    }

    /**
     * @dev refer to documentation in the interface
     */
    function swapCreditForTokensCrossChain(
        address toToken,
        uint256 toChain,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    ) external payable override nonReentrant whenNotPaused returns (uint256 trackingId) {
        _beforeSwapCreditForTokens(fromAmount, receiver);

        // Wormhole: computeBudget + applicationBudget + wormholeFee should equal the msg.value
        trackingId = adaptor.bridgeCreditAndSwapForTokens{value: msg.value}(
            toToken,
            toChain,
            fromAmount,
            minimumToAmount,
            receiver,
            receiverValue,
            deliveryGasLimit
        );
    }

    /**
     * Internal functions
     */

    function _onlyAdaptor() internal view {
        if (msg.sender != address(adaptor)) revert WOMBAT_FORBIDDEN();
    }

    function _swapTokensForCredit(
        IAsset fromAsset,
        uint256 fromAmount,
        uint256 minimumCreditAmount
    ) internal returns (uint256 creditAmount, uint256 fromTokenFee) {
        // Assume credit has 18 decimals
        if (!swapTokensForCreditEnabled) revert POOL__SWAP_TOKENS_FOR_CREDIT_DISABLED();
        // TODO: implement _quoteFactor for credit if we would like to support dynamic asset (aka volatile / rather-volatile pools)
        // uint256 quoteFactor = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        (creditAmount, fromTokenFee) = CoreV3.quoteSwapTokensForCredit(
            fromAsset,
            fromAmount,
            ampFactor,
            WAD,
            tokensForCreditHaircut,
            startCovRatio,
            endCovRatio
        );

        _checkAmount(minimumCreditAmount, creditAmount);

        fromAsset.addCash(fromAmount - fromTokenFee);
        totalCreditMinted += _to128(creditAmount);
        _feeCollected[fromAsset] += fromTokenFee; // unlike other swaps, fee is collected in from token

        // Check it doesn't exceed maximum out-going credits
        if (totalCreditMinted > maximumOutboundCredit + totalCreditBurned) revert POOL__REACH_MAXIMUM_MINTED_CREDIT();
    }

    function _beforeSwapCreditForTokens(uint256 fromAmount, address receiver) internal {
        _checkAddress(receiver);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();

        if (creditBalance[msg.sender] < fromAmount) revert POOL__CREDIT_NOT_ENOUGH();
        unchecked {
            creditBalance[msg.sender] -= fromAmount;
        }
    }

    function _doSwapCreditForTokens(
        address toToken,
        uint256 fromCreditAmount,
        uint256 minimumToAmount,
        address receiver
    ) internal returns (uint256 actualToAmount, uint256 toTokenFee) {
        if (fromCreditAmount == 0) revert WOMBAT_ZERO_CREDIT_AMOUNT();

        IAsset toAsset = _assetOf(toToken);
        uint8 toDecimal = toAsset.underlyingTokenDecimals();
        (actualToAmount, toTokenFee) = _swapCreditForTokens(
            toAsset,
            fromCreditAmount,
            minimumToAmount.toWad(toDecimal)
        );
        actualToAmount = actualToAmount.fromWad(toDecimal);
        toTokenFee = toTokenFee.fromWad(toDecimal);

        toAsset.transferUnderlyingToken(receiver, actualToAmount);
        totalCreditBurned += _to128(fromCreditAmount);

        // Check it doesn't exceed maximum in-coming credits
        if (totalCreditBurned > maximumInboundCredit + totalCreditMinted) revert POOL__REACH_MAXIMUM_BURNED_CREDIT();

        emit SwapCreditForTokens(fromCreditAmount, toToken, actualToAmount, toTokenFee, receiver);
    }

    function _swapCreditForTokens(
        IAsset toAsset,
        uint256 fromCreditAmount,
        uint256 minimumToAmount
    ) internal returns (uint256 actualToAmount, uint256 toTokenFee) {
        if (!swapCreditForTokensEnabled) revert POOL__SWAP_CREDIT_FOR_TOKENS_DISABLED();
        // TODO: If we want to support dynamic asset (aka volatile / rather-volatile pools), implement `_quoteFactor` for credit
        (actualToAmount, toTokenFee) = CoreV3.quoteSwapCreditForTokens(
            fromCreditAmount,
            toAsset,
            ampFactor,
            WAD,
            creditForTokensHaircut
        );

        _checkAmount(minimumToAmount, actualToAmount);
        _feeCollected[toAsset] += toTokenFee;

        // fee is removed from cash to maintain r* = 1. It is distributed during _mintFee()
        toAsset.removeCash(actualToAmount + toTokenFee);

        // revert if cov ratio < 1% to avoid precision error
        if (DSMath.wdiv(toAsset.cash(), toAsset.liability()) < WAD / 100) revert WOMBAT_FORBIDDEN();
    }

    /**
     * Read-only functions
     */

    function quoteSwapCreditForTokens(
        address toToken,
        uint256 fromCreditAmount
    ) external view returns (uint256 actualToAmount, uint256 toTokenFee) {
        IAsset toAsset = _assetOf(toToken);
        if (!swapCreditForTokensEnabled) revert POOL__SWAP_CREDIT_FOR_TOKENS_DISABLED();
        // TODO: implement _quoteFactor for credit if we would like to support dynamic asset (aka volatile / rather-volatile pools)
        (actualToAmount, toTokenFee) = CoreV3.quoteSwapCreditForTokens(
            fromCreditAmount,
            toAsset,
            ampFactor,
            WAD,
            creditForTokensHaircut
        );

        uint8 toDecimal = toAsset.underlyingTokenDecimals();
        actualToAmount = actualToAmount.fromWad(toDecimal);
        toTokenFee = toTokenFee.fromWad(toDecimal);

        // Check it doesn't exceed maximum in-coming credits
        if (totalCreditBurned + fromCreditAmount > maximumInboundCredit + totalCreditMinted)
            revert POOL__REACH_MAXIMUM_BURNED_CREDIT();
    }

    function quoteSwapTokensForCredit(
        address fromToken,
        uint256 fromAmount
    ) external view returns (uint256 creditAmount, uint256 fromTokenFee) {
        IAsset fromAsset = _assetOf(fromToken);

        // Assume credit has 18 decimals
        if (!swapTokensForCreditEnabled) revert POOL__SWAP_TOKENS_FOR_CREDIT_DISABLED();
        // TODO: implement _quoteFactor for credit if we would like to support dynamic asset (aka volatile / rather-volatile pools)
        // uint256 quoteFactor = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        (creditAmount, fromTokenFee) = CoreV3.quoteSwapTokensForCredit(
            fromAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            ampFactor,
            WAD,
            tokensForCreditHaircut,
            startCovRatio,
            endCovRatio
        );

        fromTokenFee = fromTokenFee.fromWad(fromAsset.underlyingTokenDecimals());

        // Check it doesn't exceed maximum out-going credits
        if (totalCreditMinted + creditAmount > maximumOutboundCredit + totalCreditBurned)
            revert POOL__REACH_MAXIMUM_MINTED_CREDIT();
    }

    /**
     * @notice Calculate the r* and invariant when all credits are settled
     */
    function globalEquilCovRatioWithCredit() external view returns (uint256 equilCovRatio, uint256 invariantInUint) {
        int256 invariant;
        int256 SL;
        (invariant, SL) = _globalInvariantFunc();
        // oustanding credit = totalCreditBurned - totalCreditMinted
        int256 creditOffset = (int256(uint256(totalCreditBurned)) - int256(uint256(totalCreditMinted))).wmul(
            (WAD + ampFactor).toInt256()
        );
        invariant += creditOffset;
        equilCovRatio = uint256(CoreV3.equilCovRatio(invariant, SL, ampFactor.toInt256()));
        invariantInUint = uint256(invariant);
    }

    function _to128(uint256 val) internal pure returns (uint128) {
        require(val <= type(uint128).max, 'uint128 overflow');
        return uint128(val);
    }

    /**
     * Permisioneed functions
     */

    /**
     * @dev refer to documentation in the interface
     */
    function completeSwapCreditForTokens(
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver
    ) external override whenNotPaused returns (uint256 actualToAmount, uint256 toTokenFee) {
        _onlyAdaptor();
        // Note: `_checkAddress(receiver)` could be skipped at it is called at the `fromChain`
        (actualToAmount, toTokenFee) = _doSwapCreditForTokens(toToken, fromAmount, minimumToAmount, receiver);
    }

    /**
     * @notice In case `completeSwapCreditForTokens` fails, adaptor should mint credit to the respective user
     * @dev This function is only for the case when `completeSwapCreditForTokens` fails, and should not be called otherwise
     * Also, this function should work even if the pool is paused
     */
    function mintCredit(uint256 creditAmount, address receiver) external override {
        _onlyAdaptor();
        creditBalance[receiver] += creditAmount;
        emit MintCredit(receiver, creditAmount);
    }

    function setSwapTokensForCreditEnabled(bool enable) external onlyOwner {
        swapTokensForCreditEnabled = enable;
    }

    function setSwapCreditForTokensEnabled(bool enable) external onlyOwner {
        swapCreditForTokensEnabled = enable;
    }

    function setMaximumOutboundCredit(uint128 _maximumOutboundCredit) external onlyOwner {
        maximumOutboundCredit = _maximumOutboundCredit;
    }

    function setMaximumInboundCredit(uint128 _maximumInboundCredit) external onlyOwner {
        maximumInboundCredit = _maximumInboundCredit;
    }

    function setAdaptorAddr(IAdaptor _adaptor) external onlyOwner {
        adaptor = _adaptor;
    }

    function setCrossChainHaircut(uint128 _tokensForCreditHaircut, uint128 _creditForTokensHaircut) external onlyOwner {
        require(_creditForTokensHaircut < 1e18 && _tokensForCreditHaircut < 1e18);
        creditForTokensHaircut = _creditForTokensHaircut;
        tokensForCreditHaircut = _tokensForCreditHaircut;
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/DynamicPool.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.14;

import '../libraries/DSMath.sol';
import '../interfaces/IRelativePriceProvider.sol';
import './Pool.sol';

/**
 * @title Dynamic Pool
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev Supports dynamic assets. Assume r* to be close to 1.
 * Be aware that r* changes when the relative price of the asset updates
 */
contract DynamicPool is Pool {
    using DSMath for uint256;
    using SignedSafeMath for int256;

    /**
     * @notice multiply / divide the cash, liability and amount of a swap by relative price
     * Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _quoteFactor(IAsset fromAsset, IAsset toAsset) internal view override returns (uint256) {
        uint256 fromAssetRelativePrice = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        // theoretically we should multiply toCash, toLiability and idealToAmount by toAssetRelativePrice
        // however we simplify the calculation by dividing "from amounts" by toAssetRelativePrice
        uint256 toAssetRelativePrice = IRelativePriceProvider(address(toAsset)).getRelativePrice();

        return (1e18 * fromAssetRelativePrice) / toAssetRelativePrice;
    }

    /**
     * @dev Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _globalInvariantFunc() internal view override returns (int256 D, int256 SL) {
        int256 A = int256(ampFactor);

        for (uint256 i = 0; i < _sizeOfAssetList(); i++) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));

            // overflow is unrealistic
            int256 A_i = int256(uint256(asset.cash()));
            int256 L_i = int256(uint256(asset.liability()));
            int256 P_i = int256(uint256(IRelativePriceProvider(address(asset)).getRelativePrice()));

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += P_i.wmul(L_i);
            D += P_i.wmul(L_i).wmul(r_i - A.wdiv(r_i));
        }
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/DynamicPoolV2.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.14;

import '../libraries/DSMath.sol';
import '../interfaces/IRelativePriceProvider.sol';
import './HighCovRatioFeePoolV2.sol';

/**
 * @title Dynamic Pool V2
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev Supports dynamic assets. Assume r* to be close to 1.
 * Be aware that r* changes when the relative price of the asset updates
 * Change log:
 * - add `gap` to prevent storage collision for future upgrades
 * - Inherite from `HighCovRatioFeePoolV2` instead of `Pool`
 */
contract DynamicPoolV2 is HighCovRatioFeePoolV2 {
    using DSMath for uint256;
    using SignedSafeMath for int256;

    uint256[50] private gap;

    /**
     * @notice multiply / divide the cash, liability and amount of a swap by relative price
     * Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _quoteFactor(IAsset fromAsset, IAsset toAsset) internal view override returns (uint256) {
        uint256 fromAssetRelativePrice = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        // theoretically we should multiply toCash, toLiability and idealToAmount by toAssetRelativePrice
        // however we simplify the calculation by dividing "from amounts" by toAssetRelativePrice
        uint256 toAssetRelativePrice = IRelativePriceProvider(address(toAsset)).getRelativePrice();

        return (1e18 * fromAssetRelativePrice) / toAssetRelativePrice;
    }

    /**
     * @dev Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _globalInvariantFunc() internal view override returns (int256 D, int256 SL) {
        int256 A = int256(ampFactor);

        for (uint256 i; i < _sizeOfAssetList(); ++i) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));

            // overflow is unrealistic
            int256 A_i = int256(uint256(asset.cash()));
            int256 L_i = int256(uint256(asset.liability()));
            int256 P_i = int256(IRelativePriceProvider(address(asset)).getRelativePrice());

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += P_i.wmul(L_i);
            D += P_i.wmul(L_i).wmul(r_i - A.wdiv(r_i));
        }
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/DynamicPoolV3.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.14;

import '../libraries/DSMath.sol';
import '../interfaces/IRelativePriceProvider.sol';
import './HighCovRatioFeePoolV3.sol';

/**
 * @title Dynamic Pool V3
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev Supports dynamic assets. Assume r* to be close to 1.
 * Be aware that r* changes when the relative price of the asset updates
 * Change log:
 * - V2: add `gap` to prevent storage collision for future upgrades
 * - V2: Inherite from `HighCovRatioFeePoolV2` instead of `Pool`
 */
contract DynamicPoolV3 is HighCovRatioFeePoolV3 {
    using DSMath for uint256;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    uint256[50] private gap;

    /**
     * @notice multiply / divide the cash, liability and amount of a swap by relative price
     * Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _quoteFactor(IAsset fromAsset, IAsset toAsset) internal view override returns (uint256) {
        uint256 fromAssetRelativePrice = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        // theoretically we should multiply toCash, toLiability and idealToAmount by toAssetRelativePrice
        // however we simplify the calculation by dividing "from amounts" by toAssetRelativePrice
        uint256 toAssetRelativePrice = IRelativePriceProvider(address(toAsset)).getRelativePrice();

        return (1e18 * fromAssetRelativePrice) / toAssetRelativePrice;
    }

    /**
     * @dev Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _globalInvariantFunc() internal view override returns (int256 D, int256 SL) {
        int256 A = ampFactor.toInt256();

        for (uint256 i; i < _sizeOfAssetList(); ++i) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));

            // overflow is unrealistic
            int256 A_i = int256(uint256(asset.cash()));
            int256 L_i = int256(uint256(asset.liability()));
            int256 P_i = IRelativePriceProvider(address(asset)).getRelativePrice().toInt256();

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += P_i.wmul(L_i);
            D += P_i.wmul(L_i).wmul(r_i - A.wdiv(r_i));
        }
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/DynamicPoolV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import '../interfaces/IRelativePriceProvider.sol';
import './HighCovRatioFeePoolV4.sol';

/**
 * @title Dynamic Pool
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev Supports dynamic assets. Assume r* to be close to 1.
 * Be aware that r* changes when the relative price of the asset updates
 * Change log:
 * - V2: add `gap` to prevent storage collision for future upgrades
 * - V2: Inherite from `HighCovRatioFeePoolV2` instead of `Pool`
 */
contract DynamicPoolV4 is HighCovRatioFeePoolV4 {
    /**
     * @notice multiply / divide the cash, liability and amount of a swap by relative price
     * Invariant: D = Sum of P_i * L_i * (r_i - A / r_i)
     */
    function _quoteFactor(IAsset fromAsset, IAsset toAsset) internal view override returns (uint256) {
        uint256 fromAssetRelativePrice = IRelativePriceProvider(address(fromAsset)).getRelativePrice();
        // theoretically we should multiply toCash, toLiability and idealToAmount by toAssetRelativePrice
        // however we simplify the calculation by dividing "from amounts" by toAssetRelativePrice
        uint256 toAssetRelativePrice = IRelativePriceProvider(address(toAsset)).getRelativePrice();

        return (1e18 * fromAssetRelativePrice) / toAssetRelativePrice;
    }

    function globalEquilCovRatio() public view override returns (int256 equilCovRatio, int256 invariant) {
        return CoreV4.globalEquilCovRatioForDynamicPool(poolData);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/HighCovRatioFeePool.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import './Pool.sol';

contract HighCovRatioFeePool is Pool {
    using DSMath for uint256;

    uint128 public startCovRatio; // 1.5
    uint128 public endCovRatio; // 1.8

    error WOMBAT_COV_RATIO_LIMIT_EXCEEDED();

    function initialize(uint256 ampFactor_, uint256 haircutRate_) public override {
        super.initialize(ampFactor_, haircutRate_);
        startCovRatio = 15e17;
        endCovRatio = 18e17;
    }

    function setCovRatioFeeParam(uint128 startCovRatio_, uint128 endCovRatio_) external onlyOwner {
        if (startCovRatio_ < 1e18 || startCovRatio_ > endCovRatio_) revert WOMBAT_INVALID_VALUE();

        startCovRatio = startCovRatio_;
        endCovRatio = endCovRatio_;
    }

    /**
     * @notice Calculate the high cov ratio fee of the from-asset in a swap.
     * @dev When cov ratio is in the range [startCovRatio, endCovRatio], the marginal cov ratio is
     * (r - startCovRatio) / (endCovRatio - startCovRatio). Here we approximate the high cov ratio cut
     * by calculating the "average" fee.
     * Note: `finalCovRatio` should be greater than `initCovRatio`
     */
    function _highCovRatioFee(uint256 initCovRatio, uint256 finalCovRatio) internal view returns (uint256 fee) {
        if (finalCovRatio > endCovRatio) {
            // invalid swap
            revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();
        } else if (finalCovRatio <= startCovRatio) {
            return 0;
        }

        // 1. Calculate the area of fee(r) = (r - startCovRatio) / (endCovRatio - startCovRatio)
        // when r increase from initCovRatio to finalCovRatio
        // 2. Then multiply it by (endCovRatio - startCovRatio) / (finalCovRatio - initCovRatio)
        // to get the average fee over the range
        uint256 a = initCovRatio <= startCovRatio ? 0 : (initCovRatio - startCovRatio) * (initCovRatio - startCovRatio);
        uint256 b = (finalCovRatio - startCovRatio) * (finalCovRatio - startCovRatio);

        fee = ((b - a) / (finalCovRatio - initCovRatio) / 2).wdiv(endCovRatio - startCovRatio);
    }

    /**
     * @dev Exact output swap should only used as off-chain view function as it is a gas monster
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view override returns (uint256 actualToAmount, uint256 haircut) {
        (actualToAmount, haircut) = super._quoteFrom(fromAsset, toAsset, fromAmount);

        if (fromAmount >= 0) {
            // normal quote
            uint256 fromAssetCash = fromAsset.cash();
            uint256 fromAssetLiability = fromAsset.liability();
            uint256 finalFromAssetCovRatio = (fromAssetCash + uint256(fromAmount)).wdiv(fromAssetLiability);

            if (finalFromAssetCovRatio > startCovRatio) {
                // charge high cov ratio fee
                uint256 highCovRatioFee = _highCovRatioFee(
                    fromAssetCash.wdiv(fromAssetLiability),
                    finalFromAssetCovRatio
                ).wmul(actualToAmount);

                actualToAmount -= highCovRatioFee;
                haircut += highCovRatioFee;
            }
        } else {
            // reverse quote
            uint256 toAssetCash = toAsset.cash();
            uint256 toAssetLiability = toAsset.liability();
            uint256 finalToAssetCovRatio = (toAssetCash + uint256(actualToAmount)).wdiv(toAssetLiability);
            if (finalToAssetCovRatio <= startCovRatio) {
                // happy path: no high cov ratio fee is charged
                return (actualToAmount, haircut);
            } else if (toAssetCash.wdiv(toAssetLiability) >= endCovRatio) {
                // the to-asset exceeds it's cov ratio limit, further swap to increase cov ratio is impossible
                revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();
            }

            // reverse quote: cov ratio of the to-asset exceed endCovRatio. direct reverse quote is not supported
            // we binary search for a upper bound
            actualToAmount = _findUpperBound(toAsset, fromAsset, uint256(-fromAmount));
            (, haircut) = _quoteFrom(toAsset, fromAsset, int256(actualToAmount));
        }
    }

    /**
     * @notice Binary search to find the upper bound of `fromAmount` required to swap `fromAsset` to `toAmount` of `toAsset`
     * @dev This function should only used as off-chain view function as it is a gas monster
     */
    function _findUpperBound(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 toAmount
    ) internal view returns (uint256 upperBound) {
        uint8 decimals = fromAsset.underlyingTokenDecimals();
        uint256 toWadFactor = DSMath.toWad(1, decimals);
        // the search value uses the same number of digits as the token
        uint256 high = ((fromAsset.liability() * uint256(endCovRatio)) / WAD - fromAsset.cash()).fromWad(decimals);
        uint256 low = 1;

        // verify `high` is a valid upper bound
        uint256 quote;
        (quote, ) = _quoteFrom(fromAsset, toAsset, int256(high * toWadFactor));
        if (quote < toAmount) revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();

        // Note: we might limit the maximum number of rounds if the request is always rejected by the RPC server
        while (low < high) {
            uint256 mid = (low + high) / 2;
            (quote, ) = _quoteFrom(fromAsset, toAsset, int256(mid * toWadFactor));
            if (quote >= toAmount) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }
        return high * toWadFactor;
    }

    /**
     * @dev take into account high cov ratio fee
     */
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view override returns (uint256 amount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);
        (amount, withdrewAmount) = _quotePotentialWithdrawFromOtherAsset(fromToken, toToken, liquidity);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);
        uint256 fromAssetCash = fromAsset.cash() - withdrewAmount;
        uint256 fromAssetLiability = fromAsset.liability() - liquidity;
        uint256 finalFromAssetCovRatio = (fromAssetCash + uint256(withdrewAmount)).wdiv(fromAssetLiability);

        if (finalFromAssetCovRatio > startCovRatio) {
            uint256 highCovRatioFee = _highCovRatioFee(fromAssetCash.wdiv(fromAssetLiability), finalFromAssetCovRatio)
                .wmul(amount);

            amount -= highCovRatioFee;
        }
        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        amount = amount.fromWad(toAsset.underlyingTokenDecimals());
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/HighCovRatioFeePoolV2.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import './PoolV2.sol';

/**
 * @title HighCovRatioFeePoolV2
 * @dev Pool with high cov ratio fee protection
 * Change log:
 * - add `gap` to prevent storage collision for future upgrades
 */
contract HighCovRatioFeePoolV2 is PoolV2 {
    using DSMath for uint256;

    uint128 public startCovRatio; // 1.5
    uint128 public endCovRatio; // 1.8

    uint256[50] private gap;

    error WOMBAT_COV_RATIO_LIMIT_EXCEEDED();

    function initialize(uint256 ampFactor_, uint256 haircutRate_) public override {
        super.initialize(ampFactor_, haircutRate_);
        startCovRatio = 15e17;
        endCovRatio = 18e17;
    }

    function setCovRatioFeeParam(uint128 startCovRatio_, uint128 endCovRatio_) external onlyOwner {
        if (startCovRatio_ < 1e18 || startCovRatio_ > endCovRatio_) revert WOMBAT_INVALID_VALUE();

        startCovRatio = startCovRatio_;
        endCovRatio = endCovRatio_;
    }

    /**
     * @notice Calculate the high cov ratio fee in the to-asset in a swap.
     * @dev When cov ratio is in the range [startCovRatio, endCovRatio], the marginal cov ratio is
     * (r - startCovRatio) / (endCovRatio - startCovRatio). Here we approximate the high cov ratio cut
     * by calculating the "average" fee.
     * Note: `finalCovRatio` should be greater than `initCovRatio`
     */
    function _highCovRatioFee(uint256 initCovRatio, uint256 finalCovRatio) internal view returns (uint256 fee) {
        if (finalCovRatio > endCovRatio) {
            // invalid swap
            revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();
        } else if (finalCovRatio <= startCovRatio || finalCovRatio <= initCovRatio) {
            return 0;
        }

        unchecked {
            // 1. Calculate the area of fee(r) = (r - startCovRatio) / (endCovRatio - startCovRatio)
            // when r increase from initCovRatio to finalCovRatio
            // 2. Then multiply it by (endCovRatio - startCovRatio) / (finalCovRatio - initCovRatio)
            // to get the average fee over the range
            uint256 a = initCovRatio <= startCovRatio
                ? 0
                : (initCovRatio - startCovRatio) * (initCovRatio - startCovRatio);
            uint256 b = (finalCovRatio - startCovRatio) * (finalCovRatio - startCovRatio);
            fee = ((b - a) / (finalCovRatio - initCovRatio) / 2).wdiv(endCovRatio - startCovRatio);
        }
    }

    /**
     * @dev Exact output swap (fromAmount < 0) should be only used by off-chain quoting function as it is a gas monster
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view override returns (uint256 actualToAmount, uint256 haircut) {
        (actualToAmount, haircut) = super._quoteFrom(fromAsset, toAsset, fromAmount);

        if (fromAmount >= 0) {
            // normal quote
            uint256 fromAssetCash = fromAsset.cash();
            uint256 fromAssetLiability = fromAsset.liability();
            uint256 finalFromAssetCovRatio = (fromAssetCash + uint256(fromAmount)).wdiv(fromAssetLiability);

            if (finalFromAssetCovRatio > startCovRatio) {
                // charge high cov ratio fee
                uint256 highCovRatioFee = _highCovRatioFee(
                    fromAssetCash.wdiv(fromAssetLiability),
                    finalFromAssetCovRatio
                ).wmul(actualToAmount);

                actualToAmount -= highCovRatioFee;
                unchecked {
                    haircut += highCovRatioFee;
                }
            }
        } else {
            // reverse quote
            uint256 toAssetCash = toAsset.cash();
            uint256 toAssetLiability = toAsset.liability();
            uint256 finalToAssetCovRatio = (toAssetCash + uint256(actualToAmount)).wdiv(toAssetLiability);
            if (finalToAssetCovRatio <= startCovRatio) {
                // happy path: no high cov ratio fee is charged
                return (actualToAmount, haircut);
            } else if (toAssetCash.wdiv(toAssetLiability) >= endCovRatio) {
                // the to-asset exceeds it's cov ratio limit, further swap to increase cov ratio is impossible
                revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();
            }

            // reverse quote: cov ratio of the to-asset exceed endCovRatio. direct reverse quote is not supported
            // we binary search for a upper bound
            actualToAmount = _findUpperBound(toAsset, fromAsset, uint256(-fromAmount));
            (, haircut) = _quoteFrom(toAsset, fromAsset, int256(actualToAmount));
        }
    }

    /**
     * @notice Binary search to find the upper bound of `fromAmount` required to swap `fromAsset` to `toAmount` of `toAsset`
     * @dev This function should only used as off-chain view function as it is a gas monster
     */
    function _findUpperBound(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 toAmount
    ) internal view returns (uint256 upperBound) {
        uint8 decimals = fromAsset.underlyingTokenDecimals();
        uint256 toWadFactor = DSMath.toWad(1, decimals);
        // the search value uses the same number of digits as the token
        uint256 high = (uint256(fromAsset.liability()).wmul(endCovRatio) - fromAsset.cash()).fromWad(decimals);
        uint256 low = 1;

        // verify `high` is a valid upper bound
        uint256 quote;
        (quote, ) = _quoteFrom(fromAsset, toAsset, int256(high * toWadFactor));
        if (quote < toAmount) revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();

        // Note: we might limit the maximum number of rounds if the request is always rejected by the RPC server
        while (low < high) {
            unchecked {
                uint256 mid = (low + high) / 2;
                (quote, ) = _quoteFrom(fromAsset, toAsset, int256(mid * toWadFactor));
                if (quote >= toAmount) {
                    high = mid;
                } else {
                    low = mid + 1;
                }
            }
        }
        return high * toWadFactor;
    }

    /**
     * @dev take into account high cov ratio fee
     */
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view override returns (uint256 amount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);
        (amount, withdrewAmount) = _quotePotentialWithdrawFromOtherAsset(fromToken, toToken, liquidity);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);
        uint256 fromAssetCash = fromAsset.cash() - withdrewAmount;
        uint256 fromAssetLiability = fromAsset.liability() - liquidity;
        uint256 finalFromAssetCovRatio = (fromAssetCash + uint256(withdrewAmount)).wdiv(fromAssetLiability);

        if (finalFromAssetCovRatio > startCovRatio) {
            uint256 highCovRatioFee = _highCovRatioFee(fromAssetCash.wdiv(fromAssetLiability), finalFromAssetCovRatio)
                .wmul(amount);

            amount -= highCovRatioFee;
        }
        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        amount = amount.fromWad(toAsset.underlyingTokenDecimals());
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/HighCovRatioFeePoolV3.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import './PoolV3.sol';

/**
 * @title HighCovRatioFeePoolV3
 * @dev Pool with high cov ratio fee protection
 * Change log:
 * - V2: Add `gap` to prevent storage collision for future upgrades
 * - V3: Contract size compression
 */
contract HighCovRatioFeePoolV3 is PoolV3 {
    using DSMath for uint256;
    using SignedSafeMath for uint256;

    uint128 public startCovRatio; // 1.5
    uint128 public endCovRatio; // 1.8

    uint256[50] private gap;

    error WOMBAT_COV_RATIO_LIMIT_EXCEEDED();

    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual override {
        super.initialize(ampFactor_, haircutRate_);
        startCovRatio = 15e17;
        endCovRatio = 18e17;
    }

    function setCovRatioFeeParam(uint128 startCovRatio_, uint128 endCovRatio_) external onlyOwner {
        if (startCovRatio_ < 1e18 || startCovRatio_ > endCovRatio_) revert WOMBAT_INVALID_VALUE();

        startCovRatio = startCovRatio_;
        endCovRatio = endCovRatio_;
    }

    /**
     * @dev Exact output swap (fromAmount < 0) should be only used by off-chain quoting function as it is a gas monster
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view override returns (uint256 actualToAmount, uint256 toTokenFee) {
        (actualToAmount, toTokenFee) = super._quoteFrom(fromAsset, toAsset, fromAmount);

        if (fromAmount >= 0) {
            uint256 highCovRatioFee = CoreV3.highCovRatioFee(
                fromAsset.cash(),
                fromAsset.liability(),
                uint256(fromAmount),
                actualToAmount,
                startCovRatio,
                endCovRatio
            );

            actualToAmount -= highCovRatioFee;
            toTokenFee += highCovRatioFee;
        } else {
            // reverse quote
            uint256 toAssetCash = toAsset.cash();
            uint256 toAssetLiability = toAsset.liability();
            uint256 finalToAssetCovRatio = (toAssetCash + actualToAmount).wdiv(toAssetLiability);
            if (finalToAssetCovRatio <= startCovRatio) {
                // happy path: no high cov ratio fee is charged
                return (actualToAmount, toTokenFee);
            } else if (toAssetCash.wdiv(toAssetLiability) >= endCovRatio) {
                // the to-asset exceeds it's cov ratio limit, further swap to increase cov ratio is impossible
                revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();
            }

            // reverse quote: cov ratio of the to-asset exceed endCovRatio. direct reverse quote is not supported
            // we binary search for a upper bound
            actualToAmount = _findUpperBound(toAsset, fromAsset, uint256(-fromAmount));
            (, toTokenFee) = _quoteFrom(toAsset, fromAsset, actualToAmount.toInt256());
        }
    }

    /**
     * @notice Binary search to find the upper bound of `fromAmount` required to swap `fromAsset` to `toAmount` of `toAsset`
     * @dev This function should only used as off-chain view function as it is a gas monster
     */
    function _findUpperBound(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 toAmount
    ) internal view returns (uint256 upperBound) {
        uint8 decimals = fromAsset.underlyingTokenDecimals();
        uint256 toWadFactor = DSMath.toWad(1, decimals);
        // the search value uses the same number of digits as the token
        uint256 high = (uint256(fromAsset.liability()).wmul(endCovRatio) - fromAsset.cash()).fromWad(decimals);
        uint256 low = 1;

        // verify `high` is a valid upper bound
        uint256 quote;
        (quote, ) = _quoteFrom(fromAsset, toAsset, (high * toWadFactor).toInt256());
        if (quote < toAmount) revert WOMBAT_COV_RATIO_LIMIT_EXCEEDED();

        // Note: we might limit the maximum number of rounds if the request is always rejected by the RPC server
        while (low < high) {
            uint256 mid = (low + high) / 2;
            (quote, ) = _quoteFrom(fromAsset, toAsset, (mid * toWadFactor).toInt256());
            if (quote >= toAmount) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }
        return high * toWadFactor;
    }

    /**
     * @dev take into account high cov ratio fee
     */
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view virtual override returns (uint256 finalAmount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        (finalAmount, withdrewAmount) = CoreV3.quoteWithdrawAmountFromOtherAsset(
            fromAsset,
            toAsset,
            liquidity,
            ampFactor,
            scaleFactor,
            haircutRate,
            startCovRatio,
            endCovRatio,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            withdrawalHaircutRate
        );

        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        finalAmount = finalAmount.fromWad(toAsset.underlyingTokenDecimals());
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/HighCovRatioFeePoolV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';
import './PoolV4.sol';

/**
 * @title High Coverage Ratio Fee Pool
 * @dev Pool with high cov ratio fee protection
 * Change log:
 * - V2: Add `gap` to prevent storage collision for future upgrades
 * - V3: Contract size compression
 */
contract HighCovRatioFeePoolV4 is PoolV4 {
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual override {
        super.initialize(ampFactor_, haircutRate_);
        poolData.startCovRatio = 15e17;
        poolData.endCovRatio = 18e17;
    }

    function setCovRatioFeeParam(uint128 startCovRatio_, uint128 endCovRatio_) external onlyOwner {
        if (startCovRatio_ < 1e18 || startCovRatio_ > endCovRatio_) revert WOMBAT_INVALID_VALUE();

        poolData.startCovRatio = startCovRatio_;
        poolData.endCovRatio = endCovRatio_;
    }

    /**
     * @dev Exact output swap (fromAmount < 0) should be only used by off-chain quoting function as it is a gas monster
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view override returns (uint256 actualToAmount, uint256 toTokenFee) {
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        return CoreV4.quoteSwapForHighCovRatioPool(poolData, fromAsset, toAsset, fromAmount, scaleFactor);
    }

    /* Getters */

    function startCovRatio() external view returns (uint128) {
        return poolData.startCovRatio;
    }

    function endCovRatio() external view returns (uint128) {
        return poolData.endCovRatio;
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/LayerZeroAdaptor.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/Adaptor.sol';
import '../layerzero/NonblockingLzAppUpgradable.sol';

contract LayerZeroAdaptor is Adaptor, NonblockingLzAppUpgradable {
    using BytesLib for bytes;

    function initialize(address _endpoint, ICrossChainPool _crossChainPool) public virtual initializer {
        __Adaptor_init(_crossChainPool);
        __LzApp_init(_endpoint);
    }

    function estimateDeliveryFee(
        address toToken,
        uint16 toChain, // LayerZero chain ID
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    ) public view returns (uint nativeFee, uint zroFee) {
        return
            lzEndpoint.estimateFees(
                toChain,
                address(this),
                _encode(toToken, fromAmount, minimumToAmount, receiver),
                false,
                _getAdapterParams(receiver, receiverValue, deliveryGasLimit)
            );
    }

    function _nonblockingLzReceive(uint16 srcChainId, bytes memory srcAddress, uint64, bytes memory payload) internal override {
        (address toToken, uint256 creditAmount, uint256 minimumToAmount, address receiver) = _decode(payload);
        _swapCreditForTokens(
            srcChainId,
            _lzAddrToEthSrcAddr(srcAddress),
            toToken,
            creditAmount,
            minimumToAmount,
            receiver
        );
    }

    function _bridgeCreditAndSwapForTokens(
        address toToken,
        uint256 toChain, // LayerZero chain ID
        uint256 fromAmount,
        uint256 minimumToAmount,
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    ) internal override returns (uint256 sequence) {
        // Delivery fee attached to the txn is done off-chain via `estimateDeliveryFee` to reduce gas cost
        // Unused `deliveryGasLimit` is sent to the `refundAddress` (`receiver`).

        require(toChain <= type(uint16).max, 'invalid chain ID');
        _checkGasLimit(uint16(toChain), receiverValue > 0 ? 2 : 1, deliveryGasLimit);

        sequence = 0;
        _lzSend(
            uint16(toChain),
            _encode(toToken, fromAmount, minimumToAmount, receiver),
            payable(receiver),
            address(0),
            _getAdapterParams(receiver, receiverValue, deliveryGasLimit),
            msg.value
        );
    }

    function _getAdapterParams(
        address receiver,
        uint256 receiverValue,
        uint256 deliveryGasLimit
    ) internal pure returns (bytes memory adapterParams) {
        adapterParams = receiverValue > 0
            ? abi.encodePacked(uint16(2), deliveryGasLimit, receiverValue, receiver)
            : abi.encodePacked(uint16(1), deliveryGasLimit);
    }

    function _lzAddrToEthSrcAddr(bytes memory addr) internal pure returns (address) {
        bytes20 srcAddr = bytes20(addr.slice(0, addr.length - 20));
        require(address(srcAddr) != address(0), 'addr bytes cannot be zero');
        return address(srcAddr);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PausableAssets.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

/**
 * @title PausableAssets
 * @notice Handles assets pause and unpause of Wombat protocol.
 * @dev Allows pausing and unpausing of deposit and swap operations
 */
contract PausableAssets {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event PausedAsset(address token, address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event UnpausedAsset(address token, address account);

    // We use the asset's underlying token as the key to check whether an asset is paused.
    // A pool will never have two assets with the same underlying token.
    mapping(address => bool) private _pausedAssets;

    error WOMBAT_ASSET_ALREADY_PAUSED();
    error WOMBAT_ASSET_NOT_PAUSED();

    /**
     * @dev Function to return if the asset is paused.
     * The return value is only useful when true.
     * When the return value is false, the asset can be either not paused or not exist.
     */
    function isPaused(address token) public view returns (bool) {
        return _pausedAssets[token];
    }

    /**
     * @dev Function to make a function callable only when the asset is not paused.
     *
     * Requirements:
     *
     * - The asset must not be paused.
     */
    function requireAssetNotPaused(address token) internal view {
        if (_pausedAssets[token]) revert WOMBAT_ASSET_ALREADY_PAUSED();
    }

    /**
     * @dev Function to make a function callable only when the asset is paused.
     *
     * Requirements:
     *
     * - The asset must be paused.
     */
    function requireAssetPaused(address token) internal view {
        if (!_pausedAssets[token]) revert WOMBAT_ASSET_NOT_PAUSED();
    }

    /**
     * @dev Triggers paused state.
     *
     * Requirements:
     *
     * - The asset must not be paused.
     */
    function _pauseAsset(address token) internal {
        requireAssetNotPaused(token);
        _pausedAssets[token] = true;
        emit PausedAsset(token, msg.sender);
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The asset must be paused.
     */
    function _unpauseAsset(address token) internal {
        requireAssetPaused(token);
        _pausedAssets[token] = false;
        emit UnpausedAsset(token, msg.sender);
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/Pool.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

import './CoreV2.sol';
import '../interfaces/IAsset.sol';
import './PausableAssets.sol';
import '../../wombat-governance/interfaces/IMasterWombat.sol';
import '../interfaces/IPool.sol';

/**
 * @title Pool
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of Wombat protocol
 * Note: All variables are 18 decimals, except from that of underlying tokens
 */
contract Pool is
    Initializable,
    IPool,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    PausableAssets,
    CoreV2
{
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;

    /// @notice Asset Map struct holds assets
    struct AssetMap {
        address[] keys;
        mapping(address => IAsset) values;
        mapping(address => uint256) indexOf;
    }

    /* Storage */

    /// @notice Amplification factor
    uint256 public ampFactor;

    /// @notice Haircut rate
    uint256 public haircutRate;

    /// @notice Retention ratio: the ratio of haircut that should stay in the pool
    uint256 public retentionRatio;

    /// @notice LP dividend ratio : the ratio of haircut that should distribute to LP
    uint256 public lpDividendRatio;

    /// @notice The threshold to mint fee (unit: WAD)
    uint256 public mintFeeThreshold;

    /// @notice Dev address
    address public dev;

    address public feeTo;

    address public masterWombat;

    /// @notice Dividend collected by each asset (unit: WAD)
    mapping(IAsset => uint256) internal _feeCollected;

    /// @notice A record of assets inside Pool
    AssetMap internal _assets;

    /* Events */

    /// @notice An event thats emitted when an asset is added to Pool
    event AssetAdded(address indexed token, address indexed asset);

    /// @notice An event thats emitted when asset is removed from Pool
    event AssetRemoved(address indexed token, address indexed asset);

    /// @notice An event thats emitted when a deposit is made to Pool
    event Deposit(address indexed sender, address token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a withdrawal is made from Pool
    event Withdraw(address indexed sender, address token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a swap is made in Pool
    event Swap(
        address indexed sender,
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 toAmount,
        address indexed to
    );

    event SetDev(address addr);
    event SetMasterWombat(address addr);
    event SetFeeTo(address addr);

    event SetMintFeeThreshold(uint256 value);
    event SetFee(uint256 lpDividendRatio, uint256 retentionRatio);
    event SetAmpFactor(uint256 value);
    event SetHaircutRate(uint256 value);

    event FillPool(address token, uint256 amount);
    event TransferTipBucket(address token, uint256 amount, address to);

    /* Errors */

    error WOMBAT_FORBIDDEN();
    error WOMBAT_EXPIRED();

    error WOMBAT_ASSET_NOT_EXISTS();
    error WOMBAT_ASSET_ALREADY_EXIST();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_ZERO_AMOUNT();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_INVALID_VALUE();
    error WOMBAT_SAME_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();
    error WOMBAT_CASH_NOT_ENOUGH();

    /* Pesudo modifiers to safe gas */

    function _checkLiquidity(uint256 liquidity) internal pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) internal pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) internal pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) internal pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    function _ensure(uint256 deadline) internal view {
        if (deadline < block.timestamp) revert WOMBAT_EXPIRED();
    }

    function _onlyDev() internal view {
        if (dev != msg.sender) revert WOMBAT_FORBIDDEN();
    }

    /* Construtor and setters */

    /**
     * @notice Initializes pool. Dev is set to be the account calling this function.
     */
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual initializer {
        __Ownable_init();
        __ReentrancyGuard_init_unchained();
        __Pausable_init_unchained();

        ampFactor = ampFactor_;
        haircutRate = haircutRate_;

        lpDividendRatio = WAD;

        dev = msg.sender;
    }

    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external nonReentrant {
        _onlyDev();
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external nonReentrant {
        _onlyDev();
        _unpause();
    }

    /**
     * @dev pause asset, restricting deposit and swap operations
     */
    function pauseAsset(address token) external nonReentrant {
        _onlyDev();
        _pauseAsset(token);
    }

    /**
     * @dev unpause asset, enabling deposit and swap operations
     */
    function unpauseAsset(address token) external nonReentrant {
        _onlyDev();
        _unpauseAsset(token);
    }

    // Setters //
    /**
     * @notice Changes the contract dev. Can only be set by the contract owner.
     * @param dev_ new contract dev address
     */
    function setDev(address dev_) external onlyOwner {
        _checkAddress(dev_);
        dev = dev_;
        emit SetDev(dev_);
    }

    function setMasterWombat(address masterWombat_) external onlyOwner {
        _checkAddress(masterWombat_);
        masterWombat = masterWombat_;
        emit SetMasterWombat(masterWombat_);
    }

    /**
     * @notice Changes the pools amplification factor. Can only be set by the contract owner.
     * @param ampFactor_ new pool's amplification factor
     */
    function setAmpFactor(uint256 ampFactor_) external onlyOwner {
        if (ampFactor_ > WAD) revert WOMBAT_INVALID_VALUE(); // ampFactor_ should not be set bigger than 1
        ampFactor = ampFactor_;
        emit SetAmpFactor(ampFactor_);
    }

    /**
     * @notice Changes the pools haircutRate. Can only be set by the contract owner.
     * @param haircutRate_ new pool's haircutRate_
     */
    function setHaircutRate(uint256 haircutRate_) external onlyOwner {
        if (haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE(); // haircutRate_ should not be set bigger than 1
        haircutRate = haircutRate_;
        emit SetHaircutRate(haircutRate_);
    }

    function setFee(uint256 lpDividendRatio_, uint256 retentionRatio_) external onlyOwner {
        if (retentionRatio_ + lpDividendRatio_ > WAD) revert WOMBAT_INVALID_VALUE();
        mintAllFee();
        retentionRatio = retentionRatio_;
        lpDividendRatio = lpDividendRatio_;
        emit SetFee(lpDividendRatio_, retentionRatio_);
    }

    /**
     * @notice Changes the fee beneficiary. Can only be set by the contract owner.
     * This value cannot be set to 0 to avoid unsettled fee.
     * @param feeTo_ new fee beneficiary
     */
    function setFeeTo(address feeTo_) external onlyOwner {
        _checkAddress(feeTo_);
        feeTo = feeTo_;
        emit SetFeeTo(feeTo_);
    }

    /**
     * @notice Set min fee to mint
     */
    function setMintFeeThreshold(uint256 mintFeeThreshold_) external onlyOwner {
        mintFeeThreshold = mintFeeThreshold_;
        emit SetMintFeeThreshold(mintFeeThreshold_);
    }

    /* Assets */

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(address token, address asset) external onlyOwner nonReentrant {
        _checkAddress(asset);
        _checkAddress(token);

        if (_containsAsset(token)) revert WOMBAT_ASSET_ALREADY_EXIST();
        _assets.values[token] = IAsset(asset);
        _assets.indexOf[token] = _assets.keys.length;
        _assets.keys.push(token);

        emit AssetAdded(token, asset);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(address token) external onlyOwner {
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();

        address asset = address(_getAsset(token));
        delete _assets.values[token];

        uint256 index = _assets.indexOf[token];
        uint256 lastIndex = _assets.keys.length - 1;
        address lastKey = _assets.keys[lastIndex];

        _assets.indexOf[lastKey] = index;
        delete _assets.indexOf[token];

        _assets.keys[index] = lastKey;
        _assets.keys.pop();

        emit AssetRemoved(token, asset);
    }

    /**
     * @notice Return list of tokens in the pool
     */
    function getTokens() external view override returns (address[] memory) {
        return _assets.keys;
    }

    /**
     * @notice get length of asset list
     * @return the size of the asset list
     */
    function _sizeOfAssetList() internal view returns (uint256) {
        return _assets.keys.length;
    }

    /**
     * @notice Gets asset with token address key
     * @param key The address of token
     * @return the corresponding asset in state
     */
    function _getAsset(address key) internal view returns (IAsset) {
        return _assets.values[key];
    }

    /**
     * @notice Gets key (address) at index
     * @param index the index
     * @return the key of index
     */
    function _getKeyAtIndex(uint256 index) internal view returns (address) {
        return _assets.keys[index];
    }

    /**
     * @notice Looks if the asset is contained by the list
     * @param token The address of token to look for
     * @return bool true if the asset is in asset list, false otherwise
     */
    function _containsAsset(address token) internal view returns (bool) {
        return _assets.values[token] != IAsset(address(0));
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @param token The address of ERC20 token
     */
    function _assetOf(address token) internal view returns (IAsset) {
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        return _assets.values[token];
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @dev to be used externally
     * @param token The address of ERC20 token
     */
    function addressOfAsset(address token) external view override returns (address) {
        return address(_assetOf(token));
    }

    /* Deposit */

    /**
     * This function calculate the exactly amount of liquidity of the deposit. Assumes r* = 1
     */
    function _exactDepositToInEquil(
        IAsset asset,
        uint256 amount
    ) internal view returns (uint256 lpTokenToMint, uint256 liabilityToMint, uint256 reward) {
        liabilityToMint = exactDepositLiquidityInEquilImpl(
            int256(amount),
            int256(uint256(asset.cash())),
            int256(uint256(asset.liability())),
            int256(ampFactor)
        ).toUint256();

        if (liabilityToMint >= amount) {
            reward = liabilityToMint - amount;
        } else {
            // rounding error
            liabilityToMint = amount;
        }

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = asset.liability();
        lpTokenToMint = (liability == 0 ? liabilityToMint : (liabilityToMint * asset.totalSupply()) / liability);
    }

    /**
     * @notice Deposits asset in Pool
     * @param asset The asset to be deposited
     * @param amount The amount to be deposited
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @return liquidity Total asset liquidity minted
     */
    function _deposit(
        IAsset asset,
        uint256 amount,
        uint256 minimumLiquidity,
        address to
    ) internal returns (uint256 liquidity) {
        // collect fee before deposit
        _mintFee(asset);

        uint256 liabilityToMint;
        (liquidity, liabilityToMint, ) = _exactDepositToInEquil(asset, amount);

        _checkLiquidity(liquidity);
        _checkAmount(minimumLiquidity, liquidity);

        asset.addCash(amount);
        asset.addLiability(liabilityToMint);
        asset.mint(to, liquidity);
    }

    /**
     * @notice Deposits amount of tokens into pool ensuring deadline
     * @dev Asset needs to be created and added to pool before any operation. This function assumes tax free token.
     * @param token The token address to be deposited
     * @param amount The amount to be deposited
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @param deadline The deadline to be respected
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        address token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external override nonReentrant whenNotPaused returns (uint256 liquidity) {
        if (amount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(token);

        IAsset asset = _assetOf(token);
        IERC20(token).safeTransferFrom(address(msg.sender), address(asset), amount);

        if (!shouldStake) {
            liquidity = _deposit(asset, amount.toWad(asset.underlyingTokenDecimals()), minimumLiquidity, to);
        } else {
            _checkAddress(masterWombat);
            // deposit and stake on behalf of the user
            liquidity = _deposit(asset, amount.toWad(asset.underlyingTokenDecimals()), minimumLiquidity, address(this));

            asset.approve(masterWombat, liquidity);

            uint256 pid = IMasterWombat(masterWombat).getAssetPid(address(asset));
            IMasterWombat(masterWombat).depositFor(pid, liquidity, to);
        }

        emit Deposit(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Quotes potential deposit from pool
     * @dev To be used by frontend
     * @param token The token to deposit by user
     * @param amount The amount to deposit
     * @return liquidity The potential liquidity user would receive
     * @return reward
     */
    function quotePotentialDeposit(
        address token,
        uint256 amount
    ) external view override returns (uint256 liquidity, uint256 reward) {
        IAsset asset = _assetOf(token);
        (liquidity, , reward) = _exactDepositToInEquil(asset, amount.toWad(asset.underlyingTokenDecimals()));
    }

    /* Withdraw */

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param asset The asset willing to be withdrawn
     * @param liquidity The liquidity willing to be withdrawn
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return fee
     */
    function _withdrawFrom(
        IAsset asset,
        uint256 liquidity
    ) internal view returns (uint256 amount, uint256 liabilityToBurn, uint256 fee) {
        liabilityToBurn = (asset.liability() * liquidity) / asset.totalSupply();
        _checkLiquidity(liabilityToBurn);

        amount = withdrawalAmountInEquilImpl(
            -int256(liabilityToBurn),
            int256(uint256(asset.cash())),
            int256(uint256(asset.liability())),
            int256(ampFactor)
        ).toUint256();

        if (liabilityToBurn >= amount) {
            fee = liabilityToBurn - amount;
        } else {
            // rounding error
            amount = liabilityToBurn;
        }
    }

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param asset The asset to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @return amount The total amount withdrawn
     */
    function _withdraw(IAsset asset, uint256 liquidity, uint256 minimumAmount) internal returns (uint256 amount) {
        // collect fee before withdraw
        _mintFee(asset);

        // calculate liabilityToBurn and Fee
        uint256 liabilityToBurn;
        (amount, liabilityToBurn, ) = _withdrawFrom(asset, liquidity);
        _checkAmount(minimumAmount, amount);

        asset.burn(address(asset), liquidity);
        asset.removeCash(amount);
        asset.removeLiability(liabilityToBurn);

        // revert if cov ratio < 1% to avoid precision error
        if (asset.liability() > 0 && uint256(asset.cash()).wdiv(asset.liability()) < WAD / 100)
            revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param token The token to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return amount The total amount withdrawn
     */
    function withdraw(
        address token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 amount) {
        _checkLiquidity(liquidity);
        _checkAddress(to);
        _ensure(deadline);

        IAsset asset = _assetOf(token);
        // request lp token from user
        IERC20(asset).safeTransferFrom(address(msg.sender), address(asset), liquidity);
        uint8 decimals = asset.underlyingTokenDecimals();
        amount = _withdraw(asset, liquidity, minimumAmount.toWad(decimals)).fromWad(decimals);
        asset.transferUnderlyingToken(to, amount);

        emit Withdraw(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Enables withdrawing liquidity from an asset using LP from a different asset
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity to be withdrawn (in fromToken decimal)
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return toAmount The total amount withdrawn
     */
    function withdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 toAmount) {
        _checkAddress(to);
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);
        _ensure(deadline);
        requireAssetNotPaused(fromToken);

        // Withdraw and swap
        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        IERC20(fromAsset).safeTransferFrom(address(msg.sender), address(fromAsset), liquidity);
        uint256 fromAmountInWad = _withdraw(fromAsset, liquidity, 0);
        (toAmount, ) = _swap(
            fromAsset,
            toAsset,
            fromAmountInWad,
            minimumAmount.toWad(toAsset.underlyingTokenDecimals())
        );

        toAmount = toAmount.fromWad(toAsset.underlyingTokenDecimals());
        toAsset.transferUnderlyingToken(to, toAmount);

        emit Withdraw(msg.sender, toToken, toAmount, liquidity, to);
    }

    /**
     * @notice Quotes potential withdrawal from pool
     * @dev To be used by frontend
     * @param token The token to be withdrawn by user
     * @param liquidity The liquidity (amount of lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     * @return fee The fee that would be applied
     */
    function quotePotentialWithdraw(
        address token,
        uint256 liquidity
    ) external view override returns (uint256 amount, uint256 fee) {
        _checkLiquidity(liquidity);
        IAsset asset = _assetOf(token);
        (amount, , fee) = _withdrawFrom(asset, liquidity);
        amount = amount.fromWad(asset.underlyingTokenDecimals());
    }

    function _quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) internal view returns (uint256 amount, uint256 withdrewAmount) {
        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        // quote withdraw
        (withdrewAmount, , ) = _withdrawFrom(fromAsset, liquidity);

        // quote swap
        uint256 fromCash = uint256(fromAsset.cash()) - withdrewAmount;
        uint256 fromLiability = uint256(fromAsset.liability()) - liquidity;

        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            withdrewAmount = (withdrewAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            int256(fromCash),
            int256(uint256(toAsset.cash())),
            int256(fromLiability),
            int256(uint256(toAsset.liability())),
            int256(withdrewAmount),
            int256(ampFactor)
        );
        // remove haircut
        amount = idealToAmount - idealToAmount.wmul(haircutRate);
    }

    /**
     * @notice Quotes potential withdrawal from other asset from the pool
     * @dev To be used by frontend
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity (amount of the lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     * @return withdrewAmount The amount of the from-token that is withdrew
     */
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view virtual returns (uint256 amount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);

        (amount, withdrewAmount) = _quotePotentialWithdrawFromOtherAsset(fromToken, toToken, liquidity);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);
        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        amount = amount.fromWad(toAsset.underlyingTokenDecimals());
    }

    /* Swap */

    /**
     * @notice Return the scale factor that should applied on from-amounts in a swap given
     * the from-asset and the to-asset.
     * @dev not applicable to a plain pool
     */
    function _quoteFactor(
        IAsset, // fromAsset
        IAsset // toAsset
    ) internal view virtual returns (uint256) {
        // virtual function; do nothing
        return 1e18;
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @return actualToAmount The actual amount user would receive
     * @return haircut The haircut that will be applied
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view virtual returns (uint256 actualToAmount, uint256 haircut) {
        // exact output swap quote should count haircut before swap
        if (fromAmount < 0) {
            fromAmount = fromAmount.wdiv(WAD_I - int256(haircutRate));
        }

        uint256 fromCash = uint256(fromAsset.cash());
        uint256 fromLiability = uint256(fromAsset.liability());
        uint256 toCash = uint256(toAsset.cash());

        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * int256(scaleFactor)) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            int256(fromCash),
            int256(toCash),
            int256(fromLiability),
            int256(uint256(toAsset.liability())),
            fromAmount,
            int256(ampFactor)
        );
        if ((fromAmount > 0 && toCash < idealToAmount) || (fromAmount < 0 && fromAsset.cash() < uint256(-fromAmount))) {
            revert WOMBAT_CASH_NOT_ENOUGH();
        }

        if (fromAmount > 0) {
            // normal quote
            haircut = idealToAmount.wmul(haircutRate);
            actualToAmount = idealToAmount - haircut;
        } else {
            // exact output swap quote count haircut in the fromAmount
            actualToAmount = idealToAmount;
            haircut = (uint256(-fromAmount)).wmul(haircutRate);
        }
    }

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function _swap(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount
    ) internal returns (uint256 actualToAmount, uint256 haircut) {
        (actualToAmount, haircut) = _quoteFrom(fromAsset, toAsset, int256(fromAmount));
        _checkAmount(minimumToAmount, actualToAmount);

        _feeCollected[toAsset] += haircut;

        fromAsset.addCash(fromAmount);

        // haircut is removed from cash to maintain r* = 1. It is distributed during _mintFee()
        toAsset.removeCash(actualToAmount + haircut);

        // revert if cov ratio < 1% to avoid precision error
        if (uint256(toAsset.cash()).wdiv(toAsset.liability()) < WAD / 100) revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Swap fromToken for toToken, ensures deadline and minimumToAmount and sends quoted amount to `to` address
     * @dev This function assumes tax free token.
     * @param fromToken The token being inserted into Pool by user for swap
     * @param toToken The token wanted by user, leaving the Pool
     * @param fromAmount The amount of from token inserted
     * @param minimumToAmount The minimum amount that will be accepted by user as result
     * @param to The user receiving the result of swap
     * @param deadline The deadline to be respected
     */
    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 haircut) {
        _checkSameAddress(fromToken, toToken);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(fromToken);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        (actualToAmount, haircut) = _swap(
            fromAsset,
            toAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            minimumToAmount.toWad(toDecimal)
        );

        actualToAmount = actualToAmount.fromWad(toDecimal);
        haircut = haircut.fromWad(toDecimal);

        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);
        toAsset.transferUnderlyingToken(to, actualToAmount);

        emit Swap(msg.sender, fromToken, toToken, fromAmount, actualToAmount, to);
    }

    /**
     * @notice Given an input asset amount and token addresses, calculates the
     * maximum output token amount (accounting for fees and slippage).
     * @dev In reverse quote, the haircut is in the `fromAsset`
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param fromAmount The given input amount
     * @return potentialOutcome The potential amount user would receive
     * @return haircut The haircut that would be applied
     */
    function quotePotentialSwap(
        address fromToken,
        address toToken,
        int256 fromAmount
    ) public view override returns (uint256 potentialOutcome, uint256 haircut) {
        _checkSameAddress(fromToken, toToken);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        fromAmount = fromAmount.toWad(fromAsset.underlyingTokenDecimals());
        (potentialOutcome, haircut) = _quoteFrom(fromAsset, toAsset, fromAmount);
        potentialOutcome = potentialOutcome.fromWad(toAsset.underlyingTokenDecimals());
        if (fromAmount >= 0) {
            haircut = haircut.fromWad(toAsset.underlyingTokenDecimals());
        } else {
            haircut = haircut.fromWad(fromAsset.underlyingTokenDecimals());
        }
    }

    /**
     * @notice Returns the minimum input asset amount required to buy the given output asset amount
     * (accounting for fees and slippage)
     * @dev To be used by frontend
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param toAmount The given output amount
     * @return amountIn The input amount required
     * @return haircut The haircut that would be applied
     */
    function quoteAmountIn(
        address fromToken,
        address toToken,
        int256 toAmount
    ) external view override returns (uint256 amountIn, uint256 haircut) {
        return quotePotentialSwap(toToken, fromToken, -toAmount);
    }

    /* Queries */

    /**
     * @notice Returns the exchange rate of the LP token
     * @param token The address of the token
     * @return xr The exchange rate of LP token
     */
    function exchangeRate(address token) external view returns (uint256 xr) {
        IAsset asset = _assetOf(token);
        if (asset.totalSupply() == 0) return WAD;
        return xr = uint256(asset.liability()).wdiv(uint256(asset.totalSupply()));
    }

    function globalEquilCovRatio() external view returns (uint256 equilCovRatio, uint256 invariantInUint) {
        int256 invariant;
        int256 SL;
        (invariant, SL) = _globalInvariantFunc();
        equilCovRatio = uint256(_equilCovRatio(invariant, SL, int256(ampFactor)));
        invariantInUint = uint256(invariant);
    }

    function tipBucketBalance(address token) public view returns (uint256 balance) {
        IAsset asset = _assetOf(token);
        return
            asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) - asset.cash() - _feeCollected[asset];
    }

    /* Utils */

    // this function is used to move fund from tip bucket to the pool to keep r* = 1 as error accumulates
    // unit of amount should be in WAD
    function fillPool(address token, uint256 amount) external {
        _onlyDev();
        IAsset asset = _assetOf(token);
        uint256 tipBucketBal = asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) -
            asset.cash() -
            _feeCollected[asset];

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.addCash(amount);
        emit FillPool(token, amount);
    }

    // unit of amount should be in WAD
    function transferTipBucket(address token, uint256 amount, address to) external onlyOwner {
        IAsset asset = _assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.transferUnderlyingToken(to, amount.fromWad(asset.underlyingTokenDecimals()));
        emit TransferTipBucket(token, amount, to);
    }

    function _globalInvariantFunc() internal view virtual returns (int256 D, int256 SL) {
        int256 A = int256(ampFactor);

        for (uint256 i = 0; i < _sizeOfAssetList(); i++) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));

            // overflow is unrealistic
            int256 A_i = int256(uint256(asset.cash()));
            int256 L_i = int256(uint256(asset.liability()));

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += L_i;
            D += L_i.wmul(r_i - A.wdiv(r_i));
        }
    }

    /**
     * @notice Private function to send fee collected to the fee beneficiary
     * @param asset The address of the asset to collect fee
     */
    function _mintFee(IAsset asset) internal {
        uint256 feeCollected = _feeCollected[asset];
        if (feeCollected == 0 || feeCollected < mintFeeThreshold) {
            // early return
            return;
        }
        {
            // dividend to veWOM
            uint256 dividend = feeCollected.wmul(WAD - lpDividendRatio - retentionRatio);

            if (dividend > 0) {
                asset.transferUnderlyingToken(feeTo, dividend.fromWad(asset.underlyingTokenDecimals()));
            }
        }
        {
            // dividend to LP
            uint256 lpDividend = feeCollected.wmul(lpDividendRatio);
            if (lpDividend > 0) {
                // exact deposit to maintain r* = 1
                // increase the value of the LP token, i.e. assetsPerShare
                (, uint256 liabilityToMint, ) = _exactDepositToInEquil(asset, lpDividend);
                asset.addLiability(liabilityToMint);
                asset.addCash(lpDividend);
            }
        }

        _feeCollected[asset] = 0;
    }

    function mintAllFee() internal {
        for (uint256 i = 0; i < _sizeOfAssetList(); i++) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));
            _mintFee(asset);
        }
    }

    /**
     * @notice Send fee collected to the fee beneficiary
     * @param token The address of the token to collect fee
     */
    function mintFee(address token) external {
        _mintFee(_assetOf(token));
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PoolV2.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

import './CoreV2.sol';
import '../interfaces/IAsset.sol';
import './PausableAssets.sol';
import '../../wombat-governance/interfaces/IMasterWombat.sol';
import '../interfaces/IPool.sol';

/**
 * @title Pool V2
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of Wombat protocol
 * Note: All variables are 18 decimals, except from that of underlying tokens
 * Change log:
 * - add `gap` to prevent storage collision for future upgrades
 */
contract PoolV2 is
    Initializable,
    IPool,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    PausableAssets,
    CoreV2
{
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;

    /// @notice Asset Map struct holds assets
    struct AssetMap {
        address[] keys;
        mapping(address => IAsset) values;
        mapping(address => uint256) indexOf;
    }

    /* Storage */

    /// @notice Amplification factor
    uint256 public ampFactor;

    /// @notice Haircut rate
    uint256 public haircutRate;

    /// @notice Retention ratio: the ratio of haircut that should stay in the pool
    uint256 public retentionRatio;

    /// @notice LP dividend ratio : the ratio of haircut that should distribute to LP
    uint256 public lpDividendRatio;

    /// @notice The threshold to mint fee (unit: WAD)
    uint256 public mintFeeThreshold;

    /// @notice Dev address
    address public dev;

    address public feeTo;

    address public masterWombat;

    /// @notice Dividend collected by each asset (unit: WAD)
    mapping(IAsset => uint256) internal _feeCollected;

    /// @notice A record of assets inside Pool
    AssetMap internal _assets;

    // Slots reserved for future use
    uint128 internal _used1; // Remember to initialize before use.
    uint128 internal _used2; // Remember to initialize before use.
    uint256[49] private gap;

    /* Events */

    /// @notice An event thats emitted when an asset is added to Pool
    event AssetAdded(address indexed token, address indexed asset);

    /// @notice An event thats emitted when asset is removed from Pool
    event AssetRemoved(address indexed token, address indexed asset);

    /// @notice An event thats emitted when a deposit is made to Pool
    event Deposit(address indexed sender, address token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a withdrawal is made from Pool
    event Withdraw(address indexed sender, address token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a swap is made in Pool
    event Swap(
        address indexed sender,
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 toAmount,
        address indexed to
    );

    event SetDev(address addr);
    event SetMasterWombat(address addr);
    event SetFeeTo(address addr);

    event SetMintFeeThreshold(uint256 value);
    event SetFee(uint256 lpDividendRatio, uint256 retentionRatio);
    event SetAmpFactor(uint256 value);
    event SetHaircutRate(uint256 value);

    event FillPool(address token, uint256 amount);
    event TransferTipBucket(address token, uint256 amount, address to);

    /* Errors */

    error WOMBAT_FORBIDDEN();
    error WOMBAT_EXPIRED();

    error WOMBAT_ASSET_NOT_EXISTS();
    error WOMBAT_ASSET_ALREADY_EXIST();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_ZERO_AMOUNT();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_INVALID_VALUE();
    error WOMBAT_SAME_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();
    error WOMBAT_CASH_NOT_ENOUGH();

    /* Pesudo modifiers to safe gas */

    function _checkLiquidity(uint256 liquidity) internal pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) internal pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) internal pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) internal pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    function _ensure(uint256 deadline) internal view {
        if (deadline < block.timestamp) revert WOMBAT_EXPIRED();
    }

    function _onlyDev() internal view {
        if (dev != msg.sender) revert WOMBAT_FORBIDDEN();
    }

    /* Construtor and setters */

    /**
     * @notice Initializes pool. Dev is set to be the account calling this function.
     */
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual initializer {
        __Ownable_init();
        __ReentrancyGuard_init_unchained();
        __Pausable_init_unchained();

        ampFactor = ampFactor_;
        haircutRate = haircutRate_;

        lpDividendRatio = WAD;

        dev = msg.sender;
    }

    /**
     * Permisioneed functions
     */

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(address token, address asset) external onlyOwner {
        _checkAddress(asset);
        _checkAddress(token);

        if (_containsAsset(token)) revert WOMBAT_ASSET_ALREADY_EXIST();
        _assets.values[token] = IAsset(asset);
        _assets.indexOf[token] = _assets.keys.length;
        _assets.keys.push(token);

        emit AssetAdded(token, asset);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(address token) external onlyOwner {
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();

        address asset = address(_getAsset(token));
        delete _assets.values[token];

        uint256 index = _assets.indexOf[token];
        uint256 lastIndex = _assets.keys.length - 1;
        address lastKey = _assets.keys[lastIndex];

        _assets.indexOf[lastKey] = index;
        delete _assets.indexOf[token];

        _assets.keys[index] = lastKey;
        _assets.keys.pop();

        emit AssetRemoved(token, asset);
    }

    /**
     * @notice Changes the contract dev. Can only be set by the contract owner.
     * @param dev_ new contract dev address
     */
    function setDev(address dev_) external onlyOwner {
        _checkAddress(dev_);
        dev = dev_;
        emit SetDev(dev_);
    }

    function setMasterWombat(address masterWombat_) external onlyOwner {
        _checkAddress(masterWombat_);
        masterWombat = masterWombat_;
        emit SetMasterWombat(masterWombat_);
    }

    /**
     * @notice Changes the pools amplification factor. Can only be set by the contract owner.
     * @param ampFactor_ new pool's amplification factor
     */
    function setAmpFactor(uint256 ampFactor_) external onlyOwner {
        if (ampFactor_ > WAD) revert WOMBAT_INVALID_VALUE(); // ampFactor_ should not be set bigger than 1
        ampFactor = ampFactor_;
        emit SetAmpFactor(ampFactor_);
    }

    /**
     * @notice Changes the pools haircutRate. Can only be set by the contract owner.
     * @param haircutRate_ new pool's haircutRate_
     */
    function setHaircutRate(uint256 haircutRate_) external onlyOwner {
        if (haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE(); // haircutRate_ should not be set bigger than 1
        haircutRate = haircutRate_;
        emit SetHaircutRate(haircutRate_);
    }

    function setFee(uint256 lpDividendRatio_, uint256 retentionRatio_) external onlyOwner {
        unchecked {
            if (retentionRatio_ + lpDividendRatio_ > WAD) revert WOMBAT_INVALID_VALUE();
        }
        _mintAllFees();
        retentionRatio = retentionRatio_;
        lpDividendRatio = lpDividendRatio_;
        emit SetFee(lpDividendRatio_, retentionRatio_);
    }

    /**
     * @dev unit of amount should be in WAD
     */
    function transferTipBucket(address token, uint256 amount, address to) external onlyOwner {
        IAsset asset = _assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.transferUnderlyingToken(to, amount.fromWad(asset.underlyingTokenDecimals()));
        emit TransferTipBucket(token, amount, to);
    }

    /**
     * @notice Changes the fee beneficiary. Can only be set by the contract owner.
     * This value cannot be set to 0 to avoid unsettled fee.
     * @param feeTo_ new fee beneficiary
     */
    function setFeeTo(address feeTo_) external onlyOwner {
        _checkAddress(feeTo_);
        feeTo = feeTo_;
        emit SetFeeTo(feeTo_);
    }

    /**
     * @notice Set min fee to mint
     */
    function setMintFeeThreshold(uint256 mintFeeThreshold_) external onlyOwner {
        mintFeeThreshold = mintFeeThreshold_;
        emit SetMintFeeThreshold(mintFeeThreshold_);
    }

    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external {
        _onlyDev();
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external {
        _onlyDev();
        _unpause();
    }

    /**
     * @dev pause asset, restricting deposit and swap operations
     */
    function pauseAsset(address token) external {
        _onlyDev();
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        _pauseAsset(token);
    }

    /**
     * @dev unpause asset, enabling deposit and swap operations
     */
    function unpauseAsset(address token) external {
        _onlyDev();
        _unpauseAsset(token);
    }

    /**
     * @notice Move fund from tip bucket to the pool to keep r* = 1 as error accumulates
     * unit of amount should be in WAD
     */
    function fillPool(address token, uint256 amount) external {
        _onlyDev();
        IAsset asset = _assetOf(token);
        uint256 tipBucketBal = asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) -
            asset.cash() -
            _feeCollected[asset];

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.addCash(amount);
        emit FillPool(token, amount);
    }

    /* Assets */

    /**
     * @notice Return list of tokens in the pool
     */
    function getTokens() external view override returns (address[] memory) {
        return _assets.keys;
    }

    /**
     * @notice get length of asset list
     * @return the size of the asset list
     */
    function _sizeOfAssetList() internal view returns (uint256) {
        return _assets.keys.length;
    }

    /**
     * @notice Gets asset with token address key
     * @param key The address of token
     * @return the corresponding asset in state
     */
    function _getAsset(address key) internal view returns (IAsset) {
        return _assets.values[key];
    }

    /**
     * @notice Gets key (address) at index
     * @param index the index
     * @return the key of index
     */
    function _getKeyAtIndex(uint256 index) internal view returns (address) {
        return _assets.keys[index];
    }

    /**
     * @notice Looks if the asset is contained by the list
     * @param token The address of token to look for
     * @return bool true if the asset is in asset list, false otherwise
     */
    function _containsAsset(address token) internal view returns (bool) {
        return _assets.values[token] != IAsset(address(0));
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @param token The address of ERC20 token
     */
    function _assetOf(address token) internal view returns (IAsset) {
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        return _assets.values[token];
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @dev to be used externally
     * @param token The address of ERC20 token
     */
    function addressOfAsset(address token) external view override returns (address) {
        return address(_assetOf(token));
    }

    /* Deposit */

    /**
     * This function calculate the exactly amount of liquidity of the deposit. Assumes r* = 1
     */
    function _exactDepositToInEquil(
        IAsset asset,
        uint256 amount
    ) internal view returns (uint256 lpTokenToMint, uint256 liabilityToMint, uint256 reward) {
        liabilityToMint = exactDepositLiquidityInEquilImpl(
            int256(amount),
            int256(uint256(asset.cash())),
            int256(uint256(asset.liability())),
            int256(ampFactor)
        ).toUint256();

        if (liabilityToMint >= amount) {
            unchecked {
                reward = liabilityToMint - amount;
            }
        } else {
            // rounding error
            liabilityToMint = amount;
        }

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = asset.liability();
        lpTokenToMint = (liability == 0 ? liabilityToMint : (liabilityToMint * asset.totalSupply()) / liability);
    }

    /**
     * @notice Deposits asset in Pool
     * @param asset The asset to be deposited
     * @param amount The amount to be deposited
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @return liquidity Total asset liquidity minted
     */
    function _deposit(
        IAsset asset,
        uint256 amount,
        uint256 minimumLiquidity,
        address to
    ) internal returns (uint256 liquidity) {
        // collect fee before deposit
        _mintFeeIfNeeded(asset);

        uint256 liabilityToMint;
        (liquidity, liabilityToMint, ) = _exactDepositToInEquil(asset, amount);

        _checkLiquidity(liquidity);
        _checkAmount(minimumLiquidity, liquidity);

        asset.addCash(amount);
        asset.addLiability(liabilityToMint);
        asset.mint(to, liquidity);
    }

    /**
     * @notice Deposits amount of tokens into pool ensuring deadline
     * @dev Asset needs to be created and added to pool before any operation. This function assumes tax free token.
     * @param token The token address to be deposited
     * @param amount The amount to be deposited
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @param deadline The deadline to be respected
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        address token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external override nonReentrant whenNotPaused returns (uint256 liquidity) {
        if (amount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(token);

        IAsset asset = _assetOf(token);
        IERC20(token).safeTransferFrom(address(msg.sender), address(asset), amount);

        if (!shouldStake) {
            liquidity = _deposit(asset, amount.toWad(asset.underlyingTokenDecimals()), minimumLiquidity, to);
        } else {
            _checkAddress(masterWombat);
            // deposit and stake on behalf of the user
            liquidity = _deposit(asset, amount.toWad(asset.underlyingTokenDecimals()), minimumLiquidity, address(this));

            asset.approve(masterWombat, liquidity);

            uint256 pid = IMasterWombat(masterWombat).getAssetPid(address(asset));
            IMasterWombat(masterWombat).depositFor(pid, liquidity, to);
        }

        emit Deposit(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Quotes potential deposit from pool
     * @dev To be used by frontend
     * @param token The token to deposit by user
     * @param amount The amount to deposit
     * @return liquidity The potential liquidity user would receive
     * @return reward
     */
    function quotePotentialDeposit(
        address token,
        uint256 amount
    ) external view override returns (uint256 liquidity, uint256 reward) {
        IAsset asset = _assetOf(token);
        (liquidity, , reward) = _exactDepositToInEquil(asset, amount.toWad(asset.underlyingTokenDecimals()));
    }

    /* Withdraw */

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param asset The asset willing to be withdrawn
     * @param liquidity The liquidity willing to be withdrawn
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return fee
     */
    function _withdrawFrom(
        IAsset asset,
        uint256 liquidity
    ) internal view returns (uint256 amount, uint256 liabilityToBurn, uint256 fee) {
        liabilityToBurn = (asset.liability() * liquidity) / asset.totalSupply();
        _checkLiquidity(liabilityToBurn);

        amount = withdrawalAmountInEquilImpl(
            -int256(liabilityToBurn),
            int256(uint256(asset.cash())),
            int256(uint256(asset.liability())),
            int256(ampFactor)
        ).toUint256();

        if (liabilityToBurn >= amount) {
            fee = liabilityToBurn - amount;
        } else {
            // rounding error
            amount = liabilityToBurn;
        }
    }

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param asset The asset to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @return amount The total amount withdrawn
     */
    function _withdraw(IAsset asset, uint256 liquidity, uint256 minimumAmount) internal returns (uint256 amount) {
        // collect fee before withdraw
        _mintFeeIfNeeded(asset);

        // calculate liabilityToBurn and Fee
        uint256 liabilityToBurn;
        (amount, liabilityToBurn, ) = _withdrawFrom(asset, liquidity);
        _checkAmount(minimumAmount, amount);

        asset.burn(address(asset), liquidity);
        asset.removeCash(amount);
        asset.removeLiability(liabilityToBurn);

        // revert if cov ratio < 1% to avoid precision error
        if (asset.liability() > 0 && uint256(asset.cash()).wdiv(asset.liability()) < WAD / 100)
            revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param token The token to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return amount The total amount withdrawn
     */
    function withdraw(
        address token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 amount) {
        _checkLiquidity(liquidity);
        _checkAddress(to);
        _ensure(deadline);

        IAsset asset = _assetOf(token);
        // request lp token from user
        IERC20(asset).safeTransferFrom(address(msg.sender), address(asset), liquidity);
        uint8 decimals = asset.underlyingTokenDecimals();
        amount = _withdraw(asset, liquidity, minimumAmount.toWad(decimals)).fromWad(decimals);
        asset.transferUnderlyingToken(to, amount);

        emit Withdraw(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Enables withdrawing liquidity from an asset using LP from a different asset
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity to be withdrawn (in fromToken decimal)
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return toAmount The total amount withdrawn
     */
    function withdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 toAmount) {
        _checkAddress(to);
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);
        _ensure(deadline);
        requireAssetNotPaused(fromToken);

        // Withdraw and swap
        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        IERC20(fromAsset).safeTransferFrom(address(msg.sender), address(fromAsset), liquidity);
        uint256 fromAmountInWad = _withdraw(fromAsset, liquidity, 0);
        (toAmount, ) = _swap(
            fromAsset,
            toAsset,
            fromAmountInWad,
            minimumAmount.toWad(toAsset.underlyingTokenDecimals())
        );

        toAmount = toAmount.fromWad(toAsset.underlyingTokenDecimals());
        toAsset.transferUnderlyingToken(to, toAmount);

        emit Withdraw(msg.sender, toToken, toAmount, liquidity, to);
    }

    /**
     * @notice Quotes potential withdrawal from pool
     * @dev To be used by frontend
     * @param token The token to be withdrawn by user
     * @param liquidity The liquidity (amount of lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     * @return fee The fee that would be applied
     */
    function quotePotentialWithdraw(
        address token,
        uint256 liquidity
    ) external view override returns (uint256 amount, uint256 fee) {
        _checkLiquidity(liquidity);
        IAsset asset = _assetOf(token);
        (amount, , fee) = _withdrawFrom(asset, liquidity);
        amount = amount.fromWad(asset.underlyingTokenDecimals());
    }

    function _quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) internal view returns (uint256 amount, uint256 withdrewAmount) {
        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        // quote withdraw
        (withdrewAmount, , ) = _withdrawFrom(fromAsset, liquidity);

        // quote swap
        uint256 fromCash = fromAsset.cash() - withdrewAmount;
        uint256 fromLiability = fromAsset.liability() - liquidity;

        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            withdrewAmount = (withdrewAmount * scaleFactor) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            int256(fromCash),
            int256(uint256(toAsset.cash())),
            int256(fromLiability),
            int256(uint256(toAsset.liability())),
            int256(withdrewAmount),
            int256(ampFactor)
        );
        // remove haircut
        amount = idealToAmount - idealToAmount.wmul(haircutRate);
    }

    /**
     * @notice Quotes potential withdrawal from other asset from the pool
     * @dev To be used by frontend
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity (amount of the lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     * @return withdrewAmount The amount of the from-token that is withdrew
     */
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view virtual returns (uint256 amount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);

        (amount, withdrewAmount) = _quotePotentialWithdrawFromOtherAsset(fromToken, toToken, liquidity);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);
        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        amount = amount.fromWad(toAsset.underlyingTokenDecimals());
    }

    /* Swap */

    /**
     * @notice Return the scale factor that should applied on from-amounts in a swap given
     * the from-asset and the to-asset.
     * @dev not applicable to a plain pool
     */
    function _quoteFactor(
        IAsset, // fromAsset
        IAsset // toAsset
    ) internal view virtual returns (uint256) {
        // virtual function; do nothing
        return 1e18;
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @return actualToAmount The actual amount user would receive
     * @return haircut The haircut that will be applied
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view virtual returns (uint256 actualToAmount, uint256 haircut) {
        // exact output swap quote should count haircut before swap
        if (fromAmount < 0) {
            fromAmount = fromAmount.wdiv(WAD_I - int256(haircutRate));
        }

        uint256 fromCash = uint256(fromAsset.cash());
        uint256 fromLiability = uint256(fromAsset.liability());
        uint256 toCash = uint256(toAsset.cash());

        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        if (scaleFactor != WAD) {
            // apply scale factor on from-amounts
            fromCash = (fromCash * scaleFactor) / 1e18;
            fromLiability = (fromLiability * scaleFactor) / 1e18;
            fromAmount = (fromAmount * int256(scaleFactor)) / 1e18;
        }

        uint256 idealToAmount = _swapQuoteFunc(
            int256(fromCash),
            int256(toCash),
            int256(fromLiability),
            int256(uint256(toAsset.liability())),
            fromAmount,
            int256(ampFactor)
        );
        if ((fromAmount > 0 && toCash < idealToAmount) || (fromAmount < 0 && fromAsset.cash() < uint256(-fromAmount))) {
            revert WOMBAT_CASH_NOT_ENOUGH();
        }

        if (fromAmount > 0) {
            // normal quote
            haircut = idealToAmount.wmul(haircutRate);
            actualToAmount = idealToAmount - haircut;
        } else {
            // exact output swap quote count haircut in the fromAmount
            actualToAmount = idealToAmount;
            haircut = (uint256(-fromAmount)).wmul(haircutRate);
        }
    }

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function _swap(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount
    ) internal returns (uint256 actualToAmount, uint256 haircut) {
        (actualToAmount, haircut) = _quoteFrom(fromAsset, toAsset, int256(fromAmount));
        _checkAmount(minimumToAmount, actualToAmount);

        unchecked {
            _feeCollected[toAsset] += haircut;
        }

        fromAsset.addCash(fromAmount);

        // haircut is removed from cash to maintain r* = 1. It is distributed during _mintFee()
        unchecked {
            toAsset.removeCash(actualToAmount + haircut);
        }

        // revert if cov ratio < 1% to avoid precision error
        if (uint256(toAsset.cash()).wdiv(toAsset.liability()) < WAD / 100) revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Swap fromToken for toToken, ensures deadline and minimumToAmount and sends quoted amount to `to` address
     * @dev This function assumes tax free token.
     * @param fromToken The token being inserted into Pool by user for swap
     * @param toToken The token wanted by user, leaving the Pool
     * @param fromAmount The amount of from token inserted
     * @param minimumToAmount The minimum amount that will be accepted by user as result
     * @param to The user receiving the result of swap
     * @param deadline The deadline to be respected
     */
    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 haircut) {
        _checkSameAddress(fromToken, toToken);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(fromToken);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        (actualToAmount, haircut) = _swap(
            fromAsset,
            toAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            minimumToAmount.toWad(toDecimal)
        );

        actualToAmount = actualToAmount.fromWad(toDecimal);
        haircut = haircut.fromWad(toDecimal);

        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);
        toAsset.transferUnderlyingToken(to, actualToAmount);

        emit Swap(msg.sender, fromToken, toToken, fromAmount, actualToAmount, to);
    }

    /**
     * @notice Given an input asset amount and token addresses, calculates the
     * maximum output token amount (accounting for fees and slippage).
     * @dev In reverse quote, the haircut is in the `fromAsset`
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param fromAmount The given input amount
     * @return potentialOutcome The potential amount user would receive
     * @return haircut The haircut that would be applied
     */
    function quotePotentialSwap(
        address fromToken,
        address toToken,
        int256 fromAmount
    ) public view override returns (uint256 potentialOutcome, uint256 haircut) {
        _checkSameAddress(fromToken, toToken);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        fromAmount = fromAmount.toWad(fromAsset.underlyingTokenDecimals());
        (potentialOutcome, haircut) = _quoteFrom(fromAsset, toAsset, fromAmount);
        potentialOutcome = potentialOutcome.fromWad(toAsset.underlyingTokenDecimals());
        if (fromAmount >= 0) {
            haircut = haircut.fromWad(toAsset.underlyingTokenDecimals());
        } else {
            haircut = haircut.fromWad(fromAsset.underlyingTokenDecimals());
        }
    }

    /**
     * @notice Returns the minimum input asset amount required to buy the given output asset amount
     * (accounting for fees and slippage)
     * @dev To be used by frontend
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param toAmount The given output amount
     * @return amountIn The input amount required
     * @return haircut The haircut that would be applied
     */
    function quoteAmountIn(
        address fromToken,
        address toToken,
        int256 toAmount
    ) external view override returns (uint256 amountIn, uint256 haircut) {
        return quotePotentialSwap(toToken, fromToken, -toAmount);
    }

    /* Queries */

    /**
     * @notice Returns the exchange rate of the LP token
     * @param token The address of the token
     * @return xr The exchange rate of LP token
     */
    function exchangeRate(address token) external view returns (uint256 xr) {
        IAsset asset = _assetOf(token);
        if (asset.totalSupply() == 0) return WAD;
        return xr = uint256(asset.liability()).wdiv(uint256(asset.totalSupply()));
    }

    function globalEquilCovRatio() external view returns (uint256 equilCovRatio, uint256 invariantInUint) {
        int256 invariant;
        int256 SL;
        (invariant, SL) = _globalInvariantFunc();
        equilCovRatio = uint256(_equilCovRatio(invariant, SL, int256(ampFactor)));
        invariantInUint = uint256(invariant);
    }

    function tipBucketBalance(address token) public view returns (uint256 balance) {
        IAsset asset = _assetOf(token);
        unchecked {
            return
                asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) -
                asset.cash() -
                _feeCollected[asset];
        }
    }

    /* Utils */

    function _globalInvariantFunc() internal view virtual returns (int256 D, int256 SL) {
        int256 A = int256(ampFactor);

        for (uint256 i; i < _sizeOfAssetList(); ++i) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));

            // overflow is unrealistic
            int256 A_i = int256(uint256(asset.cash()));
            int256 L_i = int256(uint256(asset.liability()));

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += L_i;
            D += L_i.wmul(r_i - A.wdiv(r_i));
        }
    }

    function _mintFeeIfNeeded(IAsset asset) internal {
        uint256 feeCollected = _feeCollected[asset];
        if (feeCollected == 0 || feeCollected < mintFeeThreshold) {
            return;
        } else {
            _mintFee(asset);
        }
    }

    /**
     * @notice Private function to send fee collected to the fee beneficiary
     * @param asset The address of the asset to collect fee
     */
    function _mintFee(IAsset asset) internal returns (uint256 feeCollected) {
        feeCollected = _feeCollected[asset];
        if (feeCollected == 0) {
            // early return
            return 0;
        }
        {
            // dividend to veWOM
            uint256 dividend = feeCollected.wmul(WAD - lpDividendRatio - retentionRatio);

            if (dividend > 0) {
                asset.transferUnderlyingToken(feeTo, dividend.fromWad(asset.underlyingTokenDecimals()));
            }
        }
        {
            // dividend to LP
            uint256 lpDividend = feeCollected.wmul(lpDividendRatio);
            if (lpDividend > 0) {
                // exact deposit to maintain r* = 1
                // increase the value of the LP token, i.e. assetsPerShare
                (, uint256 liabilityToMint, ) = _exactDepositToInEquil(asset, lpDividend);
                asset.addLiability(liabilityToMint);
                asset.addCash(lpDividend);
            }
        }
        // remainings are sent to the tipbucket

        _feeCollected[asset] = 0;
    }

    function _mintAllFees() internal {
        for (uint256 i; i < _sizeOfAssetList(); ++i) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));
            _mintFee(asset);
        }
    }

    /**
     * @notice Send fee collected to the fee beneficiary
     * @param token The address of the token to collect fee
     */
    function mintFee(address token) external returns (uint256 feeCollected) {
        return _mintFee(_assetOf(token));
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PoolV3.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

import './CoreV3.sol';
import '../interfaces/IAsset.sol';
import './PausableAssets.sol';
import '../../wombat-governance/interfaces/IMasterWombat.sol';
import '../interfaces/IPoolV3.sol';

/**
 * @title Pool V3
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of Wombat protocol
 * Note: All variables are 18 decimals, except from that of underlying tokens
 * Change log:
 * - V2: Add `gap` to prevent storage collision for future upgrades
 * - V3:
 *   - *Breaking change*: interface change for quotePotentialDeposit, quotePotentialWithdraw
 *     and quotePotentialWithdrawFromOtherAsset, the reward/fee parameter is removed as it is
 *     ambiguous in the context of volatile pools.
 *   - Contract size compression
 *   - `mintFee` ignores `mintFeeThreshold`
 *   - `globalEquilCovRatio` returns int256 `instead` of `uint256`
 *   - Emit event `SwapV2` with `toTokenFee` instead of `Swap`
 * - TODOs for V4:
 *   - Consider renaming returned value `uint256 haircut` to `toTokenFee / haircutInToToken`
 */
contract PoolV3 is
    Initializable,
    IPoolV3,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    PausableAssets
{
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    /// @notice Asset Map struct holds assets
    struct AssetMap {
        address[] keys;
        mapping(address => IAsset) values;
        mapping(address => uint256) indexOf;
    }

    int256 internal constant WAD_I = 10 ** 18;
    uint256 internal constant WAD = 10 ** 18;

    /* Storage */

    /// @notice Amplification factor
    uint256 public ampFactor;

    /// @notice Haircut rate
    uint256 public haircutRate;

    /// @notice Retention ratio: the ratio of haircut that should stay in the pool
    uint256 public retentionRatio;

    /// @notice LP dividend ratio : the ratio of haircut that should distribute to LP
    uint256 public lpDividendRatio;

    /// @notice The threshold to mint fee (unit: WAD)
    uint256 public mintFeeThreshold;

    /// @notice Dev address
    address public dev;

    address public feeTo;

    address public masterWombat;

    /// @notice Dividend collected by each asset (unit: WAD)
    mapping(IAsset => uint256) internal _feeCollected;

    /// @notice A record of assets inside Pool
    AssetMap internal _assets;

    // Slots reserved for future use
    uint128 internal _used1; // Remember to initialize before use.
    uint128 internal _used2; // Remember to initialize before use.

    /// @notice Withdrawal haircut rate charged at the time of withdrawal
    uint256 public withdrawalHaircutRate;
    uint256[48] private gap;

    /* Events */

    /// @notice An event thats emitted when an asset is added to Pool
    event AssetAdded(address indexed token, address indexed asset);

    /// @notice An event thats emitted when asset is removed from Pool
    event AssetRemoved(address indexed token, address indexed asset);

    /// @notice An event thats emitted when a deposit is made to Pool
    event Deposit(address indexed sender, address token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a withdrawal is made from Pool
    event Withdraw(address indexed sender, address token, uint256 amount, uint256 liquidity, address indexed to);

    event SwapV2(
        address indexed sender,
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 toAmount,
        uint256 toTokenFee,
        address indexed to
    );

    event SetDev(address addr);
    event SetMasterWombat(address addr);
    event SetFeeTo(address addr);

    event SetMintFeeThreshold(uint256 value);
    event SetFee(uint256 lpDividendRatio, uint256 retentionRatio);
    event SetAmpFactor(uint256 value);
    event SetHaircutRate(uint256 value);
    event SetWithdrawalHaircutRate(uint256 value);

    event FillPool(address token, uint256 amount);
    event TransferTipBucket(address token, uint256 amount, address to);

    /* Errors */

    error WOMBAT_FORBIDDEN();
    error WOMBAT_EXPIRED();

    error WOMBAT_ASSET_NOT_EXISTS();
    error WOMBAT_ASSET_ALREADY_EXIST();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_ZERO_AMOUNT();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_INVALID_VALUE();
    error WOMBAT_SAME_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();
    error WOMBAT_CASH_NOT_ENOUGH();

    /* Pesudo modifiers to safe gas */

    function _checkLiquidity(uint256 liquidity) internal pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) internal pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) internal pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) internal pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    function _ensure(uint256 deadline) internal view {
        if (deadline < block.timestamp) revert WOMBAT_EXPIRED();
    }

    function _onlyDev() internal view {
        if (dev != msg.sender) revert WOMBAT_FORBIDDEN();
    }

    /* Construtor and setters */

    /**
     * @notice Initializes pool. Dev is set to be the account calling this function.
     */
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual initializer {
        __Ownable_init();
        __ReentrancyGuard_init_unchained();
        __Pausable_init_unchained();

        if (ampFactor_ > WAD || haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE();
        ampFactor = ampFactor_;
        haircutRate = haircutRate_;

        lpDividendRatio = WAD;

        dev = msg.sender;
    }

    /**
     * Permisioneed functions
     */

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(address token, address asset) external onlyOwner {
        _checkAddress(asset);
        _checkAddress(token);
        _checkSameAddress(token, asset);

        if (_containsAsset(token)) revert WOMBAT_ASSET_ALREADY_EXIST();
        _assets.values[token] = IAsset(asset);
        _assets.indexOf[token] = _assets.keys.length;
        _assets.keys.push(token);

        emit AssetAdded(token, asset);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(address token) external onlyOwner {
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();

        address asset = address(_getAsset(token));
        delete _assets.values[token];

        uint256 index = _assets.indexOf[token];
        uint256 lastIndex = _assets.keys.length - 1;
        address lastKey = _assets.keys[lastIndex];

        _assets.indexOf[lastKey] = index;
        delete _assets.indexOf[token];

        _assets.keys[index] = lastKey;
        _assets.keys.pop();

        emit AssetRemoved(token, asset);
    }

    /**
     * @notice Changes the contract dev. Can only be set by the contract owner.
     * @param dev_ new contract dev address
     */
    function setDev(address dev_) external onlyOwner {
        _checkAddress(dev_);
        dev = dev_;
        emit SetDev(dev_);
    }

    function setMasterWombat(address masterWombat_) external onlyOwner {
        _checkAddress(masterWombat_);
        masterWombat = masterWombat_;
        emit SetMasterWombat(masterWombat_);
    }

    /**
     * @notice Changes the pools amplification factor. Can only be set by the contract owner.
     * @param ampFactor_ new pool's amplification factor
     */
    function setAmpFactor(uint256 ampFactor_) external onlyOwner {
        if (ampFactor_ > WAD) revert WOMBAT_INVALID_VALUE(); // ampFactor_ should not be set bigger than 1
        ampFactor = ampFactor_;
        emit SetAmpFactor(ampFactor_);
    }

    /**
     * @notice Changes the pools haircutRate. Can only be set by the contract owner.
     * @param haircutRate_ new pool's haircutRate_
     */
    function setHaircutRate(uint256 haircutRate_) external onlyOwner {
        if (haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE(); // haircutRate_ should not be set bigger than 1
        haircutRate = haircutRate_;
        emit SetHaircutRate(haircutRate_);
    }

    function setWithdrawalHaircutRate(uint256 withdrawalHaircutRate_) external onlyOwner {
        if (withdrawalHaircutRate_ > WAD) revert WOMBAT_INVALID_VALUE();
        withdrawalHaircutRate = withdrawalHaircutRate_;
        emit SetWithdrawalHaircutRate(withdrawalHaircutRate_);
    }

    function setFee(uint256 lpDividendRatio_, uint256 retentionRatio_) external onlyOwner {
        if (retentionRatio_ + lpDividendRatio_ > WAD) revert WOMBAT_INVALID_VALUE();

        _mintAllFees();
        retentionRatio = retentionRatio_;
        lpDividendRatio = lpDividendRatio_;
        emit SetFee(lpDividendRatio_, retentionRatio_);
    }

    /**
     * @dev unit of amount should be in WAD
     */
    function transferTipBucket(address token, uint256 amount, address to) external onlyOwner {
        IAsset asset = _assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.transferUnderlyingToken(to, amount.fromWad(asset.underlyingTokenDecimals()));
        emit TransferTipBucket(token, amount, to);
    }

    /**
     * @notice Changes the fee beneficiary. Can only be set by the contract owner.
     * This value cannot be set to 0 to avoid unsettled fee.
     * @param feeTo_ new fee beneficiary
     */
    function setFeeTo(address feeTo_) external onlyOwner {
        _checkAddress(feeTo_);
        feeTo = feeTo_;
        emit SetFeeTo(feeTo_);
    }

    /**
     * @notice Set min fee to mint
     */
    function setMintFeeThreshold(uint256 mintFeeThreshold_) external onlyOwner {
        mintFeeThreshold = mintFeeThreshold_;
        emit SetMintFeeThreshold(mintFeeThreshold_);
    }

    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external {
        _onlyDev();
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external {
        _onlyDev();
        _unpause();
    }

    /**
     * @dev pause asset, restricting deposit and swap operations
     */
    function pauseAsset(address token) external {
        _onlyDev();
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        _pauseAsset(token);
    }

    /**
     * @dev unpause asset, enabling deposit and swap operations
     */
    function unpauseAsset(address token) external {
        _onlyDev();
        _unpauseAsset(token);
    }

    /**
     * @notice Move fund from tip bucket to the pool to keep r* = 1 as error accumulates
     * unit of amount should be in WAD
     */
    function fillPool(address token, uint256 amount) external {
        _onlyDev();
        IAsset asset = _assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.addCash(amount);
        emit FillPool(token, amount);
    }

    /* Assets */

    /**
     * @notice Return list of tokens in the pool
     */
    function getTokens() external view override returns (address[] memory) {
        return _assets.keys;
    }

    /**
     * @notice get length of asset list
     * @return the size of the asset list
     */
    function _sizeOfAssetList() internal view returns (uint256) {
        return _assets.keys.length;
    }

    /**
     * @notice Gets asset with token address key
     * @param key The address of token
     * @return the corresponding asset in state
     */
    function _getAsset(address key) internal view returns (IAsset) {
        return _assets.values[key];
    }

    /**
     * @notice Gets key (address) at index
     * @param index the index
     * @return the key of index
     */
    function _getKeyAtIndex(uint256 index) internal view returns (address) {
        return _assets.keys[index];
    }

    /**
     * @notice Looks if the asset is contained by the list
     * @param token The address of token to look for
     * @return bool true if the asset is in asset list, false otherwise
     */
    function _containsAsset(address token) internal view returns (bool) {
        return _assets.values[token] != IAsset(address(0));
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @param token The address of ERC20 token
     */
    function _assetOf(address token) internal view returns (IAsset) {
        if (!_containsAsset(token)) revert WOMBAT_ASSET_NOT_EXISTS();
        return _assets.values[token];
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @dev to be used externally
     * @param token The address of ERC20 token
     */
    function addressOfAsset(address token) external view override returns (address) {
        return address(_assetOf(token));
    }

    /* Deposit */

    /**
     * @notice Deposits asset in Pool
     * @param asset The asset to be deposited
     * @param amount The amount to be deposited
     * @param minimumLiquidity The minimum amount of liquidity to receive
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @return liquidity Total asset liquidity minted
     */
    function _deposit(
        IAsset asset,
        uint256 amount,
        uint256 minimumLiquidity,
        address to
    ) internal returns (uint256 liquidity) {
        // collect fee before deposit
        _mintFeeIfNeeded(asset);

        uint256 liabilityToMint;
        (liquidity, liabilityToMint) = CoreV3.quoteDepositLiquidity(
            asset,
            amount,
            ampFactor,
            _getGlobalEquilCovRatioForDepositWithdrawal()
        );

        _checkLiquidity(liquidity);
        _checkAmount(minimumLiquidity, liquidity);

        asset.addCash(amount);
        asset.addLiability(liabilityToMint);
        asset.mint(to, liquidity);
    }

    /**
     * @notice Deposits amount of tokens into pool ensuring deadline
     * @dev Asset needs to be created and added to pool before any operation. This function assumes tax free token.
     * @param token The token address to be deposited
     * @param amount The amount to be deposited
     * @param minimumLiquidity The minimum amount of liquidity to receive
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @param deadline The deadline to be respected
     * @param shouldStake Whether to stake LP tokens automatically after deposit
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        address token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external override nonReentrant whenNotPaused returns (uint256 liquidity) {
        if (amount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(token);

        IAsset asset = _assetOf(token);
        IERC20(token).safeTransferFrom(address(msg.sender), address(asset), amount);

        if (!shouldStake) {
            liquidity = _deposit(asset, amount.toWad(asset.underlyingTokenDecimals()), minimumLiquidity, to);
        } else {
            _checkAddress(masterWombat);
            // deposit and stake on behalf of the user
            liquidity = _deposit(asset, amount.toWad(asset.underlyingTokenDecimals()), minimumLiquidity, address(this));

            asset.approve(masterWombat, liquidity);

            uint256 pid = IMasterWombat(masterWombat).getAssetPid(address(asset));
            IMasterWombat(masterWombat).depositFor(pid, liquidity, to);
        }

        emit Deposit(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Quotes potential deposit from pool
     * @dev To be used by frontend
     * @param token The token to deposit by user
     * @param amount The amount to deposit
     * @return liquidity The potential liquidity user would receive
     */
    function quotePotentialDeposit(address token, uint256 amount) external view override returns (uint256 liquidity) {
        IAsset asset = _assetOf(token);
        uint8 decimals = asset.underlyingTokenDecimals();
        (liquidity, ) = CoreV3.quoteDepositLiquidity(
            asset,
            amount.toWad(decimals),
            ampFactor,
            _getGlobalEquilCovRatioForDepositWithdrawal()
        );
    }

    /* Withdraw */

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param asset The asset to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @return amount The total amount withdrawn
     * @return withdrawalHaircut The amount of withdrawn haircut
     */
    function _withdraw(
        IAsset asset,
        uint256 liquidity,
        uint256 minimumAmount
    ) internal returns (uint256 amount, uint256 withdrawalHaircut) {
        // collect fee before withdraw
        _mintFeeIfNeeded(asset);

        // calculate liabilityToBurn and Fee
        uint256 liabilityToBurn;
        (amount, liabilityToBurn, withdrawalHaircut) = CoreV3.quoteWithdrawAmount(
            asset,
            liquidity,
            ampFactor,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            withdrawalHaircutRate
        );
        _checkAmount(minimumAmount, amount);

        asset.burn(address(asset), liquidity);
        asset.removeCash(amount + withdrawalHaircut);
        asset.removeLiability(liabilityToBurn);

        // revert if cov ratio < 1% to avoid precision error
        if (asset.liability() > 0 && uint256(asset.cash()).wdiv(asset.liability()) < WAD / 100)
            revert WOMBAT_FORBIDDEN();

        if (withdrawalHaircut > 0) {
            _feeCollected[asset] += withdrawalHaircut;
        }
    }

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param token The token to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return amount The total amount withdrawn
     */
    function withdraw(
        address token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 amount) {
        _checkLiquidity(liquidity);
        _checkAddress(to);
        _ensure(deadline);

        IAsset asset = _assetOf(token);
        // request lp token from user
        IERC20(asset).safeTransferFrom(address(msg.sender), address(asset), liquidity);
        uint8 decimals = asset.underlyingTokenDecimals();
        (amount, ) = _withdraw(asset, liquidity, minimumAmount.toWad(decimals));
        amount = amount.fromWad(decimals);
        asset.transferUnderlyingToken(to, amount);

        emit Withdraw(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Enables withdrawing liquidity from an asset using LP from a different asset
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity to be withdrawn (in fromToken decimal)
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return toAmount The total amount withdrawn
     */
    function withdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 toAmount) {
        _checkAddress(to);
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);
        _ensure(deadline);
        requireAssetNotPaused(fromToken);

        // Withdraw and swap
        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        IERC20(fromAsset).safeTransferFrom(address(msg.sender), address(fromAsset), liquidity);
        (uint256 fromAmountInWad, ) = _withdraw(fromAsset, liquidity, 0);
        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        uint256 toTokenFee;
        (toAmount, toTokenFee) = _swap(fromAsset, toAsset, fromAmountInWad, minimumAmount.toWad(toDecimal));

        toAmount = toAmount.fromWad(toDecimal);
        toTokenFee = toTokenFee.fromWad(toDecimal);
        toAsset.transferUnderlyingToken(to, toAmount);

        uint256 fromAmount = fromAmountInWad.fromWad(fromAsset.underlyingTokenDecimals());
        emit Withdraw(msg.sender, fromToken, fromAmount, liquidity, to);
        emit SwapV2(msg.sender, fromToken, toToken, fromAmount, toAmount, toTokenFee, to);
    }

    /**
     * @notice Quotes potential withdrawal from pool
     * @dev To be used by frontend
     * @param token The token to be withdrawn by user
     * @param liquidity The liquidity (amount of lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     */
    function quotePotentialWithdraw(address token, uint256 liquidity) external view override returns (uint256 amount) {
        _checkLiquidity(liquidity);
        IAsset asset = _assetOf(token);
        (amount, , ) = CoreV3.quoteWithdrawAmount(
            asset,
            liquidity,
            ampFactor,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            withdrawalHaircutRate
        );

        uint8 decimals = asset.underlyingTokenDecimals();
        amount = amount.fromWad(decimals);
    }

    /**
     * @notice Quotes potential withdrawal from other asset from the pool
     * @dev To be used by frontend
     * The startCovRatio and endCovRatio is set to 0, so no high cov ratio fee is charged
     * This is to be overriden by the HighCovRatioFeePool
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity (amount of the lp assets) to be withdrawn
     * @return finalAmount The potential amount user would receive
     * @return withdrewAmount The amount of the from-token that is withdrew
     */
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view virtual override returns (uint256 finalAmount, uint256 withdrewAmount) {
        _checkLiquidity(liquidity);
        _checkSameAddress(fromToken, toToken);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        (finalAmount, withdrewAmount) = CoreV3.quoteWithdrawAmountFromOtherAsset(
            fromAsset,
            toAsset,
            liquidity,
            ampFactor,
            scaleFactor,
            haircutRate,
            0,
            0,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            withdrawalHaircutRate
        );

        withdrewAmount = withdrewAmount.fromWad(fromAsset.underlyingTokenDecimals());
        finalAmount = finalAmount.fromWad(toAsset.underlyingTokenDecimals());
    }

    /* Swap */

    /**
     * @notice Return the scale factor that should applied on from-amounts in a swap given
     * the from-asset and the to-asset.
     * @dev not applicable to a plain pool
     * All tokens are assumed to have the same intrinsic value
     * To be overriden by DynamicPool
     */
    function _quoteFactor(
        IAsset, // fromAsset
        IAsset // toAsset
    ) internal view virtual returns (uint256) {
        return 1e18;
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @return actualToAmount The actual amount user would receive
     * @return toTokenFee The haircut that will be applied
     * To be overriden by HighCovRatioFeePool for reverse-quote
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view virtual returns (uint256 actualToAmount, uint256 toTokenFee) {
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        return CoreV3.quoteSwap(fromAsset, toAsset, fromAmount, ampFactor, scaleFactor, haircutRate);
    }

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function _swap(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount
    ) internal returns (uint256 actualToAmount, uint256 toTokenFee) {
        (actualToAmount, toTokenFee) = _quoteFrom(fromAsset, toAsset, fromAmount.toInt256());
        _checkAmount(minimumToAmount, actualToAmount);

        _feeCollected[toAsset] += toTokenFee;

        fromAsset.addCash(fromAmount);

        // haircut is removed from cash to maintain r* = 1. It is distributed during _mintFee()

        toAsset.removeCash(actualToAmount + toTokenFee);

        // mint fee is skipped for swap to save gas,

        // revert if cov ratio < 1% to avoid precision error
        if (uint256(toAsset.cash()).wdiv(toAsset.liability()) < WAD / 100) revert WOMBAT_FORBIDDEN();
    }

    /**
     * @notice Swap fromToken for toToken, ensures deadline and minimumToAmount and sends quoted amount to `to` address
     * @dev This function assumes tax free token.
     * @param fromToken The token being inserted into Pool by user for swap
     * @param toToken The token wanted by user, leaving the Pool
     * @param fromAmount The amount of from token inserted
     * @param minimumToAmount The minimum amount that will be accepted by user as result
     * @param to The user receiving the result of swap
     * @param deadline The deadline to be respected
     */
    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external virtual override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 haircut) {
        _checkSameAddress(fromToken, toToken);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(fromToken);

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        (actualToAmount, haircut) = _swap(
            fromAsset,
            toAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            minimumToAmount.toWad(toDecimal)
        );

        actualToAmount = actualToAmount.fromWad(toDecimal);
        haircut = haircut.fromWad(toDecimal);

        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);
        toAsset.transferUnderlyingToken(to, actualToAmount);

        emit SwapV2(msg.sender, fromToken, toToken, fromAmount, actualToAmount, haircut, to);
    }

    /**
     * @notice Given an input asset amount and token addresses, calculates the
     * maximum output token amount (accounting for fees and slippage).
     * @dev In reverse quote, the haircut is in the `fromAsset`
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param fromAmount The given input amount
     * @return potentialOutcome The potential amount user would receive
     * @return haircut The haircut that would be applied
     */
    function quotePotentialSwap(
        address fromToken,
        address toToken,
        int256 fromAmount
    ) public view override returns (uint256 potentialOutcome, uint256 haircut) {
        _checkSameAddress(fromToken, toToken);
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();

        IAsset fromAsset = _assetOf(fromToken);
        IAsset toAsset = _assetOf(toToken);

        fromAmount = fromAmount.toWad(fromAsset.underlyingTokenDecimals());
        (potentialOutcome, haircut) = _quoteFrom(fromAsset, toAsset, fromAmount);
        potentialOutcome = potentialOutcome.fromWad(toAsset.underlyingTokenDecimals());
        if (fromAmount >= 0) {
            haircut = haircut.fromWad(toAsset.underlyingTokenDecimals());
        } else {
            haircut = haircut.fromWad(fromAsset.underlyingTokenDecimals());
        }
    }

    /**
     * @notice Returns the minimum input asset amount required to buy the given output asset amount
     * (accounting for fees and slippage)
     * @dev To be used by frontend
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param toAmount The given output amount
     * @return amountIn The input amount required
     * @return haircut The haircut that would be applied
     */
    function quoteAmountIn(
        address fromToken,
        address toToken,
        int256 toAmount
    ) external view override returns (uint256 amountIn, uint256 haircut) {
        return quotePotentialSwap(toToken, fromToken, -toAmount);
    }

    /* Queries */

    /**
     * @notice Returns the exchange rate of the LP token
     * @param token The address of the token
     * @return xr The exchange rate of LP token
     */
    function exchangeRate(address token) external view returns (uint256 xr) {
        IAsset asset = _assetOf(token);
        if (asset.totalSupply() == 0) return WAD;
        return xr = uint256(asset.liability()).wdiv(uint256(asset.totalSupply()));
    }

    function globalEquilCovRatio() public view returns (int256 equilCovRatio, int256 invariant) {
        int256 SL;
        (invariant, SL) = _globalInvariantFunc();
        equilCovRatio = CoreV3.equilCovRatio(invariant, SL, ampFactor.toInt256());
    }

    function tipBucketBalance(address token) public view returns (uint256 balance) {
        IAsset asset = _assetOf(token);
        return
            asset.underlyingTokenBalance().toWad(asset.underlyingTokenDecimals()) - asset.cash() - _feeCollected[asset];
    }

    /* Utils */

    /**
     * @dev to be overriden by DynamicPool to weight assets by the price of underlying token
     */
    function _globalInvariantFunc() internal view virtual returns (int256 D, int256 SL) {
        int256 A = ampFactor.toInt256();

        for (uint256 i; i < _sizeOfAssetList(); ++i) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));

            // overflow is unrealistic
            int256 A_i = int256(uint256(asset.cash()));
            int256 L_i = int256(uint256(asset.liability()));

            // Assume when L_i == 0, A_i always == 0
            if (L_i == 0) {
                // avoid division of 0
                continue;
            }

            int256 r_i = A_i.wdiv(L_i);
            SL += L_i;
            D += L_i.wmul(r_i - A.wdiv(r_i));
        }
    }

    /**
     * For stable pools and rather-stable pools, r* is assumed to be 1 to simplify calculation
     */
    function _getGlobalEquilCovRatioForDepositWithdrawal() internal view virtual returns (int256 equilCovRatio) {
        return WAD_I;
    }

    function _mintFeeIfNeeded(IAsset asset) internal {
        uint256 feeCollected = _feeCollected[asset];
        if (feeCollected == 0 || feeCollected < mintFeeThreshold) {
            return;
        } else {
            _mintFee(asset);
        }
    }

    /**
     * @notice Private function to send fee collected to the fee beneficiary
     * @param asset The address of the asset to collect fee
     */
    function _mintFee(IAsset asset) internal returns (uint256 feeCollected) {
        feeCollected = _feeCollected[asset];
        if (feeCollected == 0) {
            // early return
            return 0;
        }
        {
            // dividend to veWOM
            uint256 dividend = feeCollected.wmul(WAD - lpDividendRatio - retentionRatio);

            if (dividend > 0) {
                asset.transferUnderlyingToken(feeTo, dividend.fromWad(asset.underlyingTokenDecimals()));
            }
        }
        {
            // dividend to LP
            uint256 lpDividend = feeCollected.wmul(lpDividendRatio);
            if (lpDividend > 0) {
                // exact deposit to maintain r* = 1
                // increase the value of the LP token, i.e. assetsPerShare
                (, uint256 liabilityToMint) = CoreV3.quoteDepositLiquidity(
                    asset,
                    lpDividend,
                    ampFactor,
                    _getGlobalEquilCovRatioForDepositWithdrawal()
                );
                asset.addLiability(liabilityToMint);
                asset.addCash(lpDividend);
            }
        }
        // remainings are sent to the tipbucket

        _feeCollected[asset] = 0;
    }

    function _mintAllFees() internal {
        for (uint256 i; i < _sizeOfAssetList(); ++i) {
            IAsset asset = _getAsset(_getKeyAtIndex(i));
            _mintFee(asset);
        }
    }

    /**
     * @notice Send fee collected to the fee beneficiary
     * @param token The address of the token to collect fee
     */
    function mintFee(address token) external returns (uint256 feeCollected) {
        return _mintFee(_assetOf(token));
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PoolV4.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

import './CoreV4.sol';
import './PausableAssets.sol';
import '../../wombat-governance/interfaces/IMasterWombat.sol';
import '../libraries/AssetLibrary.sol';
import '../interfaces/IPoolV4.sol';

/**
 * @title Pool V4
 * @notice Manages deposits, withdrawals and swaps. Holds a mapping of assets and parameters.
 * @dev The main entry-point of Wombat protocol
 * Note: All variables are 18 decimals, except from that of underlying tokens
 * Change log:
 * - V2: Add `gap` to prevent storage collision for future upgrades
 * - V3:
 *   - *Breaking change*: interface change for quotePotentialDeposit, quotePotentialWithdraw
 *     and quotePotentialWithdrawFromOtherAsset, the reward/fee parameter is removed as it is
 *     ambiguous in the context of volatile pools.
 *   - Contract size compression
 *   - `mintFee` ignores `mintFeeThreshold`
 *   - `globalEquilCovRatio` returns int256 `instead` of `uint256`
 *   - Emit event `SwapV2` with `toTokenFee` instead of `Swap`
 * - TODOs for V4:
 *   - Consider renaming returned value `uint256 haircut` to `toTokenFee / haircutInToToken`
 * - V4:
 *   - Delegate pool logic to external contract
 */
contract PoolV4 is
    Initializable,
    IPoolV4,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    PausableAssets
{
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    int256 internal constant WAD_I = 10 ** 18;
    uint256 internal constant WAD = 10 ** 18;

    /* Storage */

    PoolV4Data poolData;

    /* Events */

    /// @notice An event thats emitted when a deposit is made to Pool
    event Deposit(address indexed sender, IERC20 token, uint256 amount, uint256 liquidity, address indexed to);

    /// @notice An event thats emitted when a withdrawal is made from Pool
    event Withdraw(address indexed sender, IERC20 token, uint256 amount, uint256 liquidity, address indexed to);

    event SwapV2(
        address indexed sender,
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256 toAmount,
        uint256 toTokenFee,
        address indexed to
    );

    event SetDev(address addr);
    event SetMasterWombat(address addr);
    event SetFeeTo(address addr);

    event AssetAdded(IERC20 indexed token, IAsset indexed asset);
    event AssetRemoved(IERC20 indexed token, IAsset indexed asset);

    event SetMintFeeThreshold(uint256 value);
    event SetFee(uint256 lpDividendRatio, uint256 retentionRatio);
    event SetAmpFactor(uint256 value);
    event SetHaircutRate(uint256 value);
    event SetWithdrawalHaircutRate(uint256 value);

    event FillPool(IERC20 token, uint256 amount);
    event TransferTipBucket(IERC20 token, uint256 amount, address to);

    /* Errors */

    error WOMBAT_FORBIDDEN();
    error WOMBAT_EXPIRED();

    error WOMBAT_ZERO_ADDRESS();
    error WOMBAT_ZERO_AMOUNT();
    error WOMBAT_ZERO_LIQUIDITY();
    error WOMBAT_INVALID_VALUE();
    error WOMBAT_SAME_ADDRESS();
    error WOMBAT_AMOUNT_TOO_LOW();

    /* Pesudo modifiers to save gas */

    function _checkLiquidity(uint256 liquidity) internal pure {
        if (liquidity == 0) revert WOMBAT_ZERO_LIQUIDITY();
    }

    function _checkAddress(address to) internal pure {
        if (to == address(0)) revert WOMBAT_ZERO_ADDRESS();
    }

    function _checkSameAddress(address from, address to) internal pure {
        if (from == to) revert WOMBAT_SAME_ADDRESS();
    }

    function _checkAmount(uint256 minAmt, uint256 amt) internal pure {
        if (minAmt > amt) revert WOMBAT_AMOUNT_TOO_LOW();
    }

    function _ensure(uint256 deadline) internal view {
        if (deadline < block.timestamp) revert WOMBAT_EXPIRED();
    }

    function _onlyDev() internal view {
        if (poolData.dev != msg.sender) revert WOMBAT_FORBIDDEN();
    }

    /* Construtor and setters */

    /**
     * @notice Initializes pool. dev is set to be the account calling this function.
     */
    function initialize(uint256 ampFactor_, uint256 haircutRate_) public virtual initializer {
        __Ownable_init();
        __ReentrancyGuard_init_unchained();
        __Pausable_init_unchained();

        if (ampFactor_ > WAD || haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE();
        poolData.ampFactor = ampFactor_;
        poolData.haircutRate = haircutRate_;

        poolData.lpDividendRatio = WAD;

        poolData.dev = msg.sender;
    }

    /**
     * Permisioneed functions
     */

    /**
     * @notice Adds asset to pool, reverts if asset already exists in pool
     * @param token The address of token
     * @param asset The address of the Wombat Asset contract
     */
    function addAsset(IERC20 token, IAsset asset) external onlyOwner {
        _checkAddress(address(asset));
        _checkAddress(address(token));
        _checkSameAddress(address(token), address(asset));

        AssetLibrary.addAsset(poolData.assets, token, asset);

        emit AssetAdded(token, asset);
    }

    /**
     * @notice Removes asset from asset struct
     * @dev Can only be called by owner
     * @param token The address of token to remove
     */
    function removeAsset(IERC20 token) external onlyOwner {
        IAsset asset = poolData.assets.assetOf(token);

        AssetLibrary.removeAsset(poolData.assets, token);

        emit AssetRemoved(token, asset);
    }

    /**
     * @notice Changes the contract dev. Can only be set by the contract owner.
     * @param dev_ new contract dev address
     */
    function setDev(address dev_) external onlyOwner {
        _checkAddress(dev_);
        poolData.dev = dev_;
        emit SetDev(dev_);
    }

    function setMasterWombat(address masterWombat_) external onlyOwner {
        _checkAddress(masterWombat_);
        poolData.masterWombat = masterWombat_;
        emit SetMasterWombat(masterWombat_);
    }

    /**
     * @notice Changes the pools amplification factor. Can only be set by the contract owner.
     * @param ampFactor_ new pool's amplification factor
     */
    function setAmpFactor(uint256 ampFactor_) external onlyOwner {
        if (ampFactor_ > WAD) revert WOMBAT_INVALID_VALUE(); // ampFactor_ should not be set bigger than 1
        poolData.ampFactor = ampFactor_;
        emit SetAmpFactor(ampFactor_);
    }

    /**
     * @notice Changes the pools poolData.haircutRate. Can only be set by the contract owner.
     * @param haircutRate_ new pool's haircutRate_
     */
    function setHaircutRate(uint256 haircutRate_) external onlyOwner {
        if (haircutRate_ > WAD) revert WOMBAT_INVALID_VALUE(); // haircutRate_ should not be set bigger than 1
        poolData.haircutRate = haircutRate_;
        emit SetHaircutRate(haircutRate_);
    }

    function setWithdrawalHaircutRate(uint256 withdrawalHaircutRate_) external onlyOwner {
        if (withdrawalHaircutRate_ > WAD) revert WOMBAT_INVALID_VALUE();
        poolData.withdrawalHaircutRate = withdrawalHaircutRate_;
        emit SetWithdrawalHaircutRate(withdrawalHaircutRate_);
    }

    function setFee(uint256 lpDividendRatio_, uint256 retentionRatio_) external onlyOwner {
        if (retentionRatio_ + lpDividendRatio_ > WAD) revert WOMBAT_INVALID_VALUE();

        CoreV4.mintAllFees(poolData, _getGlobalEquilCovRatioForDepositWithdrawal());
        poolData.retentionRatio = retentionRatio_;
        poolData.lpDividendRatio = lpDividendRatio_;
        emit SetFee(lpDividendRatio_, retentionRatio_);
    }

    /**
     * @dev unit of amount should be in WAD
     */
    function transferTipBucket(IERC20 token, uint256 amount, address to) external onlyOwner {
        IAsset asset = poolData.assets.assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.transferUnderlyingToken(to, amount.fromWad(asset.underlyingTokenDecimals()));
        emit TransferTipBucket(token, amount, to);
    }

    /**
     * @notice Changes the fee beneficiary. Can only be set by the contract owner.
     * This value cannot be set to 0 to avoid unsettled fee.
     * @param feeTo_ new fee beneficiary
     */
    function setFeeTo(address feeTo_) external onlyOwner {
        _checkAddress(feeTo_);
        poolData.feeTo = feeTo_;
        emit SetFeeTo(feeTo_);
    }

    /**
     * @notice Set min fee to mint
     */
    function setMintFeeThreshold(uint256 mintFeeThreshold_) external onlyOwner {
        poolData.mintFeeThreshold = mintFeeThreshold_;
        emit SetMintFeeThreshold(mintFeeThreshold_);
    }

    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external {
        _onlyDev();
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external {
        _onlyDev();
        _unpause();
    }

    /**
     * @dev pause asset, restricting deposit and swap operations
     */
    function pauseAsset(IERC20 token) external {
        _onlyDev();
        poolData.assets.checkAssetExistFor(token);
        _pauseAsset(address(token));
    }

    /**
     * @dev unpause asset, enabling deposit and swap operations
     */
    function unpauseAsset(IERC20 token) external {
        _onlyDev();
        _unpauseAsset(address(token));
    }

    /**
     * @notice Move fund from tip bucket to the pool to keep r* = 1 as error accumulates
     * unit of amount should be in WAD
     */
    function fillPool(IERC20 token, uint256 amount) external {
        _onlyDev();
        IAsset asset = poolData.assets.assetOf(token);
        uint256 tipBucketBal = tipBucketBalance(token);

        if (amount > tipBucketBal) {
            // revert if there's not enough amount in the tip bucket
            revert WOMBAT_INVALID_VALUE();
        }

        asset.addCash(amount);
        emit FillPool(token, amount);
    }

    /* Assets */

    /**
     * @notice Return list of tokens in the pool
     */
    function getTokens() external view returns (IERC20[] memory) {
        return poolData.assets.keys;
    }

    /**
     * @notice Gets Asset corresponding to ERC20 token. Reverts if asset does not exists in Pool.
     * @dev to be used externally
     * @param token The address of ERC20 token
     */
    function addressOfAsset(IERC20 token) external view override returns (IAsset) {
        return poolData.assets.assetOf(token);
    }

    /* Deposit */

    /**
     * @notice Deposits amount of tokens into pool ensuring deadline
     * @dev Asset needs to be created and added to pool before any operation. This function assumes tax free token.
     * @param token The token address to be deposited
     * @param amount The amount to be deposited
     * @param minimumLiquidity The minimum amount of liquidity to receive
     * @param to The user accountable for deposit, receiving the Wombat assets (lp)
     * @param deadline The deadline to be respected
     * @param shouldStake Whether to stake LP tokens automatically after deposit
     * @return liquidity Total asset liquidity minted
     */
    function deposit(
        IERC20 token,
        uint256 amount,
        uint256 minimumLiquidity,
        address to,
        uint256 deadline,
        bool shouldStake
    ) external override nonReentrant whenNotPaused returns (uint256 liquidity) {
        if (amount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(address(token));

        IAsset asset = poolData.assets.assetOf(token);
        IERC20(token).safeTransferFrom(address(msg.sender), address(asset), amount);
        address targetAddr = shouldStake ? address(this) : to;

        liquidity = CoreV4.deposit(
            poolData,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            asset,
            amount.toWad(asset.underlyingTokenDecimals()),
            minimumLiquidity,
            targetAddr
        );

        if (shouldStake) {
            // stake on behalf of the user
            _checkAddress(poolData.masterWombat);

            asset.approve(poolData.masterWombat, liquidity);

            uint256 pid = IMasterWombat(poolData.masterWombat).getAssetPid(address(asset));
            IMasterWombat(poolData.masterWombat).depositFor(pid, liquidity, to);
        }

        emit Deposit(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Quotes potential deposit from pool
     * @dev To be used by frontend
     * @param token The token to deposit by user
     * @param amount The amount to deposit
     * @return liquidity The potential liquidity user would receive
     */
    function quotePotentialDeposit(IERC20 token, uint256 amount) external view override returns (uint256 liquidity) {
        return CoreV4.quotePotentialDeposit(poolData, token, amount, _getGlobalEquilCovRatioForDepositWithdrawal());
    }

    /* Withdraw */

    /**
     * @notice Withdraws liquidity amount of asset to `to` address ensuring minimum amount required
     * @param token The token to be withdrawn
     * @param liquidity The liquidity to be withdrawn
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return amount The total amount withdrawn
     */
    function withdraw(
        IERC20 token,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 amount) {
        _checkLiquidity(liquidity);
        _checkAddress(to);
        _ensure(deadline);

        IAsset asset = poolData.assets.assetOf(token);
        // request lp token from user
        IERC20(asset).safeTransferFrom(address(msg.sender), address(asset), liquidity);
        uint8 decimals = asset.underlyingTokenDecimals();
        (amount, ) = CoreV4.withdraw(
            poolData,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            asset,
            liquidity,
            minimumAmount.toWad(decimals)
        );
        amount = amount.fromWad(decimals);
        asset.transferUnderlyingToken(to, amount);

        emit Withdraw(msg.sender, token, amount, liquidity, to);
    }

    /**
     * @notice Enables withdrawing liquidity from an asset using LP from a different asset
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity to be withdrawn (in fromToken decimal)
     * @param minimumAmount The minimum amount that will be accepted by user
     * @param to The user receiving the withdrawal
     * @param deadline The deadline to be respected
     * @return toAmount The total amount withdrawn
     */
    function withdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity,
        uint256 minimumAmount,
        address to,
        uint256 deadline
    ) external override nonReentrant whenNotPaused returns (uint256 toAmount) {
        _checkAddress(to);
        _checkLiquidity(liquidity);
        _checkSameAddress(address(fromToken), address(toToken));
        _ensure(deadline);
        requireAssetNotPaused(address(fromToken));

        // Withdraw and swap
        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);

        IERC20(fromAsset).safeTransferFrom(address(msg.sender), address(fromAsset), liquidity);
        (uint256 fromAmountInWad, ) = CoreV4.withdraw(
            poolData,
            _getGlobalEquilCovRatioForDepositWithdrawal(),
            fromAsset,
            liquidity,
            0
        );
        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        uint256 toTokenFee;
        (toAmount, toTokenFee) = _swap(fromAsset, toAsset, fromAmountInWad, minimumAmount.toWad(toDecimal));

        toAmount = toAmount.fromWad(toDecimal);
        toTokenFee = toTokenFee.fromWad(toDecimal);
        toAsset.transferUnderlyingToken(to, toAmount);

        uint256 fromAmount = fromAmountInWad.fromWad(fromAsset.underlyingTokenDecimals());
        emit Withdraw(msg.sender, fromToken, fromAmount, liquidity, to);
        emit SwapV2(msg.sender, fromToken, toToken, fromAmount, toAmount, toTokenFee, to);
    }

    /**
     * @notice Quotes potential withdrawal from pool
     * @dev To be used by frontend
     * @param token The token to be withdrawn by user
     * @param liquidity The liquidity (amount of lp assets) to be withdrawn
     * @return amount The potential amount user would receive
     */
    function quotePotentialWithdraw(IERC20 token, uint256 liquidity) external view override returns (uint256 amount) {
        return CoreV4.quotePotentialWithdraw(poolData, _getGlobalEquilCovRatioForDepositWithdrawal(), token, liquidity);
    }

    /**
     * @notice Quotes potential withdrawal from other asset from the pool
     * @dev To be used by frontend
     * The startCovRatio and endCovRatio is set to 0, so no high cov ratio fee is charged
     * This is to be overriden by the HighCovRatioFeePool
     * @param fromToken The corresponding token user holds the LP (Asset) from
     * @param toToken The token wanting to be withdrawn (needs to be well covered)
     * @param liquidity The liquidity (amount of the lp assets) to be withdrawn
     * @return finalAmount The potential amount user would receive
     * @return withdrewAmount The amount of the from-token that is withdrew
     */
    function quotePotentialWithdrawFromOtherAsset(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 liquidity
    ) external view virtual override returns (uint256 finalAmount, uint256 withdrewAmount) {
        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);

        return
            CoreV4.quotePotentialWithdrawFromOtherAsset(
                poolData,
                fromToken,
                toToken,
                liquidity,
                scaleFactor,
                _getGlobalEquilCovRatioForDepositWithdrawal()
            );
    }

    /* Swap */

    /**
     * @notice Return the scale factor that should applied on from-amounts in a swap given
     * the from-asset and the to-asset.
     * @dev not applicable to a plain pool
     * All tokens are assumed to have the same intrinsic value
     * To be overriden by DynamicPool
     */
    function _quoteFactor(
        IAsset, // fromAsset
        IAsset // toAsset
    ) internal view virtual returns (uint256) {
        return 1e18;
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and haircut
     * @param fromAsset The initial asset
     * @param toAsset The asset wanted by user
     * @param fromAmount The amount to quote
     * @return actualToAmount The actual amount user would receive
     * @return toTokenFee The haircut that will be applied
     * To be overriden by HighCovRatioFeePool for reverse-quote
     */
    function _quoteFrom(
        IAsset fromAsset,
        IAsset toAsset,
        int256 fromAmount
    ) internal view virtual returns (uint256 actualToAmount, uint256 toTokenFee) {
        uint256 scaleFactor = _quoteFactor(fromAsset, toAsset);
        return CoreV4.quoteSwap(fromAsset, toAsset, fromAmount, poolData.ampFactor, scaleFactor, poolData.haircutRate);
    }

    /**
     * expect fromAmount and minimumToAmount to be in WAD
     */
    function _swap(
        IAsset fromAsset,
        IAsset toAsset,
        uint256 fromAmount,
        uint256 minimumToAmount
    ) internal returns (uint256 actualToAmount, uint256 toTokenFee) {
        (actualToAmount, toTokenFee) = _quoteFrom(fromAsset, toAsset, fromAmount.toInt256());
        CoreV4.performSwap(poolData, fromAsset, toAsset, fromAmount, minimumToAmount, actualToAmount, toTokenFee);
        _postSwapHook();
    }

    /**
     * @notice This function is called after a swap, to be overridden
     */
    function _postSwapHook() internal virtual {}

    /**
     * @notice Swap fromToken for toToken, ensures deadline and minimumToAmount and sends quoted amount to `to` address
     * @dev This function assumes tax free token.
     * @param fromToken The token being inserted into Pool by user for swap
     * @param toToken The token wanted by user, leaving the Pool
     * @param fromAmount The amount of from token inserted
     * @param minimumToAmount The minimum amount that will be accepted by user as result
     * @param to The user receiving the result of swap
     * @param deadline The deadline to be respected
     */
    function swap(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 deadline
    ) external virtual override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 haircut) {
        _checkSameAddress(address(fromToken), address(toToken));
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();
        _checkAddress(to);
        _ensure(deadline);
        requireAssetNotPaused(address(fromToken));

        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);

        uint8 toDecimal = toAsset.underlyingTokenDecimals();

        (actualToAmount, haircut) = _swap(
            fromAsset,
            toAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            minimumToAmount.toWad(toDecimal)
        );

        actualToAmount = actualToAmount.fromWad(toDecimal);
        haircut = haircut.fromWad(toDecimal);

        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);
        toAsset.transferUnderlyingToken(to, actualToAmount);

        emit SwapV2(msg.sender, fromToken, toToken, fromAmount, actualToAmount, haircut, to);
    }

    /**
     * @notice Given an input asset amount and token addresses, calculates the
     * maximum output token amount (accounting for fees and slippage).
     * @dev In reverse quote, the haircut is in the `fromAsset`
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param fromAmount The given input amount
     * @return potentialOutcome The potential amount user would receive
     * @return haircut The haircut that would be applied
     */
    function quotePotentialSwap(
        IERC20 fromToken,
        IERC20 toToken,
        int256 fromAmount
    ) public view override returns (uint256 potentialOutcome, uint256 haircut) {
        _checkSameAddress(address(fromToken), address(toToken));
        if (fromAmount == 0) revert WOMBAT_ZERO_AMOUNT();

        IAsset fromAsset = poolData.assets.assetOf(fromToken);
        IAsset toAsset = poolData.assets.assetOf(toToken);

        fromAmount = fromAmount.toWad(fromAsset.underlyingTokenDecimals());
        (potentialOutcome, haircut) = _quoteFrom(fromAsset, toAsset, fromAmount);
        potentialOutcome = potentialOutcome.fromWad(toAsset.underlyingTokenDecimals());
        if (fromAmount >= 0) {
            haircut = haircut.fromWad(toAsset.underlyingTokenDecimals());
        } else {
            haircut = haircut.fromWad(fromAsset.underlyingTokenDecimals());
        }
    }

    /**
     * @notice Returns the minimum input asset amount required to buy the given output asset amount
     * (accounting for fees and slippage)
     * @dev To be used by frontend
     * @param fromToken The initial ERC20 token
     * @param toToken The token wanted by user
     * @param toAmount The given output amount
     * @return amountIn The input amount required
     * @return haircut The haircut that would be applied
     */
    function quoteAmountIn(
        IERC20 fromToken,
        IERC20 toToken,
        int256 toAmount
    ) external view override returns (uint256 amountIn, uint256 haircut) {
        return quotePotentialSwap(toToken, fromToken, -toAmount);
    }

    /* Queries */

    /**
     * @notice Returns the exchange rate of the LP token
     * @param token The address of the token
     * @return xr The exchange rate of LP token
     */
    function exchangeRate(IERC20 token) external view returns (uint256 xr) {
        IAsset asset = poolData.assets.assetOf(token);
        if (asset.totalSupply() == 0) return WAD;
        return xr = uint256(asset.liability()).wdiv(uint256(asset.totalSupply()));
    }

    function globalEquilCovRatio() public view virtual returns (int256 equilCovRatio, int256 invariant) {
        return CoreV4.globalEquilCovRatioForStablePool(poolData);
    }

    /**
     * @dev return balance in WAD
     */
    function tipBucketBalance(IERC20 token) public view returns (uint256 balance) {
        return CoreV4.tipBucketBalance(poolData, token);
    }

    /* Utils */

    /**
     * For stable pools and rather-stable pools, r* is assumed to be 1 to simplify calculation
     */
    function _getGlobalEquilCovRatioForDepositWithdrawal() internal view virtual returns (int256 equilCovRatio) {
        return WAD_I;
    }

    /**
     * @notice Send fee collected to the fee beneficiary
     * @param token The address of the token to collect fee
     */
    function mintFee(IERC20 token) external returns (uint256 feeCollected) {
        return CoreV4.mintFee(poolData, poolData.assets.assetOf(token), _getGlobalEquilCovRatioForDepositWithdrawal());
    }

    /* Getters */

    function ampFactor() external view returns (uint256) {
        return poolData.ampFactor;
    }

    function haircutRate() external view returns (uint256) {
        return poolData.haircutRate;
    }

    function retentionRatio() external view returns (uint256) {
        return poolData.retentionRatio;
    }

    function lpDividendRatio() external view returns (uint256) {
        return poolData.lpDividendRatio;
    }

    function mintFeeThreshold() external view returns (uint256) {
        return poolData.mintFeeThreshold;
    }

    function dev() external view returns (address) {
        return poolData.dev;
    }

    function feeTo() external view returns (address) {
        return poolData.feeTo;
    }

    function masterWombat() external view returns (address) {
        return poolData.masterWombat;
    }

    function withdrawalHaircutRate() external view returns (uint256) {
        return poolData.withdrawalHaircutRate;
    }
}

// ============================================================
// FILE: contracts/wombat-core/pool/PoolV4Data.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../interfaces/IAsset.sol';
import '../interfaces/IVolatileAsset.sol';
import '../libraries/AssetLibrary.sol';

struct PoolV4Data {
    // For Pool
    /// @notice Amplification factor
    uint256 ampFactor;
    /// @notice Haircut rate
    uint256 haircutRate;
    /// @notice Retention ratio: the ratio of haircut that should stay in the pool
    uint256 retentionRatio;
    /// @notice LP dividend ratio : the ratio of haircut that should distribute to LP
    uint256 lpDividendRatio;
    /// @notice The threshold to mint fee (unit: WAD)
    uint256 mintFeeThreshold;
    /// @notice dev address
    address dev;
    address feeTo;
    address masterWombat;
    /// @notice Dividend collected by each asset (unit: WAD)
    mapping(IAsset => FeeAndReserve) feeAndReserve;
    /// @notice A record of assets inside Pool
    AssetLibrary.AssetMap assets;
    // Slots reserved for future use
    uint128 _used1; // Remember to initialize before use.
    uint128 _used2; // Remember to initialize before use.
    /// @notice Withdrawal haircut rate charged at the time of withdrawal
    uint256 withdrawalHaircutRate;
    uint256[48] __gap1;
    // For HighCovRatioFeePool
    uint128 startCovRatio; // 1.5
    uint128 endCovRatio; // 1.8
    uint256[50] __gap2;
    // For DynamicPool
    uint256[50] __gap3;
}

struct FeeAndReserve {
    uint128 feeCollected; // 18 decimals
    uint128 reserveForRepegging; // 18 decimals
}

// ============================================================
// FILE: contracts/wombat-core/pool/RepegHelper.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './CoreV4.sol';
import './PoolV4Data.sol';
import '../interfaces/IRelativePriceProvider.sol';
import '../libraries/DSMath.sol';
import '../libraries/SignedSafeMath.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

struct RepegData {
    // for oracle
    uint128 oracleEmaHalfTime;
    uint128 lastOracleTimestamp;
    // for repegging condition
    IVolatileAsset priceAnchor;
    uint96 adjustmentStep;
}

/**
 * @title Core
 * @notice Handles math operations of Wombat protocol. Assume all params are signed integer with 18 decimals
 * @dev Uses OpenZeppelin's SignedSafeMath and DSMath's WAD for calculations.
 * Note: Internal functions are for testing purpose
 * Change log:
 * - Move view functinos (quotes, high cov ratio fee) from the Pool contract to this contract
 * - Add quote functions for cross chain swaps
 */
library RepegHelper {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;

    int256 private constant WAD_I = 10 ** 18;
    uint256 private constant WAD = 10 ** 18;

    //#region Events

    event Repeg(uint256 newGlobalEquilCovRatio);

    //#endregion Events

    //#region private Oracle

    /**
     * @notice Update oracle prices after coverage ratio of assets are changed, or price scales are updated
     */
    function updateOracle(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256 ampFactor
    ) external {
        // TODO: shall we do that after deposit / withdrawal?
        if (myStruct.lastOracleTimestamp == block.timestamp) {
            // Update oracle only once per block in case of oracle manipulation
            return;
        }
        uint256[] memory proposedOracles = _getProposedOraclePrices(myStruct, _assets, ampFactor);
        uint256 assetCount = _assets.count();
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            asset.setOraclePrice(proposedOracles[i]);
        }
        myStruct.lastOracleTimestamp = uint128(block.timestamp);
    }

    // Queries

    /**
     * @notice get the market price of an asset in terms of the priceAnchor (stablecoin in most cast)
     * @dev aka `priceLast`
     */
    function getMarketPrice(
        RepegData storage myStruct,
        IVolatileAsset asset,
        uint256 ampFactor
    ) public view returns (uint256) {
        return (quoteIdealSwapRate(asset, myStruct.priceAnchor, ampFactor) * myStruct.priceAnchor.priceScale()) / WAD;
    }

    /**
     * @notice get the marginal swap rate for asset x to asset y
     * @dev The return value is in 18 decimals regardless of decimals of assets
     */
    function quoteIdealSwapRate(
        IVolatileAsset assetX,
        IVolatileAsset assetY,
        uint256 ampFactor
    ) public view returns (uint256) {
        uint256 r_x = uint256(assetX.cash()).wdiv(assetX.liability());
        uint256 r_y = uint256(assetY.cash()).wdiv(assetY.liability());
        uint256 tmp1 = assetX.priceScale() * (WAD + (((ampFactor * WAD) / r_x) * WAD) / r_x);
        uint256 tmp2 = assetY.priceScale() * (WAD + (((ampFactor * WAD) / r_y) * WAD) / r_y);

        return tmp1.wdiv(tmp2);
    }

    function _getProposedOraclePrices(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256 ampFactor
    ) internal view returns (uint256[] memory proposedOracles) {
        uint256 assetCount = _assets.count();
        proposedOracles = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            proposedOracles[i] = _getProposedOraclePrice(myStruct, asset, ampFactor);
        }

        return proposedOracles;
    }

    function _getProposedOraclePrice(
        RepegData storage myStruct,
        IVolatileAsset asset,
        uint256 ampFactor
    ) private view returns (uint256 newOracle) {
        if (asset == myStruct.priceAnchor) {
            // oracle prices of anchor asset never changes
            return asset.oraclePrice();
        }

        uint256 priceLast = getMarketPrice(myStruct, asset, ampFactor);
        uint256 decayFactor = (WAD * WAD) /
            (LogExpMath.pow(2e18, (block.timestamp - myStruct.lastOracleTimestamp).wdiv(myStruct.oracleEmaHalfTime)));

        uint256 priceScale = asset.priceScale();
        uint256 boundedPriceLast;
        if (priceLast >= 2 * priceScale) {
            boundedPriceLast = 2 * priceScale;
        } else if (priceLast <= priceScale / 2) {
            boundedPriceLast = priceScale / 2;
        } else {
            boundedPriceLast = priceLast;
        }

        // Assumption: decayFactor <= WAD
        newOracle = (decayFactor * asset.oraclePrice() + (WAD - decayFactor) * boundedPriceLast) / WAD;
        return newOracle;
    }

    //#endregion private Oracle

    //#region Repegging

    function attemptRepeg(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 ampFactor
    ) external returns (bool success) {
        (bool canRepeg, uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales) = checkRepegCondition(
            myStruct,
            _assets,
            _feeAndReserve,
            ampFactor
        );

        if (canRepeg) {
            _doRepeg(myStruct, _assets, _feeAndReserve, proposedGlobalEquilCovRatio, proposedScales);
            return true;
        }
        return false;
    }

    function _doRepeg(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 newGlobalEquilCovRatio,
        uint256[] memory newPriceScales
    ) private {
        uint256 assetCount = _assets.count();
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            asset.addCash(_feeAndReserve[asset].reserveForRepegging);
            _feeAndReserve[asset].reserveForRepegging = 0;
        }
        _updatePriceScale(myStruct, _assets, newPriceScales);

        emit Repeg(newGlobalEquilCovRatio);
    }

    function checkRepegCondition(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 ampFactor
    ) public view returns (bool canRepeg, uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales) {
        // Condition 1: norm, which value is `root-mean-square of relative price deviation * number of assets`,
        // is greater than adjustment step
        uint256 norm = _getNorm(_assets);
        if (norm < myStruct.adjustmentStep) {
            return (false, proposedGlobalEquilCovRatio, proposedScales);
        }

        // Condition 2: r* > 1 after repeg

        (proposedGlobalEquilCovRatio, proposedScales) = estimateNewGlobalEquilCovRatio(
            myStruct,
            _assets,
            _feeAndReserve,
            ampFactor
        );

        if (proposedGlobalEquilCovRatio >= WAD) {
            return (true, proposedGlobalEquilCovRatio, proposedScales);
        } else {
            return (false, proposedGlobalEquilCovRatio, proposedScales);
        }
    }

    function estimateNewGlobalEquilCovRatio(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve,
        uint256 ampFactor
    ) public view returns (uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales) {
        uint256 norm = _getNorm(_assets);
        uint256[] memory newCashValues = _getCashValuesWithReserve(_assets, _feeAndReserve);
        uint256 assetCount = newCashValues.length;
        uint256[] memory liabilities = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            liabilities[i] = asset.liability();
        }
        uint256 normalizedAdjustmentStep = _getNormalizedAdjustmentStep(myStruct, norm);
        proposedScales = _getProposedPriceScales(myStruct, _assets, normalizedAdjustmentStep);

        proposedGlobalEquilCovRatio = CoreV4.calculateProposedGlobalEquilCovRatio(
            newCashValues,
            liabilities,
            proposedScales,
            ampFactor
        );

        return (proposedGlobalEquilCovRatio, proposedScales);
    }

    /**
     * @notice Update price scale during re-pegging, under the condition that r* >= 1
     */
    function _updatePriceScale(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256[] memory newPriceScales
    ) private {
        for (uint256 i; i < newPriceScales.length; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            if (asset != myStruct.priceAnchor) {
                asset.setPriceScale(newPriceScales[i]);
            }
        }
    }

    function _getProposedPriceScales(
        RepegData storage myStruct,
        AssetLibrary.AssetMap storage _assets,
        uint256 normalizedAdjustmentStep
    ) internal view returns (uint256[] memory proposedScales) {
        require(normalizedAdjustmentStep <= WAD);

        uint256 assetCount = _assets.count();
        proposedScales = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            proposedScales[i] = _getProposedPriceScale(myStruct, asset, normalizedAdjustmentStep);
        }

        return proposedScales;
    }

    /** @notice root-mean-square of relative price deviation * number of assets
     * @dev We re-peg only if the value is greater than `adjustmentStep`
     */
    function _getNorm(AssetLibrary.AssetMap storage _assets) internal view returns (uint256) {
        uint256 sum;
        uint256 assetCount = _assets.count();
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            uint256 oraclePrice = asset.oraclePrice();
            uint256 priceScale = asset.priceScale();
            uint256 x;
            if (oraclePrice >= priceScale) {
                x = oraclePrice.wdiv(priceScale) - WAD;
            } else {
                x = WAD - oraclePrice.wdiv(priceScale);
            }
            sum += x * x; // Note: 36 decimals
        }
        return sum.sqrt();
    }

    /// @notice The relative distance of change of `priceScale` towards `oraclePrice` after repegging
    function _getNormalizedAdjustmentStep(RepegData storage myStruct, uint256 norm) internal view returns (uint256) {
        uint256 value = (uint256(myStruct.adjustmentStep)).wdiv(norm);
        if (value > 0.2e18) {
            // TODO: Shall we hard code the value or use a parameter?
            // upper bounded by 0.2
            return 0.2e18;
        } else {
            return value;
        }
    }

    function _getCashValuesWithReserve(
        AssetLibrary.AssetMap storage _assets,
        mapping(IAsset => FeeAndReserve) storage _feeAndReserve
    ) internal view returns (uint256[] memory cashValuesWithReserve) {
        uint256 assetCount = _assets.count();
        cashValuesWithReserve = new uint256[](assetCount);
        for (uint256 i; i < assetCount; ++i) {
            IVolatileAsset asset = IVolatileAsset(address(_assets.getAssetAtIndex(i)));
            cashValuesWithReserve[i] = asset.cash() + _feeAndReserve[asset].reserveForRepegging;
        }

        return cashValuesWithReserve;
    }

    function _getProposedPriceScale(
        RepegData storage myStruct,
        IVolatileAsset asset,
        uint256 normalizedAdjustmentStep
    ) private view returns (uint256 newPriceScale) {
        if (asset == myStruct.priceAnchor) {
            // price scale of anchor asset never changes
            return asset.priceScale();
        }

        // Assumption: normalizedAdjustmentStep <= WAD, ensured in `_getProposedPriceScales`
        uint256 oracle = asset.oraclePrice();
        uint256 scale = asset.priceScale();
        newPriceScale = ((oracle * normalizedAdjustmentStep + scale * (WAD - normalizedAdjustmentStep)) / WAD);
        return newPriceScale;
    }

    //#endregion Repegging
}

// ============================================================
// FILE: contracts/wombat-core/pool/VolatilePool.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import './DynamicPoolV4.sol';
import './RepegHelper.sol';
import '../interfaces/IVolatileAsset.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

/**
 * @title Volatile Pool with internal oracle
 * @notice Manages deposits, withdrawals and swaps for volatile pool with internal oracle
 * @dev Fully unveil the power of wombat by enabling oracle and attempt repeg after a swap if repeg condition is met
 */
contract VolatilePool is DynamicPoolV4 {
    using AssetLibrary for AssetLibrary.AssetMap;
    using DSMath for uint256;
    using SignedSafeMath for uint256;
    using SignedSafeMath for int256;

    /// @notice The base asset that always has `priceScale` = 1
    /// @dev It is used to calculate the relative price of other assets

    RepegData repegData;
    uint256[50] private __gap;

    //#region overrides

    function initialize(uint256 ampFactor_, uint256 haircutRate_) public override {
        super.initialize(ampFactor_, haircutRate_);

        RepegData storage myStruct = repegData;
        myStruct.adjustmentStep = 0.0005e18;
        myStruct.oracleEmaHalfTime = 600;
        myStruct.lastOracleTimestamp = uint128(block.timestamp);
    }

    /**
     * @notice This hook is called after each swap. This is the most important function in this contract
     */
    function _postSwapHook() internal override {
        RepegHelper.updateOracle(repegData, poolData.assets, poolData.ampFactor);
        attemptRepeg();
    }

    // function _accumulateFee(IAsset asset, uint256 amount) internal override {
    //     // TODO: Shall we hard code the value or use a parameter?
    //     poolData.feeAndReserve[asset].feeCollected += amount.to128() / 2;
    //     poolData.feeAndReserve[asset].reserveForRepegging += amount.to128() / 2;
    // }

    //#endregion overrides

    /// @dev This function looks safe from re-entrancy attack, since it doesn't interact with non-trusted contracts
    function attemptRepeg() public returns (bool success) {
        return RepegHelper.attemptRepeg(repegData, poolData.assets, poolData.feeAndReserve, poolData.ampFactor);
    }

    //#region queries

    function checkRepegCondition()
        external
        view
        returns (bool canRepeg, uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales)
    {
        return RepegHelper.checkRepegCondition(repegData, poolData.assets, poolData.feeAndReserve, poolData.ampFactor);
    }

    function estimateNewGlobalEquilCovRatio()
        external
        view
        returns (uint256 proposedGlobalEquilCovRatio, uint256[] memory proposedScales)
    {
        return
            RepegHelper.estimateNewGlobalEquilCovRatio(
                repegData,
                poolData.assets,
                poolData.feeAndReserve,
                poolData.ampFactor
            );
    }

    function getMarketPrice(IVolatileAsset asset) external view returns (uint256) {
        return RepegHelper.getMarketPrice(repegData, asset, poolData.ampFactor);
    }

    function quoteIdealSwapRate(IVolatileAsset assetX, IVolatileAsset assetY) external view returns (uint256) {
        return RepegHelper.quoteIdealSwapRate(assetX, assetY, poolData.ampFactor);
    }

    //#endregion queries

    //#region setters

    function setPriceAnchor(IVolatileAsset priceAnchor_) external onlyOwner {
        require(address(priceAnchor_) != address(0));
        RepegData storage myStruct = repegData;
        myStruct.priceAnchor = priceAnchor_;
    }

    function setAdjustmentStep(uint96 adjustmentStep_) external onlyOwner {
        require(adjustmentStep_ <= WAD);
        RepegData storage myStruct = repegData;
        myStruct.adjustmentStep = adjustmentStep_;
    }

    function setOracleEmaHalfTime(uint128 oracleEmaHalfTime_) external onlyOwner {
        require(oracleEmaHalfTime_ >= 60);
        RepegData storage myStruct = repegData;
        myStruct.oracleEmaHalfTime = oracleEmaHalfTime_;
    }

    //#endregion setters
}

// ============================================================
// FILE: contracts/wombat-core/pool/VolatilePoolWithExternalOracle.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.14;

import './DynamicPoolV3.sol';

/**
 * @title Volatile Pool with external oracle
 * @notice Manages deposits, withdrawals and swaps for volatile pool with external oracle
 * By overriding `function _getGlobalEquilCovRatioForDepositWithdrawal`, pool gain / lost is shared by all
 * LP instead of the pool itself
 */
contract VolatilePoolWithExternalOracle is DynamicPoolV3 {
    /// @notice Whether to cap the global equilibrium coverage ratio at 1 for deposit and withdrawal
    bool public shouldCapEquilCovRatio;

    uint256[50] private __gap;

    function initialize(uint256 ampFactor_, uint256 haircutRate_) public override {
        super.initialize(ampFactor_, haircutRate_);
        shouldCapEquilCovRatio = true;
    }

    function setShouldCapEquilCovRatio(bool shouldCapEquilCovRatio_) external onlyOwner {
        shouldCapEquilCovRatio = shouldCapEquilCovRatio_;
    }

    /// @dev enable floating r*, deposit and withdrawal amount should be adjusted by r*
    function _getGlobalEquilCovRatioForDepositWithdrawal() internal view override returns (int256 equilCovRatio) {
        (equilCovRatio, ) = globalEquilCovRatio();
        if (equilCovRatio > WAD_I && shouldCapEquilCovRatio) {
            // Cap r* at 1 for deposit and withdrawal
            equilCovRatio = WAD_I;
        }
    }
}

// ============================================================
// FILE: contracts/wombat-core/test/fakes/FakeCrossChainPool.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

import '../../pool/CrossChainPool.sol';
import '../../pool/HighCovRatioFeePoolV3.sol';
import '../../interfaces/IAdaptor.sol';
import '../../interfaces/ICrossChainPool.sol';

/**
 * This is a fake Pool that implements swap with swapTokensForCredit and swapCreditForTokens.
 * This lets us verify the behaviour of quoteSwap and swap has not changed in our cross-chain implementation.
 */
contract FakeCrossChainPool is CrossChainPool {
    using DSMath for uint256;
    using SafeERC20 for IERC20;
    using SignedSafeMath for int256;

    function swap(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 minimumToAmount,
        address to,
        uint256 /*deadline*/
    ) external override nonReentrant whenNotPaused returns (uint256 actualToAmount, uint256 haircut) {
        IAsset fromAsset = _assetOf(fromToken);

        (uint256 creditAmount, uint256 haircut1) = _swapTokensForCredit(
            fromAsset,
            fromAmount.toWad(fromAsset.underlyingTokenDecimals()),
            0
        );

        uint256 haircut2;
        (actualToAmount, haircut2) = _doSwapCreditForTokens(toToken, creditAmount, minimumToAmount, to);

        haircut = haircut1 + haircut2;
        IERC20(fromToken).safeTransferFrom(msg.sender, address(fromAsset), fromAmount);
    }

    // Override and pass, to reduce contract size
    function quotePotentialWithdrawFromOtherAsset(
        address fromToken,
        address toToken,
        uint256 liquidity
    ) external view override returns (uint256 finalAmount, uint256 withdrewAmount) {}
}

// ============================================================
// FILE: contracts/wombat-core/test/invariants/CoreV3Invariants.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '@openzeppelin/contracts/utils/Strings.sol';
import '@openzeppelin/contracts/utils/math/SignedMath.sol';
import '../../pool/CoreV3.sol';

contract CoreV3Invariant {
    // Check that exactDepositLiquidityImpl return the same value as exactDepositLiquidityInEquilImpl when r* = 1.
    function testGeneralDeposit(
        uint256 margin,
        int256 amount,
        int256 cash,
        int256 liability,
        int256 ampFactor
    ) public pure {
        int256 expected = CoreV3.exactDepositLiquidityInEquilImpl(amount, cash, liability, ampFactor);
        int256 actual = CoreV3.exactDepositLiquidityImpl(amount, cash, liability, ampFactor, 1 ether);
        require(
            SignedMath.abs(expected - actual) <= margin,
            string(
                abi.encodePacked(
                    'expected: ',
                    Strings.toString(uint256(expected)),
                    ' but got: ',
                    Strings.toString(uint256(actual))
                )
            )
        );
    }

    // This verifies the following invariant:
    //   OldDeposit = NewDeposit * r
    // where OldDeposit is calculated at r* = 1 and NewDeposit is calculated at r* = r.
    function testGeneralDepositWithCoverageRatio(
        uint256 margin,
        int256 amount,
        int256 cash,
        int256 liability,
        int256 ampFactor
    ) public pure {
        int256 coverageRatio = (1 ether * cash) / liability;
        int256 expected = CoreV3.exactDepositLiquidityInEquilImpl(amount, liability, liability, ampFactor);
        int256 actual = (CoreV3.exactDepositLiquidityImpl(amount, cash, liability, ampFactor, coverageRatio) *
            coverageRatio) / 1 ether;
        require(
            SignedMath.abs(expected - actual) <= margin,
            string(
                abi.encodePacked(
                    'expected: ',
                    Strings.toString(uint256(expected)),
                    ' but got: ',
                    Strings.toString(uint256(actual)),
                    ' at coverage ratio: ',
                    Strings.toString(uint256(coverageRatio))
                )
            )
        );
    }

    // Check that withdrawalAmountImpl return the same value as withdrawalAmountInEquilImpl when r* = 1.
    function testGeneralWithdraw(
        uint256 margin,
        int256 amount,
        int256 cash,
        int256 liability,
        int256 ampFactor
    ) public pure {
        int256 expected = CoreV3.withdrawalAmountInEquilImpl(amount, cash, liability, ampFactor);
        int256 actual = CoreV3.withdrawalAmountImpl(amount, cash, liability, ampFactor, 1 ether);
        require(
            SignedMath.abs(expected - actual) <= margin,
            string(
                abi.encodePacked(
                    'expected: ',
                    Strings.toString(uint256(expected)),
                    ' but got: ',
                    Strings.toString(uint256(actual))
                )
            )
        );
    }

    // This verifies the following invariant:
    //   OldWithdrawals = NewWithdrawals / r
    // where OldWithdrawals is calculated at r* = 1 and NewWithdrawals is calculated at r* = r.
    function testGeneralWithdrawWithCoverageRatio(
        uint256 margin,
        int256 amount,
        int256 cash,
        int256 liability,
        int256 ampFactor
    ) public pure {
        int256 coverageRatio = (1 ether * cash) / liability;
        int256 expected = CoreV3.withdrawalAmountInEquilImpl(amount, liability, liability, ampFactor);
        int256 actual = (CoreV3.withdrawalAmountImpl(amount, cash, liability, ampFactor, coverageRatio) * 1 ether) /
            coverageRatio;
        require(
            SignedMath.abs(expected - actual) <= margin,
            string(
                abi.encodePacked(
                    'expected: ',
                    Strings.toString(uint256(expected)),
                    ' but got: ',
                    Strings.toString(uint256(actual)),
                    ' at coverage ratio: ',
                    Strings.toString(uint256(coverageRatio))
                )
            )
        );
    }
}

// ============================================================
// FILE: contracts/wombat-core/test/MockPoolV3_0.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

contract MockPoolV3_0 {
    mapping(uint256 => uint256) public feeCollected;

    function setFee(uint256 index, uint256 value) external {
        feeCollected[index] = value;
    }
}

// ============================================================
// FILE: contracts/wombat-core/test/MockPoolV3_1.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

contract MockPoolV3_1 {
    struct FeeAndReserve {
        uint128 feeCollected; // 18 decimals
        uint128 reserveForRepegging; // 18 decimals
    }

    mapping(uint256 => FeeAndReserve) public feeAndReserve;
}

// ============================================================
// FILE: contracts/wombat-core/test/MockVolatilePool.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

import '../pool/VolatilePool.sol';

contract MockVolatilePool is VolatilePool {
    function getNormalizedAdjustmentStep(uint256 norm) external view returns (uint256) {
        return RepegHelper._getNormalizedAdjustmentStep(repegData, norm);
    }

    function getCashValuesWithReserve() external view returns (uint256[] memory cashValuesWithReserve) {
        return RepegHelper._getCashValuesWithReserve(poolData.assets, poolData.feeAndReserve);
    }

    function getProposedPriceScales(
        uint256 normalizedAdjustmentStep
    ) external view returns (uint256[] memory proposedScales) {
        return RepegHelper._getProposedPriceScales(repegData, poolData.assets, normalizedAdjustmentStep);
    }

    function getProposedOraclePrices() external view returns (uint256[] memory proposedOracles) {
        return RepegHelper._getProposedOraclePrices(repegData, poolData.assets, poolData.ampFactor);
    }

    function getNorm() external view returns (uint256) {
        return RepegHelper._getNorm(poolData.assets);
    }

    function addReserve(IAsset asset, uint128 amount) external {
        poolData.feeAndReserve[asset].reserveForRepegging += amount;
    }

    function feeAndReserve(IAsset asset) external view returns (FeeAndReserve memory) {
        return poolData.feeAndReserve[asset];
    }
}

// ============================================================
// FILE: contracts/wombat-core/test/TestCoreV2.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

import '../pool/CoreV2.sol';

contract TestCoreV2 is CoreV2 {
    using DSMath for uint256;

    function testSwapQuoteFunc(
        uint256 Ax,
        uint256 Ay,
        uint256 Lx,
        uint256 Ly,
        int256 Dx_i,
        uint256 A
    ) external pure returns (uint256) {
        return _swapQuoteFunc(int256(Ax), int256(Ay), int256(Lx), int256(Ly), Dx_i, int256(A));
    }

    function test_coverageYFunc(int256 b, int256 A) external pure returns (int256) {
        return _solveQuad(b, A);
    }

    function test_coefficientFunc(int256 Lx, int256 Ly, int256 Rx, int256 D, int256 A) external pure returns (int256) {
        return _coefficientFunc(Lx, Ly, Rx, D, A);
    }

    function test_invariantFunc(int256 Ax, int256 Ay, int256 Lx, int256 Ly, int256 A) external pure returns (int256) {
        return _invariantFunc(Lx, SignedSafeMath.wdiv(Ax, Lx), Ly, SignedSafeMath.wdiv(Ay, Ly), A);
    }

    function test_depositFee(uint256 cash, uint256 liability, uint256 amount) external pure returns (uint256) {
        return 0;
    }

    function test_convertToWAD(uint8 d, uint256 Dx) external pure returns (uint256) {
        return Dx.toWad(d);
    }

    function test_convertFromWAD(uint8 d, uint256 Dx) external pure returns (uint256) {
        return Dx.fromWad(d);
    }

    function test_depositRewardImpl(
        int256 D,
        int256 SL,
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) external pure returns (int256 v) {
        return depositRewardImpl(D, SL, delta_i, A_i, L_i, A);
    }

    function test_withdrawalAmountInEquilImpl(
        int256 delta_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) external pure returns (int256 v) {
        return withdrawalAmountInEquilImpl(delta_i, A_i, L_i, A);
    }

    function test_exactDepositLiquidityInEquilImpl(
        int256 D_i,
        int256 A_i,
        int256 L_i,
        int256 A
    ) external pure returns (int256 v) {
        return exactDepositLiquidityInEquilImpl(D_i, A_i, L_i, A);
    }
}

// ============================================================
// FILE: contracts/wombat-core/test/TestDSMath.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

import '../libraries/DSMath.sol';

contract TestDSMath {
    using DSMath for uint256;

    function add(uint256 x, uint256 y) external pure returns (uint256 z) {
        require((z = x + y) >= x, 'ds-math-add-overflow');
    }

    function sub(uint256 x, uint256 y) external pure returns (uint256 z) {
        require((z = x - y) <= x, 'ds-math-sub-underflow');
    }

    function mul(uint256 x, uint256 y) external pure returns (uint256 z) {
        require(y == 0 || (z = x * y) / y == x, 'ds-math-mul-overflow');
    }

    function min(uint256 x, uint256 y) external pure returns (uint256 z) {
        return x <= y ? x : y;
    }

    function max(uint256 x, uint256 y) external pure returns (uint256 z) {
        return x >= y ? x : y;
    }

    function imin(int256 x, int256 y) external pure returns (int256 z) {
        return x <= y ? x : y;
    }

    function imax(int256 x, int256 y) external pure returns (int256 z) {
        return x >= y ? x : y;
    }

    uint256 public constant WAD = 10 ** 18;
    uint256 public constant RAY = 10 ** 27;

    //rounds to zero if x*y < WAD / 2
    function wmul(uint256 x, uint256 y) external pure returns (uint256) {
        return ((x * y) + (WAD / 2)) / WAD;
    }

    //rounds to zero if x*y < WAD / 2
    function wdiv(uint256 x, uint256 y) public pure returns (uint256) {
        return ((x * WAD) + (y / 2)) / y;
    }

    function reciprocal(uint256 x) external pure returns (uint256) {
        return wdiv(WAD, x);
    }

    // This famous algorithm is called "exponentiation by squaring"
    // and calculates x^n with x as fixed-point and n as regular unsigned.
    //
    // It's O(log n), instead of O(n) for naive repeated multiplication.
    //
    // These facts are why it works:
    //
    //  If n is even, then x^n = (x^2)^(n/2).
    //  If n is odd,  then x^n = x * x^(n-1),
    //   and applying the equation for even x gives
    //    x^n = x * (x^2)^((n-1) / 2).
    //
    //  Also, EVM division is flooring and
    //    floor[(n-1) / 2] = floor[n / 2].
    //
    function rpow(uint256 x, uint256 n) external pure returns (uint256 z) {
        z = n % 2 != 0 ? x : RAY;

        for (n /= 2; n != 0; n /= 2) {
            x = rmul(x, x);

            if (n % 2 != 0) {
                z = rmul(z, x);
            }
        }
    }

    //rounds to zero if x*y < WAD / 2
    function rmul(uint256 x, uint256 y) public pure returns (uint256 z) {
        z = ((x * y) + (RAY / 2)) / RAY;
    }
}

// ============================================================
// FILE: contracts/wombat-core/test/TestPoolV2.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

import '../pool/Pool.sol';

contract TestPoolV2 is Pool {
    uint256 dummy;

    function misc() external {
        ++dummy;
    }
}

// ============================================================
// FILE: contracts/wombat-governance/interfaces/IMasterWombat.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

/**
 * @dev Interface of the MasterWombat
 */
interface IMasterWombat {
    function getAssetPid(address asset) external view returns (uint256 pid);

    function poolLength() external view returns (uint256);

    function pendingTokens(
        uint256 _pid,
        address _user
    )
        external
        view
        returns (
            uint256 pendingRewards,
            address bonusTokenAddress,
            string memory bonusTokenSymbol,
            uint256 pendingBonusToken
        );

    function rewarderBonusTokenInfo(
        uint256 _pid
    ) external view returns (address bonusTokenAddress, string memory bonusTokenSymbol);

    function massUpdatePools() external;

    function updatePool(uint256 _pid) external;

    function deposit(uint256 _pid, uint256 _amount) external returns (uint256, uint256);

    function multiClaim(
        uint256[] memory _pids
    ) external returns (uint256 transfered, uint256[] memory rewards, uint256[] memory additionalRewards);

    function withdraw(uint256 _pid, uint256 _amount) external returns (uint256, uint256);

    function emergencyWithdraw(uint256 _pid) external;

    function migrate(uint256[] calldata _pids) external;

    function depositFor(uint256 _pid, uint256 _amount, address _user) external;

    function updateFactor(address _user, uint256 _newVeWomBalance) external;
}

// ============================================================
// FILE: contracts/wombat-governance/libraries/LogExpMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
// documentation files (the “Software”), to deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
// Software.

// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

pragma solidity ^0.8.5;

/* solhint-disable */

/**
 * @dev Reverts if `condition` is false, with a revert reason containing `errorCode`. Only codes up to 999 are
 * supported.
 */
function _require(bool condition, uint256 errorCode) pure {
    if (!condition) _revert(errorCode);
}

/**
 * @dev Reverts with a revert reason containing `errorCode`. Only codes up to 999 are supported.
 */
function _revert(uint256 errorCode) pure {
    // We're going to dynamically create a revert string based on the error code, with the following format:
    // 'BAL#{errorCode}'
    // where the code is left-padded with zeroes to three digits (so they range from 000 to 999).
    //
    // We don't have revert strings embedded in the contract to save bytecode size: it takes much less space to store a
    // number (8 to 16 bits) than the individual string characters.
    //
    // The dynamic string creation algorithm that follows could be implemented in Solidity, but assembly allows for a
    // much denser implementation, again saving bytecode size. Given this function unconditionally reverts, this is a
    // safe place to rely on it without worrying about how its usage might affect e.g. memory contents.
    assembly {
        // First, we need to compute the ASCII representation of the error code. We assume that it is in the 0-999
        // range, so we only need to convert three digits. To convert the digits to ASCII, we add 0x30, the value for
        // the '0' character.

        let units := add(mod(errorCode, 10), 0x30)

        errorCode := div(errorCode, 10)
        let tenths := add(mod(errorCode, 10), 0x30)

        errorCode := div(errorCode, 10)
        let hundreds := add(mod(errorCode, 10), 0x30)

        // With the individual characters, we can now construct the full string. The "BAL#" part is a known constant
        // (0x42414c23): we simply shift this by 24 (to provide space for the 3 bytes of the error code), and add the
        // characters to it, each shifted by a multiple of 8.
        // The revert reason is then shifted left by 200 bits (256 minus the length of the string, 7 characters * 8 bits
        // per character = 56) to locate it in the most significant part of the 256 slot (the beginning of a byte
        // array).

        let revertReason := shl(200, add(0x42414c23000000, add(add(units, shl(8, tenths)), shl(16, hundreds))))

        // We can now encode the reason in memory, which can be safely overwritten as we're about to revert. The encoded
        // message will have the following layout:
        // [ revert reason identifier ] [ string location offset ] [ string length ] [ string contents ]

        // The Solidity revert reason identifier is 0x08c739a0, the function selector of the Error(string) function. We
        // also write zeroes to the next 28 bytes of memory, but those are about to be overwritten.
        mstore(0x0, 0x08c379a000000000000000000000000000000000000000000000000000000000)
        // Next is the offset to the location of the string, which will be placed immediately after (20 bytes away).
        mstore(0x04, 0x0000000000000000000000000000000000000000000000000000000000000020)
        // The string length is fixed: 7 characters.
        mstore(0x24, 7)
        // Finally, the string itself is stored.
        mstore(0x44, revertReason)

        // Even if the string is only 7 bytes long, we need to return a full 32 byte slot containing it. The length of
        // the encoded message is therefore 4 + 32 + 32 + 32 = 100.
        revert(0, 100)
    }
}

library Errors {
    // Math
    uint256 internal constant ADD_OVERFLOW = 0;
    uint256 internal constant SUB_OVERFLOW = 1;
    uint256 internal constant SUB_UNDERFLOW = 2;
    uint256 internal constant MUL_OVERFLOW = 3;
    uint256 internal constant ZERO_DIVISION = 4;
    uint256 internal constant DIV_INTERNAL = 5;
    uint256 internal constant X_OUT_OF_BOUNDS = 6;
    uint256 internal constant Y_OUT_OF_BOUNDS = 7;
    uint256 internal constant PRODUCT_OUT_OF_BOUNDS = 8;
    uint256 internal constant INVALID_EXPONENT = 9;

    // Input
    uint256 internal constant OUT_OF_BOUNDS = 100;
    uint256 internal constant UNSORTED_ARRAY = 101;
    uint256 internal constant UNSORTED_TOKENS = 102;
    uint256 internal constant INPUT_LENGTH_MISMATCH = 103;
    uint256 internal constant ZERO_TOKEN = 104;

    // Shared pools
    uint256 internal constant MIN_TOKENS = 200;
    uint256 internal constant MAX_TOKENS = 201;
    uint256 internal constant MAX_SWAP_FEE_PERCENTAGE = 202;
    uint256 internal constant MIN_SWAP_FEE_PERCENTAGE = 203;
    uint256 internal constant MINIMUM_BPT = 204;
    uint256 internal constant CALLER_NOT_VAULT = 205;
    uint256 internal constant UNINITIALIZED = 206;
    uint256 internal constant BPT_IN_MAX_AMOUNT = 207;
    uint256 internal constant BPT_OUT_MIN_AMOUNT = 208;
    uint256 internal constant EXPIRED_PERMIT = 209;
    uint256 internal constant NOT_TWO_TOKENS = 210;
    uint256 internal constant DISABLED = 211;

    // Pools
    uint256 internal constant MIN_AMP = 300;
    uint256 internal constant MAX_AMP = 301;
    uint256 internal constant MIN_WEIGHT = 302;
    uint256 internal constant MAX_STABLE_TOKENS = 303;
    uint256 internal constant MAX_IN_RATIO = 304;
    uint256 internal constant MAX_OUT_RATIO = 305;
    uint256 internal constant MIN_BPT_IN_FOR_TOKEN_OUT = 306;
    uint256 internal constant MAX_OUT_BPT_FOR_TOKEN_IN = 307;
    uint256 internal constant NORMALIZED_WEIGHT_INVARIANT = 308;
    uint256 internal constant INVALID_TOKEN = 309;
    uint256 internal constant UNHANDLED_JOIN_KIND = 310;
    uint256 internal constant ZERO_INVARIANT = 311;
    uint256 internal constant ORACLE_INVALID_SECONDS_QUERY = 312;
    uint256 internal constant ORACLE_NOT_INITIALIZED = 313;
    uint256 internal constant ORACLE_QUERY_TOO_OLD = 314;
    uint256 internal constant ORACLE_INVALID_INDEX = 315;
    uint256 internal constant ORACLE_BAD_SECS = 316;
    uint256 internal constant AMP_END_TIME_TOO_CLOSE = 317;
    uint256 internal constant AMP_ONGOING_UPDATE = 318;
    uint256 internal constant AMP_RATE_TOO_HIGH = 319;
    uint256 internal constant AMP_NO_ONGOING_UPDATE = 320;
    uint256 internal constant STABLE_INVARIANT_DIDNT_CONVERGE = 321;
    uint256 internal constant STABLE_GET_BALANCE_DIDNT_CONVERGE = 322;
    uint256 internal constant RELAYER_NOT_CONTRACT = 323;
    uint256 internal constant BASE_POOL_RELAYER_NOT_CALLED = 324;
    uint256 internal constant REBALANCING_RELAYER_REENTERED = 325;
    uint256 internal constant GRADUAL_UPDATE_TIME_TRAVEL = 326;
    uint256 internal constant SWAPS_DISABLED = 327;
    uint256 internal constant CALLER_IS_NOT_LBP_OWNER = 328;
    uint256 internal constant PRICE_RATE_OVERFLOW = 329;
    uint256 internal constant INVALID_JOIN_EXIT_KIND_WHILE_SWAPS_DISABLED = 330;
    uint256 internal constant WEIGHT_CHANGE_TOO_FAST = 331;
    uint256 internal constant LOWER_GREATER_THAN_UPPER_TARGET = 332;
    uint256 internal constant UPPER_TARGET_TOO_HIGH = 333;
    uint256 internal constant UNHANDLED_BY_LINEAR_POOL = 334;
    uint256 internal constant OUT_OF_TARGET_RANGE = 335;
    uint256 internal constant UNHANDLED_EXIT_KIND = 336;
    uint256 internal constant UNAUTHORIZED_EXIT = 337;
    uint256 internal constant MAX_MANAGEMENT_SWAP_FEE_PERCENTAGE = 338;
    uint256 internal constant UNHANDLED_BY_MANAGED_POOL = 339;
    uint256 internal constant UNHANDLED_BY_PHANTOM_POOL = 340;
    uint256 internal constant TOKEN_DOES_NOT_HAVE_RATE_PROVIDER = 341;
    uint256 internal constant INVALID_INITIALIZATION = 342;
    uint256 internal constant OUT_OF_NEW_TARGET_RANGE = 343;
    uint256 internal constant UNAUTHORIZED_OPERATION = 344;
    uint256 internal constant UNINITIALIZED_POOL_CONTROLLER = 345;

    // Lib
    uint256 internal constant REENTRANCY = 400;
    uint256 internal constant SENDER_NOT_ALLOWED = 401;
    uint256 internal constant PAUSED = 402;
    uint256 internal constant PAUSE_WINDOW_EXPIRED = 403;
    uint256 internal constant MAX_PAUSE_WINDOW_DURATION = 404;
    uint256 internal constant MAX_BUFFER_PERIOD_DURATION = 405;
    uint256 internal constant INSUFFICIENT_BALANCE = 406;
    uint256 internal constant INSUFFICIENT_ALLOWANCE = 407;
    uint256 internal constant ERC20_TRANSFER_FROM_ZERO_ADDRESS = 408;
    uint256 internal constant ERC20_TRANSFER_TO_ZERO_ADDRESS = 409;
    uint256 internal constant ERC20_MINT_TO_ZERO_ADDRESS = 410;
    uint256 internal constant ERC20_BURN_FROM_ZERO_ADDRESS = 411;
    uint256 internal constant ERC20_APPROVE_FROM_ZERO_ADDRESS = 412;
    uint256 internal constant ERC20_APPROVE_TO_ZERO_ADDRESS = 413;
    uint256 internal constant ERC20_TRANSFER_EXCEEDS_ALLOWANCE = 414;
    uint256 internal constant ERC20_DECREASED_ALLOWANCE_BELOW_ZERO = 415;
    uint256 internal constant ERC20_TRANSFER_EXCEEDS_BALANCE = 416;
    uint256 internal constant ERC20_BURN_EXCEEDS_ALLOWANCE = 417;
    uint256 internal constant SAFE_ERC20_CALL_FAILED = 418;
    uint256 internal constant ADDRESS_INSUFFICIENT_BALANCE = 419;
    uint256 internal constant ADDRESS_CANNOT_SEND_VALUE = 420;
    uint256 internal constant SAFE_CAST_VALUE_CANT_FIT_INT256 = 421;
    uint256 internal constant GRANT_SENDER_NOT_ADMIN = 422;
    uint256 internal constant REVOKE_SENDER_NOT_ADMIN = 423;
    uint256 internal constant RENOUNCE_SENDER_NOT_ALLOWED = 424;
    uint256 internal constant BUFFER_PERIOD_EXPIRED = 425;
    uint256 internal constant CALLER_IS_NOT_OWNER = 426;
    uint256 internal constant NEW_OWNER_IS_ZERO = 427;
    uint256 internal constant CODE_DEPLOYMENT_FAILED = 428;
    uint256 internal constant CALL_TO_NON_CONTRACT = 429;
    uint256 internal constant LOW_LEVEL_CALL_FAILED = 430;
    uint256 internal constant NOT_PAUSED = 431;
    uint256 internal constant ADDRESS_ALREADY_ALLOWLISTED = 432;
    uint256 internal constant ADDRESS_NOT_ALLOWLISTED = 433;
    uint256 internal constant ERC20_BURN_EXCEEDS_BALANCE = 434;

    // Vault
    uint256 internal constant INVALID_POOL_ID = 500;
    uint256 internal constant CALLER_NOT_POOL = 501;
    uint256 internal constant SENDER_NOT_ASSET_MANAGER = 502;
    uint256 internal constant USER_DOESNT_ALLOW_RELAYER = 503;
    uint256 internal constant INVALID_SIGNATURE = 504;
    uint256 internal constant EXIT_BELOW_MIN = 505;
    uint256 internal constant JOIN_ABOVE_MAX = 506;
    uint256 internal constant SWAP_LIMIT = 507;
    uint256 internal constant SWAP_DEADLINE = 508;
    uint256 internal constant CANNOT_SWAP_SAME_TOKEN = 509;
    uint256 internal constant UNKNOWN_AMOUNT_IN_FIRST_SWAP = 510;
    uint256 internal constant MALCONSTRUCTED_MULTIHOP_SWAP = 511;
    uint256 internal constant INTERNAL_BALANCE_OVERFLOW = 512;
    uint256 internal constant INSUFFICIENT_INTERNAL_BALANCE = 513;
    uint256 internal constant INVALID_ETH_INTERNAL_BALANCE = 514;
    uint256 internal constant INVALID_POST_LOAN_BALANCE = 515;
    uint256 internal constant INSUFFICIENT_ETH = 516;
    uint256 internal constant UNALLOCATED_ETH = 517;
    uint256 internal constant ETH_TRANSFER = 518;
    uint256 internal constant CANNOT_USE_ETH_SENTINEL = 519;
    uint256 internal constant TOKENS_MISMATCH = 520;
    uint256 internal constant TOKEN_NOT_REGISTERED = 521;
    uint256 internal constant TOKEN_ALREADY_REGISTERED = 522;
    uint256 internal constant TOKENS_ALREADY_SET = 523;
    uint256 internal constant TOKENS_LENGTH_MUST_BE_2 = 524;
    uint256 internal constant NONZERO_TOKEN_BALANCE = 525;
    uint256 internal constant BALANCE_TOTAL_OVERFLOW = 526;
    uint256 internal constant POOL_NO_TOKENS = 527;
    uint256 internal constant INSUFFICIENT_FLASH_LOAN_BALANCE = 528;

    // Fees
    uint256 internal constant SWAP_FEE_PERCENTAGE_TOO_HIGH = 600;
    uint256 internal constant FLASH_LOAN_FEE_PERCENTAGE_TOO_HIGH = 601;
    uint256 internal constant INSUFFICIENT_FLASH_LOAN_FEE_AMOUNT = 602;
}

/**
 * @dev Exponentiation and logarithm functions for 18 decimal fixed point numbers (both base and exponent/argument).
 *
 * Exponentiation and logarithm with arbitrary bases (x^y and log_x(y)) are implemented by conversion to natural
 * exponentiation and logarithm (where the base is Euler's number).
 *
 * @author Fernando Martinelli - @fernandomartinelli
 * @author Sergio Yuhjtman - @sergioyuhjtman
 * @author Daniel Fernandez - @dmf7z
 */
library LogExpMath {
    // All fixed point multiplications and divisions are inlined. This means we need to divide by ONE when multiplying
    // two numbers, and multiply by ONE when dividing them.

    // All arguments and return values are 18 decimal fixed point numbers.
    int256 constant ONE_18 = 1e18;

    // Internally, intermediate values are computed with higher precision as 20 decimal fixed point numbers, and in the
    // case of ln36, 36 decimals.
    int256 constant ONE_20 = 1e20;
    int256 constant ONE_36 = 1e36;

    // The domain of natural exponentiation is bound by the word size and number of decimals used.
    //
    // Because internally the result will be stored using 20 decimals, the largest possible result is
    // (2^255 - 1) / 10^20, which makes the largest exponent ln((2^255 - 1) / 10^20) = 130.700829182905140221.
    // The smallest possible result is 10^(-18), which makes largest negative argument
    // ln(10^(-18)) = -41.446531673892822312.
    // We use 130.0 and -41.0 to have some safety margin.
    int256 constant MAX_NATURAL_EXPONENT = 130e18;
    int256 constant MIN_NATURAL_EXPONENT = -41e18;

    // Bounds for ln_36's argument. Both ln(0.9) and ln(1.1) can be represented with 36 decimal places in a fixed point
    // 256 bit integer.
    int256 constant LN_36_LOWER_BOUND = ONE_18 - 1e17;
    int256 constant LN_36_UPPER_BOUND = ONE_18 + 1e17;

    uint256 constant MILD_EXPONENT_BOUND = 2 ** 254 / uint256(ONE_20);

    // 18 decimal constants
    int256 constant x0 = 128000000000000000000; // 2ˆ7
    int256 constant a0 = 38877084059945950922200000000000000000000000000000000000; // eˆ(x0) (no decimals)
    int256 constant x1 = 64000000000000000000; // 2ˆ6
    int256 constant a1 = 6235149080811616882910000000; // eˆ(x1) (no decimals)

    // 20 decimal constants
    int256 constant x2 = 3200000000000000000000; // 2ˆ5
    int256 constant a2 = 7896296018268069516100000000000000; // eˆ(x2)
    int256 constant x3 = 1600000000000000000000; // 2ˆ4
    int256 constant a3 = 888611052050787263676000000; // eˆ(x3)
    int256 constant x4 = 800000000000000000000; // 2ˆ3
    int256 constant a4 = 298095798704172827474000; // eˆ(x4)
    int256 constant x5 = 400000000000000000000; // 2ˆ2
    int256 constant a5 = 5459815003314423907810; // eˆ(x5)
    int256 constant x6 = 200000000000000000000; // 2ˆ1
    int256 constant a6 = 738905609893065022723; // eˆ(x6)
    int256 constant x7 = 100000000000000000000; // 2ˆ0
    int256 constant a7 = 271828182845904523536; // eˆ(x7)
    int256 constant x8 = 50000000000000000000; // 2ˆ-1
    int256 constant a8 = 164872127070012814685; // eˆ(x8)
    int256 constant x9 = 25000000000000000000; // 2ˆ-2
    int256 constant a9 = 128402541668774148407; // eˆ(x9)
    int256 constant x10 = 12500000000000000000; // 2ˆ-3
    int256 constant a10 = 113314845306682631683; // eˆ(x10)
    int256 constant x11 = 6250000000000000000; // 2ˆ-4
    int256 constant a11 = 106449445891785942956; // eˆ(x11)

    /**
     * @dev Exponentiation (x^y) with unsigned 18 decimal fixed point base and exponent.
     *
     * Reverts if ln(x) * y is smaller than `MIN_NATURAL_EXPONENT`, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function pow(uint256 x, uint256 y) internal pure returns (uint256) {
        if (y == 0) {
            // We solve the 0^0 indetermination by making it equal one.
            return uint256(ONE_18);
        }

        if (x == 0) {
            return 0;
        }

        // Instead of computing x^y directly, we instead rely on the properties of logarithms and exponentiation to
        // arrive at that result. In particular, exp(ln(x)) = x, and ln(x^y) = y * ln(x). This means
        // x^y = exp(y * ln(x)).

        // The ln function takes a signed value, so we need to make sure x fits in the signed 256 bit range.
        _require(x < 2 ** 255, Errors.X_OUT_OF_BOUNDS);
        int256 x_int256 = int256(x);

        // We will compute y * ln(x) in a single step. Depending on the value of x, we can either use ln or ln_36. In
        // both cases, we leave the division by ONE_18 (due to fixed point multiplication) to the end.

        // This prevents y * ln(x) from overflowing, and at the same time guarantees y fits in the signed 256 bit range.
        _require(y < MILD_EXPONENT_BOUND, Errors.Y_OUT_OF_BOUNDS);
        int256 y_int256 = int256(y);

        int256 logx_times_y;
        if (LN_36_LOWER_BOUND < x_int256 && x_int256 < LN_36_UPPER_BOUND) {
            int256 ln_36_x = _ln_36(x_int256);

            // ln_36_x has 36 decimal places, so multiplying by y_int256 isn't as straightforward, since we can't just
            // bring y_int256 to 36 decimal places, as it might overflow. Instead, we perform two 18 decimal
            // multiplications and add the results: one with the first 18 decimals of ln_36_x, and one with the
            // (downscaled) last 18 decimals.
            logx_times_y = ((ln_36_x / ONE_18) * y_int256 + ((ln_36_x % ONE_18) * y_int256) / ONE_18);
        } else {
            logx_times_y = _ln(x_int256) * y_int256;
        }
        logx_times_y /= ONE_18;

        // Finally, we compute exp(y * ln(x)) to arrive at x^y
        _require(
            MIN_NATURAL_EXPONENT <= logx_times_y && logx_times_y <= MAX_NATURAL_EXPONENT,
            Errors.PRODUCT_OUT_OF_BOUNDS
        );

        return uint256(exp(logx_times_y));
    }

    /**
     * @dev Natural exponentiation (e^x) with signed 18 decimal fixed point exponent.
     *
     * Reverts if `x` is smaller than MIN_NATURAL_EXPONENT, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function exp(int256 x) internal pure returns (int256) {
        _require(x >= MIN_NATURAL_EXPONENT && x <= MAX_NATURAL_EXPONENT, Errors.INVALID_EXPONENT);

        if (x < 0) {
            // We only handle positive exponents: e^(-x) is computed as 1 / e^x. We can safely make x positive since it
            // fits in the signed 256 bit range (as it is larger than MIN_NATURAL_EXPONENT).
            // Fixed point division requires multiplying by ONE_18.
            return ((ONE_18 * ONE_18) / exp(-x));
        }

        // First, we use the fact that e^(x+y) = e^x * e^y to decompose x into a sum of powers of two, which we call x_n,
        // where x_n == 2^(7 - n), and e^x_n = a_n has been precomputed. We choose the first x_n, x0, to equal 2^7
        // because all larger powers are larger than MAX_NATURAL_EXPONENT, and therefore not present in the
        // decomposition.
        // At the end of this process we will have the product of all e^x_n = a_n that apply, and the remainder of this
        // decomposition, which will be lower than the smallest x_n.
        // exp(x) = k_0 * a_0 * k_1 * a_1 * ... + k_n * a_n * exp(remainder), where each k_n equals either 0 or 1.
        // We mutate x by subtracting x_n, making it the remainder of the decomposition.

        // The first two a_n (e^(2^7) and e^(2^6)) are too large if stored as 18 decimal numbers, and could cause
        // intermediate overflows. Instead we store them as plain integers, with 0 decimals.
        // Additionally, x0 + x1 is larger than MAX_NATURAL_EXPONENT, which means they will not both be present in the
        // decomposition.

        // For each x_n, we test if that term is present in the decomposition (if x is larger than it), and if so deduct
        // it and compute the accumulated product.

        int256 firstAN;
        if (x >= x0) {
            x -= x0;
            firstAN = a0;
        } else if (x >= x1) {
            x -= x1;
            firstAN = a1;
        } else {
            firstAN = 1; // One with no decimal places
        }

        // We now transform x into a 20 decimal fixed point number, to have enhanced precision when computing the
        // smaller terms.
        x *= 100;

        // `product` is the accumulated product of all a_n (except a0 and a1), which starts at 20 decimal fixed point
        // one. Recall that fixed point multiplication requires dividing by ONE_20.
        int256 product = ONE_20;

        if (x >= x2) {
            x -= x2;
            product = (product * a2) / ONE_20;
        }
        if (x >= x3) {
            x -= x3;
            product = (product * a3) / ONE_20;
        }
        if (x >= x4) {
            x -= x4;
            product = (product * a4) / ONE_20;
        }
        if (x >= x5) {
            x -= x5;
            product = (product * a5) / ONE_20;
        }
        if (x >= x6) {
            x -= x6;
            product = (product * a6) / ONE_20;
        }
        if (x >= x7) {
            x -= x7;
            product = (product * a7) / ONE_20;
        }
        if (x >= x8) {
            x -= x8;
            product = (product * a8) / ONE_20;
        }
        if (x >= x9) {
            x -= x9;
            product = (product * a9) / ONE_20;
        }

        // x10 and x11 are unnecessary here since we have high enough precision already.

        // Now we need to compute e^x, where x is small (in particular, it is smaller than x9). We use the Taylor series
        // expansion for e^x: 1 + x + (x^2 / 2!) + (x^3 / 3!) + ... + (x^n / n!).

        int256 seriesSum = ONE_20; // The initial one in the sum, with 20 decimal places.
        int256 term; // Each term in the sum, where the nth term is (x^n / n!).

        // The first term is simply x.
        term = x;
        seriesSum += term;

        // Each term (x^n / n!) equals the previous one times x, divided by n. Since x is a fixed point number,
        // multiplying by it requires dividing by ONE_20, but dividing by the non-fixed point n values does not.

        term = ((term * x) / ONE_20) / 2;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 3;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 4;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 5;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 6;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 7;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 8;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 9;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 10;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 11;
        seriesSum += term;

        term = ((term * x) / ONE_20) / 12;
        seriesSum += term;

        // 12 Taylor terms are sufficient for 18 decimal precision.

        // We now have the first a_n (with no decimals), and the product of all other a_n present, and the Taylor
        // approximation of the exponentiation of the remainder (both with 20 decimals). All that remains is to multiply
        // all three (one 20 decimal fixed point multiplication, dividing by ONE_20, and one integer multiplication),
        // and then drop two digits to return an 18 decimal value.

        return (((product * seriesSum) / ONE_20) * firstAN) / 100;
    }

    /**
     * @dev Logarithm (log(arg, base), with signed 18 decimal fixed point base and argument.
     */
    function log(int256 arg, int256 base) internal pure returns (int256) {
        // This performs a simple base change: log(arg, base) = ln(arg) / ln(base).

        // Both logBase and logArg are computed as 36 decimal fixed point numbers, either by using ln_36, or by
        // upscaling.

        int256 logBase;
        if (LN_36_LOWER_BOUND < base && base < LN_36_UPPER_BOUND) {
            logBase = _ln_36(base);
        } else {
            logBase = _ln(base) * ONE_18;
        }

        int256 logArg;
        if (LN_36_LOWER_BOUND < arg && arg < LN_36_UPPER_BOUND) {
            logArg = _ln_36(arg);
        } else {
            logArg = _ln(arg) * ONE_18;
        }

        // When dividing, we multiply by ONE_18 to arrive at a result with 18 decimal places
        return (logArg * ONE_18) / logBase;
    }

    /**
     * @dev Natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function ln(int256 a) internal pure returns (int256) {
        // The real natural logarithm is not defined for negative numbers or zero.
        _require(a > 0, Errors.OUT_OF_BOUNDS);
        if (LN_36_LOWER_BOUND < a && a < LN_36_UPPER_BOUND) {
            return _ln_36(a) / ONE_18;
        } else {
            return _ln(a);
        }
    }

    /**
     * @dev Internal natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function _ln(int256 a) private pure returns (int256) {
        if (a < ONE_18) {
            // Since ln(a^k) = k * ln(a), we can compute ln(a) as ln(a) = ln((1/a)^(-1)) = - ln((1/a)). If a is less
            // than one, 1/a will be greater than one, and this if statement will not be entered in the recursive call.
            // Fixed point division requires multiplying by ONE_18.
            return (-_ln((ONE_18 * ONE_18) / a));
        }

        // First, we use the fact that ln^(a * b) = ln(a) + ln(b) to decompose ln(a) into a sum of powers of two, which
        // we call x_n, where x_n == 2^(7 - n), which are the natural logarithm of precomputed quantities a_n (that is,
        // ln(a_n) = x_n). We choose the first x_n, x0, to equal 2^7 because the exponential of all larger powers cannot
        // be represented as 18 fixed point decimal numbers in 256 bits, and are therefore larger than a.
        // At the end of this process we will have the sum of all x_n = ln(a_n) that apply, and the remainder of this
        // decomposition, which will be lower than the smallest a_n.
        // ln(a) = k_0 * x_0 + k_1 * x_1 + ... + k_n * x_n + ln(remainder), where each k_n equals either 0 or 1.
        // We mutate a by subtracting a_n, making it the remainder of the decomposition.

        // For reasons related to how `exp` works, the first two a_n (e^(2^7) and e^(2^6)) are not stored as fixed point
        // numbers with 18 decimals, but instead as plain integers with 0 decimals, so we need to multiply them by
        // ONE_18 to convert them to fixed point.
        // For each a_n, we test if that term is present in the decomposition (if a is larger than it), and if so divide
        // by it and compute the accumulated sum.

        int256 sum = 0;
        if (a >= a0 * ONE_18) {
            a /= a0; // Integer, not fixed point division
            sum += x0;
        }

        if (a >= a1 * ONE_18) {
            a /= a1; // Integer, not fixed point division
            sum += x1;
        }

        // All other a_n and x_n are stored as 20 digit fixed point numbers, so we convert the sum and a to this format.
        sum *= 100;
        a *= 100;

        // Because further a_n are  20 digit fixed point numbers, we multiply by ONE_20 when dividing by them.

        if (a >= a2) {
            a = (a * ONE_20) / a2;
            sum += x2;
        }

        if (a >= a3) {
            a = (a * ONE_20) / a3;
            sum += x3;
        }

        if (a >= a4) {
            a = (a * ONE_20) / a4;
            sum += x4;
        }

        if (a >= a5) {
            a = (a * ONE_20) / a5;
            sum += x5;
        }

        if (a >= a6) {
            a = (a * ONE_20) / a6;
            sum += x6;
        }

        if (a >= a7) {
            a = (a * ONE_20) / a7;
            sum += x7;
        }

        if (a >= a8) {
            a = (a * ONE_20) / a8;
            sum += x8;
        }

        if (a >= a9) {
            a = (a * ONE_20) / a9;
            sum += x9;
        }

        if (a >= a10) {
            a = (a * ONE_20) / a10;
            sum += x10;
        }

        if (a >= a11) {
            a = (a * ONE_20) / a11;
            sum += x11;
        }

        // a is now a small number (smaller than a_11, which roughly equals 1.06). This means we can use a Taylor series
        // that converges rapidly for values of `a` close to one - the same one used in ln_36.
        // Let z = (a - 1) / (a + 1).
        // ln(a) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

        // Recall that 20 digit fixed point division requires multiplying by ONE_20, and multiplication requires
        // division by ONE_20.
        int256 z = ((a - ONE_20) * ONE_20) / (a + ONE_20);
        int256 z_squared = (z * z) / ONE_20;

        // num is the numerator of the series: the z^(2 * n + 1) term
        int256 num = z;

        // seriesSum holds the accumulated sum of each term in the series, starting with the initial z
        int256 seriesSum = num;

        // In each step, the numerator is multiplied by z^2
        num = (num * z_squared) / ONE_20;
        seriesSum += num / 3;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 5;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 7;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 9;

        num = (num * z_squared) / ONE_20;
        seriesSum += num / 11;

        // 6 Taylor terms are sufficient for 36 decimal precision.

        // Finally, we multiply by 2 (non fixed point) to compute ln(remainder)
        seriesSum *= 2;

        // We now have the sum of all x_n present, and the Taylor approximation of the logarithm of the remainder (both
        // with 20 decimals). All that remains is to sum these two, and then drop two digits to return a 18 decimal
        // value.

        return (sum + seriesSum) / 100;
    }

    /**
     * @dev Intrnal high precision (36 decimal places) natural logarithm (ln(x)) with signed 18 decimal fixed point argument,
     * for x close to one.
     *
     * Should only be used if x is between LN_36_LOWER_BOUND and LN_36_UPPER_BOUND.
     */
    function _ln_36(int256 x) private pure returns (int256) {
        // Since ln(1) = 0, a value of x close to one will yield a very small result, which makes using 36 digits
        // worthwhile.

        // First, we transform x to a 36 digit fixed point value.
        x *= ONE_18;

        // We will use the following Taylor expansion, which converges very rapidly. Let z = (x - 1) / (x + 1).
        // ln(x) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

        // Recall that 36 digit fixed point division requires multiplying by ONE_36, and multiplication requires
        // division by ONE_36.
        int256 z = ((x - ONE_36) * ONE_36) / (x + ONE_36);
        int256 z_squared = (z * z) / ONE_36;

        // num is the numerator of the series: the z^(2 * n + 1) term
        int256 num = z;

        // seriesSum holds the accumulated sum of each term in the series, starting with the initial z
        int256 seriesSum = num;

        // In each step, the numerator is multiplied by z^2
        num = (num * z_squared) / ONE_36;
        seriesSum += num / 3;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 5;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 7;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 9;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 11;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 13;

        num = (num * z_squared) / ONE_36;
        seriesSum += num / 15;

        // 8 Taylor terms are sufficient for 36 decimal precision.

        // All that remains is multiplying by 2 (non fixed point).
        return seriesSum * 2;
    }
}

// ============================================================
// FILE: contracts/wombat-peripheral/test/TestTokenVesting.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.5;

import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '../vesting/TokenVesting.sol';

contract TestTokenVesting is TokenVesting {
    constructor(
        address vestedTokenAddress,
        uint256 startTimestamp,
        uint256 durationSeconds,
        uint256 unlockDurationSeconds
    ) TokenVesting(vestedTokenAddress, startTimestamp, durationSeconds, unlockDurationSeconds) {}

    function test_vestingSchedule(
        address beneficiary,
        uint256 totalAllocation,
        uint256 timestamp
    ) external returns (uint256) {
        return _vestingSchedule(beneficiary, totalAllocation, timestamp);
    }

    function test_calculateInterval(uint256 timestamp) external view returns (uint256) {
        return _calculateInterval(timestamp);
    }
}

// ============================================================
// FILE: contracts/wombat-peripheral/vesting/TokenVesting.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (finance/VestingWallet.sol)
pragma solidity ^0.8.5;

import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/utils/Context.sol';
import '@openzeppelin/contracts/utils/math/Math.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

/**
 * @title VestingWallet (extended for WOM Token Vesting), from OpenZeppelin Contracts v4.4.0 (finance/VestingWallet.sol)
 * @dev This contract handles the vesting of WOM, a ERC20 token for a list of admin-settable beneficiaries.
 * This contract will release the token to the beneficiary following a given vesting schedule.
 * The vesting schedule is customizable through the {vestedAmount} function.
 *
 * WOM token transferred to this contract will follow the vesting schedule as if they were locked from the beginning.
 * Consequently, if the vesting has already started, any amount of tokens sent to this contract will (at least partly)
 * be immediately releasable.
 */
contract TokenVesting is Context, Ownable {
    event ERC20Released(address indexed token, uint256 amount);
    event BeneficiaryAdded(address indexed beneficiary, uint256 amount);
    event ReleasableAmount(address indexed beneficiary, uint256 amount);

    struct BeneficiaryInfo {
        uint256 _allocationBalance;
        uint256 _allocationReleased;
        uint256 _unlockIntervalsCount; // Number of unlock intervals
    }

    IERC20 public vestedToken;

    address[] private _beneficiaryAddresses;
    mapping(address => BeneficiaryInfo) private _beneficiaryInfo;

    uint256 private immutable _start; // start timestamp in seconds
    uint256 private immutable _duration; // end timestamp in seconds

    // Duration of unlock intervals, i.e. 6 months in seconds = (60 * 60 * 24 * 365) / 2 = 15768000
    uint256 private immutable _unlockDurationSeconds;

    // Total WOM allocated amongst beneficiaries
    uint256 private _totalAllocationBalance;

    /**
     * @dev Set the vested token address, start timestamp and vesting duration of the vesting period.
     */
    constructor(
        address vestedTokenAddress,
        uint256 startTimestamp,
        uint256 durationSeconds,
        uint256 unlockDurationSeconds
    ) {
        vestedToken = IERC20(vestedTokenAddress);
        _start = startTimestamp;
        _duration = durationSeconds;
        _unlockDurationSeconds = unlockDurationSeconds;
    }

    /**
     * @dev Getter for the number of beneficiaries.
     */
    function beneficiaryCount() external view returns (uint8) {
        return uint8(_beneficiaryAddresses.length);
    }

    /**
     * @dev Getter for the beneficiary allocation balance.
     */
    function beneficiaryBalance(address beneficiary) external view returns (uint256) {
        return _beneficiaryInfo[beneficiary]._allocationBalance;
    }

    /**
     * @dev Getter for the total allocation balance of vesting contract.
     */
    function totalAllocationBalance() external view returns (uint256) {
        return _totalAllocationBalance;
    }

    /**
     * @dev Getter for the total WOM tokens allocated for vesting contract.
     */
    function totalUnderlyingBalance() external view returns (uint256) {
        return IERC20(vestedToken).balanceOf(address(this));
    }

    /**
     * @dev Getter for the start timestamp.
     */
    function start() public view returns (uint256) {
        return _start;
    }

    /**
     * @dev Getter for the vesting duration.
     */
    function duration() public view returns (uint256) {
        return _duration;
    }

    /**
     * @dev Amount of token already released for a beneficiary
     */
    function released(address beneficiary) public view returns (uint256) {
        return _beneficiaryInfo[beneficiary]._allocationReleased;
    }

    /**
     * @dev Setter for adding a beneficiary address.
     */
    function setBeneficiary(address beneficiary, uint256 allocation) external onlyOwner {
        require(beneficiary != address(0), 'Beneficiary: address cannot be zero');
        require(_beneficiaryInfo[beneficiary]._allocationBalance == 0, 'Beneficiary: allocation already set');
        _beneficiaryInfo[beneficiary] = BeneficiaryInfo(allocation, 0, 0);
        _totalAllocationBalance += allocation;
        _beneficiaryAddresses.push(beneficiary);
        emit BeneficiaryAdded(beneficiary, allocation);
    }

    /**
     * @dev Release the tokens that have already vested.
     *
     * Emits a {TokensReleased} event.
     */
    function release(address beneficiary) external {
        uint256 releasable = vestedAmount(beneficiary, block.timestamp) - released(beneficiary);
        _beneficiaryInfo[beneficiary]._allocationReleased += releasable;
        _beneficiaryInfo[beneficiary]._allocationBalance -= releasable;
        _beneficiaryInfo[beneficiary]._unlockIntervalsCount = _calculateInterval(block.timestamp);
        emit ERC20Released(address(vestedToken), releasable);
        SafeERC20.safeTransfer(vestedToken, beneficiary, releasable);
    }

    /**
     * @dev Calculates the amount of WOM tokens that has already vested. Default implementation is a linear vesting curve.
     */
    function vestedAmount(address beneficiary, uint256 timestamp) public view returns (uint256) {
        uint256 _vestedAmount = _vestingSchedule(
            beneficiary,
            _beneficiaryInfo[beneficiary]._allocationBalance + released(beneficiary),
            timestamp
        );
        return _vestedAmount;
    }

    /**
     * @dev implementation of the vesting formula. This returns the amount vested, as a function of time, for
     * an asset given its total historical allocation.
     * 10% of the Total Number of Tokens Purchased shall unlock every 6 months from the Network Launch,
     * with the Total Number * of Tokens Purchased becoming fully unlocked 5 years from the Network Launch.
     * i.e. 6 months cliff from TGE, 10% unlock at month 6, 10% unlock at month 12, and final 10% unlock at month 60
     */
    function _vestingSchedule(
        address beneficiary,
        uint256 totalAllocation,
        uint256 timestamp
    ) internal view returns (uint256) {
        if (timestamp < start()) {
            return 0;
        } else if (timestamp > start() + duration()) {
            return totalAllocation;
        }

        uint256 currentInterval = _calculateInterval(timestamp);
        return (totalAllocation * currentInterval) / 10;
    }

    /**
     * @dev Calculates the number of intervals unlocked
     */
    function _calculateInterval(uint256 timestamp) internal view returns (uint256) {
        if (timestamp < start()) {
            return 0;
        } else {
            return (timestamp - start()) / _unlockDurationSeconds;
        }
    }

    function calculateInterval(uint256 timestamp) internal view returns (uint256) {
        return _calculateInterval(timestamp);
    }
}
