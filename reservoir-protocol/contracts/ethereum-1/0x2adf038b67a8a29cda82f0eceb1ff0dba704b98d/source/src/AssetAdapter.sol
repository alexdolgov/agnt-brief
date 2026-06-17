// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessControl} from "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";

import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {IERC4626} from "lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";

interface IMerkleDistributor {
    function toggleOperator(address, address) external;
}

contract AssetAdapter is AccessControl {
    using SafeERC20 for IERC20;

    event Allocate(address indexed, uint256, uint256);
    event Withdraw(address indexed, uint256, uint256);

    event Redeem(address indexed, uint256, uint256);
    event Deposit(address indexed, uint256, uint256);

    bytes32 public constant MANAGER =
        keccak256(abi.encode("asset.adapter.manager"));

    bytes32 public constant CONTROLLER =
        keccak256(abi.encode("asset.adapter.controller"));

    IERC4626 public immutable vault;
    IERC20 public immutable underlying;

    uint8 public immutable DECIMAL_FACTOR;

    constructor(address admin_, address underlying_, address vault_) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin_);

        vault = IERC4626(vault_);
        underlying = IERC20(underlying_);

        DECIMAL_FACTOR = IERC20Metadata(address(underlying)).decimals();
    }

    function allocate(uint256 assets_) external {
        underlying.safeTransferFrom(msg.sender, address(this), assets_);

        emit Allocate(msg.sender, assets_, block.timestamp);
    }

    function withdraw(uint256 assets_) external onlyRole(CONTROLLER) {
        underlying.safeTransfer(msg.sender, assets_);

        emit Withdraw(msg.sender, assets_, block.timestamp);
    }

    function deposit(uint256 assets_) public onlyRole(CONTROLLER) {
        underlying.forceApprove(address(vault), assets_);
        vault.deposit(assets_, address(this));

        emit Deposit(msg.sender, assets_, block.timestamp);
    }

    function redeem(uint256 shares_) public onlyRole(CONTROLLER) {
        vault.redeem(shares_, address(this), address(this));

        emit Redeem(msg.sender, shares_, block.timestamp);
    }

    function totalValue() external view returns (uint256 total) {
        total += _vaultTotalValue();
        total += _underlyingTotalValue();
    }

    function underlyingTotalValue() external view returns (uint256) {
        return _underlyingTotalValue();
    }

    function _underlyingTotalValue() private view returns (uint256) {
        return _underlyingValue(_underlyingBalance());
    }

    function underlyingValue(uint256 amount) external view returns (uint256) {
        return _underlyingValue(amount);
    }

    function _underlyingValue(uint256 amount) private view returns (uint256) {
        return amount * (10 ** (18 - DECIMAL_FACTOR));
    }

    function underlyingBalance() external view returns (uint256) {
        return _underlyingBalance();
    }

    function _underlyingBalance() private view returns (uint256) {
        return underlying.balanceOf(address(this));
    }

    function vaultTotalValue() external view returns (uint256) {
        return _vaultTotalValue();
    }

    function _vaultTotalValue() private view returns (uint256) {
        return _vaultValue((_vaultBalance()));
    }

    function vaultValue(uint256 amount) external view returns (uint256) {
        return _vaultValue(amount);
    }

    function _vaultValue(uint256 amount) private view returns (uint256) {
        return
            (_vaultPriceOracleLatestAnswer() *
                amount *
                (10 ** (18 - DECIMAL_FACTOR))) / 1e18;
    }

    function vaultBalance() external view returns (uint256) {
        return _vaultBalance();
    }

    function _vaultBalance() private view returns (uint256) {
        return vault.balanceOf(address(this));
    }

    function _vaultPriceOracleLatestAnswer() private view returns (uint256) {
        return vault.convertToAssets(1e18);
    }

    function claim(
        address distributor_,
        address operator_
    ) external onlyRole(MANAGER) {
        IMerkleDistributor(distributor_).toggleOperator(msg.sender, operator_);
    }

    function recover(
        address token_,
        address reciever_
    ) external onlyRole(MANAGER) {
        IERC20 token = IERC20(token_);

        token.safeTransfer(reciever_, token.balanceOf(address(this)));
    }
}
