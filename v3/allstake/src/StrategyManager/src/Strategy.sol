// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./interfaces/IStrategy.sol";
import "./utils/VersionedInitializable.sol";

contract Strategy is IStrategy, VersionedInitializable, ERC20Upgradeable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.UintSet;

    uint256 public constant REVISION = 1;

    /// @notice shares/balance offset used as part of the mitigation of the common 'share inflation' attack
    uint256 public constant SHARES_OFFSET = 1e3;
    uint256 public constant BALANCE_OFFSET = 1e3;

    /// underlying token address
    IERC20 public underlying;
    /// receipt token name
    string private receiptTokenName;
    /// receipt token symbol
    string private receiptTokenSymbol;
    /// address of strategy manager
    address public strategyManager;
    /// withdraw queueing delay length in seconds
    uint256 public withdrawDelay;
    /// minimum amount to deposit
    uint256 public minDeposit;

    /// list of all withdrawal requests
    WithdrawalRequest[] public withdrawalRequests;
    /// Set of all pending withdrawal request IDs for each user
    mapping(address => EnumerableSet.UintSet) private pendingWithdrawals;

    modifier onlyStrategyManager() {
        require(
            msg.sender == strategyManager,
            "Strategy: Not strategy manager"
        );
        _;
    }

    constructor() {
        disableInitializers();
    }

    // This function is marked virtual to allow test contracts to inherit from it.
    // In reality new versions should re-define the const REVISION above.
    function getRevision() internal pure virtual override returns (uint256) {
        return REVISION;
    }

    function initialize(
        IERC20 _underlying,
        uint256 _withdrawDelay,
        uint256 _minDeposit,
        string calldata _name,
        string calldata _symbol
    ) external versionedInitializer {
        underlying = _underlying;
        withdrawDelay = _withdrawDelay;
        minDeposit = _minDeposit;
        strategyManager = msg.sender;
        receiptTokenName = _name;
        receiptTokenSymbol = _symbol;
    }

    // --
    // receipt ERC20 token override methods

    function name() public view override returns (string memory) {
        return receiptTokenName;
    }

    function symbol() public view override returns (string memory) {
        return receiptTokenSymbol;
    }

    function decimals() public view virtual override returns (uint8) {
        try IERC20Metadata(address(underlying)).decimals() returns (
            uint8 value
        ) {
            return value;
        } catch {
            return 18;
        }
    }

    // --
    // strategy methods

    /// @inheritdoc IStrategy
    function deposit(
        uint256 amount,
        address user
    ) external onlyStrategyManager returns (uint256) {
        require(amount >= minDeposit, "Strategy: Min deposit amount not met");

        uint256 shares = underlyingBalanceToShares(amount);
        require(shares > 0, "Strategy: Zero deposit shares");

        underlying.safeTransferFrom(user, address(this), amount);
        _mint(user, shares);

        return shares;
    }

    /// @inheritdoc IStrategy
    function queueWithdraw(
        uint256 shares,
        address user
    ) external onlyStrategyManager returns (uint32) {
        require(shares > 0, "Strategy: Zero withdraw shares");

        // transfer receipt tokens to strategy contract first
        // cannot directly call `transferFrom` on ourselves because msg.sender would be wrong
        _spendAllowance(user, address(this), shares);
        _transfer(user, address(this), shares);

        WithdrawalRequest memory request;
        request.user = user;
        request.shares = shares;
        request.timestamp = block.timestamp;
        request.pending = true;

        withdrawalRequests.push(request);
        uint32 requestId = uint32(withdrawalRequests.length - 1);
        pendingWithdrawals[user].add(requestId);

        return requestId;
    }

    /// @inheritdoc IStrategy
    function completeWithdraw(
        address user,
        uint256 minWithdrawDelay,
        uint32[] calldata requestIds
    ) external onlyStrategyManager returns (uint256) {
        require(requestIds.length > 0, "Strategy: Empty request ID list");
        uint256 totalWithdrawShares = 0;
        uint32 i;
        for (i = 0; i < requestIds.length; i++) {
            uint32 requestId = requestIds[i];
            WithdrawalRequest storage request = withdrawalRequests[requestId];
            require(
                request.user == user,
                "Strategy: Cannot withdraw for others"
            );
            require(request.pending, "Strategy: Withdrawal not pending");
            require(
                request.timestamp + minWithdrawDelay <= block.timestamp,
                "Strategy: Min withdraw delay not met"
            );
            require(
                request.timestamp + withdrawDelay <= block.timestamp,
                "Strategy: Withdraw delay not met"
            );
            request.pending = false;
            pendingWithdrawals[user].remove(requestId);
            totalWithdrawShares += request.shares;
        }

        uint256 amount = sharesToUnderlyingBalance(totalWithdrawShares);

        // receipt tokens to burn should already be transferred via queueWithdraw
        _burn(address(this), totalWithdrawShares);

        underlying.safeTransfer(user, amount);

        return amount;
    }

    /// @inheritdoc IStrategy
    function setWithdrawDelay(uint256 delay) external onlyStrategyManager {
        withdrawDelay = delay;
    }

    /// @inheritdoc IStrategy
    function setMinDeposit(uint256 amount) external onlyStrategyManager {
        minDeposit = amount;
    }

    // --
    // helper functions

    /// @inheritdoc IStrategy
    function userPendingWithdrawalRequestLen(
        address user
    ) external view returns (uint32) {
        return uint32(pendingWithdrawals[user].length());
    }

    /// @inheritdoc IStrategy
    function userPendingWithdrawalRequestIds(
        address user,
        uint32 offset,
        uint32 limit
    ) external view returns (uint32[] memory) {
        uint32[] memory ids = new uint32[](limit);
        uint32 i;
        for (i = 0; i < limit; i++) {
            ids[i] = uint32(pendingWithdrawals[user].at(offset + i));
        }

        return ids;
    }

    /// @inheritdoc IStrategy
    function underlyingBalanceToShares(
        uint256 amount
    ) public view returns (uint256) {
        uint256 virtualShares = totalSupply() + SHARES_OFFSET;
        uint256 virtualBalance = _underlyingBalance() + BALANCE_OFFSET;
        return (amount * virtualShares) / virtualBalance;
    }

    /// @inheritdoc IStrategy
    function sharesToUnderlyingBalance(
        uint256 shares
    ) public view returns (uint256) {
        uint256 virtualShares = totalSupply() + SHARES_OFFSET;
        uint256 virtualBalance = _underlyingBalance() + BALANCE_OFFSET;
        return (shares * virtualBalance) / virtualShares;
    }

    function _underlyingBalance() private view returns (uint256) {
        return underlying.balanceOf(address(this));
    }
}
