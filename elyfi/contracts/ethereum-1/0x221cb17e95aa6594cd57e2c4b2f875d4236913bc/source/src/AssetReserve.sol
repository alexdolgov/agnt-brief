// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SingleAdminAccessControl} from "src/utils/SingleAdminAccessControl.sol";

/// @title AssetReserve - Multi-Role Asset Custody
/// @notice This contract serves as a reserve of assets custody solution with role-based access control,
///         providing liquidity buffer management for redemptions and authorized fund transfers to custodians.
contract AssetReserve is SingleAdminAccessControl {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error NotRouter();
    error UnauthorizedCustodian();
    error ZeroInput();

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    event CustodianSet(address indexed custodian, bool isCustodian);
    event RouterSet(address indexed router);
    event TransferToCustodian(address indexed custodian, address indexed asset, uint256 amount);
    event RedemptionProcessed(address indexed recipient, address indexed collateralAsset, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The router contract
    address public router;

    /// @notice The role that is allowed to pull funds to a custodian
    bytes32 public constant AUTHORIZED = keccak256("AUTHORIZED_ROLE");

    /// @notice The mapping of custodians
    mapping(address custodian => bool) public isCustodian;

    /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    constructor(address _admin) {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Set a custodian
    /// @param _custodian The address of the custodian
    /// @param _isCustodian Whether the custodian is authorized
    function setCustodian(address _custodian, bool _isCustodian) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setCustodian(_custodian, _isCustodian);
    }

    function setRouter(address _router) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRouter(_router);
    }

    /*//////////////////////////////////////////////////////////////
                            AUTHORIZED FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Transfer an asset to a custodian
    /// @param _custodian The address of the custodian
    /// @param _asset The address of the asset
    /// @param _amount The amount of asset to transfer
    function transferToCustodian(address _custodian, address _asset, uint256 _amount) external onlyRole(AUTHORIZED) {
        if (!isCustodian[_custodian]) revert UnauthorizedCustodian();
        IERC20(_asset).safeTransfer(_custodian, _amount);
        emit TransferToCustodian(_custodian, _asset, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                             ROUTER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Process a redemption
    /// @param _recipient The address of the recipient
    /// @param _collateralAsset The address of the collateral asset
    /// @param _amount The amount of collateral to redeem
    /// @dev This function is called by the router to process a redemption
    function processRedemption(address _recipient, address _collateralAsset, uint256 _amount) external onlyRouter {
        IERC20(_collateralAsset).safeTransfer(_recipient, _amount);
        emit RedemptionProcessed(_recipient, _collateralAsset, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                             INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    modifier onlyRouter() {
        if (msg.sender != router) revert NotRouter();
        _;
    }

    /// @notice Internal function to set a custodian
    /// @param _custodian The address of the custodian
    /// @param _isCustodian Whether the custodian is authorized
    function _setCustodian(address _custodian, bool _isCustodian) internal {
        if (_custodian == address(0)) revert ZeroInput();
        isCustodian[_custodian] = _isCustodian;
        emit CustodianSet(_custodian, _isCustodian);
    }

    function _setRouter(address _router) internal {
        if (_router == address(0)) revert ZeroInput();
        router = _router;
        emit RouterSet(_router);
    }
}
