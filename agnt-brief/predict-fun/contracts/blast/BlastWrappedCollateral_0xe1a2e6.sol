// ============================================================
// FILE: contracts/Blast/BlastERC20RebasingYield.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {BlastNativeYield} from "./BlastNativeYield.sol";
import {IERC20Rebasing, YieldMode} from "./interfaces/IERC20Rebasing.sol";
import {IAddressFinder} from "./interfaces/IAddressFinder.sol";

/**
 * @title BlastERC20RebasingYield
 * @notice This contract is a base contract for inheriting functions to claim Blast WETH or USDB yield
 */
contract BlastERC20RebasingYield is BlastNativeYield {
    address public immutable WETH;
    address public immutable USDB;

    /**
     * @param addressFinder Blast address finder
     */
    constructor(address addressFinder) BlastNativeYield(addressFinder) {
        WETH = IAddressFinder(addressFinder).getImplementationAddress("WETH");
        USDB = IAddressFinder(addressFinder).getImplementationAddress("USDB");

        IERC20Rebasing(WETH).configure(YieldMode.CLAIMABLE);
        IERC20Rebasing(USDB).configure(YieldMode.CLAIMABLE);
    }

    /**
     * @notice Claim Blast yield. Guarding of the function is dependent on the inherited contract.
     *         Inheriting does not allow claiming by default.
     *         A public or external function is required in the child contract to access the _claim function.
     * @param wethReceiver The receiver of WETH.
     * @param usdbReceiver The receiver of USDB.
     */
    function _claimERC20RebasingYield(address wethReceiver, address usdbReceiver) internal {
        uint256 claimableWETH = IERC20Rebasing(WETH).getClaimableAmount(address(this));
        if (claimableWETH != 0) {
            IERC20Rebasing(WETH).claim(wethReceiver, claimableWETH);
        }

        uint256 claimableUSDB = IERC20Rebasing(USDB).getClaimableAmount(address(this));
        if (claimableUSDB != 0) {
            IERC20Rebasing(USDB).claim(usdbReceiver, claimableUSDB);
        }
    }
}

// ============================================================
// FILE: contracts/Blast/BlastNativeYield.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IBlast, YieldMode, GasMode} from "./interfaces/IBlast.sol";
import {IAddressFinder} from "./interfaces/IAddressFinder.sol";
import {BlastPoints} from "./BlastPoints.sol";

/**
 * @title BlastNativeYield
 * @notice This contract is a base contract for inheriting functions to claim native yield and for those that wish to receive Blast points
 */
contract BlastNativeYield is BlastPoints {
    /**
     * @param addressFinder Blast address finder
     */
    constructor(address addressFinder) BlastPoints(addressFinder) {
        address blast = IAddressFinder(addressFinder).getImplementationAddress("Blast");
        address governor = IAddressFinder(addressFinder).getImplementationAddress("Governor");
        IBlast(blast).configure(YieldMode.CLAIMABLE, GasMode.CLAIMABLE, governor);
    }
}

// ============================================================
// FILE: contracts/Blast/BlastPoints.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IBlastPoints} from "./interfaces/IBlastPoints.sol";
import {IAddressFinder} from "./interfaces/IAddressFinder.sol";

/**
 * @title BlastPoints
 * @notice This contract is a base for future contracts that wish to be recipients of Blast points to inherit from
 */
contract BlastPoints {
    /**
     * @param addressFinder Blast address finder
     */
    constructor(address addressFinder) {
        address blastPoints = IAddressFinder(addressFinder).getImplementationAddress("BlastPoints");
        address blastPointsOperator = IAddressFinder(addressFinder).getImplementationAddress("BlastPointsOperator");
        IBlastPoints(blastPoints).configurePointsOperator(blastPointsOperator);
    }
}

// ============================================================
// FILE: contracts/Blast/interfaces/IAddressFinder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/**
 * @title Provides addresses of the live contracts implementing certain interfaces.
 * @dev Examples are the Oracle or Store interfaces.
 * @notice This is a straight fork of UMA's Finder contract and we are using it for non-contracts as well.
 */
interface IAddressFinder {
    /**
     * @notice Updates the address of the contract that implements `interfaceName`.
     * @param interfaceName bytes32 encoding of the interface name that is either changed or registered.
     * @param implementationAddress address of the deployed contract that implements the interface.
     */
    function changeImplementationAddress(bytes32 interfaceName, address implementationAddress) external;

    /**
     * @notice Gets the address of the contract that implements the given `interfaceName`.
     * @param interfaceName queried interface.
     * @return implementationAddress address of the deployed contract that implements the interface.
     */
    function getImplementationAddress(bytes32 interfaceName) external view returns (address);
}

// ============================================================
// FILE: contracts/Blast/interfaces/IBlast.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

enum YieldMode {
    AUTOMATIC,
    VOID,
    CLAIMABLE
}

enum GasMode {
    VOID,
    CLAIMABLE
}

interface IBlast {
    // configure
    function configureContract(address contractAddress, YieldMode _yield, GasMode gasMode, address governor) external;

    function configure(YieldMode _yield, GasMode gasMode, address governor) external;

    // base configuration options
    function configureClaimableYield() external;

    function configureClaimableYieldOnBehalf(address contractAddress) external;

    function configureAutomaticYield() external;

    function configureAutomaticYieldOnBehalf(address contractAddress) external;

    function configureVoidYield() external;

    function configureVoidYieldOnBehalf(address contractAddress) external;

    function configureClaimableGas() external;

    function configureClaimableGasOnBehalf(address contractAddress) external;

    function configureVoidGas() external;

    function configureVoidGasOnBehalf(address contractAddress) external;

    function configureGovernor(address _governor) external;

    function configureGovernorOnBehalf(address _newGovernor, address contractAddress) external;

    // claim yield
    function claimYield(address contractAddress, address recipientOfYield, uint256 amount) external returns (uint256);

    function claimAllYield(address contractAddress, address recipientOfYield) external returns (uint256);

    // claim gas
    function claimAllGas(address contractAddress, address recipientOfGas) external returns (uint256);

    function claimGasAtMinClaimRate(
        address contractAddress,
        address recipientOfGas,
        uint256 minClaimRateBips
    ) external returns (uint256);

    function claimMaxGas(address contractAddress, address recipientOfGas) external returns (uint256);

    function claimGas(
        address contractAddress,
        address recipientOfGas,
        uint256 gasToClaim,
        uint256 gasSecondsToConsume
    ) external returns (uint256);

    // read functions
    function readClaimableYield(address contractAddress) external view returns (uint256);

    function readYieldConfiguration(address contractAddress) external view returns (uint8);

    function readGasParams(
        address contractAddress
    ) external view returns (uint256 etherSeconds, uint256 etherBalance, uint256 lastUpdated, GasMode);
}

// ============================================================
// FILE: contracts/Blast/interfaces/IBlastPoints.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IBlastPoints {
    function configurePointsOperator(address operator) external;
}

// ============================================================
// FILE: contracts/Blast/interfaces/IERC20Rebasing.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

enum YieldMode {
    AUTOMATIC,
    VOID,
    CLAIMABLE
}

interface IERC20Rebasing {
    // changes the yield mode of the caller and update the balance
    // to reflect the configuration
    function configure(YieldMode) external returns (uint256);

    // "claimable" yield mode accounts can call this this claim their yield
    // to another address
    function claim(address recipient, uint256 amount) external returns (uint256);

    // read the claimable amount for an account
    function getClaimableAmount(address account) external view returns (uint256);
}

// ============================================================
// FILE: contracts/NegRisk/BlastWrappedCollateral.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {BlastERC20RebasingYield} from "../Blast/BlastERC20RebasingYield.sol";
import {IAddressFinder} from "../Blast/interfaces/IAddressFinder.sol";
import {WrappedCollateral} from "./WrappedCollateral.sol";

contract BlastWrappedCollateral is WrappedCollateral, BlastERC20RebasingYield {
    IAddressFinder public immutable ADDRESS_FINDER;

    error NotYieldOperator();

    constructor(
        address _addressFinder,
        address _underlying,
        uint8 _decimals
    ) WrappedCollateral(_underlying, _decimals) BlastERC20RebasingYield(_addressFinder) {
        ADDRESS_FINDER = IAddressFinder(_addressFinder);
    }

    function claimYield(address wethReceiver, address usdbReceiver) external {
        if (ADDRESS_FINDER.getImplementationAddress("Governor") != msg.sender) {
            revert NotYieldOperator();
        }

        _claimERC20RebasingYield(wethReceiver, usdbReceiver);
    }
}

// ============================================================
// FILE: contracts/NegRisk/WrappedCollateral.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20} from "solmate/src/tokens/ERC20.sol";
import {SafeTransferLib} from "solmate/src/utils/SafeTransferLib.sol";

/// @title IWrappedCollateralEE
/// @notice WrappedCollateral Errors and Events
interface IWrappedCollateralEE {
    error OnlyOwner();
}

string constant NAME = "Wrapped Collateral";
string constant SYMBOL = "WCOL";

/// @title WrappedCollateral
/// @notice Wraps an ERC20 token to be used as collateral in the CTF
contract WrappedCollateral is IWrappedCollateralEE, ERC20 {
    using SafeTransferLib for ERC20;

    /*//////////////////////////////////////////////////////////////
                                 STATE
    //////////////////////////////////////////////////////////////*/

    address public immutable owner;
    address public immutable underlying;

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlyOwner() {
        if (msg.sender != owner) revert OnlyOwner();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @param _underlying The address of the underlying ERC20 token
    /// @param _decimals The number of decimals of the underlying ERC20 token
    constructor(address _underlying, uint8 _decimals) ERC20(NAME, SYMBOL, _decimals) {
        owner = msg.sender;
        underlying = _underlying;
    }

    /*//////////////////////////////////////////////////////////////
                                 UNWRAP
    //////////////////////////////////////////////////////////////*/

    /// @notice Unwraps the specified amount of tokens
    /// @param _to The address to send the unwrapped tokens to
    /// @param _amount The amount of tokens to unwrap
    function unwrap(address _to, uint256 _amount) external {
        _burn(msg.sender, _amount);
        ERC20(underlying).safeTransfer(_to, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                                 ADMIN
    //////////////////////////////////////////////////////////////*/

    /// @notice Wraps the specified amount of tokens
    /// @notice Can only be called by the owner
    /// @param _to     - the address to send the wrapped tokens to
    /// @param _amount - the amount of tokens to wrap
    function wrap(address _to, uint256 _amount) external onlyOwner {
        ERC20(underlying).safeTransferFrom(msg.sender, address(this), _amount);
        _mint(_to, _amount);
    }

    /// @notice Burns the specified amount of tokens
    /// @notice Can only be called by the owner
    /// @param _amount - the amount of tokens to burn
    function burn(uint256 _amount) external onlyOwner {
        _burn(msg.sender, _amount);
    }

    /// @notice Mints the specified amount of tokens
    /// @notice Can only be called by the owner
    /// @param _amount - the amount of tokens to mint
    function mint(uint256 _amount) external onlyOwner {
        _mint(msg.sender, _amount);
    }

    /// @notice Releases the specified amount of the underlying token
    /// @notice Can only be called by the owner
    /// @param _to     - the address to send the released tokens to
    /// @param _amount - the amount of tokens to release
    function release(address _to, uint256 _amount) external onlyOwner {
        ERC20(underlying).safeTransfer(_to, _amount);
    }
}

// ============================================================
// FILE: solmate/src/tokens/ERC20.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256(
                                    "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                                ),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}

// ============================================================
// FILE: solmate/src/utils/SafeTransferLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ERC20} from "../tokens/ERC20.sol";

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @dev Use with caution! Some functions in this library knowingly create dirty bits at the destination of the free memory pointer.
/// @dev Note that none of the functions in this library check that a token has code at all! That responsibility is delegated to the caller.
library SafeTransferLib {
    /*//////////////////////////////////////////////////////////////
                             ETH OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferETH(address to, uint256 amount) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Transfer the ETH and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        require(success, "ETH_TRANSFER_FAILED");
    }

    /*//////////////////////////////////////////////////////////////
                            ERC20 OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferFrom(
        ERC20 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
            mstore(add(freeMemoryPointer, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 100, 0, 32)
            )
        }

        require(success, "TRANSFER_FROM_FAILED");
    }

    function safeTransfer(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)
            )
        }

        require(success, "TRANSFER_FAILED");
    }

    function safeApprove(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)
            )
        }

        require(success, "APPROVE_FAILED");
    }
}
