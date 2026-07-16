// SPDX-License-Identifier: BUSL-1.1
pragma solidity <0.9.0 =0.8.28 >=0.7.0 ^0.8.0 ^0.8.19 ^0.8.20 ^0.8.24 ^0.8.7;

// src/interfaces/IAllocator.sol

interface IAllocator {
    struct Allocation {
        address asset;
        address gauge;
        address[] targets;
        uint256[] amounts;
    }

    function getDepositAllocation(address asset, address gauge, uint256 amount)
        external
        view
        returns (Allocation memory);
    function getWithdrawalAllocation(address asset, address gauge, uint256 amount)
        external
        view
        returns (Allocation memory);
    function getRebalancedAllocation(address asset, address gauge, uint256 amount)
        external
        view
        returns (Allocation memory);

    function getAllocationTargets(address gauge) external view returns (address[] memory);
}

// src/interfaces/IBalanceProvider.sol

interface IBalanceProvider {
    function balanceOf(address _address) external view returns (uint256);
    function totalSupply() external view returns (uint256);
}

// node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/IERC165.sol)

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
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
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
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
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
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
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// src/interfaces/IFactory.sol

interface IFactory {
    function createVault(address gauge) external returns (address vault, address rewardReceiver);
    function syncRewardTokens(address gauge) external;
}

// node_modules/@stake-dao/interfaces/src/interfaces/curve/IMinter.sol

interface IMinter {
    function mint_for(address gauge, address account) external;
    function minted(address gauge, address account) external view returns (uint256);
}

// node_modules/@stake-dao/interfaces/src/interfaces/safe/IModuleManager.sol

/**
 * @title IModuleManager - An interface of contract managing Safe modules
 * @notice Modules are extensions with unlimited access to a Safe that can be added to a Safe by its owners.
           ⚠️ WARNING: Modules are a security risk since they can execute arbitrary transactions, 
           so only trusted and audited modules should be added to a Safe. A malicious module can
           completely takeover a Safe.
 * @author @safe-global/safe-protocol
 */
interface IModuleManager {

    enum Operation {
        Call,
        DelegateCall
    }
    event EnabledModule(address indexed module);
    event DisabledModule(address indexed module);
    event ExecutionFromModuleSuccess(address indexed module);
    event ExecutionFromModuleFailure(address indexed module);
    event ChangedModuleGuard(address indexed moduleGuard);

    /**
     * @notice Enables the module `module` for the Safe.
     * @dev This can only be done via a Safe transaction.
     * @param module Module to be whitelisted.
     */
    function enableModule(address module) external;

    /**
     * @notice Disables the module `module` for the Safe.
     * @dev This can only be done via a Safe transaction.
     * @param prevModule Previous module in the modules linked list.
     * @param module Module to be removed.
     */
    function disableModule(address prevModule, address module) external;

    /**
     * @notice Execute `operation` (0: Call, 1: DelegateCall) to `to` with `value` (Native Token)
     * @param to Destination address of module transaction.
     * @param value Ether value of module transaction.
     * @param data Data payload of module transaction.
     * @param operation Operation type of module transaction.
     * @return success Boolean flag indicating if the call succeeded.
     */
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes memory data,
        Operation operation
    ) external returns (bool success);

    /**
     * @notice Execute `operation` (0: Call, 1: DelegateCall) to `to` with `value` (Native Token) and return data
     * @param to Destination address of module transaction.
     * @param value Ether value of module transaction.
     * @param data Data payload of module transaction.
     * @param operation Operation type of module transaction.
     * @return success Boolean flag indicating if the call succeeded.
     * @return returnData Data returned by the call.
     */
    function execTransactionFromModuleReturnData(
        address to,
        uint256 value,
        bytes memory data,
        Operation operation
    ) external returns (bool success, bytes memory returnData);

    /**
     * @notice Returns if a module is enabled
     * @return True if the module is enabled
     */
    function isModuleEnabled(address module) external view returns (bool);

    /**
     * @notice Returns an array of modules.
     *         If all entries fit into a single page, the next pointer will be 0x1.
     *         If another page is present, next will be the last element of the returned array.
     * @param start Start of the page. Has to be a module or start pointer (0x1 address)
     * @param pageSize Maximum number of modules that should be returned. Has to be > 0
     * @return array Array of modules.
     * @return next Start of the next page.
     */
    function getModulesPaginated(address start, uint256 pageSize) external view returns (address[] memory array, address next);

    /**
     * @dev Set a module guard that checks transactions initiated by the module before execution
     *      This can only be done via a Safe transaction.
     *      ⚠️ IMPORTANT: Since a module guard has full power to block Safe transaction execution initiated via a module,
     *        a broken module guard can cause a denial of service for the Safe modules. Make sure to carefully
     *        audit the module guard code and design recovery mechanisms.
     * @notice Set Module Guard `moduleGuard` for the Safe. Make sure you trust the module guard.
     * @param moduleGuard The address of the module guard to be used or the zero address to disable the module guard.
     */
    function setModuleGuard(address moduleGuard) external;
}

// src/interfaces/IProtocolController.sol

interface IProtocolController {
    function vault(address) external view returns (address);
    function asset(address) external view returns (address);
    function rewardReceiver(address) external view returns (address);

    function allowed(address, address, bytes4 selector) external view returns (bool);
    function permissionSetters(address) external view returns (bool);
    function isRegistrar(address) external view returns (bool);

    function strategy(bytes4 protocolId) external view returns (address);
    function allocator(bytes4 protocolId) external view returns (address);
    function accountant(bytes4 protocolId) external view returns (address);
    function feeReceiver(bytes4 protocolId) external view returns (address);
    function factory(bytes4 protocolId) external view returns (address);

    function isPaused(bytes4) external view returns (bool);
    function isShutdown(address) external view returns (bool);

    function registerVault(address _gauge, address _vault, address _asset, address _rewardReceiver, bytes4 _protocolId)
        external;

    function setValidAllocationTarget(address _gauge, address _target) external;
    function removeValidAllocationTarget(address _gauge, address _target) external;
    function isValidAllocationTarget(address _gauge, address _target) external view returns (bool);

    function shutdown(address _gauge) external;

    function setPermissionSetter(address _setter, bool _allowed) external;
    function setPermission(address _contract, address _caller, bytes4 _selector, bool _allowed) external;
}

// src/interfaces/IRewardVault.sol

/// @title IRewardVault
/// @notice Interface for the RewardVault contract
interface IRewardVault {
    function addRewardToken(address rewardsToken, address distributor) external;

    function depositRewards(address _rewardsToken, uint128 _amount) external;

    function deposit(uint256 assets, address receiver, address referrer) external returns (uint256 shares);

    function deposit(address account, address receiver, uint256 assets, address referrer)
        external
        returns (uint256 shares);

    function claim(address[] calldata tokens, address receiver) external returns (uint256[] memory amounts);

    function claim(address account, address[] calldata tokens, address receiver)
        external
        returns (uint256[] memory amounts);

    function getRewardsDistributor(address token) external view returns (address);

    function getLastUpdateTime(address token) external view returns (uint32);

    function getPeriodFinish(address token) external view returns (uint32);

    function getRewardRate(address token) external view returns (uint128);

    function getRewardPerTokenStored(address token) external view returns (uint128);

    function getRewardPerTokenPaid(address token, address account) external view returns (uint128);

    function getClaimable(address token, address account) external view returns (uint128);

    function getRewardTokens() external view returns (address[] memory);

    function lastTimeRewardApplicable(address token) external view returns (uint256);

    function rewardPerToken(address token) external view returns (uint128);

    function earned(address account, address token) external view returns (uint128);

    function isRewardToken(address rewardToken) external view returns (bool);

    function resumeVault() external;
}

// node_modules/@openzeppelin/contracts/utils/math/SafeCast.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// node_modules/@openzeppelin/contracts/utils/TransientSlot.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/TransientSlot.sol)
// This file was procedurally generated from scripts/generate/templates/TransientSlot.js.

/**
 * @dev Library for reading and writing value-types to specific transient storage slots.
 *
 * Transient slots are often used to store temporary values that are removed after the current transaction.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 *  * Example reading and writing values using transient storage:
 * ```solidity
 * contract Lock {
 *     using TransientSlot for *;
 *
 *     // Define the slot. Alternatively, use the SlotDerivation library to derive the slot.
 *     bytes32 internal constant _LOCK_SLOT = 0xf4678858b2b588224636b8522b729e7722d32fc491da849ed75b3fdf3c84f542;
 *
 *     modifier locked() {
 *         require(!_LOCK_SLOT.asBoolean().tload());
 *
 *         _LOCK_SLOT.asBoolean().tstore(true);
 *         _;
 *         _LOCK_SLOT.asBoolean().tstore(false);
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {SlotDerivation}.
 */
library TransientSlot {
    /**
     * @dev UDVT that represent a slot holding a address.
     */
    type AddressSlot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a AddressSlot.
     */
    function asAddress(bytes32 slot) internal pure returns (AddressSlot) {
        return AddressSlot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a bool.
     */
    type BooleanSlot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a BooleanSlot.
     */
    function asBoolean(bytes32 slot) internal pure returns (BooleanSlot) {
        return BooleanSlot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a bytes32.
     */
    type Bytes32Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Bytes32Slot.
     */
    function asBytes32(bytes32 slot) internal pure returns (Bytes32Slot) {
        return Bytes32Slot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a uint256.
     */
    type Uint256Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Uint256Slot.
     */
    function asUint256(bytes32 slot) internal pure returns (Uint256Slot) {
        return Uint256Slot.wrap(slot);
    }

    /**
     * @dev UDVT that represent a slot holding a int256.
     */
    type Int256Slot is bytes32;

    /**
     * @dev Cast an arbitrary slot to a Int256Slot.
     */
    function asInt256(bytes32 slot) internal pure returns (Int256Slot) {
        return Int256Slot.wrap(slot);
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(AddressSlot slot) internal view returns (address value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(AddressSlot slot, address value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(BooleanSlot slot) internal view returns (bool value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(BooleanSlot slot, bool value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(Bytes32Slot slot) internal view returns (bytes32 value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(Bytes32Slot slot, bytes32 value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(Uint256Slot slot) internal view returns (uint256 value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(Uint256Slot slot, uint256 value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }

    /**
     * @dev Load the value held at location `slot` in transient storage.
     */
    function tload(Int256Slot slot) internal view returns (int256 value) {
        assembly ("memory-safe") {
            value := tload(slot)
        }
    }

    /**
     * @dev Store `value` at location `slot` in transient storage.
     */
    function tstore(Int256Slot slot, int256 value) internal {
        assembly ("memory-safe") {
            tstore(slot, value)
        }
    }
}

// node_modules/@openzeppelin/contracts/interfaces/IERC165.sol

// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC165.sol)

// node_modules/@openzeppelin/contracts/interfaces/IERC20.sol

// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

// node_modules/@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol

// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
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

// node_modules/@stake-dao/interfaces/src/interfaces/curve/ILiquidityGauge.sol

interface IL2LiquidityGauge {
    function reward_data(address arg0)
        external
        view
        returns (
            address distributor,
            uint256 period_finish,
            uint256 rate,
            uint256 last_update,
            uint256 integral
        );

    function reward_tokens(uint256 arg0) external view returns (address);
    function is_killed() external view returns (bool);
    function lp_token() external view returns (address);
}

interface ILiquidityGauge is IERC20 {
    event ApplyOwnership(address admin);
    event CommitOwnership(address admin);
    event Deposit(address indexed provider, uint256 value);
    event UpdateLiquidityLimit(
        address user, uint256 original_balance, uint256 original_supply, uint256 working_balance, uint256 working_supply
    );
    event Withdraw(address indexed provider, uint256 value);

    function add_reward(address _reward_token, address _distributor) external;
    function approve(address _spender, uint256 _value) external returns (bool);
    function claim_rewards() external;
    function claim_rewards(address _addr) external;
    function claim_rewards(address _addr, address _receiver) external;
    function claimable_tokens(address addr) external returns (uint256);
    function decreaseAllowance(address _spender, uint256 _subtracted_value) external returns (bool);
    function deposit(uint256 _value) external;
    function deposit(uint256 _value, address _addr) external;
    function deposit(uint256 _value, address _addr, bool _claim_rewards) external;
    function deposit_reward_token(address _reward_token, uint256 _amount) external;
    function increaseAllowance(address _spender, uint256 _added_value) external returns (bool);
    function initialize(address _lp_token) external;
    function kick(address addr) external;
    function set_killed(bool _is_killed) external;
    function set_reward_distributor(address _reward_token, address _distributor) external;
    function set_rewards_receiver(address _receiver) external;
    function transfer(address _to, uint256 _value) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
    function user_checkpoint(address addr) external returns (bool);
    function withdraw(uint256 _value) external;
    function withdraw(uint256 _value, bool _claim_rewards) external;
    function allowance(address arg0, address arg1) external view returns (uint256);
    function balanceOf(address arg0) external view returns (uint256);
    function claimable_reward(address _user, address _reward_token) external view returns (uint256);
    function claimed_reward(address _addr, address _token) external view returns (uint256);
    function decimals() external view returns (uint256);
    function factory() external view returns (address);
    function future_epoch_time() external view returns (uint256);
    function inflation_rate() external view returns (uint256);
    function integrate_checkpoint() external view returns (uint256);
    function integrate_checkpoint_of(address arg0) external view returns (uint256);
    function integrate_fraction(address arg0) external view returns (uint256);
    function integrate_inv_supply(uint256 arg0) external view returns (uint256);
    function integrate_inv_supply_of(address arg0) external view returns (uint256);
    function is_killed() external view returns (bool);
    function lp_token() external view returns (address);
    function name() external view returns (string memory);
    function period() external view returns (int128);
    function period_timestamp(uint256 arg0) external view returns (uint256);
    function reward_count() external view returns (uint256);
    function reward_data(address arg0)
        external
        view
        returns (
            address token,
            address distributor,
            uint256 period_finish,
            uint256 rate,
            uint256 last_update,
            uint256 integral
        );
    function reward_integral_for(address arg0, address arg1) external view returns (uint256);
    function reward_tokens(uint256 arg0) external view returns (address);
    function rewards_receiver(address arg0) external view returns (address);
    function symbol() external view returns (string memory);
    function totalSupply() external view returns (uint256);
    function working_balances(address arg0) external view returns (uint256);
    function working_supply() external view returns (uint256);
    function admin() external view returns (address);
}

// src/interfaces/ISidecar.sol

interface ISidecar {
    function balanceOf() external view returns (uint256);
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount, address receiver) external;
    function getPendingRewards() external returns (uint256);
    function getRewardTokens() external view returns (address[] memory);

    function claim() external returns (uint256);

    function asset() external view returns (IERC20);
}

// src/interfaces/IStrategy.sol

interface IStrategy {
    /// @notice The policy for harvesting rewards.
    enum HarvestPolicy {
        CHECKPOINT,
        HARVEST
    }

    struct PendingRewards {
        uint128 feeSubjectAmount;
        uint128 totalAmount;
    }

    function deposit(IAllocator.Allocation calldata allocation, HarvestPolicy policy)
        external
        returns (PendingRewards memory pendingRewards);
    function withdraw(IAllocator.Allocation calldata allocation, HarvestPolicy policy, address receiver)
        external
        returns (PendingRewards memory pendingRewards);

    function balanceOf(address gauge) external view returns (uint256 balance);

    function harvest(address gauge, bytes calldata extraData) external returns (PendingRewards memory pendingRewards);
    function flush() external;

    function shutdown(address gauge) external;
}

// src/interfaces/IAccountant.sol

interface IAccountant {
    function checkpoint(
        address gauge,
        address from,
        address to,
        uint128 amount,
        IStrategy.PendingRewards calldata pendingRewards,
        IStrategy.HarvestPolicy policy
    ) external;

    function checkpoint(
        address gauge,
        address from,
        address to,
        uint128 amount,
        IStrategy.PendingRewards calldata pendingRewards,
        IStrategy.HarvestPolicy policy,
        address referrer
    ) external;

    function totalSupply(address asset) external view returns (uint128);
    function balanceOf(address asset, address account) external view returns (uint128);

    function claim(address[] calldata _gauges, bytes[] calldata harvestData) external;
    function claim(address[] calldata _gauges, bytes[] calldata harvestData, address receiver) external;
    function claim(address[] calldata _gauges, address account, bytes[] calldata harvestData, address receiver)
        external;

    function claimProtocolFees() external;
    function harvest(address[] calldata _gauges, bytes[] calldata _harvestData, address _receiver) external;

    function REWARD_TOKEN() external view returns (address);
}

// node_modules/@openzeppelin/contracts/interfaces/IERC4626.sol

// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/IERC4626.sol)

/**
 * @dev Interface of the ERC-4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// node_modules/@openzeppelin/contracts/interfaces/IERC1363.sol

// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/IERC1363.sol)

/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// src/ProtocolContext.sol

/// @title ProtocolContext.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Base contract providing shared protocol configuration and transaction execution.
contract ProtocolContext {
    //////////////////////////////////////////////////////
    // --- IMMUTABLES
    //////////////////////////////////////////////////////

    /// @notice Unique identifier for the protocol (e.g., keccak256("CURVE") for Curve)
    /// @dev Used to look up protocol-specific components in ProtocolController
    bytes4 public immutable PROTOCOL_ID;

    /// @notice The locker contract that holds and manages protocol tokens (e.g., veCRV)
    /// @dev On L2s, this may be the same as GATEWAY when no separate locker exists
    address public immutable LOCKER;

    /// @notice Safe multisig that owns the locker and executes privileged operations
    /// @dev All protocol interactions go through this gateway for security
    address public immutable GATEWAY;

    /// @notice The accountant responsible for tracking rewards and user balances
    /// @dev Retrieved from ProtocolController during construction
    address public immutable ACCOUNTANT;

    /// @notice The main reward token for this protocol (e.g., CRV for Curve)
    /// @dev Retrieved from the accountant's configuration
    address public immutable REWARD_TOKEN;

    /// @notice Reference to the central registry for protocol components
    IProtocolController public immutable PROTOCOL_CONTROLLER;

    //////////////////////////////////////////////////////
    // --- ERRORS
    //////////////////////////////////////////////////////

    /// @notice Error thrown when a required address is zero
    error ZeroAddress();

    /// @notice Error thrown when a protocol ID is zero
    error InvalidProtocolId();

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    /// @notice Initializes protocol configuration that all inheriting contracts will use
    /// @dev Retrieves accountant and reward token from ProtocolController for consistency
    /// @param _protocolId The protocol identifier (must match registered protocol in controller)
    /// @param _protocolController The protocol controller contract address
    /// @param _locker The locker contract address (pass address(0) for L2s where gateway acts as locker)
    /// @param _gateway The gateway contract address (Safe multisig)
    /// @custom:throws ZeroAddress If protocol controller or gateway is zero
    /// @custom:throws InvalidProtocolId If protocol ID is empty
    constructor(bytes4 _protocolId, address _protocolController, address _locker, address _gateway) {
        require(_protocolController != address(0) && _gateway != address(0), ZeroAddress());
        require(_protocolId != bytes4(0), InvalidProtocolId());

        GATEWAY = _gateway;
        PROTOCOL_ID = _protocolId;
        ACCOUNTANT = IProtocolController(_protocolController).accountant(_protocolId);
        REWARD_TOKEN = IAccountant(ACCOUNTANT).REWARD_TOKEN();
        PROTOCOL_CONTROLLER = IProtocolController(_protocolController);

        // L2 optimization: Gateway can act as both transaction executor and token holder
        if (_locker == address(0)) {
            LOCKER = GATEWAY;
        } else {
            LOCKER = _locker;
        }
    }

    //////////////////////////////////////////////////////
    // --- INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Executes privileged transactions through the Safe module system
    /// @dev Handles two execution patterns:
    ///      - Mainnet: Gateway -> Locker -> Target (locker holds funds and executes)
    ///      - L2: Gateway acts as locker and executes directly on target
    /// @param target The address of the contract to interact with
    /// @param data The calldata to send to the target
    /// @return success Whether the transaction executed successfully
    function _executeTransaction(address target, bytes memory data) internal returns (bool success) {
        if (LOCKER == GATEWAY) {
            // L2 pattern: Gateway holds funds and executes directly
            success = IModuleManager(GATEWAY).execTransactionFromModule(target, 0, data, IModuleManager.Operation.Call);
        } else {
            // Mainnet pattern: Gateway instructs locker (which holds funds) to execute
            // The locker contract has the necessary approvals and balances
            success = IModuleManager(GATEWAY).execTransactionFromModule(
                LOCKER,
                0,
                abi.encodeWithSignature("execute(address,uint256,bytes)", target, 0, data),
                IModuleManager.Operation.Call
            );
        }
    }
}

// node_modules/@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol

// OpenZeppelin Contracts (last updated v5.2.0) (token/ERC20/utils/SafeERC20.sol)

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Opposedly, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturnBool} that reverts if call fails to meet the requirements.
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            let success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            // bubble errors
            if iszero(success) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
            returnSize := returndatasize()
            returnValue := mload(0)
        }

        if (returnSize == 0 ? address(token).code.length == 0 : returnValue != 1) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silently catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        bool success;
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            returnSize := returndatasize()
            returnValue := mload(0)
        }
        return success && (returnSize == 0 ? address(token).code.length > 0 : returnValue == 1);
    }
}

// src/interfaces/IRewardReceiver.sol

interface IRewardReceiver {
    function distributeRewards() external;
    function distributeRewardToken(IERC20 token) external;
}

// src/Strategy.sol

/// @title Strategy.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Strategy is a protocol-agnostic yield strategy orchestrator that manages deposits and withdrawals
///         across multiple yield sources (locker and sidecars). It routes funds based on allocator decisions,
///         handles reward harvesting with transient storage for gas optimization, supports emergency shutdown
///         to transfer all funds back to vaults, and enables rebalancing when allocations change.
abstract contract Strategy is IStrategy, ProtocolContext {
    using SafeCast for uint256;
    using SafeERC20 for IERC20;
    using TransientSlot for *;

    /// @dev Transient storage slot for batching reward transfers during harvest
    /// @dev Gas optimization: reduces multiple ERC20 transfers to single batch transfer
    bytes32 internal constant FLUSH_AMOUNT_SLOT = keccak256("strategy.flushAmount");

    //////////////////////////////////////////////////////
    // --- ERRORS & EVENTS
    //////////////////////////////////////////////////////

    /// @notice Error thrown when the caller is not the vault for the gauge
    error OnlyVault();

    /// @notice Error thrown when the caller is not the accountant for the strategy
    error OnlyAccountant();

    /// @notice Error thrown when the caller is not the protocol controller
    error OnlyProtocolController();

    /// @notice Error thrown when the caller is not allowed to perform the action
    error OnlyAllowed();

    /// @notice Error thrown when trying to interact with a shutdown gauge
    error GaugeShutdown();

    /// @notice Error thrown when the deposit fails
    error DepositFailed();

    /// @notice Error thrown when the withdraw fails
    error WithdrawFailed();

    /// @notice Error thrown when the transfer fails
    error TransferFailed();

    /// @notice Error thrown when the approve fails
    error ApproveFailed();

    /// @notice Error thrown when rebalance is not needed
    error RebalanceNotNeeded();

    /// @notice Error thrown when the strategy is already shutdown
    error AlreadyShutdown();

    /// @notice Error thrown when the transfer to the accountant fails
    error TransferToAccountantFailed();

    /// @notice Error thrown when deposits are attempted while protocol is paused
    error DepositsPaused();

    /// @notice Event emitted when the strategy is shutdown
    event Shutdown(address indexed gauge);

    /// @notice Event emitted when the strategy is rebalanced
    event Rebalance(address indexed gauge, address[] targets, uint256[] amounts);

    //////////////////////////////////////////////////////
    // --- MODIFIERS
    //////////////////////////////////////////////////////

    /// @notice Restricts functions to the vault associated with the gauge
    modifier onlyVault(address gauge) {
        require(PROTOCOL_CONTROLLER.vault(gauge) == msg.sender, OnlyVault());
        _;
    }

    /// @notice Restricts functions to the protocol controller
    modifier onlyProtocolController() {
        require(msg.sender == address(PROTOCOL_CONTROLLER), OnlyProtocolController());
        _;
    }

    /// @notice Restricts harvest flush operations to the accountant
    modifier onlyAccountant() {
        require(ACCOUNTANT == msg.sender, OnlyAccountant());
        _;
    }

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    /// @notice Initializes the strategy with registry, protocol ID, and locker and gateway
    /// @param _registry The address of the protocol controller
    /// @param _protocolId The identifier for the protocol this strategy interacts with
    /// @param _locker The address of the locker contract
    /// @param _gateway The address of the gateway contract
    constructor(address _registry, bytes4 _protocolId, address _locker, address _gateway)
        ProtocolContext(_protocolId, _registry, _locker, _gateway)
    {}

    //////////////////////////////////////////////////////
    // --- EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Deposits LP tokens into gauge/sidecars according to allocator's distribution
    /// @dev Called by vault after transferring LP tokens to targets
    /// @param allocation Contains targets and amounts for deposit
    /// @param policy Whether to harvest rewards during deposit
    /// @return pendingRewards Rewards claimed if HARVEST policy
    /// @custom:throws GaugeShutdown Prevents deposits to shutdown gauges
    /// @custom:throws DepositsPaused Prevents deposits when protocol is paused
    function deposit(IAllocator.Allocation calldata allocation, HarvestPolicy policy)
        external
        override
        onlyVault(allocation.gauge)
        returns (PendingRewards memory pendingRewards)
    {
        require(!PROTOCOL_CONTROLLER.isShutdown(allocation.gauge), GaugeShutdown());
        require(!PROTOCOL_CONTROLLER.isPaused(PROTOCOL_ID), DepositsPaused());

        // Execute deposits on each target (locker or sidecar)
        for (uint256 i; i < allocation.targets.length; i++) {
            if (allocation.amounts[i] > 0) {
                if (allocation.targets[i] == LOCKER) {
                    _deposit(allocation.asset, allocation.gauge, allocation.amounts[i]);
                } else {
                    ISidecar(allocation.targets[i]).deposit(allocation.amounts[i]);
                }
            }
        }

        pendingRewards = _harvestOrCheckpoint(allocation.gauge, policy);
    }

    /// @notice Withdraws LP tokens from gauge/sidecars and sends to receiver
    /// @dev Skips withdrawal if gauge is shutdown (requires shutdown() instead)
    /// @param allocation Contains targets and amounts for withdrawal
    /// @param policy Whether to harvest rewards during withdrawal
    /// @param receiver Address to receive the LP tokens
    /// @return pendingRewards Rewards claimed if HARVEST policy
    function withdraw(IAllocator.Allocation calldata allocation, IStrategy.HarvestPolicy policy, address receiver)
        external
        override
        onlyVault(allocation.gauge)
        returns (PendingRewards memory pendingRewards)
    {
        address gauge = allocation.gauge;

        // For shutdown gauges, only sync rewards without withdrawing
        // @dev Prevents loss of user funds by ensuring no withdrawals after shutdown
        if (PROTOCOL_CONTROLLER.isShutdown(gauge)) return _harvestOrCheckpoint(gauge, policy);

        // Execute withdrawals from each target
        for (uint256 i; i < allocation.targets.length; i++) {
            if (allocation.amounts[i] > 0) {
                if (allocation.targets[i] == LOCKER) {
                    _withdraw(allocation.asset, gauge, allocation.amounts[i], receiver);
                } else {
                    ISidecar(allocation.targets[i]).withdraw(allocation.amounts[i], receiver);
                }
            }
        }

        return _harvestOrCheckpoint(gauge, policy);
    }

    /// @notice Claims rewards from gauge and sidecars (accountant batch harvest)
    /// @dev Uses transient storage to defer reward transfers for gas efficiency
    /// @param gauge The gauge to harvest rewards from
    /// @param extraData Protocol-specific data for claiming
    /// @return pendingRewards Total rewards claimed from all sources
    function harvest(address gauge, bytes memory extraData)
        external
        override
        onlyAccountant
        returns (IStrategy.PendingRewards memory pendingRewards)
    {
        return _harvest(gauge, extraData, true);
    }

    /// @notice Transfers accumulated rewards to accountant after batch harvest
    /// @dev Called once after harvesting multiple gauges to save gas
    function flush() public onlyAccountant {
        uint256 flushAmount = _getFlushAmount();
        if (flushAmount == 0) return;

        _transferToAccountant(flushAmount);
        _setFlushAmount(0);
    }

    /// @notice Emergency withdrawal of all funds back to vault
    /// @dev Anyone can call if gauge is shutdown, ensuring user fund recovery
    /// @param gauge The gauge to withdraw all funds from
    /// @custom:throws AlreadyShutdown If already fully withdrawn
    function shutdown(address gauge) public onlyProtocolController {
        address vault = PROTOCOL_CONTROLLER.vault(gauge);
        address asset = IERC4626(vault).asset();
        address[] memory targets = _getAllocationTargets(gauge);

        // Withdraw everything from locker and sidecars to vault
        _withdrawFromAllTargets(asset, gauge, targets, vault);

        emit Shutdown(gauge);
    }

    /// @notice Redistributes funds between targets when allocations change
    /// @dev Withdraws all funds to strategy then re-deposits per new allocation
    /// @param gauge The gauge to rebalance
    /// @custom:throws RebalanceNotNeeded If only one target (nothing to rebalance)
    /// @custom:throws DepositsPaused Prevents rebalancing when protocol is paused
    function rebalance(address gauge) external {
        require(!PROTOCOL_CONTROLLER.isShutdown(gauge), GaugeShutdown());
        require(!PROTOCOL_CONTROLLER.isPaused(PROTOCOL_ID), DepositsPaused());

        address allocator = PROTOCOL_CONTROLLER.allocator(PROTOCOL_ID);
        IERC20 asset = IERC20(PROTOCOL_CONTROLLER.asset(gauge));
        uint256 currentBalance = balanceOf(gauge);
        address[] memory targets = _getAllocationTargets(gauge);

        // Get new allocation from allocator
        IAllocator.Allocation memory allocation =
            IAllocator(allocator).getRebalancedAllocation(address(asset), gauge, currentBalance);

        // Withdraw everything to this contract
        _withdrawFromAllTargets(address(asset), gauge, targets, address(this));

        uint256 allocationLength = allocation.targets.length;
        require(allocationLength > 1, RebalanceNotNeeded());

        // Re-deposit according to new allocation
        for (uint256 i; i < allocationLength; i++) {
            address target = allocation.targets[i];
            uint256 amount = allocation.amounts[i];

            asset.safeTransfer(target, amount);

            if (amount > 0) {
                if (target == LOCKER) {
                    _deposit(address(asset), gauge, amount);
                } else {
                    ISidecar(target).deposit(amount);
                }
            }
        }

        emit Rebalance(gauge, allocation.targets, allocation.amounts);
    }

    /// @notice Total LP tokens managed across all targets for a gauge
    /// @dev Sums balances from locker and all sidecars
    /// @param gauge The gauge to check balance for
    /// @return balance Combined LP token balance
    function balanceOf(address gauge) public view virtual returns (uint256 balance) {
        address[] memory targets = _getAllocationTargets(gauge);

        uint256 length = targets.length;
        for (uint256 i; i < length; i++) {
            address target = targets[i];

            if (target == LOCKER) {
                balance += IBalanceProvider(gauge).balanceOf(target);
            } else {
                balance += ISidecar(target).balanceOf();
            }
        }
    }

    //////////////////////////////////////////////////////
    // --- INTERNAL HELPER FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Gets allocation targets for a gauge
    /// @param gauge The gauge to get targets for
    /// @return targets Array of target addresses
    function _getAllocationTargets(address gauge) internal view returns (address[] memory targets) {
        address allocator = PROTOCOL_CONTROLLER.allocator(PROTOCOL_ID);
        targets = IAllocator(allocator).getAllocationTargets(gauge);
    }

    /// @notice Withdraws assets from all targets
    /// @param asset The asset to withdraw
    /// @param gauge The gauge to withdraw from
    /// @param targets Array of target addresses
    /// @param receiver Address to receive the withdrawn assets
    function _withdrawFromAllTargets(address asset, address gauge, address[] memory targets, address receiver)
        internal
    {
        uint256 length = targets.length;
        for (uint256 i; i < length; i++) {
            address target = targets[i];
            uint256 balance;

            if (target == LOCKER) {
                balance = IBalanceProvider(gauge).balanceOf(LOCKER);
                if (balance > 0) {
                    _withdraw(asset, gauge, balance, receiver);
                }
            } else {
                balance = ISidecar(target).balanceOf();
                if (balance > 0) {
                    ISidecar(target).withdraw(balance, receiver);
                }
            }
        }
    }

    /// @notice Claims rewards from locker and all sidecars
    /// @dev Locker rewards are fee-subject, sidecar rewards may not be
    /// @param gauge The gauge to harvest from
    /// @param extraData Protocol-specific harvest parameters
    /// @param deferRewards If true, accumulate in transient storage for batch transfer (gas optimization)
    /// @return pendingRewards Total and fee-subject reward amounts
    function _harvest(address gauge, bytes memory extraData, bool deferRewards)
        internal
        virtual
        returns (IStrategy.PendingRewards memory pendingRewards)
    {
        address[] memory targets = _getAllocationTargets(gauge);

        uint256 pendingRewardsAmount;
        uint256 length = targets.length;
        for (uint256 i; i < length; i++) {
            address target = targets[i];

            if (target == LOCKER) {
                pendingRewardsAmount = _harvestLocker(gauge, extraData);
                pendingRewards.feeSubjectAmount = pendingRewardsAmount.toUint128();

                if (deferRewards) {
                    // Batch transfers: accumulate in transient storage
                    uint256 currentFlushAmount = _getFlushAmount();
                    _setFlushAmount(currentFlushAmount + pendingRewardsAmount);
                } else {
                    // Direct transfer for HARVEST policy
                    _transferToAccountant(pendingRewardsAmount);
                }
            } else {
                pendingRewardsAmount = ISidecar(target).claim();
            }

            pendingRewards.totalAmount += pendingRewardsAmount.toUint128();
        }

        return pendingRewards;
    }

    /// @notice Harvests or synchronizes rewards
    /// @param gauge The gauge to harvest or synchronize from
    /// @param policy The harvest policy to use
    /// @return pendingRewards The pending rewards after harvesting or synchronization
    function _harvestOrCheckpoint(address gauge, IStrategy.HarvestPolicy policy)
        internal
        returns (PendingRewards memory pendingRewards)
    {
        pendingRewards =
            policy == IStrategy.HarvestPolicy.HARVEST ? _harvest(gauge, "", false) : _checkpointRewards(gauge);
    }

    //////////////////////////////////////////////////////
    // --- INTERNAL VIRTUAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Gets the flush amount from transient storage
    /// @return The flush amount
    function _getFlushAmount() internal view virtual returns (uint256) {
        return FLUSH_AMOUNT_SLOT.asUint256().tload();
    }

    /// @notice Sets the flush amount in transient storage
    /// @param amount The amount to set
    function _setFlushAmount(uint256 amount) internal virtual {
        FLUSH_AMOUNT_SLOT.asUint256().tstore(amount);
    }

    /// @notice Flushes the reward token to the accountant
    /// @dev Transfers the specified amount of reward tokens to the accountant
    /// @param amount The amount of reward tokens to flush
    function _transferToAccountant(uint256 amount) internal {
        if (amount > 0) {
            bytes memory data = abi.encodeWithSelector(IERC20.transfer.selector, ACCOUNTANT, amount);
            require(_executeTransaction(address(REWARD_TOKEN), data), TransferToAccountantFailed());
        }
    }

    /// @notice Synchronizes state of pending rewards.
    /// @dev Must be implemented by derived strategies to handle protocol-specific reward collection
    /// @param gauge The gauge to synchronize
    /// @return Pending rewards collected during synchronization
    function _checkpointRewards(address gauge) internal virtual returns (PendingRewards memory);

    /// @notice Harvests rewards from the locker
    /// @dev Must be implemented by derived strategies to handle protocol-specific reward collection
    /// @param gauge The gauge to harvest rewards from
    /// @param extraData Additional data needed for harvesting (protocol-specific)
    /// @return pendingRewards The pending rewards collected during harvesting
    function _harvestLocker(address gauge, bytes memory extraData) internal virtual returns (uint256 pendingRewards);

    /// @notice Deposits assets into a specific target
    /// @dev Must be implemented by derived strategies to handle protocol-specific deposits
    /// @param asset The asset to deposit
    /// @param gauge The gauge to deposit into
    /// @param amount The amount to deposit
    function _deposit(address asset, address gauge, uint256 amount) internal virtual;

    /// @notice Withdraws assets from a specific target
    /// @dev Must be implemented by derived strategies to handle protocol-specific withdrawals
    /// @param asset The asset to withdraw
    /// @param gauge The gauge to withdraw from
    /// @param amount The amount to withdraw
    /// @param receiver The address to receive the withdrawn assets
    function _withdraw(address asset, address gauge, uint256 amount, address receiver) internal virtual;
}

// src/integrations/curve/L2/CurveStrategyL2.sol

/// @title CurveStrategyL2.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice CurveStrategyL2 is a specialized implementation for interacting with Curve protocol gauges on Layer 2 networks.
///
///         Key differences from mainnet CurveStrategy:
///         - No MINTER immutable - uses gauge.factory() as the minter
///         - Includes extra rewards claiming functionality via claim_rewards()
contract CurveStrategyL2 is Strategy {
    using SafeCast for uint256;

    //////////////////////////////////////////////////////
    // --- CONSTANTS & IMMUTABLES
    //////////////////////////////////////////////////////

    /// @notice The bytes4 ID of the Curve protocol
    /// @dev Used to identify the Curve protocol in the registry
    bytes4 private constant CURVE_PROTOCOL_ID = bytes4(keccak256("CURVE"));

    /// @notice Error thrown when the mint fails.
    error MintFailed();

    /// @notice Error thrown when the checkpoint fails.
    error CheckpointFailed();

    /// @notice Error thrown when the extra rewards claim fails.
    error ClaimExtraRewards();

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    /// @notice Initializes the CurveStrategy contract
    /// @param _registry The address of the protocol controller registry
    /// @param _locker The address of the locker contract
    /// @param _gateway The address of the gateway contract
    constructor(address _registry, address _locker, address _gateway)
        Strategy(_registry, CURVE_PROTOCOL_ID, _locker, _gateway)
    {}

    //////////////////////////////////////////////////////
    // --- INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Syncs and calculates pending rewards from a Curve gauge
    /// @dev Retrieves allocation targets and calculates pending rewards for each target
    /// @param gauge The address of the Curve gauge to sync
    /// @return pendingRewards A struct containing the total and fee subject pending rewards
    function _checkpointRewards(address gauge) internal override returns (PendingRewards memory pendingRewards) {
        /// On L2s, the minter is the factory.
        address minter = ILiquidityGauge(gauge).factory();
        address allocator = PROTOCOL_CONTROLLER.allocator(PROTOCOL_ID);

        address[] memory targets = IAllocator(allocator).getAllocationTargets(gauge);

        /// @dev Checkpoint the locker
        require(
            _executeTransaction(gauge, abi.encodeWithSignature("user_checkpoint(address)", LOCKER)), CheckpointFailed()
        );

        uint256 pendingRewardsAmount;
        for (uint256 i = 0; i < targets.length; i++) {
            address target = targets[i];

            if (target == LOCKER) {
                // Calculate pending rewards for the locker by comparing  total earned by gauge with already minted tokens
                pendingRewardsAmount =
                    ILiquidityGauge(gauge).integrate_fraction(LOCKER) - IMinter(minter).minted(LOCKER, gauge);

                pendingRewards.feeSubjectAmount += pendingRewardsAmount.toUint128();
            } else {
                // For sidecar contracts, use their getPendingRewards() function
                pendingRewardsAmount = ISidecar(target).getPendingRewards();
            }

            pendingRewards.totalAmount += pendingRewardsAmount.toUint128();
        }
    }

    /// @notice Deposits tokens into a Curve gauge
    /// @dev Executes a deposit transaction through the gateway/module manager
    /// @param gauge The address of the Curve gauge to deposit into
    /// @param amount The amount of tokens to deposit
    function _deposit(address, address gauge, uint256 amount) internal override {
        bytes memory data = abi.encodeWithSignature("deposit(uint256)", amount);
        require(_executeTransaction(gauge, data), DepositFailed());
    }

    /// @notice Withdraws tokens from a Curve gauge
    /// @dev Executes a withdraw transaction through the gateway/module manager
    /// @param gauge The address of the Curve gauge to withdraw from
    /// @param amount The amount of tokens to withdraw
    /// @param receiver The address that will receive the withdrawn tokens
    function _withdraw(address asset, address gauge, uint256 amount, address receiver) internal override {
        bytes memory data = abi.encodeWithSignature("withdraw(uint256)", amount);
        require(_executeTransaction(gauge, data), WithdrawFailed());

        // 2. Transfer the LP tokens to receiver
        data = abi.encodeWithSignature("transfer(address,uint256)", receiver, amount);
        require(_executeTransaction(asset, data), TransferFailed());
    }

    /// @notice Harvests rewards from a Curve gauge
    /// @param gauge The address of the Curve gauge to harvest from
    function _harvestLocker(address gauge, bytes memory) internal override returns (uint256 rewardAmount) {
        /// On L2s, the minter is the factory.
        address minter = ILiquidityGauge(gauge).factory();

        /// 1. Snapshot the balance before minting.
        uint256 _before = IERC20(REWARD_TOKEN).balanceOf(address(LOCKER));

        /// @dev Locker is deployed on mainnet.
        /// @dev If the locker is the gateway, we need to mint the rewards via the gateway
        /// as it means the strategy is deployed on sidechain.
        if (LOCKER != GATEWAY) {
            /// 2. Mint the rewards of the gauge to the locker.
            IMinter(minter).mint_for(gauge, address(LOCKER));
        } else {
            /// 2. Mint the rewards of the gauge to the locker via the gateway.
            bytes memory data = abi.encodeWithSignature("mint(address)", gauge);
            require(_executeTransaction(minter, data), MintFailed());
        }

        /// 3. Calculate the reward amount.
        rewardAmount = IERC20(REWARD_TOKEN).balanceOf(address(LOCKER)) - _before;
    }

    /// @notice Override base _harvest to trigger reward distribution after all claims
    /// @dev This ensures both gauge and sidecar rewards are distributed together on L2s
    function _harvest(address gauge, bytes memory extraData, bool deferRewards)
        internal
        override
        returns (IStrategy.PendingRewards memory pendingRewards)
    {
        // Sync reward tokens if new ones were added to the gauge
        _syncRewardTokensIfNeeded(gauge);

        // Call parent harvest which handles both locker and sidecar claims
        pendingRewards = super._harvest(gauge, extraData, deferRewards);

        /// Claim extra rewards from the gauge on Locker side.
        _claimExtraRewards(gauge);

        return pendingRewards;
    }

    /// @notice Claims extra rewards from a Curve gauge
    /// @dev This function is called after the main rewards have been claimed
    function _claimExtraRewards(address gauge) internal {
        /// 1. Get the reward receiver address.
        address rewardReceiver = PROTOCOL_CONTROLLER.rewardReceiver(gauge);

        /// 2. Claim extra rewards from the gauge to the reward receiver.
        bytes memory data =
            abi.encodeWithSignature("claim_rewards(address,address)", address(LOCKER), address(rewardReceiver));
        require(_executeTransaction(gauge, data), ClaimExtraRewards());

        address rewardVault = PROTOCOL_CONTROLLER.vault(gauge);
        address[] memory rewardTokens = IRewardVault(rewardVault).getRewardTokens();

        if (rewardTokens.length == 0) {
            return;
        }

        /// 4. Trigger distribute in the reward receiver.
        IRewardReceiver(rewardReceiver).distributeRewards();
    }

    /// @notice Syncs reward tokens with the factory if needed
    /// @dev Calls the factory to check and add any new reward tokens from the gauge
    function _syncRewardTokensIfNeeded(address gauge) internal {
        address factoryAddress = PROTOCOL_CONTROLLER.factory(PROTOCOL_ID);

        // Only sync if factory is set
        if (factoryAddress != address(0)) {
            IFactory(factoryAddress).syncRewardTokens(gauge);
        }
    }
}