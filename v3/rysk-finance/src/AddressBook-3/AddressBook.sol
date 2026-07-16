// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.6.10;

// OpenZeppelin Contracts v3.1.0

abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this;
        return msg.data;
    }
}

contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

abstract contract Proxy {
    function implementation() public view virtual returns (address);

    fallback() external payable {
        address _impl = implementation();
        require(_impl != address(0));

        assembly {
            let ptr := mload(0x40)
            calldatacopy(ptr, 0, calldatasize())
            let result := delegatecall(gas(), _impl, ptr, calldatasize(), 0, 0)
            let size := returndatasize()
            returndatacopy(ptr, 0, size)

            switch result
            case 0 {
                revert(ptr, size)
            }
            default {
                return(ptr, size)
            }
        }
    }
}

contract UpgradeabilityProxy is Proxy {
    event Upgraded(address indexed implementation);

    bytes32 private constant implementationPosition = keccak256("org.zeppelinos.proxy.implementation");

    function implementation() public view override returns (address impl) {
        bytes32 position = implementationPosition;
        assembly {
            impl := sload(position)
        }
    }

    function setImplementation(address _newImplementation) internal {
        bytes32 position = implementationPosition;
        assembly {
            sstore(position, _newImplementation)
        }
    }

    function _upgradeTo(address _newImplementation) internal {
        address currentImplementation = implementation();
        require(currentImplementation != _newImplementation);
        setImplementation(_newImplementation);
        emit Upgraded(_newImplementation);
    }
}

contract OwnedUpgradeabilityProxy is UpgradeabilityProxy {
    event ProxyOwnershipTransferred(address previousOwner, address newOwner);

    bytes32 private constant proxyOwnerPosition = keccak256("org.zeppelinos.proxy.owner");

    constructor() public {
        setUpgradeabilityOwner(msg.sender);
    }

    modifier onlyProxyOwner() {
        require(msg.sender == proxyOwner());
        _;
    }

    function proxyOwner() public view returns (address owner) {
        bytes32 position = proxyOwnerPosition;
        assembly {
            owner := sload(position)
        }
    }

    function setUpgradeabilityOwner(address _newProxyOwner) internal {
        bytes32 position = proxyOwnerPosition;
        assembly {
            sstore(position, _newProxyOwner)
        }
    }

    function transferProxyOwnership(address _newOwner) public onlyProxyOwner {
        require(_newOwner != address(0));
        emit ProxyOwnershipTransferred(proxyOwner(), _newOwner);
        setUpgradeabilityOwner(_newOwner);
    }

    function upgradeTo(address _implementation) public onlyProxyOwner {
        _upgradeTo(_implementation);
    }

    function upgradeToAndCall(address _implementation, bytes calldata _data) public payable onlyProxyOwner {
        upgradeTo(_implementation);
        (bool success, ) = address(this).call{value: msg.value}(_data);
        require(success);
    }
}

contract AddressBook is Ownable {
    bytes32 private constant OTOKEN_IMPL = keccak256("OTOKEN_IMPL");
    bytes32 private constant OTOKEN_FACTORY = keccak256("OTOKEN_FACTORY");
    bytes32 private constant WHITELIST = keccak256("WHITELIST");
    bytes32 private constant CONTROLLER = keccak256("CONTROLLER");
    bytes32 private constant MARGIN_POOL = keccak256("MARGIN_POOL");
    bytes32 private constant MARGIN_CALCULATOR = keccak256("MARGIN_CALCULATOR");
    bytes32 private constant LIQUIDATION_MANAGER = keccak256("LIQUIDATION_MANAGER");
    bytes32 private constant ORACLE = keccak256("ORACLE");

    mapping(bytes32 => address) private addresses;

    event ProxyCreated(bytes32 indexed id, address indexed proxy);
    event AddressAdded(bytes32 indexed id, address indexed add);

    function getOtokenImpl() external view returns (address) {
        return getAddress(OTOKEN_IMPL);
    }

    function getOtokenFactory() external view returns (address) {
        return getAddress(OTOKEN_FACTORY);
    }

    function getWhitelist() external view returns (address) {
        return getAddress(WHITELIST);
    }

    function getController() external view returns (address) {
        return getAddress(CONTROLLER);
    }

    function getMarginPool() external view returns (address) {
        return getAddress(MARGIN_POOL);
    }

    function getMarginCalculator() external view returns (address) {
        return getAddress(MARGIN_CALCULATOR);
    }

    function getLiquidationManager() external view returns (address) {
        return getAddress(LIQUIDATION_MANAGER);
    }

    function getOracle() external view returns (address) {
        return getAddress(ORACLE);
    }

    function setOtokenImpl(address _otokenImpl) external onlyOwner {
        setAddress(OTOKEN_IMPL, _otokenImpl);
    }

    function setOtokenFactory(address _otokenFactory) external onlyOwner {
        setAddress(OTOKEN_FACTORY, _otokenFactory);
    }

    function setWhitelist(address _whitelist) external onlyOwner {
        setAddress(WHITELIST, _whitelist);
    }

    function setController(address _controller) external onlyOwner {
        updateImpl(CONTROLLER, _controller);
    }

    function setMarginPool(address _marginPool) external onlyOwner {
        updateImpl(MARGIN_POOL, _marginPool);
    }

    function setMarginCalculator(address _marginCalculator) external onlyOwner {
        setAddress(MARGIN_CALCULATOR, _marginCalculator);
    }

    function setLiquidationManager(address _liquidationManager) external onlyOwner {
        setAddress(LIQUIDATION_MANAGER, _liquidationManager);
    }

    function setOracle(address _oracle) external onlyOwner {
        setAddress(ORACLE, _oracle);
    }

    function getAddress(bytes32 _key) public view returns (address) {
        return addresses[_key];
    }

    function setAddress(bytes32 _key, address _address) public onlyOwner {
        addresses[_key] = _address;

        emit AddressAdded(_key, _address);
    }

    function updateImpl(bytes32 _id, address _newAddress) public onlyOwner {
        address payable proxyAddress = address(uint160(getAddress(_id)));

        if (proxyAddress == address(0)) {
            bytes memory params = abi.encodeWithSignature("initialize(address,address)", address(this), owner());
            OwnedUpgradeabilityProxy proxy = new OwnedUpgradeabilityProxy();
            setAddress(_id, address(proxy));
            emit ProxyCreated(_id, address(proxy));
            proxy.upgradeToAndCall(_newAddress, params);
        } else {
            OwnedUpgradeabilityProxy proxy = OwnedUpgradeabilityProxy(proxyAddress);
            proxy.upgradeTo(_newAddress);
        }
    }
}