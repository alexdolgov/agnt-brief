// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

interface IRole {
    enum ParameterType {
        None,
        Static,
        Dynamic,
        Tuple,
        Array,
        Calldata,
        AbiEncoded
    }

    enum Operator {
        // 00:    EMPTY EXPRESSION (default, always passes)
        //          paramType: Static / Dynamic / Tuple / Array
        //          ❓ children (only for paramType: Tuple / Array to describe their structure)
        //          🚫 compValue
        /* 00: */
        Pass,
        // ------------------------------------------------------------
        // 01-04: LOGICAL EXPRESSIONS
        //          paramType: None
        //          ✅ children
        //          🚫 compValue
        /* 01: */
        And,
        /* 02: */
        Or,
        /* 03: */
        Nor,
        /* 04: */
        _Placeholder04,
        // ------------------------------------------------------------
        // 05-14: COMPLEX EXPRESSIONS
        //          paramType: Calldata / AbiEncoded / Tuple / Array,
        //          ✅ children
        //          🚫 compValue
        /* 05: */
        Matches,
        /* 06: */
        ArraySome,
        /* 07: */
        ArrayEvery,
        /* 08: */
        ArraySubset,
        /* 09: */
        _Placeholder09,
        /* 10: */
        _Placeholder10,
        /* 11: */
        _Placeholder11,
        /* 12: */
        _Placeholder12,
        /* 13: */
        _Placeholder13,
        /* 14: */
        _Placeholder14,
        // ------------------------------------------------------------
        // 15:    SPECIAL COMPARISON (without compValue)
        //          paramType: Static
        //          🚫 children
        //          🚫 compValue
        /* 15: */
        EqualToAvatar,
        // ------------------------------------------------------------
        // 16-31: COMPARISON EXPRESSIONS
        //          paramType: Static / Dynamic / Tuple / Array
        //          ❓ children (only for paramType: Tuple / Array to describe their structure)
        //          ✅ compValue
        /* 16: */
        EqualTo, // paramType: Static / Dynamic / Tuple / Array
        /* 17: */
        GreaterThan, // paramType: Static
        /* 18: */
        LessThan, // paramType: Static
        /* 19: */
        SignedIntGreaterThan, // paramType: Static
        /* 20: */
        SignedIntLessThan, // paramType: Static
        /* 21: */
        Bitmask, // paramType: Static / Dynamic
        /* 22: */
        Custom, // paramType: Static / Dynamic / Tuple / Array
        /* 23: */
        _Placeholder23,
        /* 24: */
        _Placeholder24,
        /* 25: */
        _Placeholder25,
        /* 26: */
        _Placeholder26,
        /* 27: */
        _Placeholder27,
        /* 28: */
        WithinAllowance, // paramType: Static
        /* 29: */
        EtherWithinAllowance, // paramType: None
        /* 30: */
        CallWithinAllowance, // paramType: None
        /* 31: */
        _Placeholder31
    }

    enum ExecutionOptions {
        None,
        Send,
        DelegateCall,
        Both
    }

    enum Operation {
        Call,
        DelegateCall
    }

    // This struct is a flattened version of Condition
    // used for ABI encoding a scope config tree
    // (ABI does not support recursive types)
    struct ConditionFlat {
        uint8 parent;
        ParameterType paramType;
        Operator operator;
        bytes compValue;
    }

    function isModuleEnabled(address _module) external view returns (bool);

    function execTransactionWithRole(
        address to,
        uint256 value,
        bytes calldata data,
        uint8 operation,
        bytes32 roleKey,
        bool shouldRevert
    ) external returns (bool success);

    function execTransactionWithRoleReturnData(
        address to,
        uint256 value,
        bytes calldata data,
        uint8 operation,
        bytes32 roleKey,
        bool shouldRevert
    ) external returns (bool success, bytes memory returnData);

    function avatar() external view returns (address);

    function target() external view returns (address);

    function unwrappers(bytes32) external view returns (address);

    /// @dev Allows transactions to a target address.
    function allowTarget(bytes32 roleKey, address targetAddress, ExecutionOptions options) external;

    /// @dev Removes transactions to a target address.
    function revokeTarget(bytes32 roleKey, address targetAddress) external;

    /// @dev Designates only specific functions can be called.
    function scopeTarget(bytes32 roleKey, address targetAddress) external;

    /// @dev Specifies the functions that can be called.
    function allowFunction(
        bytes32 roleKey,
        address targetAddress,
        bytes4 selector,
        ExecutionOptions options
    ) external;

    /// @dev Removes the functions that can be called.
    function revokeFunction(bytes32 roleKey, address targetAddress, bytes4 selector) external;

    /// @dev Sets conditions to enforce on calls to the specified target.
    function scopeFunction(
        bytes32 roleKey,
        address targetAddress,
        bytes4 selector,
        ConditionFlat[] calldata conditions,
        uint8 options
    ) external;

    /// @dev Sets a refillable allowance for gas/ETH.
    function setAllowance(
        bytes32 key,
        uint128 balance,
        uint128 maxRefill,
        uint128 refill,
        uint64 period,
        uint64 timestamp
    ) external;

    function assignRoles(address, bytes32[] calldata, bool[] calldata) external;

    function setAvatar(address _avatar) external;

    function enableModule(address _module) external;

    function setTransactionUnwrapper(address to, bytes4 selector, address adapter) external;
}
