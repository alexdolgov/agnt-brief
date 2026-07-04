// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.27;

import {GenesisReceiptToken} from "./GenesisReceiptToken.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMonetrixDepositVault} from "./interfaces/IMonetrixDepositVault.sol";
import {SafeERC20Lite} from "./lib/SafeERC20Lite.sol";

contract MonetrixGenesisVault {
    using SafeERC20Lite for IERC20;

    address public constant USDC_ADDRESS = 0xb88339CB7199b77E23DB6E890353E22632Ba630f;
    uint256 public constant MAX_WITHDRAW_TO_USDC_DELAY = 7 days;

    enum DepositState {
        DepositsOpen,
        DepositsClosed
    }

    struct PendingWithdraw {
        uint256 amount;
        uint256 unlockAt;
    }

    IERC20 public immutable USDC;
    GenesisReceiptToken public immutable receipt;

    address public owner;
    address public monetrixVault;

    bool public isUSDMLive;
    bool private _entered;

    uint256 public depositCap;
    uint256 public minDepositAmount;
    uint256 public totalDeposited;
    uint256 public totalWithdrawnToUSDM;
    uint256 public totalWithdrawnToUSDC;

    uint256 public depositStart;
    uint256 public depositEnd;
    uint256 public withdrawToUSDCDelay;

    DepositState public depositState = DepositState.DepositsClosed;

    mapping(address => uint256) public userDeposited;
    mapping(address => uint256) public userLastDepositAt;
    mapping(address => uint256) public userWithdrawnToUSDM;
    mapping(address => uint256) public userWithdrawnToUSDC;

    uint256 public totalPendingWithdrawToUSDC;
    mapping(address => PendingWithdraw) public pendingWithdraw;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event Deposited(address indexed user, uint256 amount);
    event WithdrawnToUSDM(address indexed user, uint256 usdcAmount, uint256 mintedAmount);
    event WithdrawToUSDCRequested(address indexed user, uint256 amount, uint256 unlockAt);
    event WithdrawToUSDCClaimed(address indexed user, address indexed recipient, uint256 amount);
    event DepositStateUpdated(DepositState oldState, DepositState newState);
    event USDMLiveUpdated(bool oldValue, bool newValue);
    event MonetrixVaultUpdated(address indexed oldVault, address indexed newVault);
    event DepositCapUpdated(uint256 oldCap, uint256 newCap);
    event MinDepositAmountUpdated(uint256 oldAmount, uint256 newAmount);
    event DepositWindowUpdated(uint256 oldStart, uint256 oldEnd, uint256 newStart, uint256 newEnd);
    event WithdrawToUSDCDelayUpdated(uint256 oldDelay, uint256 newDelay);

    error NotOwner();
    error Reentrancy();
    error ZeroAddress();
    error ZeroAmount();
    error DepositsNotOpen();
    error DepositWindowClosed();
    error InvalidDepositWindow();
    error DepositCapExceeded();
    error DepositBelowMinimum();
    error USDMNotLive();
    error USDMLive();
    error MonetrixVaultNotSet();
    error WithdrawToUSDCNotLive();
    error WithdrawRequestPending();
    error NoWithdrawRequestPending();
    error WithdrawToUSDCDelayTooLong();
    error BadUSDMToken();
    error BadUSDCPull();
    error BadUSDMMint();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    modifier nonReentrant() {
        if (_entered) revert Reentrancy();
        _entered = true;
        _;
        _entered = false;
    }

    constructor(
        uint256 depositCap_,
        uint256 minDepositAmount_,
        uint256 depositStart_,
        uint256 depositEnd_,
        uint256 withdrawToUSDCDelay_,
        address monetrixVault_
    ) {
        if (depositStart_ >= depositEnd_) revert InvalidDepositWindow();
        if (withdrawToUSDCDelay_ > MAX_WITHDRAW_TO_USDC_DELAY) revert WithdrawToUSDCDelayTooLong();

        USDC = IERC20(USDC_ADDRESS);
        receipt = new GenesisReceiptToken(address(this));
        owner = msg.sender;

        depositCap = depositCap_;
        minDepositAmount = minDepositAmount_;
        depositStart = depositStart_;
        depositEnd = depositEnd_;
        withdrawToUSDCDelay = withdrawToUSDCDelay_;
        monetrixVault = monetrixVault_;

        emit OwnershipTransferred(address(0), msg.sender);
        emit DepositCapUpdated(0, depositCap_);
        emit MinDepositAmountUpdated(0, minDepositAmount_);
        emit DepositWindowUpdated(0, 0, depositStart_, depositEnd_);
        emit WithdrawToUSDCDelayUpdated(0, withdrawToUSDCDelay_);
        if (monetrixVault_ != address(0)) {
            emit MonetrixVaultUpdated(address(0), monetrixVault_);
        }
    }

    function deposit(uint256 amount) external nonReentrant {
        if (depositState != DepositState.DepositsOpen) revert DepositsNotOpen();
        if (block.timestamp < depositStart || block.timestamp > depositEnd) revert DepositWindowClosed();
        if (amount == 0) revert ZeroAmount();
        if (amount < minDepositAmount) revert DepositBelowMinimum();
        if (depositCap != 0 && _activeDeposits() + amount > depositCap) revert DepositCapExceeded();

        uint256 balanceBefore = USDC.balanceOf(address(this));
        USDC.safeTransferFrom(msg.sender, address(this), amount);
        uint256 received = USDC.balanceOf(address(this)) - balanceBefore;
        if (received != amount) revert BadUSDCPull();

        totalDeposited += amount;
        userDeposited[msg.sender] += amount;
        userLastDepositAt[msg.sender] = block.timestamp;
        receipt.mint(msg.sender, amount);

        emit Deposited(msg.sender, amount);
    }

    function withdrawToUSDM(uint256 amount) external nonReentrant returns (uint256 mintedAmount) {
        if (!isUSDMLive) revert USDMNotLive();
        if (monetrixVault == address(0)) revert MonetrixVaultNotSet();
        if (amount == 0) revert ZeroAmount();

        address usdmAddress = IMonetrixDepositVault(monetrixVault).usdm();
        if (usdmAddress == address(0)) revert BadUSDMToken();
        IERC20 usdm = IERC20(usdmAddress);

        uint256 usdcBefore = USDC.balanceOf(address(this));
        uint256 usdmBefore = usdm.balanceOf(address(this));

        receipt.burn(msg.sender, amount);

        USDC.forceApprove(monetrixVault, amount);
        IMonetrixDepositVault(monetrixVault).deposit(amount);
        USDC.forceApprove(monetrixVault, 0);

        mintedAmount = usdm.balanceOf(address(this)) - usdmBefore;
        if (mintedAmount != amount) revert BadUSDMMint();
        usdm.safeTransfer(msg.sender, mintedAmount);

        if (usdcBefore - USDC.balanceOf(address(this)) != amount) revert BadUSDCPull();

        totalWithdrawnToUSDM += amount;
        userWithdrawnToUSDM[msg.sender] += amount;

        emit WithdrawnToUSDM(msg.sender, amount, mintedAmount);
    }

    function requestWithdrawToUSDC(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (pendingWithdraw[msg.sender].amount != 0) revert WithdrawRequestPending();

        receipt.burn(msg.sender, amount);

        uint256 unlockAt = block.timestamp + withdrawToUSDCDelay;
        pendingWithdraw[msg.sender] = PendingWithdraw({amount: amount, unlockAt: unlockAt});
        totalPendingWithdrawToUSDC += amount;

        emit WithdrawToUSDCRequested(msg.sender, amount, unlockAt);
    }

    function claimWithdrawToUSDC() external nonReentrant {
        _claimWithdrawToUSDC(msg.sender);
    }

    function claimWithdrawToUSDCTo(address recipient) external nonReentrant {
        if (recipient == address(0)) revert ZeroAddress();
        _claimWithdrawToUSDC(recipient);
    }

    function _claimWithdrawToUSDC(address recipient) internal {
        PendingWithdraw memory p = pendingWithdraw[msg.sender];
        if (p.amount == 0) revert NoWithdrawRequestPending();
        if (block.timestamp < p.unlockAt) revert WithdrawToUSDCNotLive();

        delete pendingWithdraw[msg.sender];
        totalPendingWithdrawToUSDC -= p.amount;
        totalWithdrawnToUSDC += p.amount;
        userWithdrawnToUSDC[msg.sender] += p.amount;

        uint256 usdcBefore = USDC.balanceOf(address(this));
        USDC.safeTransfer(recipient, p.amount);
        if (usdcBefore - USDC.balanceOf(address(this)) != p.amount) revert BadUSDCPull();

        emit WithdrawToUSDCClaimed(msg.sender, recipient, p.amount);
    }

    function withdrawToUSDCUnlockTime(address user) external view returns (uint256) {
        return pendingWithdraw[user].unlockAt;
    }

    function canClaimWithdrawToUSDC(address user) external view returns (bool) {
        PendingWithdraw memory p = pendingWithdraw[user];
        return p.amount > 0 && block.timestamp >= p.unlockAt;
    }

    function _activeDeposits() internal view returns (uint256) {
        return receipt.totalSupply() + totalPendingWithdrawToUSDC;
    }

    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert ZeroAddress();
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function setDepositState(DepositState newState) external onlyOwner {
        DepositState oldState = depositState;
        depositState = newState;
        emit DepositStateUpdated(oldState, newState);
    }

    function setDepositCap(uint256 newCap) external onlyOwner {
        uint256 oldCap = depositCap;
        depositCap = newCap;
        emit DepositCapUpdated(oldCap, newCap);
    }

    function setMinDepositAmount(uint256 newMinDepositAmount) external onlyOwner {
        uint256 oldMinDepositAmount = minDepositAmount;
        minDepositAmount = newMinDepositAmount;
        emit MinDepositAmountUpdated(oldMinDepositAmount, newMinDepositAmount);
    }

    function setDepositWindow(uint256 newStart, uint256 newEnd) external onlyOwner {
        if (newStart >= newEnd) revert InvalidDepositWindow();

        uint256 oldStart = depositStart;
        uint256 oldEnd = depositEnd;
        depositStart = newStart;
        depositEnd = newEnd;
        emit DepositWindowUpdated(oldStart, oldEnd, newStart, newEnd);
    }

    function setWithdrawToUSDCDelay(uint256 newDelay) external onlyOwner {
        if (newDelay > MAX_WITHDRAW_TO_USDC_DELAY) revert WithdrawToUSDCDelayTooLong();

        uint256 oldDelay = withdrawToUSDCDelay;
        withdrawToUSDCDelay = newDelay;
        emit WithdrawToUSDCDelayUpdated(oldDelay, newDelay);
    }

    function setMonetrixVault(address newMonetrixVault) external onlyOwner {
        if (isUSDMLive) revert USDMLive();
        if (newMonetrixVault == address(0)) revert ZeroAddress();

        address oldVault = monetrixVault;
        monetrixVault = newMonetrixVault;
        emit MonetrixVaultUpdated(oldVault, newMonetrixVault);
    }

    function setIsUSDMLive(bool live) external onlyOwner {
        if (isUSDMLive) revert USDMLive();
        if (!live) revert USDMNotLive();
        if (monetrixVault == address(0)) revert MonetrixVaultNotSet();

        isUSDMLive = true;
        emit USDMLiveUpdated(false, true);
    }
}
