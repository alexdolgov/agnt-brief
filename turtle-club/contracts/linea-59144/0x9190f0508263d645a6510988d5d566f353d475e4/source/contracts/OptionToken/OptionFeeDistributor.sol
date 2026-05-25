// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IOptionFeeDistributor} from "./IOptionFeeDistributor.sol";
import {IPermissionsRegistry} from "../interfaces/IPermissionsRegistry.sol";

contract OptionFeeDistributor is IOptionFeeDistributor, Initializable, OwnableUpgradeable {
    /// -----------------------------------------------------------------------
    /// Storage variables
    /// -----------------------------------------------------------------------

    address public feeReceiver;
    address public permissionsRegistry;

    /// @dev Reserved storage space to allow for layout changes in the future.
    uint256[50] private __gap;

    /// -----------------------------------------------------------------------
    /// Events
    /// -----------------------------------------------------------------------

    /// @notice Emitted when the fee receiver is updated
    event FeeReceiverUpdated(address indexed oldFeeReceiver, address indexed newFeeReceiver);

    /// @notice Emitted when fees are distributed
    event FeesDistributed(address indexed token, uint256 amount);

    /// -----------------------------------------------------------------------
    /// Custom Errors
    /// -----------------------------------------------------------------------

    error NotAllowed();
    error InvalidAddress();

    /// -----------------------------------------------------------------------
    /// Initializer
    /// -----------------------------------------------------------------------

    /**
     * @notice Initializes the contract with a fee receiver and permissions registry
     * @dev Sets up the contract with initial settings for fee receiver and permissions registry.
     *      PermissionsRegistry can be address(0) to opt out of permissions.
     * @param _feeReceiver The initial address where fees will be sent
     * @param _permissionsRegistry The address of the PermissionsRegistry contract
     */
    function initialize(address _feeReceiver, address _permissionsRegistry) public initializer {
        __Ownable_init();
        _setFeeReceiver(_feeReceiver);
        permissionsRegistry = _permissionsRegistry;
    }

    /// -----------------------------------------------------------------------
    /// Modifiers
    /// -----------------------------------------------------------------------

    modifier onlyAllowed() {
        if (
            !(owner() == msg.sender ||
                (permissionsRegistry != address(0) &&
                    IPermissionsRegistry(permissionsRegistry).hasRole("FEE_MANAGER", msg.sender)))
        ) {
            revert NotAllowed();
        }
        _;
    }

    /// -----------------------------------------------------------------------
    /// Admin Functions
    /// -----------------------------------------------------------------------

    /**
     * @notice Updates the fee receiver address
     * @dev Can only be called by an allowed address (owner or FEE_MANAGER role)
     * @param _feeReceiver The new fee receiver address
     */
    function setFeeReceiver(address _feeReceiver) external onlyAllowed {
        _setFeeReceiver(_feeReceiver);
    }

    function _setFeeReceiver(address _feeReceiver) private {
        if (_feeReceiver == address(0)) revert InvalidAddress();
        emit FeeReceiverUpdated(feeReceiver, _feeReceiver);
        feeReceiver = _feeReceiver;
    }

    /// -----------------------------------------------------------------------
    /// Interface Implementations
    /// -----------------------------------------------------------------------

    /**
     * @notice Distributes the specified `amount` of `token` to the fee receiver
     * @dev Requires approval of this contract to spend `amount` of `token`
     * @param token The address of the token being distributed
     * @param amount The amount of the token to distribute
     */
    function distribute(address token, uint256 amount) external override {
        IERC20(token).transferFrom(msg.sender, feeReceiver, amount);
        emit FeesDistributed(token, amount);
    }
}
