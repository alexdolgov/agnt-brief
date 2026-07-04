// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ^0.8.11 ^0.8.4;

// lib/royco/lib/clones-with-immutable-args/src/Clone.sol

/// @title Clone
/// @author zefram.eth
/// @notice Provides helper functions for reading immutable args from calldata
contract Clone {
    /// @notice Reads an immutable arg with type address
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgAddress(uint256 argOffset)
        internal
        pure
        returns (address arg)
    {
        uint256 offset = _getImmutableArgsOffset();
        assembly {
            arg := shr(0x60, calldataload(add(offset, argOffset)))
        }
    }

    /// @notice Reads an immutable arg with type uint256
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgUint256(uint256 argOffset)
        internal
        pure
        returns (uint256 arg)
    {
        uint256 offset = _getImmutableArgsOffset();
        // solhint-disable-next-line no-inline-assembly
        assembly {
            arg := calldataload(add(offset, argOffset))
        }
    }

    /// @notice Reads an immutable arg with type uint64
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgUint64(uint256 argOffset)
        internal
        pure
        returns (uint64 arg)
    {
        uint256 offset = _getImmutableArgsOffset();
        // solhint-disable-next-line no-inline-assembly
        assembly {
            arg := shr(0xc0, calldataload(add(offset, argOffset)))
        }
    }

    /// @notice Reads an immutable arg with type uint8
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgUint8(uint256 argOffset) internal pure returns (uint8 arg) {
        uint256 offset = _getImmutableArgsOffset();
        // solhint-disable-next-line no-inline-assembly
        assembly {
            arg := shr(0xf8, calldataload(add(offset, argOffset)))
        }
    }

    /// @return offset The offset of the packed immutable args in calldata
    function _getImmutableArgsOffset() internal pure returns (uint256 offset) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            offset := sub(
                calldatasize(),
                add(shr(240, calldataload(sub(calldatasize(), 2))), 2)
            )
        }
    }
}

// lib/royco/lib/weiroll/contracts/CommandBuilder.sol

library CommandBuilder {

    uint256 constant IDX_VARIABLE_LENGTH = 0x80;
    uint256 constant IDX_VALUE_MASK = 0x7f;
    uint256 constant IDX_END_OF_ARGS = 0xff;
    uint256 constant IDX_USE_STATE = 0xfe;

    function buildInputs(
        bytes[] memory state,
        bytes4 selector,
        bytes32 indices
    ) internal view returns (bytes memory ret) {
        uint256 count; // Number of bytes in whole ABI encoded message
        uint256 free; // Pointer to first free byte in tail part of message
        bytes memory stateData; // Optionally encode the current state if the call requires it

        uint256 idx;

        // Determine the length of the encoded data
        for (uint256 i; i < 32;) {
            idx = uint8(indices[i]);
            if (idx == IDX_END_OF_ARGS) break;

            if (idx & IDX_VARIABLE_LENGTH != 0) {
                if (idx == IDX_USE_STATE) {
                    if (stateData.length == 0) {
                        stateData = abi.encode(state);
                    }
                    count += stateData.length;
                } else {
                    // Add the size of the value, rounded up to the next word boundary, plus space for pointer and length
                    uint256 arglen = state[idx & IDX_VALUE_MASK].length;
                    require(
                        arglen % 32 == 0,
                        "Dynamic state variables must be a multiple of 32 bytes"
                    );
                    count += arglen + 32;
                }
            } else {
                require(
                    state[idx & IDX_VALUE_MASK].length == 32,
                    "Static state variables must be 32 bytes"
                );
                count += 32;
            }
            unchecked{free += 32;}
            unchecked{++i;}
        }

        // Encode it
        ret = new bytes(count + 4);
        assembly {
            mstore(add(ret, 32), selector)
        }
        count = 0;
        for (uint256 i; i < 32;) {
            idx = uint8(indices[i]);
            if (idx == IDX_END_OF_ARGS) break;

            if (idx & IDX_VARIABLE_LENGTH != 0) {
                if (idx == IDX_USE_STATE) {
                    assembly {
                        mstore(add(add(ret, 36), count), free)
                    }
                    memcpy(stateData, 32, ret, free + 4, stateData.length - 32);
                    free += stateData.length - 32;
                } else {
                    uint256 arglen = state[idx & IDX_VALUE_MASK].length;

                    // Variable length data; put a pointer in the slot and write the data at the end
                    assembly {
                        mstore(add(add(ret, 36), count), free)
                    }
                    memcpy(
                        state[idx & IDX_VALUE_MASK],
                        0,
                        ret,
                        free + 4,
                        arglen
                    );
                    free += arglen;
                }
            } else {
                // Fixed length data; write it directly
                bytes memory statevar = state[idx & IDX_VALUE_MASK];
                assembly {
                    mstore(add(add(ret, 36), count), mload(add(statevar, 32)))
                }
            }
            unchecked{count += 32;}
            unchecked{++i;}
        }
    }

    function writeOutputs(
        bytes[] memory state,
        bytes1 index,
        bytes memory output
    ) internal pure returns (bytes[] memory) {
        uint256 idx = uint8(index);
        if (idx == IDX_END_OF_ARGS) return state;

        if (idx & IDX_VARIABLE_LENGTH != 0) {
            if (idx == IDX_USE_STATE) {
                state = abi.decode(output, (bytes[]));
            } else {
                // Check the first field is 0x20 (because we have only a single return value)
                uint256 argptr;
                assembly {
                    argptr := mload(add(output, 32))
                }
                require(
                    argptr == 32,
                    "Only one return value permitted (variable)"
                );

                assembly {
                    // Overwrite the first word of the return data with the length - 32
                    mstore(add(output, 32), sub(mload(output), 32))
                    // Insert a pointer to the return data, starting at the second word, into state
                    mstore(
                        add(add(state, 32), mul(and(idx, IDX_VALUE_MASK), 32)),
                        add(output, 32)
                    )
                }
            }
        } else {
            // Single word
            require(
                output.length == 32,
                "Only one return value permitted (static)"
            );

            state[idx & IDX_VALUE_MASK] = output;
        }

        return state;
    }

    function writeTuple(
        bytes[] memory state,
        bytes1 index,
        bytes memory output
    ) internal view {
        uint256 idx = uint256(uint8(index));
        if (idx == IDX_END_OF_ARGS) return;

        bytes memory entry = state[idx] = new bytes(output.length + 32);
        memcpy(output, 0, entry, 32, output.length);
        assembly {
            let l := mload(output)
            mstore(add(entry, 32), l)
        }
    }

    function memcpy(
        bytes memory src,
        uint256 srcidx,
        bytes memory dest,
        uint256 destidx,
        uint256 len
    ) internal view {
        assembly {
            pop(
                staticcall(
                    gas(),
                    4,
                    add(add(src, 32), srcidx),
                    len,
                    add(add(dest, 32), destidx),
                    len
                )
            )
        }
    }
}

// lib/royco/lib/weiroll/contracts/VM.sol

abstract contract VM {
    using CommandBuilder for bytes[];

    uint256 constant FLAG_CT_DELEGATECALL = 0x00;
    uint256 constant FLAG_CT_CALL = 0x01;
    uint256 constant FLAG_CT_STATICCALL = 0x02;
    uint256 constant FLAG_CT_VALUECALL = 0x03;
    uint256 constant FLAG_CT_MASK = 0x03;
    uint256 constant FLAG_EXTENDED_COMMAND = 0x80;
    uint256 constant FLAG_TUPLE_RETURN = 0x40;

    uint256 constant SHORT_COMMAND_FILL = 0x000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

    address immutable self;

    error ExecutionFailed(
        uint256 command_index,
        address target,
        string message
    );

    constructor() {
        self = address(this);
    }

    function _execute(bytes32[] calldata commands, bytes[] memory state)
      internal returns (bytes[] memory)
    {
        bytes32 command;
        uint256 flags;
        bytes32 indices;

        bool success;
        bytes memory outdata;

        uint256 commandsLength = commands.length;
        for (uint256 i; i < commandsLength;) {
            command = commands[i];
            flags = uint256(uint8(bytes1(command << 32)));

            if (flags & FLAG_EXTENDED_COMMAND != 0) {
                indices = commands[i++];
            } else {
                indices = bytes32(uint256(command << 40) | SHORT_COMMAND_FILL);
            }

            if (flags & FLAG_CT_MASK == FLAG_CT_DELEGATECALL) {
                (success, outdata) = address(uint160(uint256(command))).delegatecall( // target
                    // inputs
                    state.buildInputs(
                        //selector
                        bytes4(command),
                        indices
                    )
                );
            } else if (flags & FLAG_CT_MASK == FLAG_CT_CALL) {
                (success, outdata) = address(uint160(uint256(command))).call( // target
                    // inputs
                    state.buildInputs(
                        //selector
                        bytes4(command),
                        indices
                    )
                );
            } else if (flags & FLAG_CT_MASK == FLAG_CT_STATICCALL) {
                (success, outdata) = address(uint160(uint256(command))).staticcall( // target
                    // inputs
                    state.buildInputs(
                        //selector
                        bytes4(command),
                        indices
                    )
                );
            } else if (flags & FLAG_CT_MASK == FLAG_CT_VALUECALL) {
                uint256 calleth;
                bytes memory v = state[uint8(bytes1(indices))];
                require(v.length == 32, "_execute: value call has no value indicated.");
                assembly {
                    calleth := mload(add(v, 0x20))
                }
                (success, outdata) = address(uint160(uint256(command))).call{ // target
                    value: calleth
                }(
                    // inputs
                    state.buildInputs(
                        //selector
                        bytes4(command),
                        bytes32(uint256(indices << 8) | CommandBuilder.IDX_END_OF_ARGS)
                    )
                );
            } else {
                revert("Invalid calltype");
            }

            if (!success) {
                if (outdata.length > 0) {
                    assembly {
                        outdata := add(outdata, 68)
                    }
                }
                revert ExecutionFailed({
                    command_index: 0,
                    target: address(uint160(uint256(command))),
                    message: outdata.length > 0 ? string(outdata) : "Unknown"
                });
            }

            if (flags & FLAG_TUPLE_RETURN != 0) {
                state.writeTuple(bytes1(command << 88), outdata);
            } else {
                state = state.writeOutputs(bytes1(command << 88), outdata);
            }
            unchecked{++i;}
        }
        return state;
    }
}

// lib/royco/src/WeirollWallet.sol

/// @title WeirollWallet
/// @author Royco
/// @notice WeirollWallet implementation contract.
/// @notice Implements a simple smart contract wallet that can execute Weiroll VM commands
contract WeirollWallet is Clone, VM {
    /// @notice Let the Weiroll Wallet receive ether directly if needed
    receive() external payable { }
    /// @notice Also allow a fallback with no logic if erroneous data is provided
    fallback() external payable { }
    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    // Emit when owner executes an arbitrary script (not a market script)
    event WeirollWalletExecutedManually();

    error NotOwner();
    error NotRecipeMarketHub();
    error WalletLocked();
    error WalletNotForfeitable();

    /// @notice Only the owner of the contract can call the function
    modifier onlyOwner() {
        if (msg.sender != owner()) {
            revert NotOwner();
        }
        _;
    }

    /// @notice Only the recipeMarketHub contract can call the function
    modifier onlyRecipeMarketHub() {
        if (msg.sender != recipeMarketHub()) {
            revert NotRecipeMarketHub();
        }
        _;
    }

    /// @notice The wallet can be locked
    modifier notLocked() {
        if (!forfeited && lockedUntil() > block.timestamp) {
            revert WalletLocked();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                               STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @dev Whether or not this offer has been executed
    bool public executed;
    /// @dev Whether or not the wallet has been forfeited
    bool public forfeited;

    /// @notice Forfeit all rewards to get control of the wallet back
    function forfeit() public onlyRecipeMarketHub {
        if (!isForfeitable() || block.timestamp >= lockedUntil()) {
            // Can't forfeit if:
            // 1. Wallet not created through a forfeitable market
            // 2. Lock time has passed and claim window has started
            revert WalletNotForfeitable();
        }

        forfeited = true;
    }

    /// @notice The address of the offer creator (owner)
    function owner() public pure returns (address) {
        return _getArgAddress(0);
    }

    /// @notice The address of the RecipeMarketHub contract
    function recipeMarketHub() public pure returns (address) {
        return _getArgAddress(20);
    }

    /// @notice The amount of tokens deposited into this wallet from the recipeMarketHub
    function amount() public pure returns (uint256) {
        return _getArgUint256(40);
    }

    /// @notice The timestamp after which the wallet may be interacted with
    function lockedUntil() public pure returns (uint256) {
        return _getArgUint256(72);
    }

    /// @notice Returns whether or not the wallet is forfeitable
    function isForfeitable() public pure returns (bool) {
        return _getArgUint8(104) != 0;
    }

    /// @notice Returns the hash of the market associated with this weiroll wallet
    function marketHash() public pure returns (bytes32) {
        return bytes32(_getArgUint256(105));
    }

    /*//////////////////////////////////////////////////////////////
                               EXECUTION LOGIC
    //////////////////////////////////////////////////////////////*/
    /// @notice Execute the Weiroll VM with the given commands.
    /// @param commands The commands to be executed by the Weiroll VM.
    function executeWeiroll(bytes32[] calldata commands, bytes[] calldata state) public payable onlyRecipeMarketHub returns (bytes[] memory) {
        executed = true;
        // Execute the Weiroll VM.
        return _execute(commands, state);
    }

    /// @notice Execute the Weiroll VM with the given commands.
    /// @param commands The commands to be executed by the Weiroll VM.
    function manualExecuteWeiroll(bytes32[] calldata commands, bytes[] calldata state) public payable onlyOwner notLocked returns (bytes[] memory) {
        // Prevent people from approving w/e then rugging during vesting
        require(executed, "Royco: Offer unfilled");

        emit WeirollWalletExecutedManually();
        // Execute the Weiroll VM.
        return _execute(commands, state);
    }

    /// @notice Execute a generic call to another contract.
    /// @param to The address to call
    /// @param value The ether value of the execution
    /// @param data The data to pass along with the call
    function execute(address to, uint256 value, bytes memory data) public payable onlyOwner notLocked returns (bytes memory) {
        // Prevent people from approving w/e then rugging during vesting
        require(executed, "Royco: Offer unfilled");

        // Execute the call.
        (bool success, bytes memory result) = to.call{ value: value }(data);
        if (!success) {
            revert("Generic execute proxy failed");
        }

        emit WeirollWalletExecutedManually();
        return result;
    }
}

// src/WeirollWalletHelper.sol

/// @title WeirollWalletHelper
/// @notice A helper contract to enable calling view functions of WeirollWallet via STATICCALL.
/// @author Shivaansh Kapoor, Jack Corddry
/// @dev This contract contains view functions that can be called via STATICCALL to access the state of a WeirollWallet contract.
contract WeirollWalletHelper {
    /// @notice Gets the address of the WeirollWallet.
    /// @dev Returns msg.sender (Weiroll Wallet) as a payable address.
    /// @return The address of the WeirollWallet.
    function thisWallet() external view returns (address payable) {
        return payable(msg.sender);
    }

    /// @notice Gets the native balance of the WeirollWallet.
    /// @dev Returns (msg.sender).balance.
    /// @return The ether balance of the WeirollWallet.
    function nativeBalance() external view returns (uint256) {
        return (msg.sender).balance;
    }

    /// @notice Gets the owner of the WeirollWallet.
    /// @dev Calls the `owner()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The address of the owner.
    function owner() external view returns (address) {
        return WeirollWallet(payable(msg.sender)).owner();
    }

    /// @notice Gets the address of the RecipeMarketHub contract associated with the WeirollWallet.
    /// @dev Calls the `recipeMarketHub()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The address of the RecipeMarketHub contract.
    function recipeMarketHub() external view returns (address) {
        return WeirollWallet(payable(msg.sender)).recipeMarketHub();
    }

    /// @notice Gets the amount of tokens deposited into the WeirollWallet.
    /// @dev Calls the `amount()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The amount of tokens deposited.
    function amount() external view returns (uint256) {
        return WeirollWallet(payable(msg.sender)).amount();
    }

    /// @notice Gets the timestamp until which the WeirollWallet is locked.
    /// @dev Calls the `lockedUntil()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The timestamp (in seconds since epoch) after which the wallet may be interacted with.
    function lockedUntil() external view returns (uint256) {
        return WeirollWallet(payable(msg.sender)).lockedUntil();
    }

    /// @notice Determines if the WeirollWallet is forfeitable.
    /// @dev Calls the `isForfeitable()` function of the WeirollWallet contract using `msg.sender`.
    /// @return A boolean indicating if the wallet is forfeitable.
    function isForfeitable() external view returns (bool) {
        return WeirollWallet(payable(msg.sender)).isForfeitable();
    }

    /// @notice Gets the hash of the market associated with the WeirollWallet.
    /// @dev Calls the `marketHash()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The market hash as a bytes32.
    function marketHash() external view returns (bytes32) {
        return WeirollWallet(payable(msg.sender)).marketHash();
    }

    /// @notice Checks if the order associated with the WeirollWallet has been executed.
    /// @dev Calls the `executed()` function of the WeirollWallet contract using `msg.sender`.
    /// @return A boolean indicating if the order has been executed.
    function executed() external view returns (bool) {
        return WeirollWallet(payable(msg.sender)).executed();
    }

    /// @notice Checks if the WeirollWallet has been forfeited.
    /// @dev Calls the `forfeited()` function of the WeirollWallet contract using `msg.sender`.
    /// @return A boolean indicating if the wallet has been forfeited.
    function forfeited() external view returns (bool) {
        return WeirollWallet(payable(msg.sender)).forfeited();
    }
}
