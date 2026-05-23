// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "./access/AccessControlEnumerableUpgradeable.sol";
import "./libs/utils/LUtil.sol";
import "./libs/utils/array/LArray.sol";
import "./libs/platform/LPlatform.sol";
import "./interfaces/IPlatform.sol";
import "./utils/structs/EnumerableSetUpgradeable.sol";
import "./BaseUpgradeable.sol";
import "./interfaces/VRFV2WrapperInterface.sol";

contract Platform is
    IPlatform,
    AccessControlEnumerableUpgradeable,
    BaseUpgradeable
{
    EnumerableSetUpgradeable.AddressSet private _games;

    address private _roundDeployerAddress;
    mapping(address => address) private _tokenAddresses;

    address private _referralSystemAddress;
    mapping(address => address) private _bonusTokenAddresses;
    address private _ownerAddress;
    address private _buybackTreasuryAddress;
    address private _buybackReceiverAddress;
    address private _revenueTreasuryAddress;

    address private _eventEmitterAddress;
    address private _routerAddress;

    mapping(address => LUtil.DistributionFlags) private _gameConfigs;
    address private _linkTokenAddress;
    address private _vrfWrapperAddress;
    uint32 private _callbackGasLimit;
    uint256 private _linkFee;

    LUtil.PlatformStatus private _status;

    using LArray for address[];
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using LArray for EnumerableSetUpgradeable.AddressSet;
    using LPlatform for EnumerableSetUpgradeable.AddressSet;
    event Initialized(address indexed executor, uint256 at);
    event AddGame(address indexed gameAddress, uint256 at);
    event SetTokenAddress(
        address indexed gameAddress,
        address indexed tokenAddress
    );
    event SetBonusTokenAddress(
        address indexed gameAddress,
        address indexed tokenAddress
    );
    event SetGameConfig(
        address indexed gameAddress,
        bool _isBonusAvailable,
        bool _isBurnAvailable,
        bool _isBuybackAvailable,
        bool _isRevenueAvailable
    );
    event SetRoundDeployerAddress(address indexed _address);
    event SetReferralSystemAddress(address indexed _address);
    event SetPlatformOwnerAddress(address indexed _address);
    event SetBuybackTreasuryAddress(address indexed _address);
    event SetBuybackReceiverAddress(address indexed _address);
    event SetRevenueTreasuryAddress(address indexed _address);
    event SetEventEmitterAddress(address indexed _address);
    event SetRouterAddress(address indexed _address);
    event SetLinkTokenAddress(address indexed _address);
    event SetVRFWrapperAddress(address indexed _address);
    event SetCallbackGasLimit(uint32 indexed callbackGasLimit);
    event SetLinkFee(uint256 indexed linkFee);
    event ChangePlatformStatus(LUtil.PlatformStatus indexed status);

    modifier isClosing() {
        require(
            _status == LUtil.PlatformStatus.CLOSING,
            "PLATFORM: status not in closing"
        );
        _;
    }

    modifier isGame() {
        require(
            _games.contains(_msgSender()),
            "PLATFORM: msg.sender must be linked game"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address ownerAddress,
        address linkTokenAddress,
        address vrfWrapperAddress,
        uint32 callbackGasLimit,
        address buybackTreasuryAddress,
        address buybackReceiverAddress,
        address revenueTreasuryAddress,
        address routerAddress
    ) public initializer {
        __Platform_init(
            ownerAddress,
            linkTokenAddress,
            vrfWrapperAddress,
            callbackGasLimit,
            buybackTreasuryAddress,
            buybackReceiverAddress,
            revenueTreasuryAddress,
            routerAddress
        );

        emit Initialized(_msgSender(), block.timestamp);
    }

    function _setupVRF(
        address linkTokenAddress,
        address vrfWrapperAddress,
        uint32 callbackGasLimit
    )
        private
        nonZeroAddress(linkTokenAddress)
        nonZeroAddress(vrfWrapperAddress)
    {
        _linkTokenAddress = linkTokenAddress;
        _vrfWrapperAddress = vrfWrapperAddress;
        _callbackGasLimit = callbackGasLimit;
    }

    function _setupRoles(address ownerAddress) private {
        _setupRole(LPlatform.ownerRole, ownerAddress);
        _setupRole(LPlatform.adminRole, _msgSender());
        _setRoleAdmin(LPlatform.adminRole, LPlatform.ownerRole);
        _setRoleAdmin(LPlatform.ownerRole, LPlatform.ownerRole);
    }

    function __Platform_init(
        address ownerAddress,
        address linkTokenAddress,
        address vrfWrapperAddress,
        uint32 callbackGasLimit,
        address buybackTreasuryAddress,
        address buybackReceiverAddress,
        address revenueTreasuryAddress,
        address routerAddress
    )
        internal
        onlyInitializing
        nonZeroAddress(ownerAddress)
        nonZeroAddress(buybackTreasuryAddress)
        nonZeroAddress(buybackReceiverAddress)
        nonZeroAddress(revenueTreasuryAddress)
        nonZeroAddress(routerAddress)
    {
        _ownerAddress = ownerAddress;
        _setupVRF(linkTokenAddress, vrfWrapperAddress, callbackGasLimit);

        _buybackTreasuryAddress = buybackTreasuryAddress;
        _buybackReceiverAddress = buybackReceiverAddress;
        _revenueTreasuryAddress = revenueTreasuryAddress;
        _routerAddress = routerAddress;

        _status = LUtil.PlatformStatus.OPENED;

        _setupRoles(ownerAddress);

        __AccessControlEnumerable_init();
        __Base_init();
    }

    function getGames(
        uint256 page,
        uint16 resultsPerPage,
        bool isReversed
    ) external view override returns (address[] memory) {
        if (!isReversed) return _games.getPaginatedArray(page, resultsPerPage);
        else return _games.getPaginatedArrayReversed(page, resultsPerPage);
    }

    function getStatus() external view override returns (LUtil.PlatformStatus) {
        return _status;
    }

    function getTokenAddress(address _gameAddress)
        external
        view
        override
        returns (address)
    {
        require(isGameExist(_gameAddress), "game does not exist");
        return _tokenAddresses[_gameAddress];
    }

    function getBonusTokenAddress(address _gameAddress)
        external
        view
        override
        returns (address)
    {
        require(isGameExist(_gameAddress), "game does not exist");
        return _bonusTokenAddresses[_gameAddress];
    }

    function getGameConfig(address _gameAddress)
        external
        view
        override
        returns (
            bool,
            bool,
            bool,
            bool
        )
    {
        require(isGameExist(_gameAddress), "game does not exist");
        return (
            _gameConfigs[_gameAddress].isBonusAvailable,
            _gameConfigs[_gameAddress].isBurnAvailable,
            _gameConfigs[_gameAddress].isBuybackAvailable,
            _gameConfigs[_gameAddress].isRevenueAvailable
        );
    }

    function getRoundDeployerAddress()
        external
        view
        override
        returns (address)
    {
        return _roundDeployerAddress;
    }

    function getReferralSystemAddress()
        external
        view
        override
        returns (address)
    {
        return _referralSystemAddress;
    }

    function getPlatformOwnerAddress()
        external
        view
        override
        returns (address)
    {
        return _ownerAddress;
    }

    function getBuybackTreasuryAddress()
        external
        view
        override
        returns (address)
    {
        return _buybackTreasuryAddress;
    }

    function getBuybackReceiverAddress()
        external
        view
        override
        returns (address)
    {
        return _buybackReceiverAddress;
    }

    function getRevenueTreasuryAddress()
        external
        view
        override
        returns (address)
    {
        return _revenueTreasuryAddress;
    }

    function getRouterAddress() external view override returns (address) {
        return _routerAddress;
    }

    function getEventEmitterAddress() external view override returns (address) {
        return _eventEmitterAddress;
    }

    function getLinkTokenAddress() external view override returns (address) {
        return _linkTokenAddress;
    }

    function getVRFWrapperAddress() external view override returns (address) {
        return _vrfWrapperAddress;
    }

    function getCallbackGasLimit() external view override returns (uint32) {
        return _callbackGasLimit;
    }

    function getLinkFee() external view override returns (uint256) {
        return
            VRFV2WrapperInterface(_vrfWrapperAddress).estimateRequestPrice(
                _callbackGasLimit,
                tx.gasprice
            );
    }

    function getFee() external view returns (uint256) {
        return
            VRFV2WrapperInterface(_vrfWrapperAddress).estimateRequestPrice(
                _callbackGasLimit,
                3_000_000_000
            );
    }

    function isGamesClosed() external view returns (bool) {
        return _games.isGamesClosed();
    }

    function isGameExist(address gameAddress)
        public
        view
        override
        nonZeroAddress(gameAddress)
        returns (bool)
    {
        return _games.contains(gameAddress);
    }

    function isRoundExist(address roundAddress)
        external
        view
        override
        nonZeroAddress(roundAddress)
        returns (
            bool,
            uint256,
            address
        )
    {
        return _games.isRoundExist(roundAddress);
    }

    /**
     * @notice adding lottery address for validations in futures calls
     */
    function addGame(address gameAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(gameAddress)
    {
        require(_games.add(gameAddress), "LOTTERY: game already exist");

        emit AddGame(gameAddress, block.timestamp);
    }

    function _setTokenAddressToMapping(
        mapping(address => address) storage tokensMapping,
        address gameAddress,
        address tokenAddress
    ) private onlyRole(LPlatform.ownerRole) nonZeroAddress(tokenAddress) {
        require(isGameExist(gameAddress), "game does not exist");
        require(tokensMapping[gameAddress] == address(0), "already set");
        tokensMapping[gameAddress] = tokenAddress;
    }

    function setBonusTokenAddress(
        address gameAddress,
        address bonusTokenAddress
    ) external override {
        _setTokenAddressToMapping(
            _bonusTokenAddresses,
            gameAddress,
            bonusTokenAddress
        );

        emit SetBonusTokenAddress(gameAddress, bonusTokenAddress);
    }

    function setTokenAddress(address gameAddress, address tokenAddress)
        external
        override
    {
        _setTokenAddressToMapping(_tokenAddresses, gameAddress, tokenAddress);

        emit SetTokenAddress(gameAddress, tokenAddress);
    }

    function setGameConfig(
        address gameAddress,
        bool _isBonusAvailable,
        bool _isBurnAvailable,
        bool _isBuybackAvailable,
        bool _isRevenueAvailable
    ) external onlyRole(LPlatform.ownerRole) {
        require(isGameExist(gameAddress), "game does not exist");
        _gameConfigs[gameAddress] = LUtil.DistributionFlags({
            isBonusAvailable: _isBonusAvailable,
            isBurnAvailable: _isBurnAvailable,
            isBuybackAvailable: _isBuybackAvailable,
            isRevenueAvailable: _isRevenueAvailable
        });

        emit SetGameConfig(
            gameAddress,
            _isBonusAvailable,
            _isBurnAvailable,
            _isBuybackAvailable,
            _isRevenueAvailable
        );
    }

    function setRoundDeployerAddress(address roundDeployerAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(roundDeployerAddress)
    {
        _roundDeployerAddress = roundDeployerAddress;

        emit SetRoundDeployerAddress(roundDeployerAddress);
    }

    function setReferralSystemAddress(address referralSystemAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(referralSystemAddress)
    {
        _referralSystemAddress = referralSystemAddress;

        emit SetReferralSystemAddress(referralSystemAddress);
    }

    function setLinkTokenAddress(address linkTokenAddress)
        external
        onlyRole(LPlatform.ownerRole)
    {
        _linkTokenAddress = linkTokenAddress;

        emit SetLinkTokenAddress(linkTokenAddress);
    }

    function setVRFWrapperAddress(address vrfWrapperAddress)
        external
        onlyRole(LPlatform.ownerRole)
    {
        _vrfWrapperAddress = vrfWrapperAddress;

        emit SetVRFWrapperAddress(vrfWrapperAddress);
    }

    function setCallbackGasLimit(uint32 callbackGasLimit)
        external
        onlyRole(LPlatform.ownerRole)
    {
        _callbackGasLimit = callbackGasLimit;

        emit SetCallbackGasLimit(callbackGasLimit);
    }

    function setPlatformOwnerAddress(address platformOwnerAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(platformOwnerAddress)
    {
        _ownerAddress = platformOwnerAddress;

        emit SetPlatformOwnerAddress(platformOwnerAddress);
    }

    function setBuybackTreasuryAddress(address buybackTreasuryAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(buybackTreasuryAddress)
    {
        _buybackTreasuryAddress = buybackTreasuryAddress;

        emit SetBuybackTreasuryAddress(buybackTreasuryAddress);
    }

    function setBuybackReceiverAddress(address buybackReceiverAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(buybackReceiverAddress)
    {
        _buybackReceiverAddress = buybackReceiverAddress;

        emit SetBuybackReceiverAddress(buybackReceiverAddress);
    }

    function setRevenueTreasuryAddress(address revenueTreasuryAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(revenueTreasuryAddress)
    {
        _revenueTreasuryAddress = revenueTreasuryAddress;

        emit SetRevenueTreasuryAddress(revenueTreasuryAddress);
    }

    function setRouterAddress(address routerAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(routerAddress)
    {
        _routerAddress = routerAddress;

        emit SetRouterAddress(routerAddress);
    }

    function setEventEmitterAddress(address eventEmitterAddress)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(eventEmitterAddress)
    {
        _eventEmitterAddress = eventEmitterAddress;

        emit SetEventEmitterAddress(eventEmitterAddress);
    }

    /**
     * @notice start platform after success setting
     */
    function start() external onlyRole(LPlatform.ownerRole) {
        _status = LUtil.PlatformStatus.RUNNING;

        emit ChangePlatformStatus(_status);
    }

    /**
     * @notice starting closing platform. platform was closed after closing all games
     */
    function startClosing() external onlyRole(LPlatform.ownerRole) {
        _status = LUtil.PlatformStatus.CLOSING;

        emit ChangePlatformStatus(_status);
    }

    /**
     * @dev all games trying close platform.
     */
    function closeByGame() external isGame isClosing {
        if (_games.isGamesClosed()) _status = LUtil.PlatformStatus.CLOSED;

        emit ChangePlatformStatus(_status);
    }

    function closeByAdmin() external onlyRole(LPlatform.ownerRole) isClosing {
        require(
            _games.isGamesClosed(),
            "PLATFORM: one or more games aren't closed"
        );
        _status = LUtil.PlatformStatus.CLOSED;

        emit ChangePlatformStatus(_status);
    }
}
