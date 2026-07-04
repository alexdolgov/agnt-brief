// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./ERC4626Fees.sol";

contract GGUSD is Initializable, ERC4626Fees, OwnableUpgradeable {

    // --- State Variables ---
    uint256 public entryFeeBasisPoints;
    uint256 public exitFeeBasisPoints;
    address public entryFeeRecipient;
    address public exitFeeRecipient;

    uint256 public nonce;

    // --- Events ---
    event EntryFeeSet(uint256 oldFee, uint256 newFee);
    event ExitFeeSet(uint256 oldFee, uint256 newFee);
    event EntryFeeRecipientSet(address indexed oldRecipient, address indexed newRecipient);
    event ExitFeeRecipientSet(address indexed oldRecipient, address indexed newRecipient);

    event TransferEx(address indexed from, address indexed to, uint256 indexed nonce, uint256 value, uint256 fromBalanceAfterTransfer, uint256 toBalanceAfterTransfer);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address assetAddress,
        address initialOwner,
        uint256 initialEntryFeeBasisPoints,
        uint256 initialExitFeeBasisPoints,
        address initialEntryFeeRecipient,
        address initialExitFeeRecipient
    ) public initializer {
        __ERC20_init("GGUSD", "GGUSD");
        __ERC4626_init(IERC20(assetAddress));
        __Ownable_init(initialOwner);

        // Initialize fee parameters
        _setEntryFee(initialEntryFeeBasisPoints);
        _setExitFee(initialExitFeeBasisPoints);
        _setEntryFeeRecipient(initialEntryFeeRecipient);
        _setExitFeeRecipient(initialExitFeeRecipient);

        nonce = 0;
    }

    // --- Fee Configuration Getters (Overrides from ERC4626Fees) ---

    function _entryFeeBasisPoints() internal view override returns (uint256) {
        return entryFeeBasisPoints;
    }

    function _exitFeeBasisPoints() internal view override returns (uint256) {
        return exitFeeBasisPoints;
    }

    function _entryFeeRecipient() internal view override returns (address) {
        return entryFeeRecipient;
    }

    function _exitFeeRecipient() internal view override returns (address) {
        return exitFeeRecipient;
    }

    // --- Fee Configuration Setters (Owner only) ---

    function setEntryFee(uint256 newFeeBasisPoints) external onlyOwner {
        _setEntryFee(newFeeBasisPoints);
    }

    function setExitFee(uint256 newFeeBasisPoints) external onlyOwner {
        _setExitFee(newFeeBasisPoints);
    }

    function setEntryFeeRecipient(address newRecipient) external onlyOwner {
        _setEntryFeeRecipient(newRecipient);
    }

    function setExitFeeRecipient(address newRecipient) external onlyOwner {
        _setExitFeeRecipient(newRecipient);
    }

    function setFees(
        uint256 newEntryFeeBasisPoints,
        uint256 newExitFeeBasisPoints,
        address newEntryFeeRecipient,
        address newExitFeeRecipient
    ) external onlyOwner {
        _setEntryFee(newEntryFeeBasisPoints);
        _setExitFee(newExitFeeBasisPoints);
        _setEntryFeeRecipient(newEntryFeeRecipient);
        _setExitFeeRecipient(newExitFeeRecipient);
    }

    // --- Internal Setter Logic ---

    function _setEntryFee(uint256 newFeeBasisPoints) internal {
        require(newFeeBasisPoints < ERC4626Fees._BASIS_POINT_SCALE, "Fee cannot exceed 100%"); // Prevent > 100% fee
        uint256 oldFee = entryFeeBasisPoints;
        entryFeeBasisPoints = newFeeBasisPoints;
        emit EntryFeeSet(oldFee, newFeeBasisPoints);
    }

    function _setExitFee(uint256 newFeeBasisPoints) internal {
        require(newFeeBasisPoints < ERC4626Fees._BASIS_POINT_SCALE, "Fee cannot exceed 100%"); // Prevent > 100% fee
        uint256 oldFee = exitFeeBasisPoints;
        exitFeeBasisPoints = newFeeBasisPoints;
        emit ExitFeeSet(oldFee, newFeeBasisPoints);
    }

    function _setEntryFeeRecipient(address newRecipient) internal {
        address oldRecipient = entryFeeRecipient;
        entryFeeRecipient = newRecipient;
        emit EntryFeeRecipientSet(oldRecipient, newRecipient);
    }

    function _setExitFeeRecipient(address newRecipient) internal {
        address oldRecipient = exitFeeRecipient;
        exitFeeRecipient = newRecipient;
        emit ExitFeeRecipientSet(oldRecipient, newRecipient);
    }
    
    function _update(address from, address to, uint256 value) internal virtual override {
        super._update(from, to, value);
        nonce++;
        emit TransferEx(from, to, nonce, value, balanceOf(from), balanceOf(to));
    }

    function _convertToAssets(uint256 shares, Math.Rounding /* rounding*/) internal view virtual override returns (uint256) {
        return shares;
    }

    function _convertToShares(uint256 assets, Math.Rounding /* rounding */) internal view virtual override returns (uint256) {
        return assets;
    }
}