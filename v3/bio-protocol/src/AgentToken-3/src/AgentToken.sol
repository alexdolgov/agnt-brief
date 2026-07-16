// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "ozUpgradeable/contracts/utils/ContextUpgradeable.sol";
import "ozUpgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import "oz/contracts/utils/structs/EnumerableSet.sol";
import "oz/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IAgentToken.sol";
import "./interfaces/IAgentFactory.sol";

import {AccessControlUpgradeable} from "ozUpgradeable/contracts/access/AccessControlUpgradeable.sol";
import {INonfungiblePositionManager} from "./interfaces/INonfungiblePositionManager.sol";
import {IPoolInitializer} from "./interfaces/IPoolInitializer.sol";
import {ConcentratedRange} from "../src/Launch/LaunchTypes.sol";

contract AgentToken is ContextUpgradeable, IAgentToken, Ownable2StepUpgradeable, AccessControlUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using SafeERC20 for IERC20;

    uint256 internal constant BP_DENOM = 10000;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    address public uniswapV3Pair;
    INonfungiblePositionManager public positionManager;

    uint32 public fundedDate;
    address public pairToken; // The token used to trade for this token

    string private _name;
    string private _symbol;

    uint256 private initalDaoLp;
    uint256 private initalPairLp;
    uint256 private _totalSupply;

    /**
     * @dev {_balances} Addresses balances
     */
    mapping(address => uint256) private _balances;

    /**
     * @dev {_allowances} Addresses allocance details
     */
    mapping(address => mapping(address => uint256)) private _allowances;

    IAgentFactory private _factory; // Single source of truth

    /**
     * @dev {onlyOwnerOrFactory}
     *
     * Throws if called by any account other than the owner, factory or pool.
     */
    modifier onlyOwnerOrFactory() {
        if (owner() != _msgSender() && address(_factory) != _msgSender()) {
            revert CallerIsNotAdminNorFactory();
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address[3] memory integrationAddresses_, bytes memory baseParams_, bytes memory mintData_)
        external
        initializer
    {
        __AccessControl_init();
        if (
            integrationAddresses_[0] == address(0) || integrationAddresses_[1] == address(0)
                || integrationAddresses_[2] == address(0)
        ) {
            revert InvalidAddress();
        }

        (uint24 fee, uint160 initialSqrtPriceX96) = _decodeBaseParams(integrationAddresses_[0], baseParams_);
        positionManager = INonfungiblePositionManager(integrationAddresses_[1]);
        pairToken = integrationAddresses_[2];

        _mintBalances(mintData_);

        uniswapV3Pair = _createPair(fee, initialSqrtPriceX96);

        _factory = IAgentFactory(_msgSender());
    }

    /**
     * @dev function {_decodeBaseParams}
     *
     * Decode NFT Parameters
     *
     * @param projectOwner_ The owner of this contract
     * @param encodedBaseParams_ The base params encoded into a bytes array
     */
    function _decodeBaseParams(address projectOwner_, bytes memory encodedBaseParams_)
        internal
        returns (uint24 fee, uint160 initialSqrtPriceX96)
    {
        _transferOwnership(projectOwner_);
        _grantRole(DEFAULT_ADMIN_ROLE, projectOwner_);
        _grantRole(MINTER_ROLE, projectOwner_);

        (_name, _symbol, fee, initialSqrtPriceX96) = abi.decode(encodedBaseParams_, (string, string, uint24, uint160));
    }

    /**
     * @dev function {_mintBalances}
     *
     * Mint initial balances
     *
     * @param mintData_ launch address and tokens for lp and launch claim
     */
    function _mintBalances(bytes memory mintData_) internal {
        (
            address launch,
            uint256 lpSupply,
            uint256 agentTokenForLaunchClaim,
            uint256 agentTokenForLpPositions,
            uint256 pairLp
        ) = abi.decode(mintData_, (address, uint256, uint256, uint256, uint256));

        if (lpSupply > 0) _mint(address(this), lpSupply);
        if (agentTokenForLaunchClaim > 0) _mint(address(launch), agentTokenForLaunchClaim);
        if (agentTokenForLpPositions > 0) _mint(address(this), agentTokenForLpPositions);

        initalPairLp = pairLp;
        initalDaoLp = lpSupply;
    }

    /**
     * @dev function {_createPair}
     *
     * Create the uniswap pair
     *
     * @return uniswapV3Pair_ The pair address
     */
    function _createPair(uint24 fee, uint160 initialSqrtPriceX96) internal returns (address uniswapV3Pair_) {
        address token0 = pairToken;
        address token1 = address(this);
        if (token0 > token1) (token0, token1) = (token1, token0);
        uniswapV3Pair_ = IPoolInitializer(address(positionManager)).createAndInitializePoolIfNecessary(
            token0, token1, fee, initialSqrtPriceX96
        );
        emit LiquidityPoolCreated(uniswapV3Pair_);
    }

    /**
     * @dev function {addInitialLiquidity}
     *
     * Add initial liquidity to the uniswap pair
     *
     * @param lpOwner The recipient of LP tokens
     */
    function addInitialLiquidity(address lpOwner, ConcentratedRange[] memory ranges, uint24 fee)
        external
        onlyOwnerOrFactory
    {
        _addInitialLiquidity(lpOwner, ranges, fee);
    }

    /**
     * @dev function {_addInitialLiquidity}
     *
     * Add initial liquidity to the uniswap pair (internal function that does processing)
     *
     * * @param lpOwner The recipient of LP tokens
     */
    function _addInitialLiquidity(address lpOwner, ConcentratedRange[] memory ranges, uint24 fee) internal {
        if (fundedDate != 0) revert InitialLiquidityAlreadyAdded();
        fundedDate = uint32(block.timestamp);

        address token0 = pairToken;
        address token1 = address(this);
        uint256 fullamount0 = initalPairLp;
        uint256 fullamount1 = initalDaoLp;

        bool swappedTokens;
        if (token0 > token1) {
            swappedTokens = true;
            (token0, token1) = (token1, token0);
            (fullamount0, fullamount1) = (fullamount1, fullamount0);
        }

        (int24 tickLower, int24 tickUpper) = _getTick(fee);

        IERC20(token0).forceApprove(address(positionManager), fullamount0);
        IERC20(token1).forceApprove(address(positionManager), fullamount1);

        _mintPosition(token0, token1, fee, tickLower, tickUpper, fullamount0, fullamount1, lpOwner);

        for (uint256 i = 0; i < ranges.length; i++) {
            if (swappedTokens) {
                (ranges[i].amount0, ranges[i].amount1) = (ranges[i].amount1, ranges[i].amount0);
                (ranges[i].tickLower, ranges[i].tickUpper) = (-ranges[i].tickUpper, -ranges[i].tickLower);
            }

            IERC20(token0).forceApprove(address(positionManager), ranges[i].amount0);
            IERC20(token1).forceApprove(address(positionManager), ranges[i].amount1);

            _mintPosition(
                token0,
                token1,
                fee,
                ranges[i].tickLower,
                ranges[i].tickUpper,
                ranges[i].amount0,
                ranges[i].amount1,
                lpOwner
            );
        }
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override(IERC20) returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance < subtractedValue) {
            revert AllowanceDecreasedBelowZero();
        }
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _validatedLimits(from, to, amount);

        _balances[from] = fromBalance - amount;
        _balances[to] += amount;

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /**
     * @dev function {_validatedLimits}
     *
     * @param from_ From address for the transaction
     * @param to_ To address for the transaction
     * @param amount_ Amount of the transaction
     */
    function _validatedLimits(address from_, address to_, uint256 amount_)
        internal
        view
        returns (uint256 fromBalance_)
    {
        if (fundedDate == 0) revert InitialLiquidityNotYetAdded();

        if (from_ == address(0)) {
            revert TransferFromZeroAddress();
        }

        if (to_ == address(0)) {
            revert TransferToZeroAddress();
        }

        fromBalance_ = _balances[from_];
        if (fromBalance_ < amount_) {
            revert TransferAmountExceedsBalance();
        }

        return (fromBalance_);
    }

    /**
     * @dev function {withdrawETH} onlyOwnerOrFactory
     *
     * A withdraw function to allow ETH to be withdrawn by the manager
     *
     * This contract should never hold ETH. The only envisaged scenario where
     * it might hold ETH is a failed autoswap where the uniswap swap has completed,
     * the recipient of ETH reverts, the contract then wraps to WETH and the
     * wrap to WETH fails.
     *
     * This feels unlikely. But, for safety, we include this method.
     *
     * @param amount_ The amount to withdraw
     */
    function withdrawETH(uint256 amount_) external onlyOwnerOrFactory {
        (bool success,) = _msgSender().call{value: amount_}("");
        if (!success) {
            revert TransferFailed();
        }
    }

    /**
     * @dev function {withdrawERC20} onlyOwnerOrFactory
     *
     * A withdraw function to allow ERC20s (except address(this)) to be withdrawn.
     *
     * @param token_ The ERC20 contract
     * @param amount_ The amount to withdraw
     */
    function withdrawERC20(address token_, uint256 amount_) external onlyOwnerOrFactory {
        if (token_ == address(this)) {
            revert CannotWithdrawThisToken();
        }
        IERC20(token_).safeTransfer(_msgSender(), amount_);
    }

    function mint(address account, uint256 amount) external onlyRole(MINTER_ROLE) {
        if (amount == 0) revert MintZeroAmount();
        _mint(account, amount);
    }
    /**
     * @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */

    function _mint(address account, uint256 amount) internal virtual {
        if (account == address(0)) {
            revert MintToZeroAddress();
        }

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += uint128(amount);
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        if (account == address(0)) {
            revert BurnFromTheZeroAddress();
        }

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        if (accountBalance < amount) {
            revert BurnExceedsBalance();
        }

        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= uint128(amount);
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        if (owner == address(0)) {
            revert ApproveFromTheZeroAddress();
        }

        if (spender == address(0)) {
            revert ApproveToTheZeroAddress();
        }

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < amount) {
                revert InsufficientAllowance();
            }

            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Destroys a `value` amount of tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 value) public virtual {
        _burn(_msgSender(), value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, deducting from
     * the caller's allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least
     * `value`.
     */
    function burnFrom(address account, uint256 value) public virtual {
        _spendAllowance(account, _msgSender(), value);
        _burn(account, value);
    }

    function _mintPosition(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0,
        uint256 amount1,
        address recipient
    ) internal returns (uint256 tokenId) {
        INonfungiblePositionManager.MintParams memory params = INonfungiblePositionManager.MintParams({
            token0: token0,
            token1: token1,
            fee: fee,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Desired: amount0,
            amount1Desired: amount1,
            amount0Min: 0,
            amount1Min: 0,
            recipient: recipient,
            deadline: block.timestamp
        });

        (tokenId,,,) = positionManager.mint(params);
    }

    function _getTick(uint24 fee) internal view returns (int24 tickLower, int24 tickUpper) {
        if (fee == 10000) {
            tickLower = -887200;
            tickUpper = 887200;
        }

        if (fee == 3000) {
            tickLower = -887220;
            tickUpper = 887220;
        }

        if (fee == 500) {
            tickLower = -887270;
            tickUpper = 887270;
        }

        if (fee == 100) {
            tickLower = -887272;
            tickUpper = 887272;
        }
    }
    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    receive() external payable {}
}
