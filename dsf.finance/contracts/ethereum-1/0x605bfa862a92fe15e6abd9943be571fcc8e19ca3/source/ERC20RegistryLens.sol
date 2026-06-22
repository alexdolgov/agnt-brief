// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/**
 * Minimal ERC20 interface for reading balance and allowance.
 * Used only for view requests balanceOf and allowance.
 */
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
}

/**
 * ERC20 token registry + lens for getting balances and allowances in one call.
 * 
 * Features:
 * - Simple Ownable control (owner can add/remove tokens).
 * - Secure reading of non-standard tokens (via staticcall, without revert).
 * - Returns arrays of addresses, balances, and approvals.
 */
 contract ERC20RegistryLens {
    
    /* ---------------------------- Access Control ---------------------------- */

    /// @notice Current contract owner
    address public owner;

    /// @notice Event when the owner changes
    event OwnershipTransferred(address indexed prevOwner, address indexed newOwner);

    /// @dev Modifier: restriction of calls by owner functions
    modifier onlyOwner() {
        require(msg.sender == owner, "NOT_OWNER");
        _;
    }

    /* ------------------------------ Token List ------------------------------ */

    /// @notice Internal token list
    address[] private _tokens;

    /// @notice Flag indicating the presence of a token in the registry
    mapping(address => bool) public inRegistry;

    /// @notice Event when adding a token
    event TokenAdded(address indexed token);

    /// @notice Event when token is deleted
    event TokenRemoved(address indexed token);

    /**
     * @param initialTokens Initial set of token addresses (may be empty).
     */
    constructor(address[] memory initialTokens) {
        owner = msg.sender;
        if (initialTokens.length > 0) {
            for (uint256 i = 0; i < initialTokens.length; i++) {
                address t = initialTokens[i];
                require(t != address(0), "ZERO_ADDR");
                if (!inRegistry[t]) {
                    inRegistry[t] = true;
                    _tokens.push(t);
                    emit TokenAdded(t);
                }
            }
        }
    }

    /* ------------------------------- Management ------------------------------ */

    /**
     * Transfers ownership of the contract to a new address.
     * @param newOwner New owner (non-zero address).
     */
    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "ZERO_ADDR");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    /**
     * Adds tokens to the registry.
     * @param tokens_ Array of token addresses to add.
     */
    function addTokens(address[] calldata tokens_) external onlyOwner {
        for (uint256 i = 0; i < tokens_.length; i++) {
            address t = tokens_[i];
            require(t != address(0), "ZERO_ADDR");
            if (!inRegistry[t]) {
                inRegistry[t] = true;
                _tokens.push(t);
                emit TokenAdded(t);
            }
        }
    }

    /**
     * Removes tokens from the registry (without preserving order).
     * @param tokens_ Array of token addresses to remove.
     */
    function removeTokens(address[] calldata tokens_) external onlyOwner {
        for (uint256 i = 0; i < tokens_.length; i++) {
            address t = tokens_[i];
            if (!inRegistry[t]) continue;
            inRegistry[t] = false;
            // найдём индекс и удалим swap&pop
            for (uint256 j = 0; j < _tokens.length; j++) {
                if (_tokens[j] == t) {
                    _tokens[j] = _tokens[_tokens.length - 1];
                    _tokens.pop();
                    emit TokenRemoved(t);
                    break;
                }
            }
        }
    }

    /* --------------------------------- View --------------------------------- */

    /**
     * Returns a list of all tokens from the registry.
     * @return A list of token addresses.
     */
    function tokens() external view returns (address[] memory) {
        return _tokens;
    }

    /**
     * Returns the number of tokens in the registry.
     * @return Number of tokens.
     */
    function tokensLength() external view returns (uint256) {
        return _tokens.length;
    }

    /* ------------------------------ Main Lens ------------------------------- */
    
    /**
     * Returns arrays of tokens, balances, and approvals.
     * 
     * @param owner_ Address of the token owner.
     * @param spender_ Address for which allowance is checked.
     * @return tokenList Array of token addresses.
     * @return balances Array of balances (balanceOf(owner_)).
     * @return allowances_ Array of allowances (allowance(owner_, spender_)).
     */
    function balancesAndAllowances(
        address owner_,  // Address whose balance is being checked (token owner)
        address spender_ // Address to which the approval (spending) was issued
    )
        external
        view
        returns (
            address[] memory tokenList,
            uint256[] memory balances,
            uint256[] memory allowances_
        )
    {
        tokenList = _tokens;
        uint256 len = tokenList.length;
        balances = new uint256[](len);
        allowances_ = new uint256[](len);

        for (uint256 i = 0; i < len; i++) {
            (uint256 bal, uint256 allow_) = _safeRead(tokenList[i], owner_, spender_);
            balances[i] = bal;
            allowances_[i] = allow_;
        }
    }

    /**
     * Paginated version: returns a portion of the token array with their balances and approvals.
     * 
     * @param start Start index of the sample.
     * @param count Maximum number of elements.
     * @param owner_ Address of the token owner.
     * @param spender_ Address for which the allowance is checked.
     * @return tokenSlice Slice of the token array.
     * @return balances Array of balances.
     * @return allowances_ Array of approvals.
     */
    function balancesAndAllowancesRange(
        uint256 start,
        uint256 count,
        address owner_,
        address spender_
    )
        external
        view
        returns (
            address[] memory tokenSlice,
            uint256[] memory balances,
            uint256[] memory allowances_
        )
    {
        uint256 len = _tokens.length;
        if (start >= len) {
            return (new address[](0), new uint256[](0), new uint256[](0));
        }
        uint256 end = start + count;
        if (end > len) end = len;
        uint256 n = end - start;

        tokenSlice = new address[](n);
        balances = new uint256[](n);
        allowances_ = new uint256[](n);

        for (uint256 i = 0; i < n; i++) {
            address token = _tokens[start + i];
            tokenSlice[i] = token;
            (uint256 bal, uint256 allow_) = _safeRead(token, owner_, spender_);
            balances[i] = bal;
            allowances_[i] = allow_;
        }
    }

    /**
     * Returns the balance and allowance for a specific token.
     *
     * Use this when you need a point query for a single token address,
     * so as not to trigger massive methods. Safe for non-standard tokens:
     * in case of a read error, it will return 0 instead of revert.
     *
     * @param token    ERC20 token address.
     * @param owner_   Address of the token owner for whom balanceOf is read.
     * @param spender_ Address of the spender for whom allowance(owner_, spender_) is read.
     * @return bal     Owner's balance in minimum token units.
     * @return allow_  Owner's allowance for spender_ in minimum units.
     */
    function balanceAndAllowanceOf(address token, address owner_, address spender_)
        external
        view
        returns (uint256 bal, uint256 allow_)
    {
        (bal, allow_) = _safeRead(token, owner_, spender_);
    }

    /* ------------------------------- Internal ------------------------------- */

    /**
     * Securely reads the balance and allowance of a token.
     * Returns 0 if the token does not comply with the standard.
     * 
     * @param token Token address.
     * @param owner_ Token owner.
     * @param spender_ Spending address.
     * @return bal Balance (balanceOf).
     * @return allow_ Allowance (allowance).
     */
    function _safeRead(
        address token,
        address owner_,
        address spender_
    ) internal view returns (uint256 bal, uint256 allow_) {
        // balanceOf
        (bool ok1, bytes memory d1) = token.staticcall(
            abi.encodeWithSelector(IERC20.balanceOf.selector, owner_)
        );
        if (ok1 && d1.length >= 32) {
            // NOLINTNEXTLINE
            bal = abi.decode(d1, (uint256));
        } else {
            bal = 0;
        }

        // allowance
        (bool ok2, bytes memory d2) = token.staticcall(
            abi.encodeWithSelector(IERC20.allowance.selector, owner_, spender_)
        );
        if (ok2 && d2.length >= 32) {
            // NOLINTNEXTLINE
            allow_ = abi.decode(d2, (uint256));
        } else {
            allow_ = 0;
        }
    }
}