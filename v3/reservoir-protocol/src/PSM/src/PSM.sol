// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {AccessControl} from "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {Pausable} from "lib/openzeppelin-contracts/contracts/utils/Pausable.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IToken is IERC20 {
    function mint(address, uint256) external;

    function burnFrom(address, uint256) external;
}

contract PSM is AccessControl, Pausable {
    using SafeERC20 for IERC20;

    // Events
    event Allocate(address indexed user, uint256 amount, uint256 timestamp);
    event Withdraw(address indexed user, uint256 amount, uint256 timestamp);
    event Mint(
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 timestamp
    );
    event Redeem(
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 timestamp
    );

    event MintFeeSet(uint256 oldFee, uint256 newFee, uint256 timestamp);
    event RedemptionFeeSet(uint256 oldFee, uint256 newFee, uint256 timestamp);
    event UnderlyingCapSet(uint256 oldCap, uint256 newCap, uint256 timestamp);

    bytes32 public constant MANAGER =
        keccak256(abi.encode("peg.stability.module.manager"));

    bytes32 public constant SUPERVISOR =
        keccak256(abi.encode("peg.stability.module.supervisor"));

    bytes32 public constant CONTROLLER =
        keccak256(abi.encode("peg.stability.module.controller"));

    IToken public immutable rusd;
    IERC20 public immutable underlying; // TODO: use safe transfer

    uint8 public immutable DECIMAL_FACTOR;

    // Fee in basis points (1 basis point = 0.01%)
    uint256 public mintFee;
    uint256 public redemptionFee;

    uint256 public constant MAX_FEE = 100000; // 10% maximum fee

    // Cap for the maximum amount of underlying token the contract can hold
    uint256 public underlyingCap;

    constructor(address admin, IToken rusd_, IERC20 _underlying) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);

        rusd = rusd_;
        underlying = _underlying;

        DECIMAL_FACTOR = IERC20Metadata(address(underlying)).decimals();
    }

    /// @notice Transfer underlying to the contract from caller
    /// @param amount Underlying amount
    function allocate(uint256 amount) external {
        underlying.safeTransferFrom(msg.sender, address(this), amount);

        emit Allocate(msg.sender, amount, block.timestamp);
    }

    /// @notice Withdraw underlying asset to caller
    /// @param amount Underlying amount
    function withdraw(uint256 amount) external onlyRole(CONTROLLER) {
        underlying.safeTransfer(msg.sender, amount);

        emit Withdraw(msg.sender, amount, block.timestamp);
    }

    /// @notice Issue the stablecoin and transfer the underlying to the contract
    /// @param amount Underlying amount
    function mint(uint256 amount) external {
        _mint(msg.sender, msg.sender, amount);

        emit Mint(msg.sender, msg.sender, amount, block.timestamp);
    }

    /// @notice Issue the stablecoin and transfer the underlying to the contract
    /// @param to Receiver address
    /// @param amount Underlying amount
    function mint(address to, uint256 amount) external {
        _mint(msg.sender, to, amount);

        emit Mint(msg.sender, to, amount, block.timestamp);
    }

    function _mint(address from, address to, uint256 transferAmount) private {
        uint256 balance = underlying.balanceOf(address(this));

        // Check cap before transfer - if cap is 0, minting is disabled
        require(underlyingCap > 0, "Minting disabled: cap not set");
        require(
            balance + transferAmount <= underlyingCap,
            "Exceeds underlying cap"
        );

        underlying.safeTransferFrom(from, address(this), transferAmount);

        uint256 amount = underlying.balanceOf(address(this)) - balance;

        // Calculate fee and net amount
        uint256 feeAmount = (amount * mintFee) / 1e6;
        uint256 netAmount = amount - feeAmount;

        rusd.mint(to, netAmount * (10 ** (18 - DECIMAL_FACTOR)));
    }

    /// @notice Redeem the underlying to the sender for stablecoin
    /// @param amount Underlying amount
    function redeem(uint256 amount) external whenNotPaused {
        _redeem(msg.sender, msg.sender, amount);

        emit Redeem(msg.sender, msg.sender, amount, block.timestamp);
    }

    /// @notice Redeem the underlying to a recipient for stablecoin
    /// @param to Receiver address
    /// @param amount Underlying amount
    function redeem(address to, uint256 amount) external whenNotPaused {
        _redeem(msg.sender, to, amount);

        emit Redeem(msg.sender, to, amount, block.timestamp);
    }

    function _redeem(address from, address to, uint256 transferAmount) private {
        rusd.burnFrom(from, transferAmount * (10 ** (18 - DECIMAL_FACTOR)));

        // Calculate fee and net amount
        uint256 feeAmount = (transferAmount * redemptionFee) / 1e6;
        uint256 netAmount = transferAmount - feeAmount;

        underlying.safeTransfer(to, netAmount);
    }

    /// @notice Value of underlying stablecoin held by the contract
    /// @return amount Value of underlying stablecoin held by the contract
    function underlyingBalance() external view returns (uint256) {
        return _underlyingBalance();
    }

    function _underlyingBalance() private view returns (uint256) {
        return underlying.balanceOf(address(this));
    }

    /// @notice Stops redemption (for emergencies)
    function pause() external onlyRole(SUPERVISOR) {
        _pause();
    }

    /// @notice Resumes redemptions
    function unpause() external onlyRole(SUPERVISOR) {
        _unpause();
    }

    /// @notice Set the redemption fee
    /// @param newFee Fee in basis points (1 basis point = 0.01%)
    function setMintFee(uint256 newFee) external onlyRole(MANAGER) {
        require(newFee <= MAX_FEE, "Fee exceeds maximum");

        uint256 oldFee = mintFee;
        mintFee = newFee;

        emit MintFeeSet(oldFee, newFee, block.timestamp);
    }

    /// @notice Set the redemption fee
    /// @param newFee Fee in basis points (1 basis point = 0.01%)
    function setRedemptionFee(uint256 newFee) external onlyRole(MANAGER) {
        require(newFee <= MAX_FEE, "Fee exceeds maximum");

        uint256 oldFee = redemptionFee;
        redemptionFee = newFee;

        emit RedemptionFeeSet(oldFee, newFee, block.timestamp);
    }

    /// @notice Set the underlying cap
    /// @param newCap Maximum amount of underlying token the contract can hold
    function setUnderlyingCap(uint256 newCap) external onlyRole(MANAGER) {
        uint256 oldCap = underlyingCap;
        underlyingCap = newCap;

        emit UnderlyingCapSet(oldCap, newCap, block.timestamp);
    }
}
