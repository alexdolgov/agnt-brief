// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/Multicall.sol";
import "./ERC2771Context.sol";
import "./TransferHelper.sol";

contract GasHeroToken is ERC20Permit, ERC2771Context, Multicall, AccessControl, ReentrancyGuard {
    using ECDSA for bytes32;

    struct Bill {
        address user;
        uint256 billId;
        uint256 amount;
        bytes userSignature;
        bytes systemSignature;
    }

    bytes32 public constant SYSTEM_SIGNER = keccak256("SYSTEM_SIGNER");
    bytes32 public constant SYSTEM_DEPOSITOR = keccak256("SYSTEM_DEPOSITOR");

    address immutable private _gmtToken;
    uint8   immutable private _decimals;

    address private _feeAccount;
    mapping(uint256 => uint256) private _withdrawMap;
    mapping(uint256 => uint256) private _billMap;

    event SetFeeAccountEvent(address indexed feeAccount);
    event DepositEvent(address indexed user, address indexed from, uint256 amount);
    event WithdrawEvent(uint256 indexed withdrawId, address indexed user, uint256 amount);
    event CommitBillEvent(uint256 indexed billId, address indexed user, uint256 amount);

    constructor(address gmtToken, uint8 d, address feeAccount)
        ERC20("Gas Hero Token", "GHT") ERC20Permit("Gas Hero Token")
    {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(SYSTEM_SIGNER, msg.sender);
        _grantRole(SYSTEM_DEPOSITOR, msg.sender);

        _gmtToken = gmtToken;
        _decimals = d;
        _feeAccount = feeAccount;
    }

    function _msgSender() internal override(ERC2771Context, Context) view virtual returns (address) {
        return ERC2771Context._msgSender();
    }

    function _msgData() internal override(ERC2771Context, Context) view virtual returns (bytes calldata) {
        return ERC2771Context._msgData();
    }

    function _beforeTokenTransfer(address from, address to, uint256 /* amount */) internal virtual override {
        require(from == address(0) || to == address(0), "Forbid transfer tokens");
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function setTrustedForwarder(address trustedForwarder) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setTrustedForwarder(trustedForwarder);
    }

    function setFeeAccount(address feeAccount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _feeAccount = feeAccount;
        emit SetFeeAccountEvent(feeAccount);
    }

    function getFeeAccount() public view returns (address) {
        return _feeAccount;
    }

    function getWithdrawAmount(uint256 withdrawId) public view returns (uint256) {
        return _withdrawMap[withdrawId];
    }

    function getBillAmount(uint256 billId) public view returns (uint256) {
        return _billMap[billId];
    }

    function deposit(uint256 amount) external nonReentrant {
        TransferHelper.safeTransferFrom(_gmtToken, _msgSender(), address(this), amount);
        _mint(_msgSender(), amount);
        emit DepositEvent(_msgSender(), _msgSender(), amount);
    }

    function depositBySystem(uint256[] calldata amounts, address[] calldata users) external nonReentrant onlyRole(SYSTEM_DEPOSITOR) {
        require(amounts.length == users.length, "Invalid length");
        uint256 sumOfAmount = 0;
        for (uint256 i = 0; i < amounts.length; i++) {
            sumOfAmount += amounts[i];
            _mint(users[i], amounts[i]);
            emit DepositEvent(users[i], _msgSender(), amounts[i]);
        }
        TransferHelper.safeTransferFrom(_gmtToken, _msgSender(), address(this), sumOfAmount);
    }

    function commitBill(
        address user,
        uint256 billId,
        uint256 amount,
        bytes memory userSignature,
        bytes memory systemSignature
    ) public nonReentrant {
        require(_billMap[billId] == 0, "BillId already used");
        require(amount > 0, "Invalid amount");
        require(balanceOf(user) >= amount, "Insufficient balance");

        bytes32 messageHash1 = keccak256(abi.encodePacked("GHT commit bill", address(this), user, billId, amount));
        address signer1 = messageHash1.toEthSignedMessageHash().recover(userSignature);
        require(signer1 == user, "Invalid user signature");

        bytes32 messageHash2 = keccak256(abi.encodePacked("GHT commit bill", address(this), user, billId, amount));
        address signer2 = messageHash2.toEthSignedMessageHash().recover(systemSignature);
        require(hasRole(SYSTEM_SIGNER, signer2), "Invalid system signature");

        _billMap[billId] = amount;
        _burn(user, amount);
        TransferHelper.safeTransfer(_gmtToken, _feeAccount, amount);
        emit CommitBillEvent(billId, user, amount);
    }

    function commitBills(
        Bill[] memory bills
    ) external {
        for (uint256 i = 0; i < bills.length; i++) {
            commitBill(
                bills[i].user,
                bills[i].billId,
                bills[i].amount,
                bills[i].userSignature,
                bills[i].systemSignature
            );
        }
    }

    function withdraw(
        uint256 withdrawId,
        uint256 amount,
        bytes memory signature
    ) external nonReentrant {
        address user = _msgSender();
        require(_withdrawMap[withdrawId] == 0, "WithdrawId already used");
        require(amount > 0, "Invalid amount");
        require(balanceOf(user) >= amount, "Insufficient balance");

        bytes32 messageHash = keccak256(abi.encodePacked("GHT withdraw", address(this), user, withdrawId, amount));
        address signer = messageHash.toEthSignedMessageHash().recover(signature);
        require(hasRole(SYSTEM_SIGNER, signer), "Invalid signature");

        _withdrawMap[withdrawId] = amount;
        _burn(user, amount);
        TransferHelper.safeTransfer(_gmtToken, user, amount);
        emit WithdrawEvent(withdrawId, user, amount);
    }
}
