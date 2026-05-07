// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/solmate/src/auth/Owned.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @notice Simple single owner authorization mixin.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/Owned.sol)
abstract contract Owned {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnershipTransferred(address indexed user, address indexed newOwner);

    /*//////////////////////////////////////////////////////////////
                            OWNERSHIP STORAGE
    //////////////////////////////////////////////////////////////*/

    address public owner;

    modifier onlyOwner() virtual {
        require(msg.sender == owner, "UNAUTHORIZED");

        _;
    }

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        owner = _owner;

        emit OwnershipTransferred(address(0), _owner);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNERSHIP LOGIC
    //////////////////////////////////////////////////////////////*/

    function transferOwnership(address newOwner) public virtual onlyOwner {
        owner = newOwner;

        emit OwnershipTransferred(msg.sender, newOwner);
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC20.sol
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
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC721.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Modern, minimalist, and gas efficient ERC-721 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC721.sol)
abstract contract ERC721 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 indexed id);

    event Approval(address indexed owner, address indexed spender, uint256 indexed id);

    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /*//////////////////////////////////////////////////////////////
                         METADATA STORAGE/LOGIC
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    function tokenURI(uint256 id) public view virtual returns (string memory);

    /*//////////////////////////////////////////////////////////////
                      ERC721 BALANCE/OWNER STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => address) internal _ownerOf;

    mapping(address => uint256) internal _balanceOf;

    function ownerOf(uint256 id) public view virtual returns (address owner) {
        require((owner = _ownerOf[id]) != address(0), "NOT_MINTED");
    }

    function balanceOf(address owner) public view virtual returns (uint256) {
        require(owner != address(0), "ZERO_ADDRESS");

        return _balanceOf[owner];
    }

    /*//////////////////////////////////////////////////////////////
                         ERC721 APPROVAL STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => address) public getApproved;

    mapping(address => mapping(address => bool)) public isApprovedForAll;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    /*//////////////////////////////////////////////////////////////
                              ERC721 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 id) public virtual {
        address owner = _ownerOf[id];

        require(msg.sender == owner || isApprovedForAll[owner][msg.sender], "NOT_AUTHORIZED");

        getApproved[id] = spender;

        emit Approval(owner, spender, id);
    }

    function setApprovalForAll(address operator, bool approved) public virtual {
        isApprovedForAll[msg.sender][operator] = approved;

        emit ApprovalForAll(msg.sender, operator, approved);
    }

    function transferFrom(
        address from,
        address to,
        uint256 id
    ) public virtual {
        require(from == _ownerOf[id], "WRONG_FROM");

        require(to != address(0), "INVALID_RECIPIENT");

        require(
            msg.sender == from || isApprovedForAll[from][msg.sender] || msg.sender == getApproved[id],
            "NOT_AUTHORIZED"
        );

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        unchecked {
            _balanceOf[from]--;

            _balanceOf[to]++;
        }

        _ownerOf[id] = to;

        delete getApproved[id];

        emit Transfer(from, to, id);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id
    ) public virtual {
        transferFrom(from, to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, from, id, "") ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        bytes calldata data
    ) public virtual {
        transferFrom(from, to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, from, id, data) ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    /*//////////////////////////////////////////////////////////////
                              ERC165 LOGIC
    //////////////////////////////////////////////////////////////*/

    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return
            interfaceId == 0x01ffc9a7 || // ERC165 Interface ID for ERC165
            interfaceId == 0x80ac58cd || // ERC165 Interface ID for ERC721
            interfaceId == 0x5b5e139f; // ERC165 Interface ID for ERC721Metadata
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 id) internal virtual {
        require(to != address(0), "INVALID_RECIPIENT");

        require(_ownerOf[id] == address(0), "ALREADY_MINTED");

        // Counter overflow is incredibly unrealistic.
        unchecked {
            _balanceOf[to]++;
        }

        _ownerOf[id] = to;

        emit Transfer(address(0), to, id);
    }

    function _burn(uint256 id) internal virtual {
        address owner = _ownerOf[id];

        require(owner != address(0), "NOT_MINTED");

        // Ownership check above ensures no underflow.
        unchecked {
            _balanceOf[owner]--;
        }

        delete _ownerOf[id];

        delete getApproved[id];

        emit Transfer(owner, address(0), id);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL SAFE MINT LOGIC
    //////////////////////////////////////////////////////////////*/

    function _safeMint(address to, uint256 id) internal virtual {
        _mint(to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, address(0), id, "") ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    function _safeMint(
        address to,
        uint256 id,
        bytes memory data
    ) internal virtual {
        _mint(to, id);

        require(
            to.code.length == 0 ||
                ERC721TokenReceiver(to).onERC721Received(msg.sender, address(0), id, data) ==
                ERC721TokenReceiver.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }
}

/// @notice A generic interface for a contract which properly accepts ERC721 tokens.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC721.sol)
abstract contract ERC721TokenReceiver {
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external virtual returns (bytes4) {
        return ERC721TokenReceiver.onERC721Received.selector;
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Gas optimized reentrancy protection for smart contracts.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/ReentrancyGuard.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/ReentrancyGuard.sol)
abstract contract ReentrancyGuard {
    uint256 private locked = 1;

    modifier nonReentrant() virtual {
        require(locked == 1, "REENTRANCY");

        locked = 2;

        _;

        locked = 1;
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/SafeTransferLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ERC20} from "../tokens/ERC20.sol";

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @dev Use with caution! Some functions in this library knowingly create dirty bits at the destination of the free memory pointer.
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

            // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
            // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
            success := call(gas(), token, 0, freeMemoryPointer, 100, 0, 32)

            // Set success to whether the call reverted, if not we check it either
            // returned exactly 1 (can't just be non-zero data), or had no return data and token has code.
            if and(iszero(and(eq(mload(0), 1), gt(returndatasize(), 31))), success) {
                success := iszero(or(iszero(extcodesize(token)), returndatasize())) 
            }
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

            // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
            // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
            success := call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)

            // Set success to whether the call reverted, if not we check it either
            // returned exactly 1 (can't just be non-zero data), or had no return data and token has code.
            if and(iszero(and(eq(mload(0), 1), gt(returndatasize(), 31))), success) {
                success := iszero(or(iszero(extcodesize(token)), returndatasize())) 
            }
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

            // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
            // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
            success := call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)

            // Set success to whether the call reverted, if not we check it either
            // returned exactly 1 (can't just be non-zero data), or had no return data and token has code.
            if and(iszero(and(eq(mload(0), 1), gt(returndatasize(), 31))), success) {
                success := iszero(or(iszero(extcodesize(token)), returndatasize())) 
            }
        }

        require(success, "APPROVE_FAILED");
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/src/libraries/Strings.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.34;

// forge-lint: disable-next-item(unsafe-typecast)
library Strings {
    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT license
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/libraries/SlipstreamLogic.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

library SlipstreamLogic {
    /**
     *  @notice Deterministically computes the pool address.
     *  @param poolImplementation The contract address of the Slipstream Pool implementation.
     *  @param factory The contract address of the Slipstream factory.
     *  @param token0 Contract address of token0.
     *  @param token1 Contract address of token1.
     *  @param tickSpacing The tick spacing of the pool.
     *  @return pool The contract address of the pool.
     */
    function computeAddress(
        address poolImplementation,
        address factory,
        address token0,
        address token1,
        int24 tickSpacing
    ) internal pure returns (address pool) {
        require(token0 < token1);
        pool = predictDeterministicAddress({
            master: poolImplementation, salt: keccak256(abi.encode(token0, token1, tickSpacing)), deployer: factory
        });
    }

    /**
     * @notice Computes the address of a clone deployed.
     * @param master The contract address of the master.
     * @param salt The salt of the clone.
     * @param deployer The deployer of the clone.
     * @return predicted The predicted address of the clone.
     */
    function predictDeterministicAddress(address master, bytes32 salt, address deployer)
        internal
        pure
        returns (address predicted)
    {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
            mstore(add(ptr, 0x14), shl(0x60, master))
            mstore(add(ptr, 0x28), 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000)
            mstore(add(ptr, 0x38), shl(0x60, deployer))
            mstore(add(ptr, 0x4c), salt)
            mstore(add(ptr, 0x6c), keccak256(ptr, 0x37))
            predicted := keccak256(add(ptr, 0x37), 0x55)
        }
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/src/aero-wrappers/interfaces/ICLGauge.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface ICLGauge {
    function deposit(uint256 tokenId) external;

    function earned(address account, uint256 tokenId) external view returns (uint256);

    function getReward(uint256 tokenId) external;

    function rewardToken() external view returns (address);

    function withdraw(uint256 tokenId) external;
}

// ============================================================
// FILE: lib/arcadia-periphery/src/aero-wrappers/interfaces/ICLPool.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface ICLPool {
    function gauge() external view returns (address);
}

// ============================================================
// FILE: lib/arcadia-periphery/src/aero-wrappers/interfaces/ICLPositionManager.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface ICLPositionManager {
    function approve(address spender, uint256 tokenId) external;

    function positions(uint256 tokenId)
        external
        view
        returns (
            uint96 nonce,
            address operator,
            address token0,
            address token1,
            int24 tickSpacing,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    function safeTransferFrom(address from, address to, uint256 tokenId) external;
}

// ============================================================
// FILE: lib/arcadia-periphery/src/aero-wrappers/WrappedStakedSlipstream.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { ERC20 } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC20.sol";
import { ERC721 } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC721.sol";
import { ICLGauge } from "./interfaces/ICLGauge.sol";
import { ICLPool } from "./interfaces/ICLPool.sol";
import { ICLPositionManager } from "./interfaces/ICLPositionManager.sol";
import { Owned } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/auth/Owned.sol";
import { SlipstreamLogic } from "../../lib/asset-managers/src/cl-managers/libraries/SlipstreamLogic.sol";
import { ReentrancyGuard } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/ReentrancyGuard.sol";
import { SafeTransferLib } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/SafeTransferLib.sol";
import { Strings } from "../../lib/asset-managers/lib/accounts-v2/src/libraries/Strings.sol";

/**
 * @title Wrapper for Staked Slipstream Liquidity Positions
 * @author Pragma Labs
 */
contract WrappedStakedSlipstream is ERC721, Owned, ReentrancyGuard {
    using SafeTransferLib for ERC20;
    using Strings for uint256;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The Slipstream Pool Implementation contract.
    address internal immutable POOL_IMPLEMENTATION;

    // The contract address of the Reward Token.
    ERC20 public immutable REWARD_TOKEN;

    // The contract address of the Slipstream Factory.
    address public immutable CL_FACTORY;

    // The contract address of the NonfungiblePositionManager.
    ICLPositionManager public immutable POSITION_MANAGER;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // The baseURI of the ERC721 tokens.
    // forge-lint: disable-next-line(mixed-case-variable)
    string public baseURI;

    // Map a position id to the contract address of the corresponding gauge.
    mapping(uint256 id => address gauge) public idToGauge;

    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event RewardPaid(uint256 indexed positionId, address indexed reward, uint128 amount);

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error NotOwner();
    error RewardTokenNotValid();

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     * @param poolImplementation The Slipstream Pool Implementation contract.
     * @param rewardToken The contract address of the Reward Token.
     * @param clFactory The contract address of the Slipstream Factory.
     * @param positionManager The contract address of the NonfungiblePositionManager.
     */
    constructor(
        address owner_,
        address poolImplementation,
        address rewardToken,
        address clFactory,
        address positionManager
    ) ERC721("Wrapped Staked Slipstream Positions", "wSSLIPP") Owned(owner_) {
        POOL_IMPLEMENTATION = poolImplementation;
        REWARD_TOKEN = ERC20(rewardToken);
        CL_FACTORY = clFactory;
        POSITION_MANAGER = ICLPositionManager(positionManager);
    }

    /*///////////////////////////////////////////////////////////////
                              STAKING LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Stakes a Slipstream Liquidity Position in its Gauge and mints a new position.
     * @param positionId The id of the Liquidity Position.
     * @return positionId_ The id of the Minted Position.
     * @dev The Minted Position has the same id as the Liquidity Position.
     * @dev The gauge of the pool must have the valid REWARD_TOKEN of this contract.
     */
    function mint(uint256 positionId) external nonReentrant returns (uint256 positionId_) {
        POSITION_MANAGER.safeTransferFrom(msg.sender, address(this), positionId);

        // Get the Gauge.
        (,, address token0, address token1, int24 tickSpacing,,,,,,,) = POSITION_MANAGER.positions(positionId);
        address pool = SlipstreamLogic.computeAddress(POOL_IMPLEMENTATION, CL_FACTORY, token0, token1, tickSpacing);
        address gauge = ICLPool(pool).gauge();
        idToGauge[positionId] = gauge;

        // Check that the reward token is valid.
        if (ICLGauge(gauge).rewardToken() != address(REWARD_TOKEN)) revert RewardTokenNotValid();

        // Stake the Liquidity Position.
        POSITION_MANAGER.approve(gauge, positionId);
        ICLGauge(gauge).deposit(positionId);

        // If the Liquidity Position already collected fees,
        // these were claimed during the deposit and send to this contract.
        uint256 balance0 = ERC20(token0).balanceOf(address(this));
        uint256 balance1 = ERC20(token1).balanceOf(address(this));
        if (balance0 > 0) ERC20(token0).safeTransfer(msg.sender, balance0);
        if (balance1 > 0) ERC20(token1).safeTransfer(msg.sender, balance1);

        // Mint the new position, with same id as the underlying position.
        positionId_ = positionId;
        _safeMint(msg.sender, positionId);
    }

    /**
     * @notice Unstakes a staked Slipstream Liquidity Position and claims rewards.
     * @param positionId The id of the position.
     * @return rewards The amount of reward tokens claimed.
     */
    function burn(uint256 positionId) external nonReentrant returns (uint256 rewards) {
        if (_ownerOf[positionId] != msg.sender) revert NotOwner();

        // Unstake the Liquidity Position.
        ICLGauge(idToGauge[positionId]).withdraw(positionId);
        rewards = REWARD_TOKEN.balanceOf(address(this));

        // Burn the position.
        delete idToGauge[positionId];
        _burn(positionId);

        // Pay out the rewards to the position owner.
        if (rewards > 0) {
            // Transfer reward
            REWARD_TOKEN.safeTransfer(msg.sender, rewards);
            // forge-lint: disable-next-line(unsafe-typecast)
            emit RewardPaid(positionId, address(REWARD_TOKEN), uint128(rewards));
        }

        // Transfer the asset back to the position owner.
        POSITION_MANAGER.safeTransferFrom(address(this), msg.sender, positionId);
    }

    /**
     * @notice Claims and transfers the staking rewards of the position.
     * @param positionId The id of the position.
     * @return rewards The amount of reward tokens claimed.
     */
    function claimReward(uint256 positionId) external nonReentrant returns (uint256 rewards) {
        if (_ownerOf[positionId] != msg.sender) revert NotOwner();

        // Claim the rewards from the external staking contract.
        ICLGauge(idToGauge[positionId]).getReward(positionId);
        rewards = REWARD_TOKEN.balanceOf(address(this));

        // Pay out the rewards to the position owner.
        if (rewards > 0) {
            // Transfer reward
            REWARD_TOKEN.safeTransfer(msg.sender, rewards);
            // forge-lint: disable-next-line(unsafe-typecast)
            emit RewardPaid(positionId, address(REWARD_TOKEN), uint128(rewards));
        }
    }

    /**
     * @notice Returns the amount of reward tokens claimable by a position.
     * @param positionId The id of the position to check the rewards for.
     * @return rewards The current amount of reward tokens claimable by the owner of the position.
     */
    function rewardOf(uint256 positionId) public view returns (uint256 rewards) {
        rewards = ICLGauge(idToGauge[positionId]).earned(address(this), positionId);
    }

    /*///////////////////////////////////////////////////////////////
                        ERC-721 LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Function that stores a new base URI.
     * @param newBaseURI The new base URI to store.
     */
    // forge-lint: disable-next-item(mixed-case-function,mixed-case-variable)
    function setBaseURI(string calldata newBaseURI) external onlyOwner {
        baseURI = newBaseURI;
    }

    /**
     * @notice Function that returns the token URI as defined in the ERC721 standard.
     * @param tokenId The id of the Account.
     * @return uri The token URI.
     */
    // forge-lint: disable-next-item(mixed-case-function)
    function tokenURI(uint256 tokenId) public view override returns (string memory uri) {
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    /**
     * @notice Returns the onERC721Received selector.
     */
    // forge-lint: disable-next-item(mixed-case-function)
    function onERC721Received(address, address, uint256, bytes calldata) public pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
