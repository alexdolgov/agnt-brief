// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { AccessControlEnumerable } from "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { ERC20, ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

abstract contract BaseAIDollarAlpha is ERC4626, AccessControlEnumerable, ReentrancyGuard, ERC20Permit {
    using SafeERC20 for IERC20;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    bool public withdrawEnabled;
    uint256 public maxDepositLimit;
    uint256 public totalDeposit;
    uint256 public claimedProfit;

    event WithdrawToggled(bool enabled);
    event ProfitClaimed(uint256 amount);
    event MaxDepositLimitSet(uint256 oldLimit, uint256 newLimit);

    constructor(
        IERC20 asset,
        address admin,
        uint256 _maxDepositLimit,
        string memory name,
        string memory symbol
    )
        ERC4626(asset)
        ERC20(name, symbol)
        ERC20Permit(name)
    {
        withdrawEnabled = false;
        maxDepositLimit = _maxDepositLimit;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MANAGER_ROLE, msg.sender);
    }

    // External functions - State modifying
    function toggleWithdraw() external onlyRole(DEFAULT_ADMIN_ROLE) {
        withdrawEnabled = !withdrawEnabled;
        emit WithdrawToggled(withdrawEnabled);
    }

    function setMaxDepositLimit(uint256 newLimit) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldLimit = maxDepositLimit;
        maxDepositLimit = newLimit;
        emit MaxDepositLimitSet(oldLimit, newLimit);
    }

    function sweep(IERC20 token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (address(token) == address(0)) {
            uint256 balance = address(this).balance;
            Address.sendValue(payable(msg.sender), amount > balance ? balance : amount);
        } else {
            uint256 balance = token.balanceOf(address(this));
            token.safeTransfer(msg.sender, amount > balance ? balance : amount);
        }
    }

    function execute(address to, bytes calldata data) external payable onlyRole(DEFAULT_ADMIN_ROLE) returns (bool, bytes memory) {
        (bool success, bytes memory result) = to.call{ value: msg.value }(data);

        return (success, result);
    }

    // Hooks for yield logic
    function earn(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _earn(amount);
    }

    function unearn(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unearn(amount);
    }

    function claimProfit() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _claimProfit();
    }

    // Public functions - State modifying
    function deposit(uint256 assets, address receiver) public virtual override nonReentrant returns (uint256) {
        require(totalAssets() + assets <= maxDepositLimit, "Deposit exceeds limit");
        uint256 shares = super.deposit(assets, receiver);
        totalDeposit += assets;
        return shares;
    }

    function mint(uint256 shares, address receiver) public virtual override nonReentrant returns (uint256) {
        uint256 assets = previewMint(shares);
        require(totalAssets() + assets <= maxDepositLimit, "Mint exceeds limit");
        super.mint(shares, receiver);
        totalDeposit += assets;
        return assets;
    }

    function withdraw(uint256 assets, address receiver, address owner) public virtual override nonReentrant returns (uint256) {
        require(withdrawEnabled, "Withdraw is disabled");
        uint256 shares = super.withdraw(assets, receiver, owner);
        totalDeposit -= assets;
        return shares;
    }

    function redeem(uint256 shares, address receiver, address owner) public virtual override nonReentrant returns (uint256) {
        require(withdrawEnabled, "Withdraw is disabled");
        uint256 assets = super.redeem(shares, receiver, owner);
        totalDeposit -= assets;
        return assets;
    }

    // Public view functions
    function isValidateSignature(bytes32 hash, bytes memory signature) public view returns (bytes4) {
        if (hasRole(MANAGER_ROLE, ECDSA.recover(hash, signature))) {
            return 0x1626ba7e;
        }
        return 0x00000000;
    }

    function totalAssets() public view virtual override returns (uint256) {
        return totalDeposit;
    }

    function decimals() public view virtual override(ERC20, ERC4626) returns (uint8) {
        return ERC4626.decimals();
    }

    // Internal virtual functions to be implemented by child contracts
    function _earn(uint256 amount) internal virtual;
    function _unearn(uint256 amount) internal virtual;
    function _claimProfit() internal virtual;
}
