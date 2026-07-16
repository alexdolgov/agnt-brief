// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import {IERC20} from "lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

import {AccessControl} from "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";

interface IPegStabilityModule {
    function allocate(uint256) external;

    function withdraw(uint256) external;

    function grantRole(bytes32, address) external;

    function CONTROLLER() external view returns (bytes32);
}

interface IAssetAdapter {
    function redeem(uint256) external;

    function withdraw(uint256) external;

    function fundTotalValue() external view returns (uint256);

    function fundBalance() external view returns (uint256);

    function grantRole(bytes32, address) external;

    function CONTROLLER() external view returns (bytes32);
}

contract Rebalance is AccessControl {
    bytes32 public constant MANAGER =
        keccak256(abi.encode("rebalance.manager"));

    IERC20 public constant usdc =
        IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    uint256 public fillBalance;

    IPegStabilityModule public psm;

    mapping(address => bool) public whitelist;

    constructor(address admin, address psm_) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);

        psm = IPegStabilityModule(psm_);
    }

    /// @notice Executes withdrawal of shares equivalent to the shortfall
    /// @param adapter_ Address of the asset adapter being redeemed
    function rebalance(address adapter_) external {
        require(
            _isWhitelisted(adapter_),
            "adapter address is not in white list"
        );

        uint256 shortfall_ = _shortfall();
        IAssetAdapter adapter = IAssetAdapter(adapter_);

        uint256 shares = _maxRebalance(adapter, shortfall_);

        adapter.redeem(shares);
        adapter.withdraw(shortfall_);

        usdc.approve(address(psm), usdc.balanceOf(address(this)));

        psm.allocate(usdc.balanceOf(address(this)));
    }

    /// @notice Returns the number of shares that can be redeemed by this adapter
    /// @param adapter_ Address of the asset adapter being redeemed
    /// @return uint256 Number of shares that will be liquidated to cover the shortfall
    function maxRebalance(address adapter_) external view returns (uint256) {
        uint256 shortfall_ = _shortfall();
        IAssetAdapter adapter = IAssetAdapter(adapter_);

        return _maxRebalance(adapter, shortfall_);
    }

    function _maxRebalance(
        IAssetAdapter adapter,
        uint256 shortfall_
    ) private view returns (uint256) {
        uint256 fundBalance = adapter.fundBalance();
        uint256 fundTotalValue = adapter.fundTotalValue();

        if (shortfall_ * 1e12 > fundTotalValue) return fundBalance;

        return (1e12 * shortfall_ * fundBalance) / fundTotalValue;
    }

    /// @notice Calculates the amount of USDC that needs to be refilled
    /// @return uint256 Amount of USDC in PSM below the `fillBalance`
    function shortfall() external view returns (uint256) {
        return _shortfall();
    }

    function _shortfall() private view returns (uint256) {
        return
            (usdc.balanceOf(address(psm)) > fillBalance)
                ? 0
                : fillBalance - usdc.balanceOf(address(psm));
    }

    /// @notice Returns if an address is in the whitelist
    /// @param adapter_ Address of the asset adapter being checked
    /// @return bool
    function isWhitelisted(address adapter_) external view returns (bool) {
        return _isWhitelisted(adapter_);
    }

    function _isWhitelisted(address adapter_) private view returns (bool) {
        return whitelist[adapter_];
    }

    /// @notice Add address to the whitelist
    /// @param adapter_ Address of the asset adapter being checked
    function addToWhitelist(address adapter_) external onlyRole(MANAGER) {
        whitelist[adapter_] = true;
    }

    /// @notice Remove an address from the whitelist
    /// @param adapter_ Address of the asset adapter being checked
    function removeFromWhitelist(address adapter_) external onlyRole(MANAGER) {
        delete whitelist[adapter_];
    }

    /// @notice Sets the balance that must be maintained
    /// @param fillBalance_  The USDC balance amount
    function setFillBalance(uint256 fillBalance_) external onlyRole(MANAGER) {
        fillBalance = fillBalance_;
    }
}
