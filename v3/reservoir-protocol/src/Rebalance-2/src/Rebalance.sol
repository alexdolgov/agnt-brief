// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IPegStabilityModule} from "./interfaces/IPegStabilityModule.sol";
import {IAssetAdapter} from "./interfaces/IAssetAdapter.sol";

import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {AccessControl} from "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";

/// @title Rebalance Contract
/// @notice Manages rebalancing operations between Peg Stability Modules and Asset Adapters
/// @dev Uses AccessControl for role-based permissions
contract Rebalance is AccessControl {
    using SafeERC20 for IERC20;

    /// @notice Role identifier for managers who can configure the system
    bytes32 public constant MANAGER =
        keccak256(abi.encode("rebalance.manager"));

    /// @notice Role identifier for controllers who can execute rebalance operations
    bytes32 public constant CONTROLLER =
        keccak256(abi.encode("rebalance.controller"));

    /// @notice Mapping of adapter addresses to their whitelist status
    mapping(address => bool) public whitelist;

    /// @notice Mapping from underlying token address to PSM address
    mapping(address => address) public psmMap;

    /// @notice Mapping from PSM address to required fill balance
    mapping(address => uint256) public fillBalanceMap;

    /// @notice Initializes the contract with an admin address
    /// @param admin The address that will be granted the DEFAULT_ADMIN_ROLE
    constructor(address admin) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    /// @notice Executes rebalancing by withdrawing from PSM and depositing to adapter
    /// @dev Requires CONTROLLER role and adapter to be whitelisted
    /// @param adapter_ Address of the asset adapter to deposit funds into
    /// @param amount Amount of underlying tokens to withdraw from PSM and deposit to adapter
    function rebalance(
        address adapter_,
        uint256 amount
    ) external onlyRole(CONTROLLER) {
        require(
            _isWhitelisted(adapter_),
            "adapter address is not in white list"
        );

        (
            IAssetAdapter adapter,
            IERC20 underlying,
            IPegStabilityModule psm
        ) = _adapterData(adapter_);

        require(psm.underlyingBalance() > amount, "psm balance is too low");

        psm.withdraw(amount);

        underlying.forceApprove(address(adapter), amount);

        adapter.allocate(amount);
        adapter.deposit(amount);
    }

    /// @notice Executes refill operation by redeeming adapter shares to cover PSM shortfall
    /// @dev Redeems shares from adapter and deposits underlying tokens to PSM to maintain fill balance
    /// @param adapter_ Address of the asset adapter to redeem shares from
    function refill(address adapter_) external {
        require(
            _isWhitelisted(adapter_),
            "adapter address is not in white list"
        );

        (
            IAssetAdapter adapter,
            IERC20 underlying,
            IPegStabilityModule psm
        ) = _adapterData(adapter_);

        uint256 shortfall_ = _shortfall(address(psm));
        uint256 shares = _maxRebalance(adapter, underlying, shortfall_);

        adapter.redeem(shares);
        uint256 adapterBalance = underlying.balanceOf(address(adapter));
        adapter.withdraw(
            shortfall_ > adapterBalance ? adapterBalance : shortfall_
        );

        uint256 amountToAllocate = underlying.balanceOf(address(this));

        underlying.forceApprove(address(psm), amountToAllocate);

        psm.allocate(amountToAllocate);
    }

    /// @notice Returns the number of shares that can be redeemed by this adapter to cover shortfall
    /// @param adapter_ Address of the asset adapter being queried
    /// @return Number of shares that will be liquidated to cover the shortfall
    function maxRebalance(address adapter_) external view returns (uint256) {
        (
            IAssetAdapter adapter,
            IERC20 underlying,
            IPegStabilityModule psm
        ) = _adapterData(adapter_);

        uint256 shortfall_ = _shortfall(address(psm));

        return _maxRebalance(adapter, underlying, shortfall_);
    }

    /// @notice Internal function to calculate maximum shares that can be redeemed
    /// @dev Uses dynamic scaling factor based on the underlying decimals for precision in calculations
    /// @param adapter The asset adapter interface
    /// @param shortfall_ The amount of shortfall to cover
    /// @return Number of shares to redeem
    function _maxRebalance(
        IAssetAdapter adapter,
        IERC20 underlying,
        uint256 shortfall_
    ) private view returns (uint256) {
        uint256 fundBalance = adapter.fundBalance();
        uint256 fundTotalValue = adapter.fundTotalValue();

        uint256 underlyingDecimals = IERC20Metadata(address(underlying))
            .decimals();

        uint256 scaledShortfall = shortfall_ *
            (10 ** (18 - underlyingDecimals));

        if (scaledShortfall >= fundTotalValue) return fundBalance;

        return (scaledShortfall * fundBalance) / fundTotalValue;
    }

    /// @notice Calculates the amount of underlying tokens that need to be refilled to PSM
    /// @param psm Address of the PSM to check shortfall for
    /// @return Amount of underlying tokens below the required fill balance
    function shortfall(address psm) external view returns (uint256) {
        return _shortfall(psm);
    }

    /// @notice Internal function to calculate PSM shortfall
    /// @param psm Address of the PSM
    /// @return Amount of shortfall, or 0 if PSM balance is above fill balance
    function _shortfall(address psm) private view returns (uint256) {
        uint256 fillBalance = fillBalanceMap[psm];
        IERC20 underlying = IPegStabilityModule(psm).underlying();

        uint256 psmBalance = underlying.balanceOf(psm);

        return (psmBalance > fillBalance) ? 0 : fillBalance - psmBalance;
    }

    /// @notice Returns whether an adapter address is whitelisted
    /// @param adapter_ Address of the asset adapter being checked
    /// @return True if the adapter is whitelisted, false otherwise
    function isWhitelisted(address adapter_) external view returns (bool) {
        return _isWhitelisted(adapter_);
    }

    /// @notice Internal function to check if an adapter is whitelisted
    /// @param adapter_ Address of the asset adapter
    /// @return True if whitelisted, false otherwise
    function _isWhitelisted(address adapter_) private view returns (bool) {
        return whitelist[adapter_];
    }

    /// @notice Adds an adapter address to the whitelist
    /// @dev Requires MANAGER role
    /// @param adapter_ Address of the asset adapter to whitelist
    function addToWhitelist(address adapter_) external onlyRole(MANAGER) {
        whitelist[adapter_] = true;
    }

    /// @notice Removes an adapter address from the whitelist
    /// @dev Requires MANAGER role
    /// @param adapter_ Address of the asset adapter to remove from whitelist
    function removeFromWhitelist(address adapter_) external onlyRole(MANAGER) {
        delete whitelist[adapter_];
    }

    /// @notice Sets the minimum balance that must be maintained in a PSM
    /// @dev Requires MANAGER role and PSM must be previously added
    /// @param psm_ Address of the PSM
    /// @param fillBalance_ The minimum balance to maintain in underlying tokens
    function setFillBalance(
        address psm_,
        uint256 fillBalance_
    ) external onlyRole(MANAGER) {
        address psm = psmMap[address(IPegStabilityModule(psm_).underlying())];

        require(psm == psm_, "error: psm was not set");

        fillBalanceMap[psm_] = fillBalance_;
    }

    /// @notice Adds a new PSM to the system
    /// @dev Requires MANAGER role. Maps underlying token to PSM address
    /// @param psm_ Address of the PSM to add
    function addPSM(address psm_) external onlyRole(MANAGER) {
        psmMap[address(IPegStabilityModule(psm_).underlying())] = psm_;
    }

    /// @notice Returns the adapter, psm and the underlying contracts based on the adapter address
    /// @param adapter_ Address of the asset adapter
    /// @return adapter Adapter contract
    /// @return underlying Underlying ERC20 contract
    /// @return psm PSM contract
    function adapterData(
        address adapter_
    )
        external
        view
        returns (
            IAssetAdapter adapter,
            IERC20 underlying,
            IPegStabilityModule psm
        )
    {
        return _adapterData(adapter_);
    }

    /// @notice Returns the adapter, psm and the underlying contracts based on the adapter address
    /// @param adapter_ Address of the asset adapter
    /// @return adapter Adapter contract
    /// @return underlying Underlying ERC20 contract
    /// @return psm PSM contract
    function _adapterData(
        address adapter_
    )
        private
        view
        returns (
            IAssetAdapter adapter,
            IERC20 underlying,
            IPegStabilityModule psm
        )
    {
        adapter = IAssetAdapter(adapter_);
        underlying = adapter.underlying();
        psm = IPegStabilityModule(psmMap[address(underlying)]);
    }
}
