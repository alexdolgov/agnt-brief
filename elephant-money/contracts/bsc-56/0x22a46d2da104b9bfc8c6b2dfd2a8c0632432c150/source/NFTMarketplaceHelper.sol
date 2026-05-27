// File: @openzeppelin/contracts/utils/introspection/IERC165.sol


// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

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

// File: @openzeppelin/contracts/token/ERC721/IERC721.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.20;


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
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
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
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or
     *   {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
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
     * - The `operator` cannot be the address zero.
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

// File: @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.20;


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

// File: @openzeppelin/contracts/token/ERC721/IERC721Receiver.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.20;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721Receiver {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be
     * reverted.
     *
     * The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

// File: @openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/utils/ERC721Holder.sol)

pragma solidity ^0.8.20;


/**
 * @dev Implementation of the {IERC721Receiver} interface.
 *
 * Accepts all token transfers.
 * Make sure the contract is able to use its token with {IERC721-safeTransferFrom}, {IERC721-approve} or
 * {IERC721-setApprovalForAll}.
 */
abstract contract ERC721Holder is IERC721Receiver {
    /**
     * @dev See {IERC721Receiver-onERC721Received}.
     *
     * Always returns `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(address, address, uint256, bytes memory) public virtual returns (bytes4) {
        return this.onERC721Received.selector;
    }
}

// File: ElephantGov.sol

/**
 *Submitted for verification at BscScan.com on 2023-09-04
*/

/*
    SPDX-License-Identifier: MIT
    A Bankteller Production
    Elephant Money
    Copyright 2023
*/

/*

    Elephant Money TRUNK / ELEPHANT / TRUMPET Governance

    - A growing suit of tools for supporting core tokens

    Only at https://elephant.money

*/

pragma solidity ^0.8.0;

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
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

abstract contract Context is ReentrancyGuard {

    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }

}



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
    address private _previousOwner;
    bool private _paused;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );
    event RunStatusUpdated(bool indexed paused);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        _paused = false;
        emit RunStatusUpdated(_paused);
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Returns if paused status
     */
    function isPaused() public view returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Throws if called when contract is paused
     */
    modifier isRunning() {
        require(
            _paused == false,
            "Function unavailable because contract is paused"
        );
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    /**
     * @dev Pause the contract for functions that check run status
     * Can only be called by the current owner.
     */
    function updateRunStatus(bool paused) public virtual onlyOwner {
        emit RunStatusUpdated(paused);
        _paused = paused;
    }

}

/**
 * @title Whitelist
 * @dev The Whitelist contract has a whitelist of addresses, and provides basic authorization control functions.
 * @dev This simplifies the implementation of "user permissions".
 */
contract Whitelist is Ownable {
    mapping(address => bool) public whitelist;

    event WhitelistedAddressAdded(address addr);
    event WhitelistedAddressRemoved(address addr);

    /**
     * @dev Throws if called by any account that's not whitelisted.
     */
    modifier onlyWhitelisted() {
        require(whitelist[msg.sender], "not whitelisted");
        _;
    }

    function addAddressToWhitelist(address addr)
        public
        onlyOwner
        returns (bool success)
    {
        if (!whitelist[addr]) {
            whitelist[addr] = true;
            emit WhitelistedAddressAdded(addr);
            success = true;
        }
    }

    function addAddressesToWhitelist(address[] memory addrs)
        public
        onlyOwner
        returns (bool success)
    {
        for (uint256 i = 0; i < addrs.length; i++) {
            if (addAddressToWhitelist(addrs[i])) {
                success = true;
            }
        }
    }

    function removeAddressFromWhitelist(address addr)
        public
        onlyOwner
        returns (bool success)
    {
        if (whitelist[addr]) {
            whitelist[addr] = false;
            emit WhitelistedAddressRemoved(addr);
            success = true;
        }
    }

    function removeAddressesFromWhitelist(address[] memory addrs)
        public
        onlyOwner
        returns (bool success)
    {
        for (uint256 i = 0; i < addrs.length; i++) {
            if (removeAddressFromWhitelist(addrs[i])) {
                success = true;
            }
        }
    }
}

// pragma solidity >=0.5.0;

interface IUniswapV2Factory {
    event PairCreated(
        address indexed token0,
        address indexed token1,
        address pair,
        uint256
    );

    function feeTo() external view returns (address);

    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB)
        external
        view
        returns (address pair);

    function allPairs(uint256) external view returns (address pair);

    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB)
        external
        returns (address pair);

    function setFeeTo(address) external;

    function setFeeToSetter(address) external;
}

// pragma solidity >=0.5.0;

interface IUniswapV2Pair {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Transfer(address indexed from, address indexed to, uint256 value);

    function name() external pure returns (string memory);

    function symbol() external pure returns (string memory);

    function decimals() external pure returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external pure returns (bytes32);

    function nonces(address owner) external view returns (uint256);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Burn(
        address indexed sender,
        uint256 amount0,
        uint256 amount1,
        address indexed to
    );
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint256);

    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );

    function price0CumulativeLast() external view returns (uint256);

    function price1CumulativeLast() external view returns (uint256);

    function kLast() external view returns (uint256);

    function mint(address to) external returns (uint256 liquidity);

    function burn(address to)
        external
        returns (uint256 amount0, uint256 amount1);

    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data
    ) external;

    function skim(address to) external;

    function sync() external;

    function initialize(address, address) external;
}

// pragma solidity >=0.6.2;

interface IUniswapV2Router01 {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
        );

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        );

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETHWithPermit(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountToken, uint256 amountETH);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB);

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountOut);

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountIn);

    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external
        view
        returns (uint256[] memory amounts);

    function getAmountsIn(uint256 amountOut, address[] calldata path)
        external
        view
        returns (uint256[] memory amounts);
}

// pragma solidity >=0.6.2;

interface IUniswapV2Router02 is IUniswapV2Router01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountETH);

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}

interface IERC20 {
    /**
     * @dev Function to mint tokens
     * @param _to The address that will receive the minted tokens.
     * @param _amount The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address _to, uint256 _amount) external returns (bool);

    /**
     * @dev Burns the amount of tokens owned by `msg.sender`.
     */
    function burn(uint256 _value) external;

    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

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
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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
}

interface ITRUMPET is IERC20 {
    /** 
        Mint TRUMPET Tokens For `recipient` By Depositing TRUNK Into The Contract
            Requirements:
                Approval from the TRUNK prior to purchase
        
        @param numTokens number of TRUNK tokens to mint TRUMPET with
        @param recipient Account to receive minted TRUMPET tokens
        @return tokensMinted number of TRUMPET tokens minted
    */
    function mintWithBacking(uint256 numTokens, address recipient) external returns (uint256);

    /** 
        Burns Sender's TRUMPET Tokens and redeems their value in TRUNK for `recipient`
        @param tokenAmount Number of TRUMPET Tokens To Redeem, Must be greater than 0
        @param recipient Recipient Of TRUNK transfer, Must not be address(0)
    */
    function sellTo(uint256 tokenAmount, address recipient) external returns (uint256);

} 

interface ITreasury {
    function withdraw(uint256 tokenAmount) external;

    function withdrawTo(address _to, uint256 _amount) external;
}

interface IPcsPeriodicTwapOracle {

    // performs chained update calculations on any number of pairs
    //whitelisted to avoid DDOS attacks since new pairs will be registered
    function updatePath(address[] memory path) external;

    //updates all pairs registered 
    function updateAll() external returns (uint updatedPairs) ;
    
    // performs chained getAmountOut calculations on any number of pairs
    function consultAmountsOut(uint amountIn, address[] memory path) external view returns (uint[] memory amounts);

    // returns the amount out corresponding to the amount in for a given token using the moving average over the time
    // range [now - [windowSize, windowSize - periodSize * 2], now]
    // update must have been called for the bucket corresponding to timestamp `now - windowSize`
    function consult(address tokenIn, uint amountIn, address tokenOut) external view returns (uint amountOut);

}


interface IEACAggregatorProxy {

    function latestRoundData() external view returns (uint80 roundId , int256 answer , uint256 startedAt , uint256 updatedAt , uint80 answeredInRound);

    function decimals() external view returns (uint8);

}


//@dev Simple onchain oracle for important Elephant Money smart contracts
contract AddressRegistry {
    address public constant coreAddress =
        address(0xE283D0e3B8c102BAdF5E8166B73E02D96d92F688); //ELEPHANT
    address public constant coreTreasuryAddress =
        address(0xAF0980A0f52954777C491166E7F40DB2B6fBb4Fc); //ELEPHANT Treasury
    address public constant collateralAddress =
        address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56); //BUSD
    address public constant collateralTreasuryAddress =
        address(0xCb5a02BB3a38e92E591d323d6824586608cE8cE4); //BUSD Treasury
    address public constant collateralRedemptionAddress =
        address(0xD3B4fB63e249a727b9976864B28184b85aBc6fDf); //BUSD Redemption Pool
    address public constant collateralBufferAddress =
        address(0xd9dE89efB084FfF7900Eac23F2A991894500Ec3E); //BUSD Buffer Pool
    address public constant backedAddress =
        address(0xdd325C38b12903B727D16961e61333f4871A70E0); //TRUNK Stable coin
    address public constant backedTreasuryAddress =
        address(0xaCEf13009D7E5701798a0D2c7cc7E07f6937bfDd); //TRUNK Treasury
    address public constant backedLPAddress =
        address(0xf15A72B15fC4CAeD6FaDB1ba7347f6CCD1E0Aede); //TRUNK/BUSD LP
    address public constant routerAddress =
        address(0x10ED43C718714eb63d5aA57B78B54704E256024E);  //PCS Router
    //PCS Factory - 0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73
    address public constant oracleAddress = 
        address(0x5606ee12d741716c260fDA2f6C89EfDf60326D3C); //Oracle
    address public constant trumpetAddress = 
        address(0x574a691D05EeE825299024b2dE584B208647e073); //TRUMPET
    address public constant chainlinkBNBAddress = 
        address(0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE); //BNB/USD Price
    address public constant wethTreasuryAddress = 
        address(0x98F6c7c953Cf4cef0fd632b2509c9e349687FC92); //WETH Treasury
    address public constant burnAddress = 
        address(0x0000000000000000000000000000000000000001); //BURN 
}

abstract contract ElephantCore is Context, Whitelist {
    using SafeMath for uint256;


    uint256 public slippage = 900;

    AddressRegistry internal registry;
    

    IERC20 internal collateralToken;
    IERC20 internal backedToken;
    IERC20 internal coreToken;
    ITRUMPET internal trumpet;


    ITreasury internal collateralTreasury;
    
    ITreasury internal backedTreasury;

    ITreasury public immutable coreTreasury;
    IUniswapV2Router02 public immutable  collateralRouter;
    IPcsPeriodicTwapOracle public immutable oracle;
    IEACAggregatorProxy public immutable chainlinkProxy;
    
    event UpdateSlippage(uint oldSlippage, uint newSlippage);

    constructor () Ownable() {
        //init reg
        registry = new AddressRegistry();

        //the collateral router can be upgraded in the future
        collateralRouter = IUniswapV2Router02(registry.routerAddress());

        //the main oracle 
        oracle = IPcsPeriodicTwapOracle(registry.oracleAddress());

        chainlinkProxy = IEACAggregatorProxy(registry.chainlinkBNBAddress());

        //setup tokens
        collateralToken = IERC20(registry.collateralAddress());
        coreToken = IERC20(registry.coreAddress());
        backedToken = IERC20(registry.backedAddress());
        trumpet = ITRUMPET(registry.trumpetAddress());

        //treasury intialization
        collateralTreasury = ITreasury(registry.collateralTreasuryAddress());
        coreTreasury = ITreasury(registry.coreTreasuryAddress());
        backedTreasury = ITreasury(registry.backedTreasuryAddress());

    }

    //All core contracts can receive gas tokens
    receive() payable external virtual {}

    //Administrative//

    function updatesSlippage(uint _slippage) onlyOwner external {
        require(_slippage < 1000, "slippage < 1000");

        slippage = _slippage;

        emit UpdateSlippage(slippage, _slippage);
    } 

    // This function is sensitive to slippage and that isn't a bad thing...
    // Don't dump your core or backed tokens... This is a community project
    function estimateCollateralToCore(uint collateralAmount) public view returns (uint wethAmount, uint coreAmount) {
         //Convert from collateral to WETH using the collateral's Oracle

        wethAmount = estimateWethAmount(collateralAmount);

        address[] memory path = new address[](2);
        
        path[0] = collateralRouter.WETH();
        path[1] = address(coreToken);

        uint[] memory amounts = oracle.consultAmountsOut(wethAmount, path);
        
        //Use core router to get amount of coreTokens required to cover 
        coreAmount = amounts[1];
    }
    
    // Estimates the amount of  core tokens getting transfered to USD collateral tokens
    function estimateCoreToCollateral(uint coreAmount) public view returns (uint wethAmount, uint collateralAmount) {
         //Convert from core to WETH using the core's Oracle
        address[] memory path = new address[](2);
        path[0] = address(coreToken);
        path[1] = collateralRouter.WETH();

        uint[] memory amounts = oracle.consultAmountsOut(coreAmount, path);
        
        wethAmount = amounts[1];
        collateralAmount = estimateCollateralAmount(wethAmount);
    }


    function estimateWethAmount(uint collateralAmount) public view returns (uint wethAmount){
        (, int256 answer , , , ) = chainlinkProxy.latestRoundData();
        uint8 decimals  = chainlinkProxy.decimals();

        wethAmount = collateralAmount * (10 ** decimals) / uint(answer); 
    }

    function estimateCollateralAmount(uint wethAmount) public view returns (uint collateralAmount){
        (, int256 answer , , , ) = chainlinkProxy.latestRoundData();
        uint8 decimals  = chainlinkProxy.decimals();

        collateralAmount = wethAmount * uint(answer) / (10 ** decimals);
    }


    //Buy TRUNK with ELEPHANT
    function buyBackedWithCore(uint tokenAmount) internal returns (uint backedAmount) {
        address[] memory path;
        path = new address[](3);
        
        //Sell core
        path[0] = registry.coreAddress();
        path[1] = collateralRouter.WETH();
        path[2] = registry.backedAddress();


        //Get the core tokens
        coreTreasury.withdraw(tokenAmount);
        
        //Need to be able to approve the core token for transfer against fixed liquidity
        //Pancake and others will maintain interfaces for legacy applications
        require(coreToken.approve(address(collateralRouter), tokenAmount));

        uint[] memory output =  oracle.consultAmountsOut(tokenAmount, path);

        uint minimumOut = output[2] * slippage / 1000;

        uint initialBalance = backedToken.balanceOf(address(this));
        
        collateralRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            tokenAmount,
            minimumOut, //accept any amount of backed tokens
            path,
            address(this), //send it here
            block.timestamp
        );
        
        //This contract does not hold any token balances
        backedAmount = backedToken.balanceOf(address(this)).sub(initialBalance);


    }

    //Buy TRUNK with WETHi
    function buyBacked(address _destination, uint _wethAmount) internal returns (uint backedAmount) {
       (address[] memory path,,) = bestPath(registry.backedAddress(), _wethAmount);
        
        uint[] memory output =  oracle.consultAmountsOut(_wethAmount, path);

        uint minimumOut = output[output.length - 1] * slippage / 1000;
        
        output = collateralRouter.swapExactETHForTokens{value:_wethAmount}(
            minimumOut, //control frontrunnning
            path,
            _destination, //send it here
            block.timestamp
        );
        
        return output[output.length - 1];

    }

    function bestPath(address _target, uint _wethAmount) public view returns (address[] memory path, uint directAmount, uint indirectAmount) {
        address[] memory direct = new address[](2);
        direct[0] = collateralRouter.WETH();
        direct[1] = _target;
        uint[] memory directAmounts = oracle.consultAmountsOut(_wethAmount, direct);
        directAmount = directAmounts[1];

        address[] memory indirect = new address[](3);
        indirect[0] = collateralRouter.WETH();
        indirect[1] = registry.collateralAddress(); //BUSD
        indirect[2] = _target;
        uint[] memory indirectAmounts = oracle.consultAmountsOut(_wethAmount, indirect);
        indirectAmount = indirectAmounts[2];

        path = (indirectAmount > directAmount) ? indirect : direct;   
    } 

    //Buy Trumpet for a user
    function buyTrumpet(address _user, uint _amount) internal  returns (uint256 trumpetAmount) {

        require(address(this).balance >= _amount, "buyTrumpet - insufficient balance");

        uint256 _backedAmount = buyBacked(address(this), _amount);

        
        //approve trumpet to transfer tokens
        backedToken.approve(address(trumpet), _backedAmount);

        //mint income for owner
        trumpetAmount = trumpet.mintWithBacking(_backedAmount, _user);

    }

    function buyForTreasury(uint _amount) internal {

        buyCore(registry.coreTreasuryAddress(), _amount);

    }

    function buyCore(address destination, uint _wethAmount)  internal returns (uint) {
        
        (address[] memory path,,) = bestPath(registry.coreAddress(), _wethAmount);
        
        uint[] memory output =  oracle.consultAmountsOut(_wethAmount, path);

        uint minimum =  output[output.length - 1] * slippage / 1000;

        uint initialBalance = coreToken.balanceOf(destination);

        //buy immediately and send to destination
        collateralRouter.swapExactETHForTokensSupportingFeeOnTransferTokens{value: _wethAmount}(minimum, path, destination, block.timestamp);

        return coreToken.balanceOf(destination) - initialBalance;

    }

    //@dev liquidate core tokens from the treasury to the destination
    function liquidateCore(address destination, uint256 _amount) internal returns (uint wethAmount) {
   
        //Convert from collateral to backed
        address[] memory path = new address[](2);

        path[0] = registry.coreAddress();
        path[1] = collateralRouter.WETH();

        //withdraw from treasury
        coreTreasury.withdraw(_amount);
        
        //approve & swap
        TransferHelper.safeApprove(registry.coreAddress(), address(collateralRouter), _amount, 'ElephantCore: liquidateCore, approve');

        uint[] memory output =  oracle.consultAmountsOut(_amount, path);

        uint minimumOut = output[1] * slippage / 1000;

        uint initialBalance = destination.balance;

        collateralRouter.swapExactTokensForETHSupportingFeeOnTransferTokens(
            _amount,
            minimumOut, 
            path,
            destination, 
            block.timestamp 
        );
    
        wethAmount = destination.balance - initialBalance;

  }

  function addBridgeLiquidity() internal {
        
        //available liquidity
        uint coreAmount = coreToken.balanceOf(address(this));
        uint backedAmount = backedToken.balanceOf(address(this));
        
        
        // approve token transfers to cover all possible scenarios
        require(coreToken.approve(address(collateralRouter), coreAmount));
        require(backedToken.approve(address(collateralRouter), backedAmount));

        // add the liquidity
        collateralRouter.addLiquidity(
            address(coreToken),
            address(backedToken),
            coreAmount,
            backedAmount,
            0, // no mins required
            0, // no mins required
            address(backedToken), //TRUNK owns its own locked liquidity
            block.timestamp
        );

    }


    function updatePaths() internal {
        address[] memory path = new address[](2);

        // BNB -> ELEPHANT
        path[0] = collateralRouter.WETH();
        path[1] = registry.coreAddress();
        oracle.updatePath(path);

        // BNB -> TRUNK 
        path[0] = collateralRouter.WETH();
        path[1] = registry.backedAddress();
        oracle.updatePath(path);

        // ELEPHANT -> BUSD 
        path[0] = registry.coreAddress();
        path[1] = registry.collateralAddress();
        oracle.updatePath(path);


        // TRUNK -> BUSD
        path[0] = registry.backedAddress();
        path[1] = registry.collateralAddress();
        oracle.updatePath(path);

        // BUSD -> BNB 
        path[0] = registry.collateralAddress();
        path[1] = collateralRouter.WETH();
        oracle.updatePath(path);

    }

}

/// @dev Dumps the contents of the ELEPHANT Treasury to the specidifed destination
contract ElephantTreasuryLiquidationStrategy  is ElephantCore {
    using SafeMath for uint256;
    
    address public  destination;

    uint256 public constant minimumThreshold = 0.01e18;
    uint256 public maxThreshold = 10e18;
    
    event UpdateMaxThreshold(uint oldValue, uint newValue);
    event UpdateDestination(address  oldAddr, address newAddr);
    event Sweep(address addr, uint amount);
    
     constructor ()  ElephantCore() {}
     

     function updateMaxThreshold(uint _threshold) onlyOwner external {
        require(_threshold <= 100e18, "thresshold <= 100");

        emit UpdateMaxThreshold(maxThreshold, _threshold);

        maxThreshold = _threshold;
 
    } 

    function updateDestination(address _destination) onlyOwner external {
        require(_destination != address(0), "Require valid non-zero addresses");

        emit UpdateDestination(destination, _destination);
        
        destination = _destination;

    }

    //Mint backed tokens using collateral tokens
    function sweep() isRunning nonReentrant public  {

       uint _wethAmount = address(this).balance;

        //Forward to destinaton
        if (_wethAmount >= minimumThreshold) {

            //optimistically update price feeds
            updatePaths();

            _wethAmount = _wethAmount.min(maxThreshold);

            liquidateCore(destination, _wethAmount);

            emit Sweep(destination, _wethAmount);
        
        }
           
    }

}

//@dev Uses BNB balance to build TRUNK/ELEPHANT v2 LP
contract TrunkElephantLiquidityBridge is ElephantCore {

    using SafeMath for uint256;

    uint256 public constant minimumThreshold = 0.01e18;
    uint256 public maxThreshold = 10e18;
    
    event UpdateMaxThreshold(uint oldValue, uint newValue);

     constructor ()  ElephantCore() {}

     function updateMaxThreshold(uint _threshold) onlyOwner external {
        require(_threshold <= 100e18, "thresshold <= 100");

        emit UpdateMaxThreshold(maxThreshold, _threshold);

        maxThreshold = _threshold;
 
    } 

    function sweep() isRunning nonReentrant external { 

        uint _wethAmount = address(this).balance;

        if (_wethAmount >= minimumThreshold) {

            //optimistically update price feeds
            updatePaths();

            _wethAmount = _wethAmount.min(maxThreshold);

            uint _half = _wethAmount / 2;

            uint _remainder = _wethAmount - _half;

            buyCore(address(this), _half);

            buyBacked(address(this), _remainder);

            addBridgeLiquidity();

        }

    }

    
}


/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {
    /**
     * @dev Multiplies two numbers, throws on overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        if (a == 0) {
            return 0;
        }
        c = a * b;
        assert(c / a == b);
        return c;
    }

    /**
     * @dev Integer division of two numbers, truncating the quotient.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // assert(b > 0); // Solidity automatically throws when dividing by 0
        // uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold
        return a / b;
    }

    /**
     * @dev Subtracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    /* @dev Subtracts two numbers, else returns zero */
    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b > a) {
            return 0;
        } else {
            return a - b;
        }
    }

    /**
     * @dev Adds two numbers, throws on overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
        c = a + b;
        assert(c >= a);
        return c;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

}

library TransferHelper {
    /// @notice Transfers tokens from the targeted address to the given destination
    /// @notice Errors with 'STF' if transfer fails
    /// @param token The contract address of the token to be transferred
    /// @param from The originating address from which the tokens will be transferred
    /// @param to The destination address of the transfer
    /// @param value The amount to be transferred
    function safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value,
        string memory notes
    ) internal {
        (bool success, bytes memory data) =
            token.call(abi.encodeWithSelector(IERC20.transferFrom.selector, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), string.concat('STF', notes));
    }

    /// @notice Transfers tokens from msg.sender to a recipient
    /// @dev Errors with ST if transfer fails
    /// @param token The contract address of the token which will be transferred
    /// @param to The recipient of the transfer
    /// @param value The value of the transfer
    function safeTransfer(
        address token,
        address to,
        uint256 value,
        string memory notes
    ) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), string.concat('ST', notes));
    }

    /// @notice Approves the stipulated contract to spend the given allowance in the given token
    /// @dev Errors with 'SA' if transfer fails
    /// @param token The contract address of the token to be approved
    /// @param to The target of the approval
    /// @param value The amount of the given token the target will be allowed to spend
    function safeApprove(
        address token,
        address to,
        uint256 value,
        string memory notes
    ) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.approve.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), string.concat('SA', notes));
    }

    /// @notice Transfers ETH to the recipient address
    /// @dev Fails with `STE`
    /// @param to The destination of the transfer
    /// @param value The value to be transferred
    function safeTransferETH(address to, uint256 value, string memory notes) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        require(success, string.concat('STE', notes));
    }
}
// File: ElephantNFTMarketplace.sol



/* 
    Unlimited 2.0 Marketplace

    - Processing fees forwarded to staking contract
    - 0.001 BNB processing fee per NFT for staking / repricing / unstaking
    - Seller controlled pricing with a minimum of 0.01 BNB
    - 90% of sales paid out to seller via TRUMPET
    - Fee breakdown: 5% to stakers, 3% to protocol liquidity, 2% maintenance 
    - Nonreentrant public interface to counter brute force attacks / automation / smart contract execution
*/







pragma solidity ^0.8.0;


interface IElephantNFT {

    function price() external view returns (uint256);

    function round() external view returns (uint256);

    function roundOf(uint256 tokenId) external view returns (uint256);

    function royaltyInfo(uint256 tokenId, uint256 salePrice) external view returns (address, uint256);

    function safeMint(address to) external;

}

interface IElephantNFTMinter {

    function buyForTreasury() external payable;

}


contract ElephantMarketPlace is ElephantCore, ERC721Holder  {

    IERC721 public nft;
    address public maintenanceAddress;
    address public stakingAddress;
    address public protocolAddress;

    uint256 constant public minimumPrice = 0.01e18;
    uint256 constant public stakingFee = 0.0025e18;
    uint256 constant internal precision = 1e18;

    uint256 constant public stakingFeePercentage = 5;
    uint256 constant public maintenanceFeePercentage = 3;
    uint256 constant public protocolFeePercentage = 2;
    

    uint256 public totalRevenue;
    uint256 public totalUSDRevenue = 350e18;
    uint256 public totalUnitsSold = 1;
    uint256 public lastPriceUSD;
    uint256 public lastTimeSold;
    uint256 public txs;

    
    
    struct Staker {
        uint256[] tokenIds;
        uint256[] soldTokenIds;
        uint256 income;
    }

    struct Listing {
        uint tokenId;
        uint price;
    }

    /// @dev Create a deposit dependent staking contract for an nft collection and ERC20 reward token
    constructor(IERC721 _nft) {
        nft = _nft;
    }

    /// @notice mapping of a staker to its wallet
    mapping(address => Staker) private stakers;

    /// @notice Mapping from token ID to owner address
    mapping(uint256 => address) private tokenOwner;

    /// @notice Mapping of tokenID to price;
    mapping(uint256 => uint256) private prices;

    /// @notice List of all staked tokens
    uint256[] private activeListings;

    /// @notice event emitted when a user has staked a nft
    event Staked(address owner, uint256 tokenId, uint256 price);

    /// @notice event emitted when a user has reprices a nft
    event Repriced(address owner, uint256 tokenId, uint256 price);

    /// @notice event emitted when a user has unstaked a nft
    event Unstaked(address owner, uint256 tokenId);

    /// @notice event emitted when a user has purchases a nft
    event Purchased(address seller, address buyer, uint256 tokenId, uint256 price, uint256 usdPrice);

    /// @notice event emitted when a token is not available for purchase
    event TokenUnavailable(uint256 tokenId, address buyer, uint256 refund);

    /// @notice event emited when maintenance address is updated 
    event UpdateMaintenance(address oldAddr, address newAddr);

    /// @notice event emited when staking address is updated 
    event UpdateStaking(address oldAddr, address newAddr);

    /// @notice event emited when protcol address is updated 
    event UpdateProtocol(address oldAddr, address newAddr);

    /// @notice event emited when protocol fees are collected
    event Fees(address payer, uint256 wethAmount, uint256 usdAdmount);


    receive()  payable external override {
        payable(msg.sender).transfer(msg.value);
    }

    /// @dev Maintenance address is updated
    function updateMaintenance(address _maintenance) onlyOwner external {
        require(_maintenance != maintenanceAddress, "duplicate address");

        emit UpdateMaintenance(maintenanceAddress, _maintenance);

        maintenanceAddress = _maintenance;
    }

    /// @dev Maintenance address is updated
    function updateStaking(address _staking) onlyOwner external {
        require(_staking != stakingAddress, "duplicate address");

        emit UpdateStaking(stakingAddress, _staking);

        stakingAddress = _staking;
    }

    /// @dev Maintenance address is updated
    function updateProtocol(address _protocol) onlyOwner external {
        require(_protocol != protocolAddress, "duplicate address");

        emit UpdateProtocol(protocolAddress, _protocol);

        protocolAddress = _protocol;
    }

    /// @dev Return the running average price in the market
    function averagePriceUSD() public view returns (uint) {
        return totalUSDRevenue / totalUnitsSold;
    }

    /// @dev Return true if buyer is eligible to buy a token
    function isEligible(uint256 _tokenId, address _user) public view returns (bool) {
        return tokenOwner[_tokenId] != _user && tokenOwner[_tokenId] != address(0);
    }

    /// @dev Retrieve the price breakdown based on target price
    function priceBreakdown(uint256 totalPrice) public pure returns 
        (uint256 maintenanceIncome, uint256 sellerIncome, uint256 stakingIncome, uint256 protocolIncome) 
    {
        uint256 share = totalPrice / 100;

        maintenanceIncome = share * maintenanceFeePercentage;
        stakingIncome = share * stakingFeePercentage;
        protocolIncome = share * protocolFeePercentage;

        sellerIncome = totalPrice - (maintenanceIncome + stakingIncome + protocolIncome);

    }

    /// @dev Retrieves the balance of tokens staked 
    function totalSupply() public view returns (uint256) {
        return nft.balanceOf(address(this));
    } 

    /// @dev Retrieve listing of specified token, success wil return true
    function getListing(uint256 tokenId) external view returns (uint256 price, bool success) {
        
        //if listed
        success = tokenOwner[tokenId] != address(0);

        //Last or current [price should be returned no matter what for easy historical data
        price = prices[tokenId];
   
    }

    /// @dev Retrieve active listings
    function getListingCount() external view  returns (uint256) {
        return activeListings.length;
    }

    function getListings(uint start, uint length) external view returns (Listing[] memory listings){

        if (!(start + length  <=  activeListings.length)){
            return new Listing[](0);
        }

        listings = new Listing[](length);

        uint tokenId;

        for (uint i = 0; i < length; i++ ) {
            tokenId = activeListings[start];
            listings[i] = Listing(tokenId, prices[tokenId]);
            start++;
        } 

    }

    /// @dev Retrieve the token balance of any single address.
    function balanceOf(address _user) public view returns (uint256) {
        return stakers[_user].tokenIds.length;
    }

    /// @dev Retrieve the sold token balance of any single address.
    function balanceSoldOf(address _user) public view returns (uint256) {
        return stakers[_user].soldTokenIds.length;
    }

    /// @dev Retrieve the total rewards of any single address.
    function totalEarnedOf(address _user) public view returns (uint256) {
        return stakers[_user].income;
    }

    /// @dev Retrieves the owner of any given _tokenID
    function ownerOf(uint256 _tokenId) public view returns (address) {
        return tokenOwner[_tokenId];
    }

    /// @dev Retrieve the tokenIds of any single address.
    function tokensOfOwner(
        address _owner
    ) public view returns (uint256[] memory tokenIds) {
        return stakers[_owner].tokenIds;
    }

    /// @dev Retrieve the sold tokenIds of any single address.
    function tokensSoldOfOwner(
        address _owner
    ) public view returns (uint256[] memory tokenIds) {
        return stakers[_owner].soldTokenIds;
    }

     /// @dev The percentage of the
    function percentage(address _user) public view returns (uint256) {
        require(totalSupply() > 0, "no tokens staked");
        return (balanceOf(_user) * precision) / totalSupply(); 
    }

    /// @dev Returns the fee required to stake X amount of NFTs
    function feeToStake(uint256 _amount) public pure returns (uint256) {
        return stakingFee * _amount;
    }

    /// @dev List one or more tokens if owned by the sender
    function list(uint256[] memory _tokenIds, uint256[] memory _prices) nonReentrant isRunning external payable {
        require(_tokenIds.length == _prices.length, "ST1");

        _fees(_tokenIds.length);

        //process stakes
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            _stake(msg.sender, _tokenIds[i], _prices[i]);
        }

        txs++;
    }

    /// @dev Reprice one or more tokens if owned by the sender
    function reprice(uint256[] memory _tokenIds, uint256[] memory _prices) nonReentrant isRunning external payable {
        require(_tokenIds.length == _prices.length, "ST1");

        _fees(_tokenIds.length);

        //process stakes
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            _reprice(msg.sender, _tokenIds[i], _prices[i]);
        }

        txs++;
    }

    /// @dev Delist one or more tokens if owned by the sender
    function delist(uint256[] memory _tokenIds) nonReentrant external payable {

        _fees(_tokenIds.length);

        //process unstakes
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            if (tokenOwner[_tokenIds[i]] == msg.sender) {
                _unstake(msg.sender, _tokenIds[i]);
            }
        }

        txs++;
    }

    function buy(uint256 _tokenId) nonReentrant external payable {

        address _user = msg.sender;

        //These are the hard requirements 
        require(tokenOwner[_tokenId] != _user, "user must not be the owner");

        uint256 _price = prices[_tokenId];

        require(msg.value >=  _price, "insufficient funds for purchase");

        //token must be staked to complete the purchase
        if (tokenOwner[_tokenId] != address(0)) {
        
            (uint _maintenanceIncome, uint _sellerIncome, uint _stakingIncome, uint _protocolIncome) = priceBreakdown(_price);

            uint256 _return = msg.value - _price;
            address _owner = tokenOwner[_tokenId];
            Staker storage staker = stakers[_owner];

            //remove _tokenId from list
            for (uint i=0; i < staker.tokenIds.length; i++) {
                if (staker.tokenIds[i] == _tokenId) {
                    //remove ownership
                    staker.tokenIds[i] = staker.tokenIds[staker.tokenIds.length - 1];
                    staker.tokenIds.pop();
                    
                    delete tokenOwner[_tokenId]; //remove ownership

                    //track sold token and income
                    staker.soldTokenIds.push(_tokenId);
                    staker.income += _sellerIncome;

                    //track globals
                    totalRevenue += _price;
                    lastPriceUSD = estimateCollateralAmount(_price); 
                    totalUSDRevenue += lastPriceUSD;
                    lastTimeSold = block.timestamp; 
                    totalUnitsSold++; 
                    txs++;
                    break;
                }
            }

            _removeFromActiveListing(_tokenId);

            //Payouts

            //pay seller via TRUMPET
            buyTrumpet(_owner, _sellerIncome);
            
            //transfer WETH to staking / maintenance
            payable(stakingAddress).transfer(_stakingIncome);
            payable(maintenanceAddress).transfer(_maintenanceIncome);
            payable(protocolAddress).transfer(_protocolIncome);
            

            if (_return > 0) {
                payable(_user).transfer(_return);
            }

            //deliver 
            nft.safeTransferFrom(address(this), _user, _tokenId);

            emit Purchased(_owner, _user, _tokenId, _price, estimateCollateralAmount(_price));

        } else {

            //return sent funds
            payable(_user).transfer(msg.value);

            emit TokenUnavailable(_tokenId, _user, msg.value);
        }

    }

    function _fees(uint _count) internal {
         
        uint payment = feeToStake(_count);
        
        require (msg.value >= payment, "insufficient payment");

        //transfer WETH to staking
        payable(stakingAddress).transfer(payment);

        emit Fees(msg.sender, payment, estimateCollateralAmount(payment));
    }

    function _stake(address _user, uint256 _tokenId, uint256 _price) internal {
        //verifying ownership means the staking contract doesn't own it
        require(
            nft.ownerOf(_tokenId) == _user &&
            (nft.getApproved(_tokenId) == address(this) ||
            nft.isApprovedForAll(_user, address(this))),
            "not owned or approved"
            ); 

        require(_price >= minimumPrice, "SK1");

        Staker storage staker = stakers[_user];

        staker.tokenIds.push(_tokenId);
        activeListings.push(_tokenId);
        
        tokenOwner[_tokenId] = _user; //assign ownership within this contract
        prices[_tokenId] = _price; //assign price of NFT

        nft.safeTransferFrom(_user, address(this), _tokenId);

        emit Staked(_user, _tokenId, _price);
    }

    function _reprice(address _user, uint256 _tokenId, uint256 _price) internal {
        require(
            tokenOwner[_tokenId] == _user,
            "user must be the owner of the staked nft"
        );

        require(_price >= minimumPrice, "RP1");

        prices[_tokenId] = _price; //assign new price 

        emit Repriced(_user, _tokenId, _price);
    }

    function _unstake(address _user, uint256 _tokenId) internal {
        require(
            tokenOwner[_tokenId] == _user,
            "user must be the owner of the staked nft"
        );

        Staker storage staker = stakers[_user];

        //remove _tokenId from owner list
        for (uint i=0; i < staker.tokenIds.length; i++) {
            if (staker.tokenIds[i] == _tokenId) {
                staker.tokenIds[i] = staker.tokenIds[staker.tokenIds.length - 1];
                staker.tokenIds.pop();

                delete tokenOwner[_tokenId]; //remove ownership

                break;
            }
        }

        _removeFromActiveListing(_tokenId);
        
        nft.safeTransferFrom(address(this), _user, _tokenId);

        emit Unstaked(_user, _tokenId);

    }

    function _removeFromActiveListing(uint256 _tokenId) private {
        for (uint i=0; i < activeListings.length; i++) {
            if (activeListings[i] == _tokenId) {
                activeListings[i] = activeListings[activeListings.length - 1];
                activeListings.pop();
                break;
            }
        }
    }

}

interface IElephantNFTTraitTracker {

    function add(uint batchSize) external;
    function getInfo(uint tokenId)  external view returns ( uint rare, uint hue, uint sat, uint lum, uint score);
}

interface IElephantNFTStaking {
    function rarityWeight() external view returns (uint);
    function balanceOf(address _user) external view returns (uint256);
}

contract NFTMarketplaceHelper is ReentrancyGuard, Ownable, ERC721Holder {

    struct TokenInfo {
        uint tokenId;
        uint rare; 
        uint hue; 
        uint sat; 
        uint lum; 
        uint score; 
        uint weight;
        string uri;
        uint price;
        bool listed;
    }

    IERC721Metadata public nft;
    IElephantNFTTraitTracker public tracker;
    IElephantNFTStaking public staking;
    address public maintenanceAddress;
    ElephantMarketPlace public marketplace;
    NFTSalesTracker public salesTracker;

    uint256 public constant convenienceFee = 0.0025e18;
    uint256 public constant unitFee = 0.001e18;
    
    /// @notice event emited when maintenance address is updated 
    event UpdateMaintenance(address oldAddr, address newAddr);

    event BulkBuy(address indexed buyer, uint256 totalFee,  uint256 tokenCount);

    event BulkTransfer(address indexed from, address indexed to, uint256 tokenCount);

    event Refund(address buyer, uint amount, uint tokenCount);

    /// @dev Create a deposit dependent staking contract for an nft collection and ERC20 reward token
    constructor(IERC721Metadata _nft, IElephantNFTTraitTracker _tracker, IElephantNFTStaking _staking, ElephantMarketPlace _marketplace, NFTSalesTracker _salesTracker, address _maintenance) {
        nft = _nft;
        marketplace = _marketplace;
        staking = _staking;
        maintenanceAddress = _maintenance;
        tracker = _tracker;
        salesTracker = _salesTracker;

    }

    receive()  payable external  {
        payable(msg.sender).transfer(msg.value);
    }

    /// @dev Maintenance address is updated
    function updateMaintenance(address _maintenance) onlyOwner external {
        require(_maintenance != maintenanceAddress, "duplicate address");

        emit UpdateMaintenance(maintenanceAddress, _maintenance);

        maintenanceAddress = _maintenance;
    }

    function bulkBuyFee(uint256[] memory _tokenIds) public view returns (uint256 totalFee, uint256 maintenanceFee, uint256 eligible) {

        uint price; 
        bool success;

        //add price and unitfee of all tokens available
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            (price, success) = marketplace.getListing(_tokenIds[i]);

            if (success) {
                totalFee += price + unitFee;
                maintenanceFee += unitFee;
                eligible++;
            }
        }

        //add base convenience fee if we processed some tokens
        if (eligible > 0) {
            totalFee += convenienceFee;
            maintenanceFee += convenienceFee;
        } 
        
    } 

    /// @dev Bulk transfer tokens to specific addresses owner by sender 
    function bulkTransfer(address _to, uint256[] memory _tokenIds) nonReentrant isRunning external payable {
        
        require(_tokenIds.length > 0, "tokens unspecified");
        require(msg.value >= convenienceFee, "insufficient funds");  //transfers only have a convenience fee
        
        address _from = msg.sender;

        //process transfers
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            
            //This will only work if the helper is approved
            nft.safeTransferFrom(_from, _to, _tokenIds[i]);
        }

        uint remainder =  msg.value - convenienceFee; 

        //transfer fees
        payable(maintenanceAddress).transfer(convenienceFee);

        //return any excess funds sent
        if (remainder > 0) {
            payable(_from).transfer(remainder);

            emit Refund(_from, remainder, 0);
        }

        emit BulkTransfer(_from, _to,  _tokenIds.length);

    }

    /// @dev Bulk transfer tokens to specific addresses owner by sender 
    function bulkBuy(uint256[] memory _tokenIds) nonReentrant isRunning external payable {
        require(_tokenIds.length > 0, "tokens unspecified");

        address buyer = msg.sender;

        bool success; 
        uint price; 
        
        uint remainder; 
        uint tokenId;
        address seller;

        //check payment and availability
        (uint256 totalFee, uint256 maintenanceFee, uint256 eligible) = bulkBuyFee(_tokenIds);

        require(eligible > 0, "specified set unavailable");
        require(msg.value >= totalFee, "insufficient funds");

        //handle excess payments
        remainder = msg.value - totalFee; 

        //if we get past the hard checks lets go shopping
        if (eligible > 0 ) {
            
            //process tokens to buy
            for (uint i = 0; i < _tokenIds.length; i++) {
                //Pull latest status if any tokens sold before submission or in the block 
                tokenId = _tokenIds[i];
                (price, success) = marketplace.getListing(tokenId);

                //if found, buy and send to buyer
                if (success){
                    seller = marketplace.ownerOf(tokenId);
                    marketplace.buy{value: price}(tokenId);
                    nft.safeTransferFrom(address(this), buyer, tokenId);
                    salesTracker.trackSale(buyer, seller, tokenId, price);
                }
            }

            //transfer fees
            payable(maintenanceAddress).transfer(maintenanceFee);

            emit BulkBuy(buyer, totalFee, eligible);

            //return any unused funds due to lack of full availbility
            if (remainder > 0) {
                payable(buyer).transfer(remainder);

                emit Refund(buyer, remainder, _tokenIds.length - eligible);
            }
        }
    }

    function getTokenInfo(uint256[] memory tokenIds) external view returns (TokenInfo[] memory results){

        results = new TokenInfo[](tokenIds.length);

        for (uint i = 0; i < tokenIds.length; i++ ) {
            results[i] = _tokenInfo(tokenIds[i]);
        } 

    }

    function _tokenInfo(uint256 _tokenId) internal view returns (TokenInfo memory result)  {

        (result.rare, result.hue, result.sat, result.lum, result.score) = tracker.getInfo(_tokenId);

        result.weight = 1e18 + (result.score * staking.rarityWeight());

        result.uri = nft.tokenURI(_tokenId);

        (result.price, result.listed) = marketplace.getListing(_tokenId);
        
    }

    
}

//Tracks NFT sales onchain to avoid the need for offchain log retrieval services
contract NFTSalesTracker is Whitelist {
    
    // Struct to store sale event details
    struct Sale {
        address buyer;
        address seller;
        uint tokenId;
        uint price;
        uint timestamp;
    }

    // Summary Holder data for holders that have used the marketplace
    struct Holder {
        address holder;
        uint units_sold;
        uint units_bought;
        uint income;
        uint costs;
        uint balance;
        uint staked;
        uint timestamp;
    }

    IERC721 public nft;
    IElephantNFTStaking public staking;
    ElephantMarketPlace public marketplace;


    /// @notice mapping of a holder to its wallet
    mapping(address => Holder) public holders;

    /// @notice global mapping of sales
    mapping(uint => Sale) public sales;

    uint public totalRevenue;
    uint public totalSold;

    /// @notice event emited when marketplace address is updated 
    event UpdateMarketplace(address oldAddr, address newAddr);

    /// @notice event emited when staking address is updated 
    event UpdateStaking(address oldAddr, address newAddr);

    /// @dev Needs access to nft / staking /marketplace to enhance bulk reporting for clients
    constructor(IERC721 _nft, IElephantNFTStaking _staking, ElephantMarketPlace _marketplace) {
        nft = _nft;
        staking = _staking;
        marketplace = _marketplace;
    }

    /// @dev Maintenance address is updated
    function updateStaking(IElephantNFTStaking _staking) onlyOwner external {
        require(address(_staking) != address(0), "address must be non-zero");


        emit UpdateStaking(address(staking), address(_staking));

        staking =  _staking;
    }

    /// @dev Maintenance address is updated
    function updateMarketplace(ElephantMarketPlace _marketplace) onlyOwner external {
        require(address(_marketplace) != address(0), "address must be non-zero");

        emit UpdateMarketplace(address(marketplace), address(_marketplace));

        marketplace = _marketplace;
    }


    // Function to track the sale of an NFT
    function trackSale(address buyer, address seller, uint256 tokenId, uint256 price) onlyWhitelisted public {
        
        // Store the sale event on-chain
        sales[totalSold] = Sale({
            buyer: buyer,
            seller: seller,
            tokenId: tokenId,
            price: price,
            timestamp: block.timestamp
        });

        Holder storage holder;

        // Update buyer stats
        holder = holders[buyer];
        holder.holder = buyer;
        holder.units_bought++ ;
        holder.costs += price;
        holder.timestamp = block.timestamp;

        //Update seller stats
        holder = holders[seller]; //update pointer to seller
        holder.holder = seller;
        holder.units_sold++;
        holder.income += price;
        holder.timestamp = block.timestamp;

        //Update global stats
        totalRevenue += price;
        totalSold++;
    }


    // Calculate price based on latest sales
    // lookback - how many trades in the past do you want to use
    function getPrice(uint lookback) external view returns (uint averagePrice, uint lastPrice, uint timestamp) {
        
        require(lookback <= totalSold && lookback > 0, "lookback out of range");
        uint spend;
        uint _lookback = lookback;

        lastPrice = sales[totalSold - 1].price;
        timestamp = sales[totalSold - 1].timestamp;

        for (uint i=totalSold - 1; _lookback > 0; i--) {
            spend += sales[i].price;
            _lookback--;
        } 

        averagePrice = spend / lookback; 
    }


    // Get sale details for specified saleIds
    function getSales(uint[] memory saleIds) external view returns (Sale[] memory results){
    
        results = new Sale[](saleIds.length);
       
        Sale memory sale;

        for (uint i = 0; i < saleIds.length; i++ ) {
            sale = sales[saleIds[i]];
            results[i] = Sale(sale.buyer, sale.seller, sale.tokenId, sale.price, sale.timestamp);
        } 
    }

    // Get holder details for specified addresses
    // A set of all holders / count can be extracted from sales data, so it is not stored onchain for efficiency
    function getHolders(address[] memory holderIds) external view returns (Holder[] memory results){
    
        results = new Holder[](holderIds.length);
       
        Holder memory holder;

        for (uint i = 0; i < holderIds.length; i++ ) {
            holder = holders[holderIds[i]];
            results[i] = Holder(
                holder.holder, 
                holder.units_sold, 
                holder.units_bought,
                holder.income,
                holder.costs, 
                nft.balanceOf(holder.holder), 
                staking.balanceOf(holder.holder), 
                holder.timestamp);
        } 
    }
}