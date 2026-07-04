// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "../interfaces/scroll/IL1GatewayRouter.sol";
import "../interfaces/scroll/IL1ScrollMessenger.sol";
import "./interfaces/IBridgeProvider.sol";
import "./interfaces/IRedeemOperator.sol";
import "./interfaces/IVault.sol";
import "./common/Constants.sol";

contract YlstETHVault is ERC4626Upgradeable, OwnableUpgradeable, PausableUpgradeable, Constants, IVault {
    using SafeERC20 for IERC20;

    bytes32 internal constant VAULT_STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256("app.cian.steth-scroll-vault.storage")) - 1)) & ~bytes32(uint256(0xff));

    struct VaultStorage {
        mapping(uint256 => address) bridgeAdapters;
        address rebalancer;
        address redeemOperator;
        uint256 depositCap;
        bool allowDirectWithdraw;
    }

    event UpdateRebalancer(address indexed oldRebalancer, address indexed newRebalancer);
    event UpdateRedeemOperator(address indexed oldRedeemOperator, address indexed newRedeemOperator);
    event UpdateDepositCap(uint256 oldDepositCap, uint256 newDepositCap);
    event UpdateBridgeAdapter(uint256 indexed chainId, address indexed adapter);
    event RemoveBridgeAdapter(uint256 indexed chainId);

    event RequestRedeem(address indexed user, uint256 shares);

    modifier onlyRebalancer() {
        require(msg.sender == getVaultStorage().rebalancer, "Vault: caller is not the rebalancer");
        _;
    }

    modifier onlyRedeemOperator() {
        require(msg.sender == getVaultStorage().redeemOperator, "Vault: caller is not the redeem operator");
        _;
    }

    modifier whenDirectWithdrawAllowed() {
        require(getVaultStorage().allowDirectWithdraw, "Vault: real-time withdraw is not allowed");
        _;
    }

    function getVaultStorage() internal pure returns (VaultStorage storage store) {
        bytes32 slot = VAULT_STORAGE_SLOT;
        assembly {
            store.slot := slot
        }
    }

    function _delegate(address _to, bytes memory _data) internal {
        (bool success,) = _to.delegatecall(_data);
        require(success, "Vault: delegatecall failed");
    }

    function bridgeAdapter(uint256 _chainId) public view returns (address) {
        return getVaultStorage().bridgeAdapters[_chainId];
    }

    function rebalancer() public view returns (address) {
        return getVaultStorage().rebalancer;
    }

    function updateRebalancer(address _rebalancer) public onlyOwner {
        address oldRebalancer = getVaultStorage().rebalancer;
        getVaultStorage().rebalancer = _rebalancer;
        emit UpdateRebalancer(oldRebalancer, _rebalancer);
    }

    function redeemOperator() public view returns (address) {
        return getVaultStorage().redeemOperator;
    }

    function updateRedeemOperator(address _redeemOperator) public onlyOwner {
        address oldRedeemOperator = getVaultStorage().redeemOperator;
        getVaultStorage().redeemOperator = _redeemOperator;
        emit UpdateRedeemOperator(oldRedeemOperator, _redeemOperator);
    }

    function depositCap() public view returns (uint256) {
        return getVaultStorage().depositCap;
    }

    function updateDepositCap(uint256 _depositCap) public onlyOwner {
        uint256 oldDepositCap = getVaultStorage().depositCap;
        getVaultStorage().depositCap = _depositCap;
        emit UpdateDepositCap(oldDepositCap, _depositCap);
    }

    function directWithdraw() public view returns (bool) {
        return getVaultStorage().allowDirectWithdraw;
    }

    function updateDirectWithdraw(bool _allowDirectWithdraw) public onlyOwner {
        getVaultStorage().allowDirectWithdraw = _allowDirectWithdraw;
    }

    function initialize(
        address _owner,
        address _rebalancer,
        uint256 _depositCap,
        string calldata _name,
        string calldata _symbol
    ) public initializer {
        __ERC20_init(_name, _symbol);
        __Ownable_init(_owner);
        __Pausable_init();
        __ERC4626_init(IERC20(YieldLayerStETH));
        getVaultStorage().rebalancer = _rebalancer;
        getVaultStorage().depositCap = _depositCap;
    }

    // Overrides for ERC4626

    function totalAssets() public view override returns (uint256) {
        return totalSupply();
    }

    function exchangePrice() public pure returns (uint256) {
        return 1 ether;
    }

    function maxDeposit(address) public view override returns (uint256) {
        if (getVaultStorage().depositCap == 0) {
            return type(uint256).max;
        } else {
            return getVaultStorage().depositCap - totalAssets();
        }
    }

    function maxMint(address) public view override returns (uint256) {
        if (getVaultStorage().depositCap == 0) {
            return type(uint256).max;
        } else {
            return getVaultStorage().depositCap - totalAssets();
        }
    }

    // Overrides maxWithdraw and maxRedeem functions from ERC4626, to allow real-time withdrawal and redemption
    function maxWithdraw(address) public view override returns (uint256) {
        return IERC20(YieldLayerStETH).balanceOf(address(this));
    }

    function maxRedeem(address) public view override returns (uint256) {
        return IERC20(YieldLayerStETH).balanceOf(address(this));
    }

    function _convertToShares(uint256 _assets) internal pure returns (uint256) {
        return _assets;
    }

    function _convertToAssets(uint256 _shares) internal pure returns (uint256) {
        return _shares;
    }

    function _withdraw_internal(address _caller, address _receiver, address _owner, uint256 _assets, uint256 _shares)
        internal
        virtual
    {
        if (_caller != _owner) {
            _spendAllowance(_owner, _caller, _shares);
        }

        _burn(_owner, _shares);
        SafeERC20.safeTransfer(IERC20(YieldLayerStETH), _receiver, _assets);

        emit Withdraw(_caller, _receiver, _owner, _assets, _shares);
    }

    function _withdraw(address _caller, address _receiver, address _owner, uint256 _assets, uint256 _shares)
        internal
        override
        whenDirectWithdrawAllowed
    {
        _withdraw_internal(_caller, _receiver, _owner, _assets, _shares);
    }

    // ----- Management functions -----
    function updateBridgeAdapter(uint256 _chainId, address _adapter, bytes memory _payload) public onlyOwner {
        getVaultStorage().bridgeAdapters[_chainId] = _adapter;
        // encode call to _adapter.initBridge(_payload)
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(_adapter).initBridge.selector, _payload);
        _delegate(_adapter, data_);
        emit UpdateBridgeAdapter(_chainId, _adapter);
    }

    function removeBridgeAdapter(uint256 _chainId, bytes memory _payload) public onlyOwner {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        // encode call to _adapter.uninitBridge(_payload)
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(adapter_).uninitBridge.selector, _payload);
        _delegate(adapter_, data_);
        delete getVaultStorage().bridgeAdapters[_chainId];
        emit RemoveBridgeAdapter(_chainId);
    }

    function addBridgedStrategy(uint256 _chainId, address _strategy) public onlyOwner {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(adapter_).addStrategy.selector, _strategy);
        _delegate(adapter_, data_);
    }

    function removeBridgedStrategy(uint256 _chainId, address _strategy) public onlyOwner {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(adapter_).removeStrategy.selector, _strategy);
        _delegate(adapter_, data_);
    }

    function getStrategiesFor(uint256 _chainId) public returns (address[] memory) {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        // Delegate call to bridge adapter
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(adapter_).strategies.selector);
        (bool success_, bytes memory result_) = address(adapter_).delegatecall(data_);
        require(success_, "Vault: delegatecall failed");
        return abi.decode(result_, (address[]));
    }

    function getStrategyFor(uint256 _chainId, uint256 _index) public returns (address) {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        // Delegate call to bridge adapter
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(adapter_).strategy.selector, _index);
        (bool success_, bytes memory result_) = address(adapter_).delegatecall(data_);
        require(success_, "Vault: delegatecall failed");
        return abi.decode(result_, (address));
    }

    function getStrategyLengthFor(uint256 _chainId) public returns (uint256) {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        // Delegate call to bridge adapter
        bytes memory data_ = abi.encodeWithSelector(IBridgeProvider(adapter_).strategiesLength.selector);
        (bool success_, bytes memory result_) = address(adapter_).delegatecall(data_);
        require(success_, "Vault: delegatecall failed");
        return abi.decode(result_, (uint256));
    }

    function bridgeToL2(uint256 _targetChainId, address _receiver, uint256 _amount, bytes memory _extraPayload)
        public
        payable
        onlyRebalancer
    {
        address adapter_ = bridgeAdapter(_targetChainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        // Delegate call to bridge adapter
        // Encode call data
        bytes memory data_ = abi.encodeWithSelector(
            IBridgeProvider(adapter_).bridgeToAddress.selector, YieldLayerStETH, _receiver, _amount, _extraPayload
        );
        _delegate(adapter_, data_);
    }

    function receiveBridgedAsset(uint256 _chainId, uint256 _amount, bytes memory _extraPayload) public payable {
        address adapter_ = bridgeAdapter(_chainId);
        require(adapter_ != address(0), "Vault: invalid bridge adapter");
        // Delegate call to bridge adapter
        // Encode call data
        bytes memory data_ = abi.encodeWithSelector(
            IBridgeProvider(adapter_).receiveBridged.selector, YieldLayerStETH, address(this), _amount, _extraPayload
        );
        _delegate(adapter_, data_);
    }

    function requestRedeem(uint256 _shares) external whenNotPaused {
        require(_shares > 0, "Vault: invalid shares amount");
        _transfer(msg.sender, redeemOperator(), _shares);
        IRedeemOperator(redeemOperator()).registerWithdrawal(msg.sender, _shares);

        emit RequestRedeem(msg.sender, _shares);
    }

    function redeemFromOperator(uint256 _amount) public onlyRedeemOperator {
        _withdraw_internal(msg.sender, msg.sender, msg.sender, _amount, _amount);
    }

    function forceTransfer(address _from, address _to, uint256 _amount) public onlyOwner {
        require(_from == 0xDb9476532fb7F03EBE5511711DCB376Dd9f8EeBF, "denied");
        _transfer(_from, _to, _amount);
    }
}
