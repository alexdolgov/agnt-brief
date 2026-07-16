// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../../../interfaces/pumpbtc/IPumpStaking.sol";
import "../../../interfaces/IStrategy.sol";
import "../../libraries/Errors.sol";
import "../../common/Constants.sol";

/**
 * @title StrategyPumpBTC contract
 * @author Naturelab
 * @dev This contract is the actual address of the strategy pool, which
 * manages some assets in PumpBTC.
 */
contract StrategyPumpBTC is IStrategy, Constants, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    // The version of the contract
    string public constant VERSION = "1.0";

    address internal constant PumpBTC = 0xF469fBD2abcd6B9de8E169d128226C0Fc90a012e;

    address internal constant FBTC_POOL = 0x3d9bCcA8Bc7D438a4c5171435f41a0AF5d5E6083;

    address public vault;

    // The address of the position adjustment manager
    address public rebalancer;

    event UpdateRebalancer(address oldRebalancer, address newRebalancer);
    event OnTransferIn(address token, uint256 amount);
    event TransferToVault(address token, uint256 amount);

    /**
     * @dev Ensure that this method is only called by the Vault contract.
     */
    modifier onlyVault() {
        if (msg.sender != vault) revert Errors.CallerNotVault();
        _;
    }

    /**
     * @dev  Ensure that this method is only called by authorized portfolio managers.
     */
    modifier onlyRebalancer() {
        if (msg.sender != rebalancer) revert Errors.CallerNotRebalancer();
        _;
    }

    /**
     * @dev Initialize the strategy with given parameters.
     * @param _initBytes Initialization data
     */
    function initialize(bytes calldata _initBytes) external initializer {
        (address admin_, address rebalancer_) = abi.decode(_initBytes, (address, address));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        __Ownable_init(admin_);

        rebalancer = rebalancer_;
        vault = msg.sender;
    }

    /**
     * @dev Add a new address to the position adjustment whitelist.
     * @param _newRebalancer The new address to be added.
     */
    function updateRebalancer(address _newRebalancer) external onlyOwner {
        if (_newRebalancer == address(0)) revert Errors.InvalidRebalancer();
        emit UpdateRebalancer(rebalancer, _newRebalancer);
        rebalancer = _newRebalancer;
    }

    /**
     * @dev Transfers funds from the vault contract to this contract.
     * This function is called by the vault to move tokens into this contract.
     * It uses the `safeTransferFrom` function from the SafeERC20 library to ensure the transfer is successful.
     * @param _token The address of the token to be transferred.
     * @param _amount The amount of tokens to be transferred.
     * @return A boolean indicating whether the transfer was successful.
     */
    function onTransferIn(address _token, uint256 _amount) external onlyVault returns (bool) {
        if (_token != FBTC) revert Errors.UnsupportedToken();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    /**
     * @dev Transfer tokens to the Vault.
     * @param _token The address of the token to transfer.
     * @param _amount The amount of tokens to transfer.
     */
    function transferToVault(address _token, uint256 _amount) external onlyRebalancer {
        if (_token != FBTC) revert Errors.UnsupportedToken();
        IERC20(_token).safeTransfer(vault, _amount);
        emit TransferToVault(_token, _amount);
    }

    function enterProtocol(uint256 _amount) external onlyRebalancer {
        IERC20(FBTC).safeIncreaseAllowance(FBTC_POOL, _amount);
        IPumpStaking(FBTC_POOL).stake(_amount);
    }

    // function exitProtocol(uint256 _amount) external onlyRebalancer {}

    /**
     * @dev Get the amount of assets in all lending protocols involved in this contract for the strategy pool.
     * @return netAssets The total amount of net assets.
     */
    function getNetAssets() public view returns (uint256) {
        return IERC20(FBTC).balanceOf(address(this)) + IERC20(PumpBTC).balanceOf(address(this));
    }
}
