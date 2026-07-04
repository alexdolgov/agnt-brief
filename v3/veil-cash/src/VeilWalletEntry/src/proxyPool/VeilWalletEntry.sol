// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IVeilETHPool} from "../Interfaces/IVeilETHPool.sol";
import {IVeilVerifiedOnchain} from "../Interfaces/iVerify.sol";
import {IVeilLimits} from "../Interfaces/IVeilLimits.sol";
import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title VeilWalletEntry v1.0.0
 * @author Veil Cash
 * @dev Veil Wallet - Entry point for depositing ETH into the Veil pools
 */
contract VeilWalletEntry is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    /// @dev Events
    event DepositedETH(address indexed depositor, uint256 amount);
    event DepositKey(address indexed owner, bytes key);

    /// @dev Veil Wallet Entry variables
    uint256 public depositFee;
    address public feeRecipient;
    bool public depositETHEnabled;
    uint256 public minimumDeposit;

    /// @dev Onchain verification helper contract
    IVeilVerifiedOnchain public veilVerifiedOnchain;

    /// @dev Reference to the Veil pools
    IVeilETHPool public veilETHPool;

    /// @dev Reference to the Veil limits contract
    IVeilLimits public veilLimits;

    /// @dev Verified depositors details
    mapping(address => VeilLib.DepositorInfo) public allowedDepositors;

    /// @dev Deposit keys
    mapping(address => bytes) public depositKeys;

    /// @dev Tracking variables
    uint256 public totalETHDeposits;
    uint256 public totalRegisteredUsers;

    /// @dev Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _veilETHPool,
        address _veilVerifiedOnchain,
        address _feeRecipient,
        uint256 _depositFee,
        uint256 _minimumDeposit
    ) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        veilETHPool = IVeilETHPool(_veilETHPool);
        veilVerifiedOnchain = IVeilVerifiedOnchain(_veilVerifiedOnchain);
        depositFee = _depositFee;
        feeRecipient = _feeRecipient;
        minimumDeposit = _minimumDeposit;
    }

    /**
     * @dev Function for registering a new account to deposit and or receive funds.
     */
    function register(VeilLib.Account memory _account) public {
        if (_account.owner != msg.sender) revert VeilLib.OnlyOwnerCanRegister();
        if (depositKeys[_account.owner].length > 0) revert VeilLib.UserAlreadyRegistered();
        depositKeys[_account.owner] = _account.depositKey;
        totalRegisteredUsers++;
        emit DepositKey(_account.owner, _account.depositKey);
    }

    /// @dev Deposits ETH into the ETH pool
    function depositETH(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) external payable nonReentrant {
        if (!depositETHEnabled) revert VeilLib.DepositsDisabled();
        if (depositKeys[msg.sender].length == 0) revert VeilLib.UserNotRegistered();
        if (!isAllowedDepositor(msg.sender)) revert VeilLib.NotAllowedToDeposit();

        /// @dev Get the deposit amount and fee
        (uint256 netDeposit, uint256 fee) = getFeeAndNetDeposit(msg.value);

        /// @dev Check minimum deposit after fee deduction
        if (netDeposit < minimumDeposit) revert VeilLib.MinimumDepositNotMet();

        /// @dev Check rate limits
        _checkLimits(msg.sender, netDeposit);

        /// @dev Transfer the fee to the fee recipient
        (bool success,) = feeRecipient.call{value: fee}("");
        if (!success) revert VeilLib.FeeTransferFailed();

        /// @dev Deposit the ETH into the pool
        veilETHPool.depositETH{value: netDeposit}(_args, _extData);
        totalETHDeposits++;

        /// @dev Emit the deposit event
        emit DepositedETH(msg.sender, netDeposit);
    }

    /**
     * @dev Internal function to check rate limits
     * @param depositor The address making the deposit
     * @param amount The amount being deposited
     */
    function _checkLimits(address depositor, uint256 amount) internal {
        if (address(veilLimits) != address(0)) {
            veilLimits.checkAndUpdateLimits(depositor, amount);
        }
    }

    /**
     * @dev Function for checking if an address is allowed to deposit
     * @param _depositor The address to check
     * @return True if allowed, false otherwise
     */
    function isAllowedDepositor(address _depositor) public view returns (bool) {
        // Check manual allowlist first
        if (allowedDepositors[_depositor].isAllowed) return true;

        // Then check onchain verification
        if (address(veilVerifiedOnchain) == address(0)) return false;
        return veilVerifiedOnchain.isVerified(_depositor);
    }

    /**
     * @dev Function for getting depositor information
     * @param _depositor The address to check
     * @return isAllowed Whether the depositor is allowed
     * @return data The associated string data
     */
    function getDepositorInfo(address _depositor) public view returns (bool isAllowed, string memory data) {
        VeilLib.DepositorInfo memory info = allowedDepositors[_depositor];
        return (info.isAllowed, info.data);
    }

    /**
     * @dev Calculate the total amount to send for a desired net deposit amount
     * @param _netDepositAmount The desired amount to deposit after fees
     * @return totalAmount The total amount to send (including fees)
     */
    function getDepositAmountWithFee(uint256 _netDepositAmount) public view returns (uint256) {
        return (_netDepositAmount * (VeilLib.BASIS_POINTS + depositFee)) / VeilLib.BASIS_POINTS;
    }

    /**
     * @dev Calculate the net deposit and fee from a total amount sent
     * @param _totalAmount The total amount sent (including fees)
     * @return netDeposit The amount that will be deposited after fees
     * @return fee The fee amount that will be deducted
     */
    function getFeeAndNetDeposit(uint256 _totalAmount) public view returns (uint256 netDeposit, uint256 fee) {
        netDeposit = (_totalAmount * VeilLib.BASIS_POINTS) / (VeilLib.BASIS_POINTS + depositFee);
        fee = _totalAmount - netDeposit;
    }

    /**
     * @dev Function for setting the fee charged on deposits in basis points
     */
    function setDepositFee(uint256 _depositFee) external onlyOwner {
        depositFee = _depositFee;
    }

    /**
     * @dev Function for setting the minimum deposit amount (after fees)
     */
    function setMinimumDeposit(uint256 _minimumDeposit) external onlyOwner {
        minimumDeposit = _minimumDeposit;
    }

    /**
     * @dev Function for setting the address that receives deposit fees
     */
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        feeRecipient = _feeRecipient;
    }

    /**
     * @dev Function for enabling or disabling deposits for ETH pool
     */
    function setDepositsEnabled(bool _depositEnabled) external onlyOwner {
        depositETHEnabled = _depositEnabled;
    }

    /**
     * @dev Function for setting the VeilLimits contract
     */
    function setVeilLimits(address _veilLimits) external onlyOwner {
        veilLimits = IVeilLimits(_veilLimits);
    }

    /**
     * @dev Function for setting the VeilVerifiedOnchain contract
     */
    function setVeilVerifiedOnchain(address _veilVerifiedOnchain) external onlyOwner {
        veilVerifiedOnchain = IVeilVerifiedOnchain(_veilVerifiedOnchain);
    }

    /**
     * @dev Function for setting approved depositors
     */
    function setAllowedDepositors(address[] calldata _depositors, string[] calldata _data, bool _allowed)
        external
        onlyOwner
    {
        require(_depositors.length == _data.length, "Arrays length mismatch");
        for (uint256 i = 0; i < _depositors.length; i++) {
            allowedDepositors[_depositors[i]] = VeilLib.DepositorInfo({isAllowed: _allowed, data: _data[i]});
        }
    }
}
