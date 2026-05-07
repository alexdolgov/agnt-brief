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
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/FixedPointMathLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Arithmetic library with operations for fixed-point numbers.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/FixedPointMathLib.sol)
/// @author Inspired by USM (https://github.com/usmfum/USM/blob/master/contracts/WadMath.sol)
library FixedPointMathLib {
    /*//////////////////////////////////////////////////////////////
                    SIMPLIFIED FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    uint256 internal constant MAX_UINT256 = 2**256 - 1;

    uint256 internal constant WAD = 1e18; // The scalar of ETH and most ERC20s.

    function mulWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, y, WAD); // Equivalent to (x * y) / WAD rounded down.
    }

    function mulWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, y, WAD); // Equivalent to (x * y) / WAD rounded up.
    }

    function divWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, WAD, y); // Equivalent to (x * WAD) / y rounded down.
    }

    function divWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, WAD, y); // Equivalent to (x * WAD) / y rounded up.
    }

    /*//////////////////////////////////////////////////////////////
                    LOW LEVEL FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function mulDivDown(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to require(denominator != 0 && (y == 0 || x <= type(uint256).max / y))
            if iszero(mul(denominator, iszero(mul(y, gt(x, div(MAX_UINT256, y)))))) {
                revert(0, 0)
            }

            // Divide x * y by the denominator.
            z := div(mul(x, y), denominator)
        }
    }

    function mulDivUp(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to require(denominator != 0 && (y == 0 || x <= type(uint256).max / y))
            if iszero(mul(denominator, iszero(mul(y, gt(x, div(MAX_UINT256, y)))))) {
                revert(0, 0)
            }

            // If x * y modulo the denominator is strictly greater than 0,
            // 1 is added to round up the division of x * y by the denominator.
            z := add(gt(mod(mul(x, y), denominator), 0), div(mul(x, y), denominator))
        }
    }

    function rpow(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    // 0 ** 0 = 1
                    z := scalar
                }
                default {
                    // 0 ** n = 0
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    // If n is even, store scalar in z for now.
                    z := scalar
                }
                default {
                    // If n is odd, store x in z for now.
                    z := x
                }

                // Shifting right by 1 is like dividing by 2.
                let half := shr(1, scalar)

                for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {
                    // Revert immediately if x ** 2 would overflow.
                    // Equivalent to iszero(eq(div(xx, x), x)) here.
                    if shr(128, x) {
                        revert(0, 0)
                    }

                    // Store x squared.
                    let xx := mul(x, x)

                    // Round to the nearest number.
                    let xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)

                    // If n is even:
                    if mod(n, 2) {
                        // Compute z * x.
                        let zx := mul(z, x)

                        // If z * x overflowed:
                        if iszero(eq(div(zx, x), z)) {
                            // Revert if x is non-zero.
                            if iszero(iszero(x)) {
                                revert(0, 0)
                            }
                        }

                        // Round to the nearest number.
                        let zxRound := add(zx, half)

                        // Revert if zx + half overflowed.
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }

                        // Return properly scaled zxRound.
                        z := div(zxRound, scalar)
                    }
                }
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                        GENERAL NUMBER UTILITIES
    //////////////////////////////////////////////////////////////*/

    function sqrt(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            let y := x // We start y at x, which will help us make our initial estimate.

            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // We check y >= 2^(k + 8) but shift right by k bits
            // each branch to ensure that if x >= 256, then y >= 256.
            if iszero(lt(y, 0x10000000000000000000000000000000000)) {
                y := shr(128, y)
                z := shl(64, z)
            }
            if iszero(lt(y, 0x1000000000000000000)) {
                y := shr(64, y)
                z := shl(32, z)
            }
            if iszero(lt(y, 0x10000000000)) {
                y := shr(32, y)
                z := shl(16, z)
            }
            if iszero(lt(y, 0x1000000)) {
                y := shr(16, y)
                z := shl(8, z)
            }

            // Goal was to get z*z*y within a small factor of x. More iterations could
            // get y in a tighter range. Currently, we will have y in [256, 256*2^16).
            // We ensured y >= 256 so that the relative difference between y and y+1 is small.
            // That's not possible if x < 256 but we can just verify those cases exhaustively.

            // Now, z*z*y <= x < z*z*(y+1), and y <= 2^(16+8), and either y >= 256, or x < 256.
            // Correctness can be checked exhaustively for x < 256, so we assume y >= 256.
            // Then z*sqrt(y) is within sqrt(257)/sqrt(256) of sqrt(x), or about 20bps.

            // For s in the range [1/256, 256], the estimate f(s) = (181/1024) * (s+1) is in the range
            // (1/2.84 * sqrt(s), 2.84 * sqrt(s)), with largest error when s = 1 and when s = 256 or 1/256.

            // Since y is in [256, 256*2^16), let a = y/65536, so that a is in [1/256, 256). Then we can estimate
            // sqrt(y) using sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2^18.

            // There is no overflow risk here since y < 2^136 after the first branch above.
            z := shr(18, mul(z, add(y, 65536))) // A mul() is saved from starting z at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If x+1 is a perfect square, the Babylonian method cycles between
            // floor(sqrt(x)) and ceil(sqrt(x)). This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            // Since the ceil is rare, we save gas on the assignment and repeat division in the rare case.
            // If you don't care whether the floor or ceil square root is returned, you can remove this statement.
            z := sub(z, lt(div(x, z), z))
        }
    }

    function unsafeMod(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Mod x by y. Note this will return
            // 0 instead of reverting if y is zero.
            z := mod(x, y)
        }
    }

    function unsafeDiv(uint256 x, uint256 y) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            // Divide x by y. Note this will return
            // 0 instead of reverting if y is zero.
            r := div(x, y)
        }
    }

    function unsafeDivUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Add 1 to x * y if x % y > 0. Note this will
            // return 0 instead of reverting if y is zero.
            z := add(gt(mod(x, y), 0), div(x, y))
        }
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
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/BitMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title BitMath
/// @dev This library provides functionality for computing bit properties of an unsigned integer
/// @author Solady (https://github.com/Vectorized/solady/blob/8200a70e8dc2a77ecb074fc2e99a2a0d36547522/src/utils/LibBit.sol)
library BitMath {
    /// @notice Returns the index of the most significant bit of the number,
    ///     where the least significant bit is at index 0 and the most significant bit is at index 255
    /// @param x the value for which to compute the most significant bit, must be greater than 0
    /// @return r the index of the most significant bit
    function mostSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        assembly ("memory-safe") {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            r := or(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0x0706060506020500060203020504000106050205030304010505030400000000))
        }
    }

    /// @notice Returns the index of the least significant bit of the number,
    ///     where the least significant bit is at index 0 and the most significant bit is at index 255
    /// @param x the value for which to compute the least significant bit, must be greater than 0
    /// @return r the index of the least significant bit
    function leastSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        assembly ("memory-safe") {
            // Isolate the least significant bit.
            x := and(x, sub(0, x))
            // For the upper 3 bits of the result, use a De Bruijn-like lookup.
            // Credit to adhusson: https://blog.adhusson.com/cheap-find-first-set-evm/
            // forgefmt: disable-next-item
            r := shl(5, shr(252, shl(shl(2, shr(250, mul(x,
                0xb6db6db6ddddddddd34d34d349249249210842108c6318c639ce739cffffffff))),
                0x8040405543005266443200005020610674053026020000107506200176117077)))
            // For the lower 5 bits of the result, use a De Bruijn lookup.
            // forgefmt: disable-next-item
            r := or(r, byte(and(div(0xd76453e0, shr(r, x)), 0x1f),
                0x001f0d1e100c1d070f090b19131c1706010e11080a1a141802121b1503160405))
        }
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
    /// @dev ERC-7751 error for wrapping bubbled up reverts
    error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

    /// @dev Reverts with the selector of a custom error in the scratch space
    function revertWith(bytes4 selector) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            revert(0, 0x04)
        }
    }

    /// @dev Reverts with a custom error with an address argument in the scratch space
    function revertWith(bytes4 selector, address addr) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with an int24 argument in the scratch space
    function revertWith(bytes4 selector, int24 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, signextend(2, value))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with a uint160 argument in the scratch space
    function revertWith(bytes4 selector, uint160 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with two int24 arguments
    function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), signextend(2, value1))
            mstore(add(fmp, 0x24), signextend(2, value2))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two uint160 arguments
    function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two address arguments
    function revertWith(bytes4 selector, address value1, address value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
    /// @dev this method can be vulnerable to revert data bombs
    function bubbleUpAndRevertWith(
        address revertingContract,
        bytes4 revertingFunctionSelector,
        bytes4 additionalContext
    ) internal pure {
        bytes4 wrappedErrorSelector = WrappedError.selector;
        assembly ("memory-safe") {
            // Ensure the size of the revert data is a multiple of 32 bytes
            let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

            let fmp := mload(0x40)

            // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
            mstore(fmp, wrappedErrorSelector)
            mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(
                add(fmp, 0x24),
                and(revertingFunctionSelector, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            // offset revert reason
            mstore(add(fmp, 0x44), 0x80)
            // offset additional context
            mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
            // size revert reason
            mstore(add(fmp, 0x84), returndatasize())
            // revert reason
            returndatacopy(add(fmp, 0xa4), 0, returndatasize())
            // size additional context
            mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
            // additional context
            mstore(
                add(fmp, add(0xc4, encodedDataSize)),
                and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            revert(fmp, add(0xe4, encodedDataSize))
        }
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/FixedPoint96.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title FixedPoint96
/// @notice A library for handling binary fixed point numbers, see https://en.wikipedia.org/wiki/Q_(number_format)
/// @dev Used in SqrtPriceMath.sol
library FixedPoint96 {
    uint8 internal constant RESOLUTION = 96;
    uint256 internal constant Q96 = 0x1000000000000000000000000;
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/FullMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
    /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
    function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = a * b
            // Compute the product mod 2**256 and mod 2**256 - 1
            // then use the Chinese Remainder Theorem to reconstruct
            // the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2**256 + prod0
            uint256 prod0 = a * b; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly ("memory-safe") {
                let mm := mulmod(a, b, not(0))
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Make sure the result is less than 2**256.
            // Also prevents denominator == 0
            require(denominator > prod1);

            // Handle non-overflow cases, 256 by 256 division
            if (prod1 == 0) {
                assembly ("memory-safe") {
                    result := div(prod0, denominator)
                }
                return result;
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0]
            // Compute remainder using mulmod
            uint256 remainder;
            assembly ("memory-safe") {
                remainder := mulmod(a, b, denominator)
            }
            // Subtract 256 bit number from 512 bit number
            assembly ("memory-safe") {
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator
            // Compute largest power of two divisor of denominator.
            // Always >= 1.
            uint256 twos = (0 - denominator) & denominator;
            // Divide denominator by power of two
            assembly ("memory-safe") {
                denominator := div(denominator, twos)
            }

            // Divide [prod1 prod0] by the factors of two
            assembly ("memory-safe") {
                prod0 := div(prod0, twos)
            }
            // Shift in bits from prod1 into prod0. For this we need
            // to flip `twos` such that it is 2**256 / twos.
            // If twos is zero, then it becomes one
            assembly ("memory-safe") {
                twos := add(div(sub(0, twos), twos), 1)
            }
            prod0 |= prod1 * twos;

            // Invert denominator mod 2**256
            // Now that denominator is an odd number, it has an inverse
            // modulo 2**256 such that denominator * inv = 1 mod 2**256.
            // Compute the inverse by starting with a seed that is correct
            // correct for four bits. That is, denominator * inv = 1 mod 2**4
            uint256 inv = (3 * denominator) ^ 2;
            // Now use Newton-Raphson iteration to improve the precision.
            // Thanks to Hensel's lifting lemma, this also works in modular
            // arithmetic, doubling the correct bits in each step.
            inv *= 2 - denominator * inv; // inverse mod 2**8
            inv *= 2 - denominator * inv; // inverse mod 2**16
            inv *= 2 - denominator * inv; // inverse mod 2**32
            inv *= 2 - denominator * inv; // inverse mod 2**64
            inv *= 2 - denominator * inv; // inverse mod 2**128
            inv *= 2 - denominator * inv; // inverse mod 2**256

            // Because the division is now exact we can divide by multiplying
            // with the modular inverse of denominator. This will give us the
            // correct result modulo 2**256. Since the preconditions guarantee
            // that the outcome is less than 2**256, this is the final result.
            // We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inv;
            return result;
        }
    }

    /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    function mulDivRoundingUp(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            result = mulDiv(a, b, denominator);
            if (mulmod(a, b, denominator) != 0) {
                require(++result > 0);
            }
        }
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/TickMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BitMath} from "./BitMath.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @title Math library for computing sqrt prices from ticks and vice versa
/// @notice Computes sqrt price for ticks of size 1.0001, i.e. sqrt(1.0001^tick) as fixed point Q64.96 numbers. Supports
/// prices between 2**-128 and 2**128
library TickMath {
    using CustomRevert for bytes4;

    /// @notice Thrown when the tick passed to #getSqrtPriceAtTick is not between MIN_TICK and MAX_TICK
    error InvalidTick(int24 tick);
    /// @notice Thrown when the price passed to #getTickAtSqrtPrice does not correspond to a price between MIN_TICK and MAX_TICK
    error InvalidSqrtPrice(uint160 sqrtPriceX96);

    /// @dev The minimum tick that may be passed to #getSqrtPriceAtTick computed from log base 1.0001 of 2**-128
    /// @dev If ever MIN_TICK and MAX_TICK are not centered around 0, the absTick logic in getSqrtPriceAtTick cannot be used
    int24 internal constant MIN_TICK = -887272;
    /// @dev The maximum tick that may be passed to #getSqrtPriceAtTick computed from log base 1.0001 of 2**128
    /// @dev If ever MIN_TICK and MAX_TICK are not centered around 0, the absTick logic in getSqrtPriceAtTick cannot be used
    int24 internal constant MAX_TICK = 887272;

    /// @dev The minimum tick spacing value drawn from the range of type int16 that is greater than 0, i.e. min from the range [1, 32767]
    int24 internal constant MIN_TICK_SPACING = 1;
    /// @dev The maximum tick spacing value drawn from the range of type int16, i.e. max from the range [1, 32767]
    int24 internal constant MAX_TICK_SPACING = type(int16).max;

    /// @dev The minimum value that can be returned from #getSqrtPriceAtTick. Equivalent to getSqrtPriceAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_PRICE = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtPriceAtTick. Equivalent to getSqrtPriceAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_PRICE = 1461446703485210103287273052203988822378723970342;
    /// @dev A threshold used for optimized bounds check, equals `MAX_SQRT_PRICE - MIN_SQRT_PRICE - 1`
    uint160 internal constant MAX_SQRT_PRICE_MINUS_MIN_SQRT_PRICE_MINUS_ONE =
        1461446703485210103287273052203988822378723970342 - 4295128739 - 1;

    /// @notice Given a tickSpacing, compute the maximum usable tick
    function maxUsableTick(int24 tickSpacing) internal pure returns (int24) {
        unchecked {
            return (MAX_TICK / tickSpacing) * tickSpacing;
        }
    }

    /// @notice Given a tickSpacing, compute the minimum usable tick
    function minUsableTick(int24 tickSpacing) internal pure returns (int24) {
        unchecked {
            return (MIN_TICK / tickSpacing) * tickSpacing;
        }
    }

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the above formula
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the price of the two assets (currency1/currency0)
    /// at the given tick
    function getSqrtPriceAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        unchecked {
            uint256 absTick;
            assembly ("memory-safe") {
                tick := signextend(2, tick)
                // mask = 0 if tick >= 0 else -1 (all 1s)
                let mask := sar(255, tick)
                // if tick >= 0, |tick| = tick = 0 ^ tick
                // if tick < 0, |tick| = ~~|tick| = ~(-|tick| - 1) = ~(tick - 1) = (-1) ^ (tick - 1)
                // either way, |tick| = mask ^ (tick + mask)
                absTick := xor(mask, add(mask, tick))
            }

            if (absTick > uint256(int256(MAX_TICK))) InvalidTick.selector.revertWith(tick);

            // The tick is decomposed into bits, and for each bit with index i that is set, the product of 1/sqrt(1.0001^(2^i))
            // is calculated (using Q128.128). The constants used for this calculation are rounded to the nearest integer

            // Equivalent to:
            //     price = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000;
            //     or price = int(2**128 / sqrt(1.0001)) if (absTick & 0x1) else 1 << 128
            uint256 price;
            assembly ("memory-safe") {
                price := xor(shl(128, 1), mul(xor(shl(128, 1), 0xfffcb933bd6fad37aa2d162d1a594001), and(absTick, 0x1)))
            }
            if (absTick & 0x2 != 0) price = (price * 0xfff97272373d413259a46990580e213a) >> 128;
            if (absTick & 0x4 != 0) price = (price * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
            if (absTick & 0x8 != 0) price = (price * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
            if (absTick & 0x10 != 0) price = (price * 0xffcb9843d60f6159c9db58835c926644) >> 128;
            if (absTick & 0x20 != 0) price = (price * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
            if (absTick & 0x40 != 0) price = (price * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
            if (absTick & 0x80 != 0) price = (price * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
            if (absTick & 0x100 != 0) price = (price * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
            if (absTick & 0x200 != 0) price = (price * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
            if (absTick & 0x400 != 0) price = (price * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
            if (absTick & 0x800 != 0) price = (price * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
            if (absTick & 0x1000 != 0) price = (price * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
            if (absTick & 0x2000 != 0) price = (price * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
            if (absTick & 0x4000 != 0) price = (price * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
            if (absTick & 0x8000 != 0) price = (price * 0x31be135f97d08fd981231505542fcfa6) >> 128;
            if (absTick & 0x10000 != 0) price = (price * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
            if (absTick & 0x20000 != 0) price = (price * 0x5d6af8dedb81196699c329225ee604) >> 128;
            if (absTick & 0x40000 != 0) price = (price * 0x2216e584f5fa1ea926041bedfe98) >> 128;
            if (absTick & 0x80000 != 0) price = (price * 0x48a170391f7dc42444e8fa2) >> 128;

            assembly ("memory-safe") {
                // if (tick > 0) price = type(uint256).max / price;
                if sgt(tick, 0) { price := div(not(0), price) }

                // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
                // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
                // we round up in the division so getTickAtSqrtPrice of the output price is always consistent
                // `sub(shl(32, 1), 1)` is `type(uint32).max`
                // `price + type(uint32).max` will not overflow because `price` fits in 192 bits
                sqrtPriceX96 := shr(32, add(price, sub(shl(32, 1), 1)))
            }
        }
    }

    /// @notice Calculates the greatest tick value such that getSqrtPriceAtTick(tick) <= sqrtPriceX96
    /// @dev Throws in case sqrtPriceX96 < MIN_SQRT_PRICE, as MIN_SQRT_PRICE is the lowest value getSqrtPriceAtTick may
    /// ever return.
    /// @param sqrtPriceX96 The sqrt price for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the getSqrtPriceAtTick(tick) is less than or equal to the input sqrtPriceX96
    function getTickAtSqrtPrice(uint160 sqrtPriceX96) internal pure returns (int24 tick) {
        unchecked {
            // Equivalent: if (sqrtPriceX96 < MIN_SQRT_PRICE || sqrtPriceX96 >= MAX_SQRT_PRICE) revert InvalidSqrtPrice();
            // second inequality must be >= because the price can never reach the price at the max tick
            // if sqrtPriceX96 < MIN_SQRT_PRICE, the `sub` underflows and `gt` is true
            // if sqrtPriceX96 >= MAX_SQRT_PRICE, sqrtPriceX96 - MIN_SQRT_PRICE > MAX_SQRT_PRICE - MIN_SQRT_PRICE - 1
            if ((sqrtPriceX96 - MIN_SQRT_PRICE) > MAX_SQRT_PRICE_MINUS_MIN_SQRT_PRICE_MINUS_ONE) {
                InvalidSqrtPrice.selector.revertWith(sqrtPriceX96);
            }

            uint256 price = uint256(sqrtPriceX96) << 32;

            uint256 r = price;
            uint256 msb = BitMath.mostSignificantBit(r);

            if (msb >= 128) r = price >> (msb - 127);
            else r = price << (127 - msb);

            int256 log_2 = (int256(msb) - 128) << 64;

            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(63, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(62, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(61, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(60, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(59, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(58, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(57, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(56, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(55, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(54, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(53, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(52, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(51, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(50, f))
            }

            int256 log_sqrt10001 = log_2 * 255738958999603826347141; // Q22.128 number

            // Magic number represents the ceiling of the maximum value of the error when approximating log_sqrt10001(x)
            int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128);

            // Magic number represents the minimum value of the error when approximating log_sqrt10001(x), when
            // sqrtPrice is from the range (2^-64, 2^64). This is safe as MIN_SQRT_PRICE is more than 2^-64. If MIN_SQRT_PRICE
            // is changed, this may need to be changed too
            int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128);

            tick = tickLow == tickHi ? tickLow : getSqrtPriceAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow;
        }
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/src/interfaces/IActionBase.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.0;

// Struct with information to pass to and from the actionTarget.
struct ActionData {
    // Array of the contract addresses of the assets.
    address[] assets;
    // Array of the IDs of the assets.
    uint256[] assetIds;
    // Array with the amounts of the assets.
    uint256[] assetAmounts;
    // Array with the types of the assets.
    uint256[] assetTypes;
}

interface IActionBase {
    /**
     * @notice Calls an external target contract with arbitrary calldata.
     * @param actionTargetData A bytes object containing the encoded input for the actionTarget.
     * @return resultData An actionAssetData struct with the final balances of this actionTarget contract.
     */
    function executeAction(bytes calldata actionTargetData) external returns (ActionData memory);
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/lib/accounts-v2/src/interfaces/IPermit2.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface IPermit2 {
    /**
     * @notice The token and amount details for a transfer signed in the permit transfer signature
     */
    struct TokenPermissions {
        // ERC20 token address
        address token;
        // the maximum amount that can be spent
        uint256 amount;
    }

    /**
     * @notice Used to reconstruct the signed permit message for multiple token transfers
     * @dev Do not need to pass in spender address as it is required that it is msg.sender
     * @dev Note that a user still signs over a spender address
     */
    struct PermitBatchTransferFrom {
        // the tokens and corresponding amounts permitted for a transfer
        TokenPermissions[] permitted;
        // a unique value for every token owner's signature to prevent signature replays
        uint256 nonce;
        // deadline on the permit signature
        uint256 deadline;
    }

    /**
     * @notice Specifies the recipient address and amount for batched transfers.
     * @dev Recipients and amounts correspond to the index of the signed token permissions array.
     * @dev Reverts if the requested amount is greater than the permitted signed amount.
     */
    struct SignatureTransferDetails {
        // recipient address
        address to;
        // spender requested amount
        uint256 requestedAmount;
    }

    /**
     * @notice Transfers multiple tokens using a signed permit message
     * @param permit The permit data signed over by the owner
     * @param owner The owner of the tokens to transfer
     * @param transferDetails Specifies the recipient and requested amount for the token transfer
     * @param signature The signature to verify
     */
    function permitTransferFrom(
        PermitBatchTransferFrom memory permit,
        SignatureTransferDetails[] calldata transferDetails,
        address owner,
        bytes calldata signature
    ) external;
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/base/AbstractBase.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { PositionState } from "../state/PositionState.sol";

/**
 * @title Abstract base implementation for managing Liquidity Positions.
 */
abstract contract AbstractBase {
    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event FeePaid(address indexed account, address indexed receiver, address indexed asset, uint256 amount);
    event YieldClaimed(address indexed account, address indexed asset, uint256 amount);

    /* ///////////////////////////////////////////////////////////////
                            POSITION VALIDATION
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns if a position manager matches the position manager(s) of the protocol.
     * @param positionManager The contract address of the position manager to check.
     * @return isPositionManager_ Bool indicating if the position manager matches.
     */
    function isPositionManager(address positionManager) public view virtual returns (bool isPositionManager_);

    /* ///////////////////////////////////////////////////////////////
                              GETTERS
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the underlying assets of the pool.
     * @param positionManager The contract address of the Position Manager.
     * @param id The id of the Liquidity Position.
     * @return token0 The contract address of token0.
     * @return token1 The contract address of token1.
     */
    function _getUnderlyingTokens(address positionManager, uint256 id)
        internal
        view
        virtual
        returns (address token0, address token1);

    /**
     * @notice Returns the position and pool related state.
     * @param positionManager The contract address of the Position Manager.
     * @param id The id of the Liquidity Position.
     * @return position A struct with position and pool related variables.
     */
    function _getPositionState(address positionManager, uint256 id)
        internal
        view
        virtual
        returns (PositionState memory position);

    /**
     * @notice Returns the liquidity of the Pool.
     * @param position A struct with position and pool related variables.
     * @return liquidity The liquidity of the Pool.
     */
    function _getPoolLiquidity(PositionState memory position) internal view virtual returns (uint128 liquidity);

    /**
     * @notice Returns the sqrtPrice of the Pool.
     * @param position A struct with position and pool related variables.
     * @return sqrtPrice The sqrtPrice of the Pool.
     */
    function _getSqrtPrice(PositionState memory position) internal view virtual returns (uint160 sqrtPrice);

    /* ///////////////////////////////////////////////////////////////
                            CLAIM LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Claims fees/rewards from a Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param fees The fees of the underlying tokens to be paid to the initiator.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @dev Must update the balances after the claim.
     */
    function _claim(
        uint256[] memory balances,
        uint256[] memory fees,
        address positionManager,
        PositionState memory position,
        uint256 claimFee
    ) internal virtual;

    /* ///////////////////////////////////////////////////////////////
                          STAKING LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Stakes a Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     */
    function _stake(uint256[] memory balances, address positionManager, PositionState memory position) internal virtual;

    /**
     * @notice Unstakes a Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     */
    function _unstake(uint256[] memory balances, address positionManager, PositionState memory position)
        internal
        virtual;

    /* ///////////////////////////////////////////////////////////////
                             BURN LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Burns the Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @dev Must update the balances after the burn.
     */
    function _burn(uint256[] memory balances, address positionManager, PositionState memory position) internal virtual;

    /* ///////////////////////////////////////////////////////////////
                    DECREASE LIQUIDITY LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Decreases liquidity of the Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param liquidity The amount of liquidity to decrease.
     * @dev Must update the balances and delta liquidity after the decrease.
     */
    function _decreaseLiquidity(
        uint256[] memory balances,
        address positionManager,
        PositionState memory position,
        uint128 liquidity
    ) internal virtual;

    /* ///////////////////////////////////////////////////////////////
                             SWAP LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Swaps one token for another, directly through the pool itself.
     * @param balances The balances of the underlying tokens.
     * @param position A struct with position and pool related variables.
     * @param zeroToOne Bool indicating if token0 has to be swapped to token1 or opposite.
     * @param amountOut The amount of tokenOut that must be swapped to.
     * @dev Must update the balances and sqrtPrice after the swap.
     */
    function _swapViaPool(uint256[] memory balances, PositionState memory position, bool zeroToOne, uint256 amountOut)
        internal
        virtual;

    /* ///////////////////////////////////////////////////////////////
                             MINT LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Mints a new Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param amount0Desired The desired amount of token0 to mint as liquidity.
     * @param amount1Desired The desired amount of token1 to mint as liquidity.
     * @dev Must update the balances and liquidity and id after the mint.
     */
    function _mint(
        uint256[] memory balances,
        address positionManager,
        PositionState memory position,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal virtual;

    /* ///////////////////////////////////////////////////////////////
                    INCREASE LIQUIDITY LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Increases liquidity of the Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param amount0Desired The desired amount of token0 to add as liquidity.
     * @param amount1Desired The desired amount of token1 to add as liquidity.
     * @dev Must update the balances and delta liquidity after the increase.
     */
    function _increaseLiquidity(
        uint256[] memory balances,
        address positionManager,
        PositionState memory position,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal virtual;

    /* ///////////////////////////////////////////////////////////////
                      ERC721 HANDLER FUNCTION
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the onERC721Received selector.
     * @dev Required to receive ERC721 tokens via safeTransferFrom.
     */
    // forge-lint: disable-next-item(mixed-case-function)
    function onERC721Received(address, address, uint256, bytes calldata) public pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/base/Slipstream.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { AbstractBase } from "./AbstractBase.sol";
import { ICLPositionManager } from "../interfaces/ICLPositionManager.sol";
import { CLMath } from "../libraries/CLMath.sol";
import { ERC20, SafeTransferLib } from "../../../lib/accounts-v2/lib/solmate/src/utils/SafeTransferLib.sol";
import { FixedPointMathLib } from "../../../lib/accounts-v2/lib/solmate/src/utils/FixedPointMathLib.sol";
import { ICLPool } from "../interfaces/ICLPool.sol";
import { IStakedSlipstream } from "../interfaces/IStakedSlipstream.sol";
import { PositionState } from "../state/PositionState.sol";
import { SlipstreamLogic } from "../libraries/SlipstreamLogic.sol";
import { SafeApprove } from "../../libraries/SafeApprove.sol";

/**
 * @title Base implementation for managing Slipstream Liquidity Positions.
 */
abstract contract Slipstream is AbstractBase {
    using FixedPointMathLib for uint256;
    using SafeApprove for ERC20;
    using SafeTransferLib for ERC20;
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The contract address of the Slipstream Factory.
    address internal immutable CL_FACTORY;

    // The contract address of the Slipstream Position Manager.
    ICLPositionManager internal immutable POSITION_MANAGER;

    // The contract address of the Slipstream Pool Implementation.
    address internal immutable POOL_IMPLEMENTATION;

    // The contract address of the Reward Token (Aero).
    address internal immutable REWARD_TOKEN;

    // The contract address of the Staked Slipstream Asset Module.
    address internal immutable STAKED_SLIPSTREAM_AM;

    // The contract address of the Staked Slipstream Wrapper.
    address internal immutable STAKED_SLIPSTREAM_WRAPPER;

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error OnlyPool();

    /* //////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param positionManager The contract address of the Slipstream Position Manager.
     * @param cLFactory The contract address of the Slipstream Factory.
     * @param poolImplementation The contract address of the Slipstream Pool Implementation.
     * @param rewardToken The contract address of the Reward Token (Aero).
     * @param stakedSlipstreamAm The contract address of the Staked Slipstream Asset Module.
     * @param stakedSlipstreamWrapper The contract address of the Staked Slipstream Wrapper.
     */
    constructor(
        address positionManager,
        address cLFactory,
        address poolImplementation,
        address rewardToken,
        address stakedSlipstreamAm,
        address stakedSlipstreamWrapper
    ) {
        POSITION_MANAGER = ICLPositionManager(positionManager);
        CL_FACTORY = cLFactory;
        POOL_IMPLEMENTATION = poolImplementation;
        REWARD_TOKEN = rewardToken;
        STAKED_SLIPSTREAM_AM = stakedSlipstreamAm;
        STAKED_SLIPSTREAM_WRAPPER = stakedSlipstreamWrapper;
    }

    /* ///////////////////////////////////////////////////////////////
                            POSITION VALIDATION
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns if a position manager matches the position manager(s) of Slipstream.
     * @param positionManager the contract address of the position manager to check.
     */
    function isPositionManager(address positionManager) public view virtual override returns (bool) {
        return (positionManager == address(STAKED_SLIPSTREAM_AM)
                || positionManager == address(STAKED_SLIPSTREAM_WRAPPER)
                || positionManager == address(POSITION_MANAGER));
    }

    /* ///////////////////////////////////////////////////////////////
                              GETTERS
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the underlying assets of the pool.
     * param positionManager The contract address of the Position Manager.
     * @param id The id of the Liquidity Position.
     * @return token0 The contract address of token0.
     * @return token1 The contract address of token1.
     */
    function _getUnderlyingTokens(address, uint256 id)
        internal
        view
        virtual
        override
        returns (address token0, address token1)
    {
        (,, token0, token1,,,,,,,,) = POSITION_MANAGER.positions(id);
    }

    /**
     * @notice Returns the position and pool related state.
     * @param positionManager The contract address of the Position Manager.
     * @param id The id of the Liquidity Position.
     * @return position A struct with position and pool related variables.
     */
    function _getPositionState(address positionManager, uint256 id)
        internal
        view
        virtual
        override
        returns (PositionState memory position)
    {
        // Get data of the Liquidity Position.
        position.id = id;
        address token0;
        address token1;
        (,, token0, token1, position.tickSpacing, position.tickLower, position.tickUpper, position.liquidity,,,,) =
            POSITION_MANAGER.positions(id);

        // If it is a non staked position, or the position is staked and the reward token is the same as one of the underlying tokens,
        // there are two underlying assets, otherwise there are three.
        if (positionManager == address(POSITION_MANAGER) || token0 == REWARD_TOKEN || token1 == REWARD_TOKEN) {
            // Positions have two underlying tokens.
            position.tokens = new address[](2);
        } else {
            // Positions have three underlying tokens.
            position.tokens = new address[](3);
            position.tokens[2] = REWARD_TOKEN;
        }
        position.tokens[0] = token0;
        position.tokens[1] = token1;

        // Get data of the Liquidity Pool.
        position.pool =
            SlipstreamLogic.computeAddress(POOL_IMPLEMENTATION, CL_FACTORY, token0, token1, position.tickSpacing);
        (position.sqrtPrice, position.tickCurrent,,,,) = ICLPool(position.pool).slot0();
        position.fee = ICLPool(position.pool).fee();
    }

    /**
     * @notice Returns the liquidity of the Pool.
     * @param position A struct with position and pool related variables.
     * @return liquidity The liquidity of the Pool.
     */
    function _getPoolLiquidity(PositionState memory position)
        internal
        view
        virtual
        override
        returns (uint128 liquidity)
    {
        liquidity = ICLPool(position.pool).liquidity();
    }

    /**
     * @notice Returns the sqrtPrice of the Pool.
     * @param position A struct with position and pool related variables.
     * @return sqrtPrice The sqrtPrice of the Pool.
     */
    function _getSqrtPrice(PositionState memory position) internal view virtual override returns (uint160 sqrtPrice) {
        (sqrtPrice,,,,,) = ICLPool(position.pool).slot0();
    }

    /* ///////////////////////////////////////////////////////////////
                            CLAIM LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Claims fees/rewards from a Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param fees The fees of the underlying tokens to be paid to the initiator.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param claimFee The fee charged on the claimed fees of the liquidity position, with 18 decimals precision.
     */
    function _claim(
        uint256[] memory balances,
        uint256[] memory fees,
        address positionManager,
        PositionState memory position,
        uint256 claimFee
    ) internal virtual override {
        if (positionManager != address(POSITION_MANAGER)) {
            // If position is a staked slipstream position, claim the rewards.
            uint256 rewards = IStakedSlipstream(positionManager).claimReward(position.id);

            uint256 fee = rewards.mulDivDown(claimFee, 1e18);
            if (balances.length == 3) {
                (balances[2], fees[2]) = (balances[2] + rewards, fees[2] + fee);
                emit YieldClaimed(msg.sender, position.tokens[2], rewards);
            }
            // If rewardToken is an underlying token of the position, add it to the balances.
            else if (position.tokens[0] == REWARD_TOKEN) {
                (balances[0], fees[0]) = (balances[0] + rewards, fees[0] + fee);
                emit YieldClaimed(msg.sender, position.tokens[0], rewards);
            } else {
                (balances[1], fees[1]) = (balances[1] + rewards, fees[1] + fee);
                emit YieldClaimed(msg.sender, position.tokens[1], rewards);
            }
        } else {
            // We assume that the amount of tokens to collect never exceeds type(uint128).max.
            (uint256 amount0, uint256 amount1) = POSITION_MANAGER.collect(
                ICLPositionManager.CollectParams({
                    tokenId: position.id,
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );
            balances[0] += amount0;
            balances[1] += amount1;

            // Calculate claim fees.
            fees[0] += amount0.mulDivDown(claimFee, 1e18);
            fees[1] += amount1.mulDivDown(claimFee, 1e18);

            emit YieldClaimed(msg.sender, position.tokens[0], amount0);
            emit YieldClaimed(msg.sender, position.tokens[1], amount1);
        }
    }

    /* ///////////////////////////////////////////////////////////////
                          STAKING LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Stakes a Liquidity Position.
     * param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     */
    function _stake(uint256[] memory, address positionManager, PositionState memory position)
        internal
        virtual
        override
    {
        // If position is a staked slipstream position, stake the position.
        if (positionManager != address(POSITION_MANAGER)) {
            POSITION_MANAGER.approve(positionManager, position.id);
            IStakedSlipstream(positionManager).mint(position.id);
        }
    }

    /**
     * @notice Unstakes a Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @dev Does not emit YieldClaimed event, if necessary first call _claim() to emit the event before unstaking.
     */
    function _unstake(uint256[] memory balances, address positionManager, PositionState memory position)
        internal
        virtual
        override
    {
        // If position is a staked slipstream position, unstake the position.
        if (positionManager != address(POSITION_MANAGER)) {
            uint256 rewards = IStakedSlipstream(positionManager).burn(position.id);
            if (rewards > 0) {
                if (balances.length == 3) balances[2] = rewards;
                // If rewardToken is an underlying token of the position, add it to the balances.
                else if (position.tokens[0] == REWARD_TOKEN) balances[0] += rewards;
                else balances[1] += rewards;
            }
        }
    }

    /* ///////////////////////////////////////////////////////////////
                             BURN LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Burns the Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @dev Does not emit YieldClaimed event, if necessary first call _claim() to emit the event before unstaking.
     */
    function _burn(uint256[] memory balances, address, PositionState memory position) internal virtual override {
        // Remove liquidity of the position and claim outstanding fees.
        _decreaseLiquidity(balances, address(0), position, position.liquidity);

        // Burn the position.
        POSITION_MANAGER.burn(position.id);
    }

    /* ///////////////////////////////////////////////////////////////
                    DECREASE LIQUIDITY LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Decreases liquidity of the Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param liquidity The amount of liquidity to decrease.
     * @dev Must update the balances and delta liquidity after the decrease.
     */
    function _decreaseLiquidity(uint256[] memory balances, address, PositionState memory position, uint128 liquidity)
        internal
        virtual
        override
    {
        // Remove liquidity of the position and claim outstanding fees.
        POSITION_MANAGER.decreaseLiquidity(
            ICLPositionManager.DecreaseLiquidityParams({
                tokenId: position.id, liquidity: liquidity, amount0Min: 0, amount1Min: 0, deadline: block.timestamp
            })
        );

        // We assume that the amount of tokens to collect never exceeds type(uint128).max.
        (uint256 amount0, uint256 amount1) = POSITION_MANAGER.collect(
            ICLPositionManager.CollectParams({
                tokenId: position.id,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
        balances[0] += amount0;
        balances[1] += amount1;
    }

    /* ///////////////////////////////////////////////////////////////
                             SWAP LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Swaps one token for another, directly through the pool itself.
     * @param balances The balances of the underlying tokens.
     * @param position A struct with position and pool related variables.
     * @param zeroToOne Bool indicating if token0 has to be swapped to token1 or opposite.
     * @param amountOut The amount of tokenOut that must be swapped to.
     */
    // forge-lint: disable-next-item(unsafe-typecast)
    function _swapViaPool(uint256[] memory balances, PositionState memory position, bool zeroToOne, uint256 amountOut)
        internal
        virtual
        override
    {
        // Do the swap.
        (int256 deltaAmount0, int256 deltaAmount1) = ICLPool(position.pool)
            .swap(
                address(this),
                zeroToOne,
                -int256(amountOut),
                zeroToOne ? CLMath.MIN_SQRT_PRICE_LIMIT : CLMath.MAX_SQRT_PRICE_LIMIT,
                abi.encode(position.tokens[0], position.tokens[1], position.tickSpacing)
            );

        // Update the balances.
        balances[0] = zeroToOne ? balances[0] - uint256(deltaAmount0) : balances[0] + uint256(-deltaAmount0);
        balances[1] = zeroToOne ? balances[1] + uint256(-deltaAmount1) : balances[1] - uint256(deltaAmount1);
    }

    /**
     * @notice Callback after executing a swap via ICLPool.swap.
     * @param amount0Delta The amount of token0 that was sent (negative) or must be received (positive) by the pool by
     * the end of the swap. If positive, the callback must send that amount of token0 to the position.
     * @param amount1Delta The amount of token1 that was sent (negative) or must be received (positive) by the pool by
     * the end of the swap. If positive, the callback must send that amount of token1 to the position.
     * @param data Any data passed by this contract via the ICLPool.swap() call.
     */
    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external virtual {
        // Check that callback came from an actual Slipstream Pool.
        (address token0, address token1, int24 tickSpacing) = abi.decode(data, (address, address, int24));

        if (SlipstreamLogic.computeAddress(POOL_IMPLEMENTATION, CL_FACTORY, token0, token1, tickSpacing) != msg.sender)
        {
            revert OnlyPool();
        }

        // forge-lint: disable-next-item(unsafe-typecast)
        if (amount0Delta > 0) {
            ERC20(token0).safeTransfer(msg.sender, uint256(amount0Delta));
        } else if (amount1Delta > 0) {
            ERC20(token1).safeTransfer(msg.sender, uint256(amount1Delta));
        }
    }

    /* ///////////////////////////////////////////////////////////////
                             MINT LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Mints a new Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param amount0Desired The desired amount of token0 to mint as liquidity.
     * @param amount1Desired The desired amount of token1 to mint as liquidity.
     */
    function _mint(
        uint256[] memory balances,
        address,
        PositionState memory position,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal virtual override {
        ERC20(position.tokens[0]).safeApproveWithRetry(address(POSITION_MANAGER), amount0Desired);
        ERC20(position.tokens[1]).safeApproveWithRetry(address(POSITION_MANAGER), amount1Desired);

        uint256 amount0;
        uint256 amount1;
        (position.id, position.liquidity, amount0, amount1) = POSITION_MANAGER.mint(
            ICLPositionManager.MintParams({
                token0: position.tokens[0],
                token1: position.tokens[1],
                tickSpacing: position.tickSpacing,
                tickLower: position.tickLower,
                tickUpper: position.tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp,
                sqrtPrice: 0
            })
        );

        balances[0] -= amount0;
        balances[1] -= amount1;
    }

    /* ///////////////////////////////////////////////////////////////
                    INCREASE LIQUIDITY LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Increases liquidity of the Liquidity Position.
     * @param balances The balances of the underlying tokens.
     * param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param amount0Desired The desired amount of token0 to add as liquidity.
     * @param amount1Desired The desired amount of token1 to add as liquidity.
     */
    function _increaseLiquidity(
        uint256[] memory balances,
        address,
        PositionState memory position,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal virtual override {
        ERC20(position.tokens[0]).safeApproveWithRetry(address(POSITION_MANAGER), amount0Desired);
        ERC20(position.tokens[1]).safeApproveWithRetry(address(POSITION_MANAGER), amount1Desired);

        uint256 amount0;
        uint256 amount1;
        (position.liquidity, amount0, amount1) = POSITION_MANAGER.increaseLiquidity(
            ICLPositionManager.IncreaseLiquidityParams({
                tokenId: position.id,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: 0,
                amount1Min: 0,
                deadline: block.timestamp
            })
        );

        balances[0] -= amount0;
        balances[1] -= amount1;
    }

    /* ///////////////////////////////////////////////////////////////
                      NATIVE ETH HANDLER
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Receives native ether.
     */
    receive() external payable { }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/interfaces/ICLPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface ICLPool {
    function fee() external view returns (uint24);

    function liquidity() external view returns (uint128 liquidity_);

    function slot0()
        external
        view
        returns (
            uint160 sqrtPrice,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            bool unlocked
        );

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimit,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/interfaces/ICLPositionManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface ICLPositionManager {
    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct MintParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
        uint160 sqrtPrice;
    }

    function approve(address spender, uint256 tokenId) external;

    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);

    function burn(uint256 tokenId) external payable;

    function decreaseLiquidity(DecreaseLiquidityParams calldata params)
        external
        payable
        returns (uint256 amount0, uint256 amount1);

    function factory() external view returns (address);

    function increaseLiquidity(IncreaseLiquidityParams calldata params)
        external
        payable
        returns (uint128 liquidity, uint256 amount0, uint256 amount1);

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

    function mint(MintParams calldata params)
        external
        payable
        returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/interfaces/IStakedSlipstream.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface IStakedSlipstream {
    function burn(uint256 id) external returns (uint256 rewards);

    function claimReward(uint256 positionId) external returns (uint256 rewards);

    function mint(uint256 id) external returns (uint256 id_);

    // forge-lint: disable-next-line(mixed-case-function)
    function REWARD_TOKEN() external view returns (address rewardToken);
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/libraries/ArcadiaLogic.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { ActionData } from "../../../lib/accounts-v2/src/interfaces/IActionBase.sol";
import { IPermit2 } from "../../../lib/accounts-v2/src/interfaces/IPermit2.sol";

library ArcadiaLogic {
    /**
     * @notice Encodes the action data for the flash-action used to manage a Liquidity Position.
     * @param positionManager The address of the position manager.
     * @param id The id of the Liquidity Position.
     * @param token0 The contract address of token0.
     * @param token1 The contract address of token1.
     * @param amount0 The amount of token0 to transfer.
     * @param amount1 The amount of token1 to transfer.
     * @param actionTargetData The data to be passed to the action target.
     * @return actionData Bytes string with the encoded data.
     */
    function _encodeAction(
        address positionManager,
        uint256 id,
        address token0,
        address token1,
        uint256 amount0,
        uint256 amount1,
        bytes memory actionTargetData
    ) internal pure returns (bytes memory actionData) {
        // Calculate the number of assets to encode.
        uint256 count = 1;
        if (amount0 > 0) count++;
        if (amount1 > 0) count++;

        address[] memory assets = new address[](count);
        uint256[] memory ids = new uint256[](count);
        uint256[] memory amounts = new uint256[](count);
        uint256[] memory types = new uint256[](count);

        // Encode liquidity position.
        assets[0] = positionManager;
        ids[0] = id;
        amounts[0] = 1;
        types[0] = 2;

        // Encode underlying assets of the liquidity position.
        uint256 index = 1;
        if (amount0 > 0) {
            assets[1] = token0;
            amounts[1] = amount0;
            types[1] = 1;
            index = 2;
        }
        if (amount1 > 0) {
            assets[index] = token1;
            amounts[index] = amount1;
            types[index] = 1;
        }

        ActionData memory assetData =
            ActionData({ assets: assets, assetIds: ids, assetAmounts: amounts, assetTypes: types });

        // Empty data objects that have to be encoded when calling flashAction(), but that are not used for this specific flash-action.
        bytes memory signature;
        ActionData memory transferFromOwner;
        IPermit2.PermitBatchTransferFrom memory permit;

        // Encode the actionData.
        actionData = abi.encode(assetData, transferFromOwner, permit, signature, actionTargetData);
    }

    /**
     * @notice Encodes the deposit data after the flash-action is executed.
     * @param positionManager The address of the position manager.
     * @param id The id of the Liquidity Position.
     * @param tokens The contract addresses of the tokens to deposit.
     * @param balances The balances of the tokens to deposit.
     * @param count The number of tokens to deposit.
     * @return depositData Bytes string with the encoded data.
     */
    function _encodeDeposit(
        address positionManager,
        uint256 id,
        address[] memory tokens,
        uint256[] memory balances,
        uint256 count
    ) internal pure returns (ActionData memory depositData) {
        address[] memory assets = new address[](count);
        uint256[] memory ids = new uint256[](count);
        uint256[] memory amounts = new uint256[](count);
        uint256[] memory types = new uint256[](count);

        // Encode liquidity position.
        uint256 i;
        if (id > 0) {
            assets[0] = positionManager;
            ids[0] = id;
            amounts[0] = 1;
            types[0] = 2;
            i = 1;
        }

        // Encode underlying assets of the liquidity position.
        for (uint256 j; j < balances.length; j++) {
            if (balances[j] > 0) {
                assets[i] = tokens[j];
                amounts[i] = balances[j];
                types[i] = 1;
                i++;
            }
        }

        depositData = ActionData({ assets: assets, assetIds: ids, assetAmounts: amounts, assetTypes: types });
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/libraries/CLMath.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { FixedPoint96 } from "../../../lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/FixedPoint96.sol";
import { FixedPointMathLib } from "../../../lib/accounts-v2/lib/solmate/src/utils/FixedPointMathLib.sol";
import { FullMath } from "../../../lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/FullMath.sol";
import { TickMath } from "../../../lib/accounts-v2/lib/v4-periphery/lib/v4-core/src/libraries/TickMath.sol";

library CLMath {
    using FixedPointMathLib for uint256;
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The minimum sqrtPriceLimit for a swap.
    uint160 internal constant MIN_SQRT_PRICE_LIMIT = TickMath.MIN_SQRT_PRICE + 1;

    // The maximum sqrtPriceLimit for a swap.
    uint160 internal constant MAX_SQRT_PRICE_LIMIT = TickMath.MAX_SQRT_PRICE - 1;

    // The binary precision of sqrtPrice squared.
    uint256 internal constant Q192 = FixedPoint96.Q96 ** 2;

    /* //////////////////////////////////////////////////////////////
                                MATHS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Calculates the swap parameters, calculated based on a hypothetical swap (in the pool itself with fees but without slippage).
     * that maximizes the amount of liquidity that can be added to the positions (no leftovers of either token0 or token1).
     * @param sqrtPrice The square root of the price (token1/token0), with 96 binary precision.
     * @param sqrtRatioLower The square root price of the lower tick of the liquidity position, with 96 binary precision.
     * @param sqrtRatioUpper The square root price of the upper tick of the liquidity position, with 96 binary precision.
     * @param balance0 The amount of token0 that is available for the rebalance.
     * @param balance1 The amount of token1 that is available for the rebalance.
     * @param fee The swapping fees, with 18 decimals precision.
     * @return zeroToOne Bool indicating if token0 has to be swapped to token1 or opposite.
     * @return amountIn An approximation of the amount of tokenIn, based on the optimal swap through the pool itself without slippage.
     * @return amountOut An approximation of the amount of tokenOut, based on the optimal swap through the pool itself without slippage.
     * @dev The swap parameters are derived as follows:
     * 1) First we check if the position is in or out of range.
     *   - If the current price is above the position, the solution is trivial: we swap the full position to token1.
     *   - If the current price is below the position, similar, we swap the full position to token0.
     *   - If the position is in range we proceed with step 2.
     *
     * 2) If the position is in range, we start with calculating the "Target Ratio" and "Current Ratio".
     *    Both ratio's are defined as the value of the amount of token1 compared to the total value of the position:
     *    R = valueToken1 / [valueToken0 + valueToken1]
     *    If we express all values in token1 and use the current pool price to denominate token0 in token1:
     *    R = amount1 / [amount0 * sqrtPrice² + amount1]
     *
     *    a) The "Target Ratio" (R_target) is the ratio of the new liquidity position.
     *       It is calculated with the current price and the upper and lower prices of the liquidity position,
     *       see _getTargetRatio() for the derivation.
     *       To maximize the liquidity of the new position, the balances after the swap should approximate it as close as possible to not have any leftovers.
     *    b) The "Current Ratio" (R_current) is the ratio of the current token balances, it is calculated as follows:
     *       R_current = balance1 / [balance0 * sqrtPrice² + balance1].
     *
     * 3) From R_target and R_current we can finally derive the direction of the swap, amountIn and amountOut.
     *    If R_current is smaller than R_target, we have to swap an amount of token0 to token1, and vice versa.
     *    amountIn and amountOut can be found by solving the following equalities:
     *      a) The ratio of the token balances after the swap equal the "Target Ratio".
     *      b) The swap between token0 and token1 is done in the pool itself,
     *         taking into account fees, but ignoring slippage (-> sqrtPrice remains constant).
     *
     *    If R_current < R_target (swap token0 to token1):
     *      a) R_target = [amount1 + amountOut] / [(amount0 - amountIn) * sqrtPrice² + (amount1 + amountOut)].
     *      b) amountOut = (1 - fee) * amountIn * sqrtPrice².
     *         => amountOut = [(R_target - R_current) * (amount0 * sqrtPrice² + amount1)] / [1 + R_target * fee / (1 - fee)].
     *
     *    If R_current > R_target (swap token1 to token0):
     *      a) R_target = [(amount1 - amountIn)] / [(amount0 + amountOut) * sqrtPrice² + (amount1 - amountIn)].
     *      b) amountOut = (1 - fee) * amountIn / sqrtPrice².
     *         => amountIn = [(R_current - R_target) * (amount0 * sqrtPrice² + amount1)] / (1 - R_target * fee).
     */
    function _getSwapParams(
        uint256 sqrtPrice,
        uint256 sqrtRatioLower,
        uint256 sqrtRatioUpper,
        uint256 balance0,
        uint256 balance1,
        uint256 fee
    ) internal pure returns (bool zeroToOne, uint256 amountIn, uint256 amountOut) {
        if (sqrtPrice >= sqrtRatioUpper) {
            // New position is out of range and fully in token 1.
            // Rebalance to a single-sided liquidity position in token 1.
            zeroToOne = true;
            amountIn = balance0;
            amountOut = _getAmountOut(sqrtPrice, true, balance0, fee);
        } else if (sqrtPrice <= sqrtRatioLower) {
            // New position is out of range and fully in token 0.
            // Rebalance to a single-sided liquidity position in token 0.
            amountIn = balance1;
            amountOut = _getAmountOut(sqrtPrice, false, balance1, fee);
        } else {
            // Get target ratio in token1 terms.
            uint256 targetRatio = _getTargetRatio(sqrtPrice, sqrtRatioLower, sqrtRatioUpper);

            // Calculate the total position value in token1 equivalent:
            uint256 token0ValueInToken1 = _getSpotValue(sqrtPrice, true, balance0);
            uint256 totalValueInToken1 = balance1 + token0ValueInToken1;

            unchecked {
                // Calculate the current ratio of liquidity in token1 terms.
                uint256 currentRatio = balance1.mulDivDown(1e18, totalValueInToken1);
                if (currentRatio < targetRatio) {
                    // Swap token0 partially to token1.
                    zeroToOne = true;
                    {
                        uint256 denominator = 1e18 + targetRatio.mulDivDown(fee, 1e18 - fee);
                        amountOut = (targetRatio - currentRatio).mulDivDown(totalValueInToken1, denominator);
                    }
                    amountIn = _getAmountIn(sqrtPrice, true, amountOut, fee);
                } else {
                    // Swap token1 partially to token0.
                    zeroToOne = false;
                    {
                        uint256 denominator = 1e18 - targetRatio.mulDivDown(fee, 1e18);
                        amountIn = (currentRatio - targetRatio).mulDivDown(totalValueInToken1, denominator);
                    }
                    amountOut = _getAmountOut(sqrtPrice, false, amountIn, fee);
                }
            }
        }
    }

    /**
     * @notice Calculates the value of one token in the other token for a given amountIn and sqrtPrice.
     * Does not take into account slippage and fees.
     * @param sqrtPrice The square root of the price (token1/token0), with 96 binary precision.
     * @param zeroToOne Bool indicating if token0 has to be swapped to token1 or opposite.
     * @param amountIn The amount that of tokenIn that must be swapped to tokenOut.
     * @return amountOut The amount of tokenOut.
     * @dev Function will revert for all pools where the sqrtPrice is bigger than type(uint128).max.
     * type(uint128).max is currently more than enough for all supported pools.
     * If ever the sqrtPrice of a pool exceeds type(uint128).max, a different contract has to be deployed,
     * which does two consecutive mulDivs.
     */
    function _getSpotValue(uint256 sqrtPrice, bool zeroToOne, uint256 amountIn)
        internal
        pure
        returns (uint256 amountOut)
    {
        amountOut = zeroToOne
            ? FullMath.mulDiv(amountIn, sqrtPrice ** 2, Q192)
            : FullMath.mulDiv(amountIn, Q192, sqrtPrice ** 2);
    }

    /**
     * @notice Calculates the amountOut for a given amountIn and sqrtPrice for a hypothetical
     * swap though the pool itself with fees but without slippage.
     * @param sqrtPrice The square root of the price (token1/token0), with 96 binary precision.
     * @param zeroToOne Bool indicating if token0 has to be swapped to token1 or opposite.
     * @param amountIn The amount of tokenIn that must be swapped to tokenOut.
     * @param fee The total fee on amountIn, with 18 decimals precision.
     * @return amountOut The amount of tokenOut.
     * @dev Function will revert for all pools where the sqrtPrice is bigger than type(uint128).max.
     * type(uint128).max is currently more than enough for all supported pools.
     * If ever the sqrtPrice of a pool exceeds type(uint128).max, a different contract has to be deployed,
     * which does two consecutive mulDivs.
     */
    function _getAmountOut(uint256 sqrtPrice, bool zeroToOne, uint256 amountIn, uint256 fee)
        internal
        pure
        returns (uint256 amountOut)
    {
        require(sqrtPrice <= type(uint128).max);
        unchecked {
            uint256 amountInWithoutFees = (1e18 - fee).mulDivDown(amountIn, 1e18);
            amountOut = zeroToOne
                ? FullMath.mulDiv(amountInWithoutFees, sqrtPrice ** 2, Q192)
                : FullMath.mulDiv(amountInWithoutFees, Q192, sqrtPrice ** 2);
        }
    }

    /**
     * @notice Calculates the amountIn for a given amountOut and sqrtPrice for a hypothetical
     * swap though the pool itself with fees but without slippage.
     * @param sqrtPrice The square root of the price (token1/token0), with 96 binary precision.
     * @param zeroToOne Bool indicating if token0 has to be swapped to token1 or opposite.
     * @param amountOut The amount that tokenOut that must be swapped.
     * @param fee The total fee on amountIn, with 18 decimals precision.
     * @return amountIn The amount of tokenIn.
     * @dev Function will revert for all pools where the sqrtPrice is bigger than type(uint128).max.
     * type(uint128).max is currently more than enough for all supported pools.
     * If ever the sqrtPrice of a pool exceeds type(uint128).max, a different contract has to be deployed,
     * which does two consecutive mulDivs.
     */
    function _getAmountIn(uint256 sqrtPrice, bool zeroToOne, uint256 amountOut, uint256 fee)
        internal
        pure
        returns (uint256 amountIn)
    {
        require(sqrtPrice <= type(uint128).max);
        unchecked {
            uint256 amountInWithoutFees = zeroToOne
                ? FullMath.mulDiv(amountOut, Q192, sqrtPrice ** 2)
                : FullMath.mulDiv(amountOut, sqrtPrice ** 2, Q192);
            amountIn = amountInWithoutFees.mulDivDown(1e18, 1e18 - fee);
        }
    }

    /**
     * @notice Calculates the ratio of how much of the total value of a liquidity position has to be provided in token1.
     * @param sqrtPrice The square root of the current pool price (token1/token0), with 96 binary precision.
     * @param sqrtRatioLower The square root price of the lower tick of the liquidity position, with 96 binary precision.
     * @param sqrtRatioUpper The square root price of the upper tick of the liquidity position, with 96 binary precision.
     * @return targetRatio The ratio of the value of token1 compared to the total value of the position, with 18 decimals precision.
     * @dev Function will revert for all pools where the sqrtPrice is bigger than type(uint128).max.
     * type(uint128).max is currently more than enough for all supported pools.
     * If ever the sqrtPrice of a pool exceeds type(uint128).max, a different contract has to be deployed,
     * which does two consecutive mulDivs.
     * @dev Derivation of the formula:
     * 1) The ratio is defined as:
     *    R = valueToken1 / [valueToken0 + valueToken1]
     *    If we express all values in token1 and use the current pool price to denominate token0 in token1:
     *    R = amount1 / [amount0 * sqrtPrice² + amount1]
     * 2) Amount0 for a given liquidity position of a Uniswap V3 pool is given as:
     *    Amount0 = liquidity * (sqrtRatioUpper - sqrtPrice) / (sqrtRatioUpper * sqrtPrice)
     * 3) Amount1 for a given liquidity position of a Uniswap V3 pool is given as:
     *    Amount1 = liquidity * (sqrtPrice - sqrtRatioLower)
     * 4) Combining 1), 2) and 3) and simplifying we get:
     *    R = [sqrtPrice - sqrtRatioLower] / [2 * sqrtPrice - sqrtRatioLower - sqrtPrice² / sqrtRatioUpper]
     */
    function _getTargetRatio(uint256 sqrtPrice, uint256 sqrtRatioLower, uint256 sqrtRatioUpper)
        internal
        pure
        returns (uint256 targetRatio)
    {
        require(sqrtPrice <= type(uint128).max);
        // Unchecked: sqrtPrice is always bigger than sqrtRatioLower.
        // Unchecked: sqrtPrice is always smaller than sqrtRatioUpper -> sqrtPrice > sqrtPrice ** 2 / sqrtRatioUpper.
        unchecked {
            uint256 numerator = sqrtPrice - sqrtRatioLower;
            uint256 denominator = 2 * sqrtPrice - sqrtRatioLower - sqrtPrice ** 2 / sqrtRatioUpper;

            targetRatio = numerator.mulDivDown(1e18, denominator);
        }
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
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/state/PositionState.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

// A struct with the position and pool state.
struct PositionState {
    // The contract address of the pool.
    address pool;
    // The id of the position.
    uint256 id;
    // The fee of the pool
    uint24 fee;
    // The tick spacing of the pool.
    int24 tickSpacing;
    // The current tick of the pool.
    int24 tickCurrent;
    // The upper tick of the position.
    int24 tickUpper;
    // The lower tick of the position.
    int24 tickLower;
    // The liquidity of the position.
    uint128 liquidity;
    // The sqrtPrice of the pool.
    uint256 sqrtPrice;
    // The underlying tokens of the pool.
    address[] tokens;
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/yield-claimers/YieldClaimer.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { AbstractBase } from "../base/AbstractBase.sol";
import { ActionData, IActionBase } from "../../../lib/accounts-v2/src/interfaces/IActionBase.sol";
import { ArcadiaLogic } from "../libraries/ArcadiaLogic.sol";
import { ERC20, SafeTransferLib } from "../../../lib/accounts-v2/lib/solmate/src/utils/SafeTransferLib.sol";
import { ERC721 } from "../../../lib/accounts-v2/lib/solmate/src/tokens/ERC721.sol";
import { Guardian } from "../../guardian/Guardian.sol";
import { IAccount } from "../../interfaces/IAccount.sol";
import { IArcadiaFactory } from "../../interfaces/IArcadiaFactory.sol";
import { PositionState } from "../state/PositionState.sol";
import { SafeApprove } from "../../libraries/SafeApprove.sol";

/**
 * @title Abstract Yield Claimer for concentrated Liquidity Positions.
 * @author Pragma Labs
 */
abstract contract YieldClaimer is IActionBase, AbstractBase, Guardian {
    using SafeApprove for ERC20;
    using SafeTransferLib for ERC20;
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The contract address of the Arcadia Factory.
    IArcadiaFactory internal immutable ARCADIA_FACTORY;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // The Account to claim the yield for, used as transient storage.
    address internal account;

    // A mapping from account to account specific information.
    mapping(address account => AccountInfo) public accountInfo;

    // A mapping from account to custom metadata.
    mapping(address account => bytes data) public metaData;

    // A mapping that sets the approved initiator per owner per account.
    mapping(address accountOwner => mapping(address account => address initiator)) public accountToInitiator;

    // A struct with the account specific parameters.
    struct AccountInfo {
        // The address of the recipient of the claimed fees.
        address feeRecipient;
        // The maximum fee charged on the claimed fees of the liquidity position, with 18 decimals precision.
        uint64 maxClaimFee;
    }

    // A struct with the initiator parameters.
    struct InitiatorParams {
        // The contract address of the position manager.
        address positionManager;
        // The id of the position.
        uint96 id;
        // The fee charged on the claimed fees of the liquidity position, with 18 decimals precision.
        uint64 claimFee;
    }

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error InvalidInitiator();
    error InvalidAccountVersion();
    error InvalidPositionManager();
    error InvalidRecipient();
    error InvalidValue();
    error NotAnAccount();
    error OnlyAccount();
    error OnlyAccountOwner();
    error Reentered();

    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event AccountInfoSet(address indexed account, address indexed initiator);
    event Claimed(address indexed account, address indexed positionManager, uint256 id);
    event YieldTransferred(address indexed account, address indexed receiver, address indexed asset, uint256 amount);

    /* //////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     * @param arcadiaFactory The contract address of the Arcadia Factory.
     */
    constructor(address owner_, address arcadiaFactory) Guardian(owner_) {
        ARCADIA_FACTORY = IArcadiaFactory(arcadiaFactory);
    }

    /* ///////////////////////////////////////////////////////////////
                            ACCOUNT LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Optional hook called by the Arcadia Account when calling "setAssetManager()".
     * @param accountOwner The current owner of the Arcadia Account.
     * param status Bool indicating if the Asset Manager is enabled or disabled.
     * @param data Operator specific data, passed by the Account owner.
     * @dev No need to check that the Account version is 3 or greater (versions with cross account reentrancy guard),
     * since version 1 and 2 don't support the onSetAssetManager hook.
     */
    function onSetAssetManager(address accountOwner, bool, bytes calldata data) external {
        if (account != address(0)) revert Reentered();
        if (!ARCADIA_FACTORY.isAccount(msg.sender)) revert NotAnAccount();

        (address initiator, address feeRecipient, uint256 maxClaimFee, bytes memory metaData_) =
            abi.decode(data, (address, address, uint256, bytes));
        _setAccountInfo(msg.sender, accountOwner, initiator, feeRecipient, maxClaimFee, metaData_);
    }

    /**
     * @notice Sets the required information for an Account.
     * @param account_ The contract address of the Arcadia Account to set the information for.
     * @param initiator The address of the initiator.
     * @param feeRecipient The address of the recipient of the claimed fees.
     * @param maxClaimFee The maximum fee charged on the claimed fees of the liquidity position, with 18 decimals precision.
     * @param metaData_ Custom metadata to be stored with the account.
     */
    function setAccountInfo(
        address account_,
        address initiator,
        address feeRecipient,
        uint256 maxClaimFee,
        bytes calldata metaData_
    ) external {
        if (account != address(0)) revert Reentered();
        if (!ARCADIA_FACTORY.isAccount(account_)) revert NotAnAccount();
        address accountOwner = IAccount(account_).owner();
        if (msg.sender != accountOwner) revert OnlyAccountOwner();
        // Block Account versions without cross account reentrancy guard.
        if (IAccount(account_).ACCOUNT_VERSION() < 3) revert InvalidAccountVersion();

        _setAccountInfo(account_, accountOwner, initiator, feeRecipient, maxClaimFee, metaData_);
    }

    /**
     * @notice Sets the required information for an Account.
     * @param account_ The contract address of the Arcadia Account to set the information for.
     * @param accountOwner The current owner of the Arcadia Account.
     * @param initiator The address of the initiator.
     * @param feeRecipient The address of the recipient of the claimed fees.
     * @param maxClaimFee The maximum fee charged on the claimed fees of the liquidity position, with 18 decimals precision.
     * @param metaData_ Custom metadata to be stored with the account.
     */
    function _setAccountInfo(
        address account_,
        address accountOwner,
        address initiator,
        address feeRecipient,
        uint256 maxClaimFee,
        bytes memory metaData_
    ) internal {
        if (feeRecipient == address(0)) revert InvalidRecipient();
        if (maxClaimFee > 1e18) revert InvalidValue();

        accountToInitiator[accountOwner][account_] = initiator;
        // unsafe cast: maxClaimFee <= 1e18 < type(uint64).max.
        // forge-lint: disable-next-line(unsafe-typecast)
        accountInfo[account_] = AccountInfo({ feeRecipient: feeRecipient, maxClaimFee: uint64(maxClaimFee) });
        metaData[account_] = metaData_;

        emit AccountInfoSet(account_, initiator);
    }

    /* ///////////////////////////////////////////////////////////////
                             CLAIMING LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Claims accrued fees/rewards from a Liquidity Position, owned by an Arcadia Account.
     * @param account_ The contract address of the account.
     * @param initiatorParams A struct with the initiator parameters.
     */
    function claim(address account_, InitiatorParams calldata initiatorParams) external whenNotPaused {
        // Store Account address, used to validate the caller of the executeAction() callback and serves as a reentrancy guard.
        if (account != address(0)) revert Reentered();
        account = account_;

        // If the initiator is set, account_ is an actual Arcadia Account.
        if (accountToInitiator[IAccount(account_).owner()][account_] != msg.sender) revert InvalidInitiator();
        if (!isPositionManager(initiatorParams.positionManager)) revert InvalidPositionManager();

        // Encode data for the flash-action.
        bytes memory actionData = ArcadiaLogic._encodeAction(
            initiatorParams.positionManager,
            initiatorParams.id,
            address(0),
            address(0),
            0,
            0,
            abi.encode(msg.sender, initiatorParams)
        );

        // Call flashAction() with this contract as actionTarget.
        IAccount(account_).flashAction(address(this), actionData);

        // Reset account.
        account = address(0);
    }

    /**
     * @notice Callback function called by the Arcadia Account during the flashAction.
     * @param actionTargetData A bytes object containing the initiator and initiatorParams.
     * @return depositData A struct with the asset data of the Liquidity Position and with the leftovers after mint, if any.
     * @dev The Liquidity Position is already transferred to this contract before executeAction() is called.
     * @dev When rebalancing we will burn the current Liquidity Position and mint a new one with a new tokenId.
     */
    function executeAction(bytes calldata actionTargetData) external override returns (ActionData memory depositData) {
        // Caller should be the Account, provided as input in rebalance().
        if (msg.sender != account) revert OnlyAccount();

        // Cache accountInfo.
        AccountInfo memory accountInfo_ = accountInfo[msg.sender];

        // Decode actionTargetData.
        (address initiator, InitiatorParams memory initiatorParams) =
            abi.decode(actionTargetData, (address, InitiatorParams));
        address positionManager = initiatorParams.positionManager;

        // Validate initiatorParams.
        if (initiatorParams.claimFee > accountInfo_.maxClaimFee) revert InvalidValue();

        // Get all pool and position related state.
        PositionState memory position = _getPositionState(positionManager, initiatorParams.id);
        uint256[] memory balances = new uint256[](position.tokens.length);
        uint256[] memory fees = new uint256[](balances.length);

        // Claim pending yields and update balances.
        _claim(balances, fees, positionManager, position, initiatorParams.claimFee);

        // If native eth was claimed, wrap it.
        _stake(balances, positionManager, position);

        // Approve the liquidity position handle the claimed yields and transfer the initiator fees to the initiator.
        uint256 count =
            _approveAndTransfer(initiator, balances, fees, positionManager, position, accountInfo_.feeRecipient);

        // Encode deposit data for the flash-action.
        depositData = ArcadiaLogic._encodeDeposit(positionManager, position.id, position.tokens, balances, count);

        emit Claimed(msg.sender, positionManager, position.id);
    }

    /* ///////////////////////////////////////////////////////////////
                    APPROVE AND TRANSFER LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Approves the liquidity position and handles the claimed yields.
     * @param initiator The address of the initiator.
     * @param balances The balances of the underlying tokens held by the YieldClaimer.
     * @param fees The fees of the underlying tokens to be paid to the initiator.
     * @param positionManager The contract address of the Position Manager.
     * @param position A struct with position and pool related variables.
     * @param recipient The address to which the collected fees will be sent.
     * @return count The number of assets approved.
     */
    function _approveAndTransfer(
        address initiator,
        uint256[] memory balances,
        uint256[] memory fees,
        address positionManager,
        PositionState memory position,
        address recipient
    ) internal returns (uint256 count) {
        // Approve the Liquidity Position.
        ERC721(positionManager).approve(msg.sender, position.id);

        // Transfer Initiator fees and handle the claimed yields.
        count = 1;
        address token;
        uint256 amount;
        for (uint256 i; i < balances.length; i++) {
            token = position.tokens[i];

            // Handle the claimed yields.
            if (balances[i] > fees[i]) {
                amount = balances[i] - fees[i];
                if (recipient == msg.sender) {
                    // If feeRecipient is the Account itself, deposit yield back into the Account.
                    balances[i] = amount;
                    ERC20(token).safeApproveWithRetry(msg.sender, amount);
                    count++;
                } else {
                    // Else, send the yield to the fee recipient.
                    ERC20(token).safeTransfer(recipient, amount);
                    balances[i] = 0;
                }
            } else {
                amount = 0;
                fees[i] = balances[i];
                balances[i] = 0;
            }

            // Transfer Initiator fees to the initiator.
            if (fees[i] > 0) ERC20(token).safeTransfer(initiator, fees[i]);
            emit FeePaid(msg.sender, initiator, token, fees[i]);

            if (recipient != msg.sender) emit YieldTransferred(msg.sender, recipient, token, amount);
        }
    }

    /* ///////////////////////////////////////////////////////////////
                             SKIM LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Recovers any native or ERC20 tokens left on the contract.
     * @param token The contract address of the token, or address(0) for native tokens.
     */
    function skim(address token) external onlyOwner whenNotPaused {
        if (account != address(0)) revert Reentered();

        if (token == address(0)) {
            (bool success, bytes memory result) = payable(msg.sender).call{ value: address(this).balance }("");
            require(success, string(result));
        } else {
            ERC20(token).safeTransfer(msg.sender, ERC20(token).balanceOf(address(this)));
        }
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/cl-managers/yield-claimers/YieldClaimerSlipstream.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { AbstractBase } from "../base/AbstractBase.sol";
import { PositionState } from "../state/PositionState.sol";
import { Slipstream } from "../base/Slipstream.sol";
import { YieldClaimer } from "./YieldClaimer.sol";

/**
 * @title Yield Claimer for Slipstream Liquidity Positions.
 * @author Pragma Labs
 */
contract YieldClaimerSlipstream is YieldClaimer, Slipstream {
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The version of the Asset Manager.
    string public constant VERSION = "2.1.0";

    /* //////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     * @param arcadiaFactory The contract address of the Arcadia Factory.
     * @param positionManager The contract address of the Slipstream Position Manager.
     * @param cLFactory The contract address of the Slipstream Factory.
     * @param poolImplementation The contract address of the Slipstream Pool Implementation.
     * @param rewardToken The contract address of the Reward Token (Aero).
     * @param stakedSlipstreamAm The contract address of the Staked Slipstream Asset Module.
     * @param stakedSlipstreamWrapper The contract address of the Staked Slipstream Wrapper.
     */
    constructor(
        address owner_,
        address arcadiaFactory,
        address positionManager,
        address cLFactory,
        address poolImplementation,
        address rewardToken,
        address stakedSlipstreamAm,
        address stakedSlipstreamWrapper
    )
        YieldClaimer(owner_, arcadiaFactory)
        Slipstream(
            positionManager, cLFactory, poolImplementation, rewardToken, stakedSlipstreamAm, stakedSlipstreamWrapper
        )
    { }

    /* ///////////////////////////////////////////////////////////////
                          STAKING LOGIC
    /////////////////////////////////////////////////////////////// */

    /**
     * @notice Stakes a Liquidity Position.
     * param balances The balances of the underlying tokens.
     * param positionManager The contract address of the Position Manager.
     * param position A struct with position and pool related variables.
     */
    function _stake(uint256[] memory, address, PositionState memory) internal override(AbstractBase, Slipstream) { }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/guardian/Guardian.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { Owned } from "../../lib/accounts-v2/lib/solmate/src/auth/Owned.sol";

/**
 * @title Guardian
 * @author Pragma Labs
 * @notice Pause guardian for an Asset Manager.
 */
abstract contract Guardian is Owned {
    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // Flag indicating if the Asset Manager is paused.
    bool public paused;

    // Address of the Guardian.
    address public guardian;

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error Paused();
    error OnlyGuardian();

    /* //////////////////////////////////////////////////////////////
                                MODIFIERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @dev Only guardians can call functions with this modifier.
     */
    modifier onlyGuardian() {
        _onlyGuardian();
        _;
    }

    function _onlyGuardian() internal view {
        if (msg.sender != guardian) revert OnlyGuardian();
    }

    /**
     * @dev Throws if the Asset Manager is paused.
     */
    modifier whenNotPaused() {
        _whenNotPaused();
        _;
    }

    function _whenNotPaused() internal view {
        if (paused) revert Paused();
    }

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     */
    constructor(address owner_) Owned(owner_) { }

    /* //////////////////////////////////////////////////////////////
                            GUARDIAN LOGIC
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Sets a new guardian.
     * @param guardian_ The address of the new guardian.
     */
    function changeGuardian(address guardian_) external onlyOwner {
        guardian = guardian_;
    }

    /* //////////////////////////////////////////////////////////////
                            PAUSING LOGIC
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Pauses the Asset Manager.
     */
    function pause() external onlyGuardian whenNotPaused {
        paused = true;
    }

    /**
     * @notice Sets the pause flag of the Asset Manager.
     * @param paused_ Flag indicating if the Asset Manager is paused.
     */
    function setPauseFlag(bool paused_) external onlyOwner {
        paused = paused_;
    }
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/interfaces/IAccount.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface IAccount {
    // forge-lint: disable-next-line(mixed-case-function)
    function ACCOUNT_VERSION() external returns (uint256 version);
    function creditor() external returns (address creditor_);
    function flashAction(address actionTarget, bytes calldata actionData) external;
    function owner() external returns (address owner_);
    function numeraire() external returns (address numeraire_);
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/interfaces/IArcadiaFactory.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

interface IArcadiaFactory {
    /**
     * @notice Checks if a contract is an Account.
     * @param account The contract address of the Account.
     * @return bool indicating if the address is an Account or not.
     */
    function isAccount(address account) external view returns (bool);
}

// ============================================================
// FILE: lib/arcadia-periphery/lib/asset-managers/src/libraries/SafeApprove.sol
// ============================================================

/**
 * https://github.com/Vectorized/solady/blob/main/src/utils/SafeTransferLib.sol
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.34;

import { ERC20 } from "../../lib/accounts-v2/lib/solmate/src/tokens/ERC20.sol";

library SafeApprove {
    /**
     * @notice Approves an amount of token for a spender.
     * @param token The contract address of the token being approved.
     * @param to The spender.
     * @param amount the amount of token being approved.
     * @dev Copied from Solady safeApproveWithRetry (MIT): https://github.com/Vectorized/solady/blob/main/src/utils/SafeTransferLib.sol
     * @dev Sets `amount` of ERC20 `token` for `to` to manage on behalf of the current contract.
     * If the initial attempt to approve fails, attempts to reset the approved amount to zero,
     * then retries the approval again (some tokens, e.g. USDT, requires this).
     * Reverts upon failure.
     */
    function safeApproveWithRetry(ERC20 token, address to, uint256 amount) internal {
        assembly ("memory-safe") {
            mstore(0x14, to) // Store the `to` argument.
            mstore(0x34, amount) // Store the `amount` argument.
            mstore(0x00, 0x095ea7b3000000000000000000000000) // `approve(address,uint256)`.
            // Perform the approval, retrying upon failure.
            if iszero(
                and( // The arguments of `and` are evaluated from right to left.
                    or(eq(mload(0x00), 1), iszero(returndatasize())), // Returned 1 or nothing.
                    call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
                )
            ) {
                mstore(0x34, 0) // Store 0 for the `amount`.
                mstore(0x00, 0x095ea7b3000000000000000000000000) // `approve(address,uint256)`.
                pop(call(gas(), token, 0, 0x10, 0x44, codesize(), 0x00)) // Reset the approval.
                mstore(0x34, amount) // Store back the original `amount`.
                // Retry the approval, reverting upon failure.
                if iszero(
                    and(
                        or(eq(mload(0x00), 1), iszero(returndatasize())), // Returned 1 or nothing.
                        call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
                    )
                ) {
                    mstore(0x00, 0x3e3f8f73) // `ApproveFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            mstore(0x34, 0) // Restore the part of the free memory pointer that was overwritten.
        }
    }
}
