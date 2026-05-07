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
// FILE: @openzeppelin/contracts/security/Pausable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
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
    constructor() {
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
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC721/extensions/IERC721Enumerable.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional enumeration extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Enumerable is IERC721 {
    /**
     * @dev Returns the total amount of tokens stored by the contract.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns a token ID owned by `owner` at a given `index` of its token list.
     * Use along with {balanceOf} to enumerate all of ``owner``'s tokens.
     */
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);

    /**
     * @dev Returns a token ID at a given `index` of all the tokens stored by the contract.
     * Use along with {totalSupply} to enumerate all tokens.
     */
    function tokenByIndex(uint256 index) external view returns (uint256);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
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
// FILE: contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.12;

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
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

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
    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

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
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/IERC721Permit.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;

import '@openzeppelin/contracts/token/ERC721/IERC721.sol';

/// @title ERC721 with permit
/// @notice Extension to ERC721 that includes a permit function for signature based approvals
interface IERC721Permit is IERC721 {
    /// @notice The permit typehash used in the permit signature
    /// @return The typehash for the permit
    function PERMIT_TYPEHASH() external pure returns (bytes32);

    /// @notice The domain separator used in the permit signature
    /// @return The domain seperator used in encoding of permit signature
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    /// @notice Approve of a specific token ID for spending by spender via signature
    /// @param spender The account that is being approved
    /// @param tokenId The ID of the token that is being approved for spending
    /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
    /// @param v Must produce valid secp256k1 signature from the holder along with `r` and `s`
    /// @param r Must produce valid secp256k1 signature from the holder along with `v` and `s`
    /// @param s Must produce valid secp256k1 signature from the holder along with `r` and `v`
    function permit(
        address spender,
        uint256 tokenId,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external payable;
}

// ============================================================
// FILE: contracts/interfaces/INonfungiblePositionManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

import '@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol';
import '@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol';

import './IPoolInitializer.sol';
import './IERC721Permit.sol';
import './IPeripheryPayments.sol';
import './IPeripheryImmutableState.sol';
import '../libraries/PoolAddress.sol';

/// @title Non-fungible token for positions
/// @notice Wraps SquadSwap V3 positions in a non-fungible token interface which allows for them to be transferred
/// and authorized.
interface INonfungiblePositionManager is
    IPoolInitializer,
    IPeripheryPayments,
    IPeripheryImmutableState,
    IERC721Metadata,
    IERC721Enumerable,
    IERC721Permit
{
    /// @notice Emitted when liquidity is increased for a position NFT
    /// @dev Also emitted when a token is minted
    /// @param tokenId The ID of the token for which liquidity was increased
    /// @param liquidity The amount by which liquidity for the NFT position was increased
    /// @param amount0 The amount of token0 that was paid for the increase in liquidity
    /// @param amount1 The amount of token1 that was paid for the increase in liquidity
    event IncreaseLiquidity(uint256 indexed tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);
    /// @notice Emitted when liquidity is decreased for a position NFT
    /// @param tokenId The ID of the token for which liquidity was decreased
    /// @param liquidity The amount by which liquidity for the NFT position was decreased
    /// @param amount0 The amount of token0 that was accounted for the decrease in liquidity
    /// @param amount1 The amount of token1 that was accounted for the decrease in liquidity
    event DecreaseLiquidity(uint256 indexed tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);
    /// @notice Emitted when tokens are collected for a position NFT
    /// @dev The amounts reported may not be exactly equivalent to the amounts transferred, due to rounding behavior
    /// @param tokenId The ID of the token for which underlying tokens were collected
    /// @param recipient The address of the account that received the collected tokens
    /// @param amount0 The amount of token0 owed to the position that was collected
    /// @param amount1 The amount of token1 owed to the position that was collected
    event Collect(uint256 indexed tokenId, address recipient, uint256 amount0, uint256 amount1);

    /// @notice Returns the position information associated with a given token ID.
    /// @dev Throws if the token ID is not valid.
    /// @param tokenId The ID of the token that represents the position
    /// @return nonce The nonce for permits
    /// @return operator The address that is approved for spending
    /// @return token0 The address of the token0 for a specific pool
    /// @return token1 The address of the token1 for a specific pool
    /// @return fee The fee associated with the pool
    /// @return tickLower The lower end of the tick range for the position
    /// @return tickUpper The higher end of the tick range for the position
    /// @return liquidity The liquidity of the position
    /// @return feeGrowthInside0LastX128 The fee growth of token0 as of the last action on the individual position
    /// @return feeGrowthInside1LastX128 The fee growth of token1 as of the last action on the individual position
    /// @return tokensOwed0 The uncollected amount of token0 owed to the position as of the last computation
    /// @return tokensOwed1 The uncollected amount of token1 owed to the position as of the last computation
    function positions(uint256 tokenId)
        external
        view
        returns (
            uint96 nonce,
            address operator,
            address token0,
            address token1,
            uint24 fee,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    struct MintParams {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }

    /// @notice Creates a new position wrapped in a NFT
    /// @dev Call this when the pool does exist and is initialized. Note that if the pool is created but not initialized
    /// a method does not exist, i.e. the pool is assumed to be initialized.
    /// @param params The params necessary to mint a position, encoded as `MintParams` in calldata
    /// @return tokenId The ID of the token that represents the minted position
    /// @return liquidity The amount of liquidity for this position
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function mint(MintParams calldata params)
        external
        payable
        returns (
            uint256 tokenId,
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        );

    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    /// @notice Increases the amount of liquidity in a position, with tokens paid by the `msg.sender`
    /// @param params tokenId The ID of the token for which liquidity is being increased,
    /// amount0Desired The desired amount of token0 to be spent,
    /// amount1Desired The desired amount of token1 to be spent,
    /// amount0Min The minimum amount of token0 to spend, which serves as a slippage check,
    /// amount1Min The minimum amount of token1 to spend, which serves as a slippage check,
    /// deadline The time by which the transaction must be included to effect the change
    /// @return liquidity The new liquidity amount as a result of the increase
    /// @return amount0 The amount of token0 to acheive resulting liquidity
    /// @return amount1 The amount of token1 to acheive resulting liquidity
    function increaseLiquidity(IncreaseLiquidityParams calldata params)
        external
        payable
        returns (
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        );

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    /// @notice Decreases the amount of liquidity in a position and accounts it to the position
    /// @param params tokenId The ID of the token for which liquidity is being decreased,
    /// amount The amount by which liquidity will be decreased,
    /// amount0Min The minimum amount of token0 that should be accounted for the burned liquidity,
    /// amount1Min The minimum amount of token1 that should be accounted for the burned liquidity,
    /// deadline The time by which the transaction must be included to effect the change
    /// @return amount0 The amount of token0 accounted to the position's tokens owed
    /// @return amount1 The amount of token1 accounted to the position's tokens owed
    function decreaseLiquidity(DecreaseLiquidityParams calldata params)
        external
        payable
        returns (uint256 amount0, uint256 amount1);

    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    /// @notice Collects up to a maximum amount of fees owed to a specific position to the recipient
    /// @param params tokenId The ID of the NFT for which tokens are being collected,
    /// recipient The account that should receive the tokens,
    /// amount0Max The maximum amount of token0 to collect,
    /// amount1Max The maximum amount of token1 to collect
    /// @return amount0 The amount of fees collected in token0
    /// @return amount1 The amount of fees collected in token1
    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);

    /// @notice Burns a token ID, which deletes it from the NFT contract. The token must have 0 liquidity and all tokens
    /// must be collected first.
    /// @param tokenId The ID of the token that is being burned
    function burn(uint256 tokenId) external payable;

    /// @notice Creates a new pool if it does not exist, then initializes if not initialized
    /// @dev This method can be bundled with others via IMulticall for the first action (e.g. mint) performed against a pool
    /// @param token0 The contract address of token0 of the pool
    /// @param token1 The contract address of token1 of the pool
    /// @param fee The fee amount of the v3 pool for the specified token pair
    /// @param sqrtPriceX96 The initial square root price of the pool as a Q64.96 value
    /// @return pool Returns the pool address based on the pair of tokens and fee, will return the newly created pool address if necessary
    function createAndInitializePoolIfNecessary(
        address token0,
        address token1,
        uint24 fee,
        uint160 sqrtPriceX96
    ) external payable returns (address pool);
}

// ============================================================
// FILE: contracts/interfaces/IPeripheryImmutableState.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Immutable state
/// @notice Functions that return immutable state of the router
interface IPeripheryImmutableState {
    /// @return Returns the address of the SquadSwap V3 deployer
    function deployer() external view returns (address);

    /// @return Returns the address of the SquadSwap V3 factory
    function factory() external view returns (address);

    /// @return Returns the address of WETH9
    function WETH9() external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/IPeripheryPayments.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;

/// @title Periphery Payments
/// @notice Functions to ease deposits and withdrawals of ETH
interface IPeripheryPayments {
    /// @notice Unwraps the contract's WETH9 balance and sends it to recipient as ETH.
    /// @dev The amountMinimum parameter prevents malicious contracts from stealing WETH9 from users.
    /// @param amountMinimum The minimum amount of WETH9 to unwrap
    /// @param recipient The address receiving ETH
    function unwrapWETH9(uint256 amountMinimum, address recipient) external payable;

    /// @notice Refunds any ETH balance held by this contract to the `msg.sender`
    /// @dev Useful for bundling with mint or increase liquidity that uses ether, or exact output swaps
    /// that use ether for the input amount. And in SquadSwap Router, this would be called 
    /// at the very end of swap
    function refundETH() external payable;

    /// @notice Transfers the full amount of a token held by this contract to recipient
    /// @dev The amountMinimum parameter prevents malicious contracts from stealing the token from users
    /// @param token The contract address of the token which will be transferred to `recipient`
    /// @param amountMinimum The minimum amount of token required for a transfer
    /// @param recipient The destination address of the token
    function sweepToken(
        address token,
        uint256 amountMinimum,
        address recipient
    ) external payable;
}

// ============================================================
// FILE: contracts/interfaces/IPoolInitializer.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

/// @title Creates and initializes V3 Pools
/// @notice Provides a method for creating and initializing a pool, if necessary, for bundling with other methods that
/// require the pool to exist.
interface IPoolInitializer {
    /// @notice Creates a new pool if it does not exist, then initializes if not initialized
    /// @dev This method can be bundled with others via IMulticall for the first action (e.g. mint) performed against a pool
    /// @param token0 The contract address of token0 of the pool
    /// @param token1 The contract address of token1 of the pool
    /// @param fee The fee amount of the v3 pool for the specified token pair
    /// @param sqrtPriceX96 The initial square root price of the pool as a Q64.96 value
    /// @return pool Returns the pool address based on the pair of tokens and fee, will return the newly created pool address if necessary
    function createAndInitializePoolIfNecessary(
        address token0,
        address token1,
        uint24 fee,
        uint160 sqrtPriceX96
    ) external payable returns (address pool);
}

// ============================================================
// FILE: contracts/interfaces/ISquadV3Factory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the SquadSwap V3 Factory
/// @notice The SquadSwap V3 Factory facilitates creation of SquadSwap V3 pools and control over the protocol fees
interface ISquadV3Factory {
    struct TickSpacingExtraInfo {
        bool whitelistRequested;
        bool enabled;
    }

    /// @notice Emitted when the owner of the factory is changed
    /// @param oldOwner The owner before the owner was changed
    /// @param newOwner The owner after the owner was changed
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    /// @notice Emitted when a pool is created
    /// @param token0 The first token of the pool by address sort order
    /// @param token1 The second token of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks
    /// @param pool The address of the created pool
    event PoolCreated(
        address indexed token0,
        address indexed token1,
        uint24 indexed fee,
        int24 tickSpacing,
        address pool
    );

    /// @notice Emitted when a new fee amount is enabled for pool creation via the factory
    /// @param fee The enabled fee, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks for pools created with the given fee
    event FeeAmountEnabled(uint24 indexed fee, int24 indexed tickSpacing);

    event FeeAmountExtraInfoUpdated(uint24 indexed fee, bool whitelistRequested, bool enabled);

    event WhiteListAdded(address indexed user, bool verified);

    /// @notice Emitted when LM pool deployer is set
    event SetLmPoolDeployer(address indexed lmPoolDeployer);

    /// @notice Returns the current owner of the factory
    /// @dev Can be changed by the current owner via setOwner
    /// @return The address of the factory owner
    function owner() external view returns (address);

    /// @notice Returns the tick spacing for a given fee amount, if enabled, or 0 if not enabled
    /// @dev A fee amount can never be removed, so this value should be hard coded or cached in the calling context
    /// @param fee The enabled fee, denominated in hundredths of a bip. Returns 0 in case of unenabled fee
    /// @return The tick spacing
    function feeAmountTickSpacing(uint24 fee) external view returns (int24);

    /// @notice Returns the tick spacing extra info
    /// @dev A fee amount can never be removed, so this value should be hard coded or cached in the calling context
    /// @param fee The enabled fee, denominated in hundredths of a bip. Returns 0 in case of unenabled fee
    /// @return whitelistRequested The flag whether should be created by white list users only
    function feeAmountTickSpacingExtraInfo(uint24 fee) external view returns (bool whitelistRequested, bool enabled);

    /// @notice Returns the pool address for a given pair of tokens and a fee, or address 0 if it does not exist
    /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
    /// @param tokenA The contract address of either token0 or token1
    /// @param tokenB The contract address of the other token
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @return pool The pool address
    function getPool(
        address tokenA,
        address tokenB,
        uint24 fee
    ) external view returns (address pool);

    /// @notice Creates a pool for the given two tokens and fee
    /// @param tokenA One of the two tokens in the desired pool
    /// @param tokenB The other of the two tokens in the desired pool
    /// @param fee The desired fee for the pool
    /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0. tickSpacing is retrieved
    /// from the fee. The call will revert if the pool already exists, the fee is invalid, or the token arguments
    /// are invalid.
    /// @return pool The address of the newly created pool
    function createPool(
        address tokenA,
        address tokenB,
        uint24 fee
    ) external returns (address pool);

    /// @notice Updates the owner of the factory
    /// @dev Must be called by the current owner
    /// @param _owner The new owner of the factory
    function setOwner(address _owner) external;

    /// @notice Enables a fee amount with the given tickSpacing
    /// @dev Fee amounts may never be removed once enabled
    /// @param fee The fee amount to enable, denominated in hundredths of a bip (i.e. 1e-6)
    /// @param tickSpacing The spacing between ticks to be enforced for all pools created with the given fee amount
    function enableFeeAmount(uint24 fee, int24 tickSpacing) external;

    /// @notice Set an address into white list
    /// @dev Address can be updated by owner with boolean value false
    /// @param user The user address that add into white list
    function setWhiteListAddress(address user, bool verified) external;

    /// @notice Set a fee amount extra info
    /// @dev Fee amounts can be updated by owner with extra info
    /// @param whitelistRequested The flag whether should be created by owner only
    /// @param enabled The flag is the fee is enabled or not
    function setFeeAmountExtraInfo(
        uint24 fee,
        bool whitelistRequested,
        bool enabled
    ) external;

    function setLmPoolDeployer(address _lmPoolDeployer) external;

    function setFeeProtocol(address pool, uint32 feeProtocol0, uint32 feeProtocol1) external;

    function collectProtocol(
        address pool,
        address recipient,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);

    function setLmPool(address pool, address lmPool) external;
}

// ============================================================
// FILE: contracts/interfaces/ISquadV3Pool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface ISquadV3Pool {
    /// @notice Adds liquidity for the given recipient/tickLower/tickUpper position
    /// @dev The caller of this method receives a callback in the form of ISquadV3MintCallback#SquadV3MintCallback
    /// in which they must pay any token0 or token1 owed for the liquidity. The amount of token0/token1 due depends
    /// on tickLower, tickUpper, the amount of liquidity, and the current price.
    /// @param recipient The address for which the liquidity will be created
    /// @param tickLower The lower tick of the position in which to add liquidity
    /// @param tickUpper The upper tick of the position in which to add liquidity
    /// @param amount The amount of liquidity to mint
    /// @param data Any data that should be passed through to the callback
    /// @return amount0 The amount of token0 that was paid to mint the given amount of liquidity. Matches the value in the callback
    /// @return amount1 The amount of token1 that was paid to mint the given amount of liquidity. Matches the value in the callback
    function mint(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount,
        bytes calldata data
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice Burn liquidity from the sender and account tokens owed for the liquidity to the position
    /// @dev Can be used to trigger a recalculation of fees owed to a position by calling with an amount of 0
    /// @dev Fees must be collected separately via a call to #collect
    /// @param tickLower The lower tick of the position for which to burn liquidity
    /// @param tickUpper The upper tick of the position for which to burn liquidity
    /// @param amount How much liquidity to burn
    /// @return amount0 The amount of token0 sent to the recipient
    /// @return amount1 The amount of token1 sent to the recipient
    function burn(
        int24 tickLower,
        int24 tickUpper,
        uint128 amount
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice The 0th storage slot in the pool stores many values, and is exposed as a single method to save gas
    /// when accessed externally.
    /// @return sqrtPriceX96 The current price of the pool as a sqrt(token1/token0) Q64.96 value
    /// tick The current tick of the pool, i.e. according to the last tick transition that was run.
    /// This value may not always be equal to SqrtTickMath.getTickAtSqrtRatio(sqrtPriceX96) if the price is on a tick
    /// boundary.
    /// observationIndex The index of the last oracle observation that was written,
    /// observationCardinality The current maximum number of observations stored in the pool,
    /// observationCardinalityNext The next maximum number of observations, to be updated when the observation.
    /// feeProtocol The protocol fee for both tokens of the pool.
    /// Encoded as two 4 bit values, where the protocol fee of token1 is shifted 4 bits and the protocol fee of token0
    /// is the lower 4 bits. Used as the denominator of a fraction of the swap fee, e.g. 4 means 1/4th of the swap fee.
    /// unlocked Whether the pool is currently locked to reentrancy
    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            uint32 feeProtocol,
            bool unlocked
        );

    /// @notice The pool tick spacing
    /// @dev Ticks can only be used at multiples of this value, minimum of 1 and always positive
    /// e.g.: a tickSpacing of 3 means ticks can be initialized every 3rd tick, i.e., ..., -6, -3, 0, 3, 6, ...
    /// This value is an int24 to avoid casting even though it is always positive.
    /// @return The tick spacing
    function tickSpacing() external view returns (int24);

    /// @notice The first of the two tokens of the pool, sorted by address
    /// @return The token contract address
    function token0() external view returns (address);

    /// @notice The second of the two tokens of the pool, sorted by address
    /// @return The token contract address
    function token1() external view returns (address);

    /// @notice The pool's fee in hundredths of a bip, i.e. 1e-6
    /// @return The fee
    function fee() external view returns (uint24);
}

// ============================================================
// FILE: contracts/libraries/LibLimitOrder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

enum OrderStatus {
    NOT_PROCESSED,
    FILLED,
    CANCELED
}

struct LimitOrder {
    address owner; // order owner olarak tekrardan isimlendir
    address token0;
    address token1;
    uint24 fee;
    int24 tickLower;
    int24 tickUpper;
    uint256 tokenId;
    uint128 liquidity;
    bool zeroForOne;
    uint256 timestamp;
}

library LibLimitOrder {
    bytes32 constant LIMIT_ORDER_TYPEHASH =
        keccak256(
            "LimitOrder(address owner,address token0,address token1,uint24 fee,int24 tickLower,int24 tickUpper,uint256 tokenId,uint128 liquidity,bool zeroForOne,uint256 timestamp)"
        );

    bytes32 constant BYTES32_TYPEHASH = keccak256("Root(bytes32 root)");

    function hash(LimitOrder memory limitOrder) public pure returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    LIMIT_ORDER_TYPEHASH,
                    limitOrder.owner,
                    limitOrder.token0,
                    limitOrder.token1,
                    limitOrder.fee,
                    limitOrder.tickLower,
                    limitOrder.tickUpper,
                    limitOrder.tokenId,
                    limitOrder.liquidity,
                    limitOrder.zeroForOne,
                    limitOrder.timestamp
                )
            );
    }

    function hashBytes32(bytes32 root) internal pure returns (bytes32) {
        return keccak256(abi.encode(BYTES32_TYPEHASH, root));
    }
}

// ============================================================
// FILE: contracts/libraries/PoolAddress.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Provides functions for deriving a pool address from the factory, tokens, and the fee
library PoolAddress {
    bytes32 internal constant POOL_INIT_CODE_HASH = 0xff132c7c84e5449c9d69fc8490aba7f25fe4033e8889a13556c416128e1308cf;

    /// @notice The identifying key of the pool

    struct PoolKey {
        address token0;
        address token1;
        uint24 fee;
    }

    /// @notice Returns PoolKey: the ordered tokens with the matched fee levels
    /// @param tokenA The first token of a pool, unsorted
    /// @param tokenB The second token of a pool, unsorted
    /// @param fee The fee level of the pool
    /// @return Poolkey The pool details with ordered token0 and token1 assignments
    function getPoolKey(address tokenA, address tokenB, uint24 fee) internal pure returns (PoolKey memory) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return PoolKey({token0: tokenA, token1: tokenB, fee: fee});
    }
}

// ============================================================
// FILE: contracts/SquadLimitOrder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/ISquadV3Factory.sol";
import "./interfaces/ISquadV3Pool.sol";
import "./interfaces/IERC20.sol";
import "./libraries/LibLimitOrder.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract SquadLimitOrder is Ownable, Pausable {
    mapping(bytes32 => LimitOrder) public orderInfo;
    INonfungiblePositionManager public immutable positionManager;
    ISquadV3Factory public immutable factory;

    address public operator;
    uint256 public operationalFee = 0.0002 ether;
    uint256 public constant PRECISION = 10000; // %0.01 hassasiyet için
    uint256 public slippageToleranceRate; 

    mapping(address => uint256) public deposits;
    mapping(address => bool) public pairWhitelist;
    event UpdateLimitOrderStatus(
        bytes32 indexed orderHash,
        address indexed owner,
        address indexed pairAddress,
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0,
        uint256 amount1,
        uint256 tokenId,
        uint8 status
    );

    event EmergencyWithdrawLP(
        bytes32 indexed orderHash,
        uint256 tokenId,
        address indexed owner
    );
    event UpdateUserBalance(
        address indexed sender,
        uint8 actionType,
        uint256 updateAmount,
        uint256 latestBalance
    );
    event PairWhitelistStatus(address indexed pairAddress, bool status);

    event SlippageToleranceRateUpdated(uint256 newRate);
    constructor(
        address nonfungiblePositionManagerAddress,
        address _factoryAddress,
        address _operator
    ) {
        positionManager = INonfungiblePositionManager(nonfungiblePositionManagerAddress);
        factory = ISquadV3Factory(_factoryAddress);
        operator = _operator;

        setSlippageToleranceRate(50);  // %0.5 varsayılan değer (50/10000)
    }

    function deposit() external payable {
        require(msg.value > 0, "Invalid amount");
        deposits[msg.sender] += msg.value;
        emit UpdateUserBalance(msg.sender, 1, msg.value, deposits[msg.sender]);
    }

    function makeLimitOrder(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount,
        uint256 deadline,
        bool zeroForOne
    ) external {
        require(amount != 0, "Invalid amount");
        address pairAddress = factory.getPool(token0, token1, fee);
        handleTokenTransfersAndApproval(token0, token1, amount, zeroForOne);
        (uint256 tokenId, uint128 liquidity) = mintPosition(
            token0,
            token1,
            fee,
            tickLower,
            tickUpper,
            amount,
            deadline,
            zeroForOne
        );
        bytes32 orderHash = createOrder(
            token0,
            token1,
            fee,
            tickLower,
            tickUpper,
            tokenId,
            liquidity,
            zeroForOne
        );

        uint256 amount0;
        uint256 amount1;
        if (zeroForOne) {
            amount0 = amount;
        } else {
            amount1 = amount;
        }

        emit UpdateLimitOrderStatus(
            orderHash,
            msg.sender,
            pairAddress,
            token0,
            token1,
            fee,
            tickLower,
            tickUpper,
            amount0,
            amount1,
            tokenId,
            1
        );
    }

    function makeSpreadOrder(
        address token0,
        address token1,
        uint24 fee,
        int24[] calldata tickLower,
        int24[] calldata tickUpper,
        uint256[] calldata amountForStep,
        uint256 deadline,
        bool zeroForOne
    ) external {
        address pairAddress = factory.getPool(token0, token1, fee);
        uint256 tickLowerCount = tickLower.length;
        require(
            tickLowerCount == tickUpper.length,
            "Invalid tick range count"
        );
        require(
            tickLowerCount == amountForStep.length,
            "Invalid amount count"
        );
        require(tickLowerCount > 0, "Invalid tick range count");
        uint256 totalAmount;
        for (uint256 i = 0; i < tickLowerCount; i++) {
            require(amountForStep[i] != 0, "Invalid amount");
            totalAmount += amountForStep[i];
        }
        handleTokenTransfersAndApproval(
            token0,
            token1,
            totalAmount,
            zeroForOne
        );
        uint256 amount0;
        uint256 amount1;
        for (uint256 i = 0; i < tickLowerCount; i++) {
            (uint256 tokenId, uint128 liquidity) = mintPosition(
                token0,
                token1,
                fee,
                tickLower[i],
                tickUpper[i],
                amountForStep[i],
                deadline,
                zeroForOne
            );
            bytes32 orderHash = createOrder(
                token0,
                token1,
                fee,
                tickLower[i],
                tickUpper[i],
                tokenId,
                liquidity,
                zeroForOne
            );

            if (zeroForOne) {
                amount0 = amountForStep[i];
            } else {
                amount1 = amountForStep[i];
            }

            emit UpdateLimitOrderStatus(
                orderHash,
                msg.sender,
                pairAddress,
                token0,
                token1,
                fee,
                tickLower[i],
                tickUpper[i],
                amount0,
                amount1,
                tokenId,
                1
            );
        }
    }

    function executeLimitOrder(bytes32 orderHash, bool spendFeeBalance, uint256 amount0Min, uint256 amount1Min, uint256 deadline) public returns (uint256, uint256) {
        require(msg.sender == operator, "Unauthorized execution");

        LimitOrder memory order = orderInfo[orderHash];
        address orderOwner = order.owner;
        uint256 gasAtStart = gasleft(); 

        (uint256 amount0, uint256 amount1) = reduceLiquidityAndCollect(
            orderHash,
            order.owner,
            amount0Min,
            amount1Min,
            deadline
        );

        emit UpdateLimitOrderStatus(
            orderHash,
            order.owner,
            address(0),
            order.token0,
            order.token1,
            order.fee,
            order.tickLower,
            order.tickUpper,
            amount0,
            amount1,
            order.tokenId,
            2
        );
        delete orderInfo[orderHash];

        if (spendFeeBalance) {
            uint256 gasUsed = gasAtStart - gasleft(); 
            uint256 gasPrice = tx.gasprice;
            uint256 gasCost = gasUsed * gasPrice; 

            uint256 depositAmount = deposits[orderOwner];
            require(
                depositAmount >= gasCost,
                "Insufficient deposit to cover gas cost"
            );
            uint256 spendAmount = gasCost + operationalFee;
            deposits[orderOwner] = depositAmount - spendAmount;

            emit UpdateUserBalance(
                orderOwner,
                3,
                spendAmount,
                deposits[orderOwner]
            );
        } else {
            uint256 gasUsed = gasAtStart - gasleft(); 
            uint256 gasPrice = tx.gasprice; 
            uint256 gasCost = gasUsed * gasPrice; 

            uint256 depositAmount = deposits[orderOwner];
            uint256 spendAmount = gasCost + operationalFee;

            emit UpdateUserBalance(orderOwner, 0, spendAmount, depositAmount);
        }

        return (amount0, amount1);
    }

    function cancelLimitOrder(bytes32 orderHash, uint256 amount0Min, uint256 amount1Min, uint256 deadline) public returns (uint256, uint256) {
        require(isAuthorized(orderHash), "Unauthorized execution");
        LimitOrder memory order = orderInfo[orderHash];

        (uint256 amount0, uint256 amount1) = reduceLiquidityAndCollect(
            orderHash,
            order.owner,
            amount0Min,
            amount1Min,
            deadline
        );

        emit UpdateLimitOrderStatus(
            orderHash,
            order.owner,
            address(0),
            order.token0,
            order.token1,
            order.fee,
            order.tickLower,
            order.tickUpper,
            amount0,
            amount1,
            order.tokenId,
            3 //cancellled
        );
        delete orderInfo[orderHash];

        return (amount0, amount1);
    }

    function cancelBatch(bytes32[] calldata orderHashes, uint256[] calldata amount0Min, uint256[] calldata amount1Min, uint256 deadline) external {
        uint256 length = orderHashes.length;
        for (uint256 i = 0; i < length; i++) {
            cancelLimitOrder(orderHashes[i], amount0Min[i], amount1Min[i], deadline);
        }
    }

    function emergencyWithdrawLP(bytes32 orderHash) external {
        require(isOwnerOrOrderOwner(orderHash), "Unauthorized access");
        _withdrawToken(orderHash);
    }

    function setOperator(address newOperator) external onlyOwner {
        operator = newOperator;
    }

    function handleTokenTransfersAndApproval(
        address token0,
        address token1,
        uint256 amount,
        bool zeroForOne
    ) internal {
        address tokenAddress = zeroForOne ? token0 : token1;
        IERC20(tokenAddress).transferFrom(msg.sender, address(this), amount);
        IERC20(tokenAddress).approve(address(positionManager), amount);
    }

    function mintPosition(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount,
        uint256 deadline,
        bool zeroForOne
    ) internal returns (uint256 tokenId, uint128 liquidity) {
        uint256 amount0Desired = zeroForOne ? amount : 0;
        uint256 amount1Desired = zeroForOne ? 0 : amount;
        
        uint256 amount0Min = amount0Desired * (PRECISION - slippageToleranceRate) / PRECISION;
        uint256 amount1Min = amount1Desired * (PRECISION - slippageToleranceRate) / PRECISION;
        uint256 amount0Added;
        uint256 amount1Added;

        INonfungiblePositionManager.MintParams
            memory params = INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                fee: fee,
                tickLower: tickLower,
                tickUpper: tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                recipient: address(this),
                deadline: deadline
            });
        (tokenId, liquidity, amount0Added, amount1Added) = positionManager.mint(params);
        if (amount0Desired > amount0Added) {
            IERC20(token0).transfer(msg.sender, amount0Desired - amount0Added);
        }
        if (amount1Desired > amount1Added) {
            IERC20(token1).transfer(msg.sender, amount1Desired - amount1Added);
        }
        return (tokenId, liquidity);
    }

    function createOrder(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 tokenId,
        uint128 liquidity,
        bool zeroForOne
    ) internal returns (bytes32) {
        LimitOrder memory order = LimitOrder({
            owner: msg.sender,
            token0: token0,
            token1: token1,
            fee: fee,
            tickLower: tickLower,
            tickUpper: tickUpper,
            tokenId: tokenId,
            liquidity: liquidity,
            zeroForOne: zeroForOne,
            timestamp: block.timestamp
        });
        bytes32 orderHash = LibLimitOrder.hash(order);
        orderInfo[orderHash] = order;
        return orderHash;
    }

    function isAuthorized(bytes32 orderHash) internal view returns (bool) {
        LimitOrder memory order = orderInfo[orderHash];
        return
            msg.sender == operator ||
            msg.sender == order.owner;
    }

    function isOwnerOrOrderOwner(
        bytes32 orderHash
    ) internal view returns (bool) {
        LimitOrder memory order = orderInfo[orderHash];
        return msg.sender == owner() || msg.sender == order.owner;
    }

    function canBeExecuted(
        bytes32 orderHash
    ) public view returns (bool execType) {
        execType = false;
        LimitOrder memory order = orderInfo[orderHash];
        address poolAddress = factory.getPool(
            order.token0,
            order.token1,
            order.fee
        );
        ISquadV3Pool pool = ISquadV3Pool(poolAddress);
        (, int24 tick, , , , , ) = pool.slot0();

        if (
            (!order.zeroForOne && tick < order.tickLower) ||
            (order.zeroForOne && tick > order.tickUpper)
        ) {
            execType = true;
        }

        return execType;
    }

    function getOrderExecutionTick(
        bytes32 orderHash
    ) public view returns (int24 execTick) {
        LimitOrder memory order = orderInfo[orderHash];
        if (order.zeroForOne) {
            execTick = order.tickUpper;
        } else {
            execTick = order.tickLower;
        }
    }

    function _withdrawToken(bytes32 orderHash) internal {
        LimitOrder memory order = orderInfo[orderHash];
        positionManager.transferFrom(address(this), order.owner, order.tokenId);
        emit UpdateLimitOrderStatus(
            orderHash,
            order.owner,
            address(0),
            order.token0,
            order.token1,
            order.fee,
            order.tickLower,
            order.tickUpper,
            0,
            0,
            order.tokenId,
            3
        );
        delete orderInfo[orderHash];
        emit EmergencyWithdrawLP(orderHash, order.tokenId, order.owner);
    }

    function reduceLiquidityAndCollect(
        bytes32 orderHash,
        address recipient,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 deadline
    ) internal returns (uint256 amount0, uint256 amount1) {
        LimitOrder memory order = orderInfo[orderHash];
        INonfungiblePositionManager.DecreaseLiquidityParams
            memory decreaseParams = INonfungiblePositionManager
                .DecreaseLiquidityParams({
                    tokenId: order.tokenId,
                    liquidity: order.liquidity,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    deadline: deadline
                });
        (amount0, amount1) = positionManager.decreaseLiquidity(decreaseParams);
        INonfungiblePositionManager.CollectParams
            memory collectParams = INonfungiblePositionManager.CollectParams({
                tokenId: order.tokenId,
                recipient: recipient,
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            });
        positionManager.collect(collectParams);
        return (amount0, amount1);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setOperationalFee(uint256 fee) external onlyOwner {
        operationalFee = fee;
    }

    function userWithdrawFeeBalance() external {
        uint256 depositAmount = deposits[msg.sender];
        require(depositAmount > 0, "No balance to withdraw");
        deposits[msg.sender] = 0;
        payable(msg.sender).transfer(depositAmount);
        emit UpdateUserBalance(msg.sender, 2, depositAmount, 0);
    }

    function withdrawToken(address tokenAddress) external onlyOwner {
        IERC20 token = IERC20(tokenAddress);
        uint256 balance = token.balanceOf(address(this));
        token.transfer(owner(), balance);
    }

    function withdrawETH() external onlyOwner {
        uint256 balance = address(this).balance;
        payable(owner()).transfer(balance);
    }

    function updatePairWhitelist(
        address pairAddress,
        bool status
    ) external onlyOwner {
        pairWhitelist[pairAddress] = status;
        emit PairWhitelistStatus(pairAddress, status);
    }

    function updateOwner(address newOwner) external onlyOwner {
        transferOwnership(newOwner);
    }

    function viewOrder(
        bytes32 orderHash
    ) external view returns (LimitOrder memory) {
        return orderInfo[orderHash];
    }

    function viewUserBalance(address user) external view returns (uint256) {
        return deposits[user];
    }

    function viewOrderOwner(
        bytes32 orderHash
    ) external view returns (address owner) {
        return orderInfo[orderHash].owner;
    }

    function viewOperator() external view returns (address) {
        return operator;
    }

    function viewOperationalFee() external view returns (uint256) {
        return operationalFee;
    }

    function setSlippageToleranceRate(uint256 newRate) public onlyOwner {
        require(newRate < PRECISION, "Rate must be less than PRECISION");
        slippageToleranceRate = newRate;

        emit SlippageToleranceRateUpdated(newRate);
    }
}
