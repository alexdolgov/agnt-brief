pragma solidity 0.8.10;


library ExcessivelySafeCall {
    uint256 constant LOW_28_MASK =
    0x00000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

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
        uint256 _gas,
        uint16 _maxCopy,
        bytes memory _calldata
    ) internal returns (bool, bytes memory) {
        // set up for assembly call
        uint256 _toCopy;
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

    /**
     * @notice Swaps function selectors in encoded contract calls
     * @dev Allows reuse of encoded calldata for functions with identical
     * argument types but different names. It simply swaps out the first 4 bytes
     * for the new selector. This function modifies memory in place, and should
     * only be used with caution.
     * @param _newSelector The new 4-byte selector
     * @param _buf The encoded contract args
     */
    function swapSelector(bytes4 _newSelector, bytes memory _buf)
    internal
    pure
    {
        require(_buf.length >= 4);
        uint256 _mask = LOW_28_MASK;
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

interface IOFTReceiverV2 {
    /**
     * @dev Called by the OFT contract when tokens are received from source chain.
     * @param _srcChainId The chain id of the source chain.
     * @param _srcAddress The address of the OFT token contract on the source chain.
     * @param _nonce The nonce of the transaction on the source chain.
     * @param _from The address of the account who calls the sendAndCall() on the source chain.
     * @param _amount The amount of tokens to transfer.
     * @param _payload Additional data with no specified format.
     */
    function onOFTReceived(uint16 _srcChainId, bytes calldata _srcAddress, uint64 _nonce, bytes32 _from, uint _amount, bytes calldata _payload) external;
}

contract onOFTSuccess {
    event Success();
    function onOFTReceived(uint16 _srcChainId, bytes calldata _srcAddress, uint64 _nonce, bytes32 _from, uint _amount, bytes calldata _payload) external {
        emit Success();
    }
}

contract onOFTFailure {
    function onOFTReceived(uint16 _srcChainId, bytes calldata _srcAddress, uint64 _nonce, bytes32 _from, uint _amount, bytes calldata _payload) external {
        revert("Failure");
    }
}

contract SafeCallTest {
    using ExcessivelySafeCall for address;
 
    function callOnOFTReceived(uint16 _srcChainId, bytes calldata _srcAddress, uint64 _nonce, bytes32 _from, address _to, uint _amount, bytes calldata _payload, uint _gasForCall) public virtual {
        require(msg.sender == address(this), "OFTCore: caller must be OFTCore");

        // call, using low level call to not revert on EOA
        (bool success, bytes memory result) = _to.call{gas: _gasForCall}(abi.encodeWithSelector(IOFTReceiverV2.onOFTReceived.selector, _srcChainId, _srcAddress, _nonce, _from, _amount, _payload));

        if (!success) { // If call reverts
            // If there is return data, the call reverted without a reason or a custom error.
            if (result.length == 0) revert();
            assembly {
                // We use Yul's revert() to bubble up errors from the target contract.
                revert(add(32, result), mload(result))
            }
        }
    }

    function test(address to, uint amount, bytes calldata payloadForCall, bool retry, uint gasForCall) external {
        address to_ = to;
        uint amount_ = amount;
        bytes memory payloadForCall_ = payloadForCall;
        uint gas = retry ? gasleft() : gasForCall;
        (bool success, bytes memory reason) = address(this).excessivelySafeCall(gasleft(), 150, abi.encodeWithSelector(this.callOnOFTReceived.selector, 1, new bytes(0), 1, bytes32(0), to_, amount_, payloadForCall_, gas));
        require(success, "call not successful");
    }
}