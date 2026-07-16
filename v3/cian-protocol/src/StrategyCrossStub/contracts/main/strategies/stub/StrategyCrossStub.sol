// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../../../interfaces/IStrategy.sol";
import "../../common/CcipSend.sol";
import "../../common/Constants.sol";
import "../../libraries/Errors.sol";

contract StrategyCrossStub is IStrategy, CcipSend, OwnableUpgradeable, Constants {
    using SafeERC20 for IERC20;

    address internal constant SOLVBTC = 0x7A56E1C57C7475CCf742a1832B028F0456652F97;

    struct StrategyStubStorage {
        address ccipRouter;
        address vault;
        address rebalancer;
        address remoteStrategy;
        uint256 remoteNetValue;
        uint256 remoteChainSelector;
    }

    bytes32 internal constant STRATEGY_STUB_STORAGE_POSITION =
        keccak256("app.cian.yield.solvBTC.strategy.stub.storage");
    
    function getStorage() internal pure returns (StrategyStubStorage storage s) {
        bytes32 position = STRATEGY_STUB_STORAGE_POSITION;
        assembly {
            s.slot := position
        }
    }

    event UpdateRebalancer(address oldRebalancer, address newRebalancer);
    event UpdateRemoteStrategy(address oldRemoteStrategy, address newRemoteStrategy);
    event OnTransferIn(address token, uint256 amount);
    event TransferToVault(address token, uint256 amount);
    event UpdateRemoteNetValue(uint256 oldRemoteNetValue, uint256 newRemoteNetValue);

    /**
     * @dev Ensure that this method is only called by the Vault contract.
     */
    modifier onlyVault() {
        if (msg.sender != getStorage().vault) revert Errors.CallerNotVault();
        _;
    }

    /**
     * @dev  Ensure that this method is only called by authorized portfolio managers.
     */
    modifier onlyRebalancer() {
        if (msg.sender != getStorage().rebalancer) revert Errors.CallerNotRebalancer();
        _;
    }

    /**
     * @dev Get the address of the vault.
     */
    function vault() public view returns (address) {
        return getStorage().vault;
    }

    /**
     * @dev Get the address of the rebalancer.
     */
    function rebalancer() public view returns (address) {
        return getStorage().rebalancer;
    }   

    /**
     * @dev Get the address of the remote strategy.
     */
    function remoteStrategy() public view returns (address) {
        return getStorage().remoteStrategy;
    }

    /**
     * @dev Get the cached net value of the remote strategy.
     */
    function remoteNetValue() public view returns (uint256) {
        return getStorage().remoteNetValue;
    }

    /**
     * @dev Initialize the strategy with given parameters.
     * @param _initBytes Initialization data
     */
    function initialize(bytes calldata _initBytes) external initializer {
        (address admin_, address rebalancer_, address ccipRouter_, uint256 targetChainSelector_) = abi.decode(_initBytes, (address, address, address, uint256));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        __Ownable_init(admin_);
        getStorage().rebalancer = rebalancer_;
        getStorage().vault = msg.sender;
        getStorage().ccipRouter = ccipRouter_;
        getStorage().remoteChainSelector = targetChainSelector_;
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
        // Receiver only SolvBTC
        if (_token != SOLVBTC) revert Errors.InvalidToken();
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
        IERC20(_token).safeTransfer(getStorage().vault, _amount);

        emit TransferToVault(_token, _amount);
    }

    /**
     * @dev Update the rebalancer address.
     * @param _newRebalancer The new address to be set as the rebalancer.
     */
    function updateRebalancer(address _newRebalancer) external onlyOwner {
        if (_newRebalancer == address(0)) revert Errors.InvalidRebalancer();
        emit UpdateRebalancer(getStorage().rebalancer, _newRebalancer);
        getStorage().rebalancer = _newRebalancer;
    }

    /**
     * @dev Update the remote strategy address.
     * @param _newRemoteStrategy The new address to be set as the remote strategy.
     */
    function updateRemoteStrategy(address _newRemoteStrategy) external onlyOwner {
        if (_newRemoteStrategy == address(0)) revert Errors.InvalidAdapter();
        emit UpdateRemoteStrategy(getStorage().remoteStrategy, _newRemoteStrategy);
        getStorage().remoteStrategy = _newRemoteStrategy;
    }

    /**
     * @dev Update the remote strategy net value.
     * @param _newRemoteNetValue The new net value to be set as the remote strategy net value.
     */
    function updateRemoteNetValue(uint256 _newRemoteNetValue) external onlyRebalancer {
        emit UpdateRemoteNetValue(getStorage().remoteNetValue, _newRemoteNetValue);
        getStorage().remoteNetValue = _newRemoteNetValue;
    }

    /**
     * @dev Send the deposit amount to the remote strategy.
     * @param _amount The amount to be deposited.
     */
    function sendFunds(uint256 _amount, bytes calldata) external payable onlyRebalancer {
        // Approve required amount to the OFT Adapter
        _ccipSend(SOLVBTC, getStorage().remoteStrategy, _amount, getStorage().ccipRouter, uint64(getStorage().remoteChainSelector));
    }

    /**
     * @dev Get the amount of net assets in the strategy.
     * @return net_ The amount of net assets.
     */
    function getNetAssets() public view override returns (uint256) {
        return IERC20(SOLVBTC).balanceOf(address(this)) + getStorage().remoteNetValue;
    }
}