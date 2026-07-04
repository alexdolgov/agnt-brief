// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IPegStabilityModule} from "./interfaces/IPegStabilityModule.sol";
import {IAssetAdapter} from "./interfaces/IAssetAdapter.sol";

import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {AccessControl} from "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {Math} from "lib/openzeppelin-contracts/contracts/utils/math/Math.sol";

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

    // Custom errors for gas-efficient reverts
    error ZeroAddress();
    error AdapterNotWhitelisted();
    error PSMNotConfigured();
    error PSMAlreadyExists();
    error AdapterAlreadyWhitelisted();
    error PSMNotSet();
    error PSMBalanceTooLow();
    error InvalidUnderlying();

    // Events
    /// @notice Emitted when a rebalance operation is executed
    /// @param adapter Address of the asset adapter
    /// @param amount Amount of underlying tokens rebalanced
    /// @param psmBalance PSM balance after rebalance
    event Rebalanced(
        address indexed adapter,
        uint256 amount,
        uint256 psmBalance
    );

    /// @notice Emitted when a refill operation is executed
    /// @param adapter Address of the asset adapter
    /// @param sharesRedeemed Number of shares redeemed from adapter
    /// @param amountRefilled Amount of underlying tokens refilled to PSM
    /// @param shortfall Shortfall amount that was covered
    event Refilled(
        address indexed adapter,
        uint256 sharesRedeemed,
        uint256 amountRefilled,
        uint256 shortfall
    );

    /// @notice Emitted when an adapter is added to the whitelist
    /// @param adapter Address of the adapter added
    /// @param addedBy Address that performed the action
    event AdapterWhitelisted(
        address indexed adapter,
        address indexed addedBy
    );

    /// @notice Emitted when an adapter is removed from the whitelist
    /// @param adapter Address of the adapter removed
    /// @param removedBy Address that performed the action
    event AdapterRemovedFromWhitelist(
        address indexed adapter,
        address indexed removedBy
    );

    /// @notice Emitted when a PSM is added to the system
    /// @param psm Address of the PSM added
    /// @param underlying Address of the underlying token
    /// @param addedBy Address that performed the action
    event PSMAdded(
        address indexed psm,
        address indexed underlying,
        address indexed addedBy
    );

    /// @notice Emitted when a PSM fill balance is updated
    /// @param psm Address of the PSM
    /// @param oldFillBalance Previous fill balance
    /// @param newFillBalance New fill balance
    /// @param updatedBy Address that performed the action
    event FillBalanceUpdated(
        address indexed psm,
        uint256 oldFillBalance,
        uint256 newFillBalance,
        address indexed updatedBy
    );

    /// @notice Initializes the contract with an admin address
    /// @param admin The address that will be granted the DEFAULT_ADMIN_ROLE
    constructor(address admin) {
        require(admin != address(0), "admin cannot be zero address");
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

        require(address(psm) != address(0), "PSM not configured for this underlying");
        require(psm.underlyingBalance() > amount, "psm balance is too low");

        psm.withdraw(amount);

        underlying.forceApprove(address(adapter), amount);

        adapter.allocate(amount);
        adapter.deposit(amount);

        // Emit event with current PSM balance after rebalance
        uint256 newPsmBalance = underlying.balanceOf(address(psm));
        emit Rebalanced(adapter_, amount, newPsmBalance);
    }

    /// @notice Executes refill operation by redeeming adapter shares to cover PSM shortfall
    /// @dev Redeems shares from adapter and deposits underlying tokens to PSM to maintain fill balance
    /// @dev Requires CONTROLLER role to ensure adequate gas is provided for complex operations
    /// @param adapter_ Address of the asset adapter to redeem shares from
    function refill(address adapter_) external onlyRole(CONTROLLER) {
        require(
            _isWhitelisted(adapter_),
            "adapter address is not in white list"
        );

        (
            IAssetAdapter adapter,
            IERC20 underlying,
            IPegStabilityModule psm
        ) = _adapterData(adapter_);

        require(address(psm) != address(0), "PSM not configured for this underlying");

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

        // Emit event with refill details
        emit Refilled(adapter_, shares, amountToAllocate, shortfall_);
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
    /// @dev Protects against overflow/underflow by handling various decimal scenarios safely
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

        // Prevent division by zero
        if (fundTotalValue == 0) return 0;
        
        // Return early if no shortfall
        if (shortfall_ == 0) return 0;

        uint256 underlyingDecimals = IERC20Metadata(address(underlying))
            .decimals();

        uint256 scaledShortfall;
        
        // Handle decimal scaling safely to prevent underflow
        if (underlyingDecimals <= 18) {
            // Scale up for tokens with <= 18 decimals
            uint256 scaleFactor = 10 ** (18 - underlyingDecimals);
            
            // Check for potential overflow before multiplication
            if (shortfall_ > type(uint256).max / scaleFactor) {
                // If scaling would overflow, shortfall exceeds all available funds
                return fundBalance;
            }
            
            scaledShortfall = shortfall_ * scaleFactor;
        } else {
            // Scale down for tokens with > 18 decimals (rare but possible)
            uint256 scaleFactor = 10 ** (underlyingDecimals - 18);
            scaledShortfall = shortfall_ / scaleFactor;
        }

        // If scaled shortfall meets or exceeds total value, redeem all shares
        if (scaledShortfall >= fundTotalValue) return fundBalance;

        // Use mulDiv to prevent intermediate overflow in (scaledShortfall * fundBalance)
        return Math.mulDiv(scaledShortfall, fundBalance, fundTotalValue);
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
        require(adapter_ != address(0), "adapter cannot be zero address");
        require(!whitelist[adapter_], "adapter already whitelisted");
        
        whitelist[adapter_] = true;
        
        emit AdapterWhitelisted(adapter_, msg.sender);
    }

    /// @notice Removes an adapter address from the whitelist
    /// @dev Requires MANAGER role
    /// @param adapter_ Address of the asset adapter to remove from whitelist
    function removeFromWhitelist(address adapter_) external onlyRole(MANAGER) {
        delete whitelist[adapter_];
        
        emit AdapterRemovedFromWhitelist(adapter_, msg.sender);
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

        uint256 oldFillBalance = fillBalanceMap[psm_];
        fillBalanceMap[psm_] = fillBalance_;
        
        emit FillBalanceUpdated(psm_, oldFillBalance, fillBalance_, msg.sender);
    }

    /// @notice Adds a new PSM to the system
    /// @dev Requires MANAGER role. Maps underlying token to PSM address
    /// @param psm_ Address of the PSM to add
    function addPSM(address psm_) external onlyRole(MANAGER) {
        require(psm_ != address(0), "psm cannot be zero address");
        
        address underlying = address(IPegStabilityModule(psm_).underlying());
        require(underlying != address(0), "underlying cannot be zero address");
        
        address existingPSM = psmMap[underlying];
        require(existingPSM == address(0), "PSM already exists for this underlying");
        
        psmMap[underlying] = psm_;
        
        emit PSMAdded(psm_, underlying, msg.sender);
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
