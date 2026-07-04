// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {ERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {ERC721Utils} from "@openzeppelin/contracts/token/ERC721/utils/ERC721Utils.sol";
import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "@openzeppelin/contracts/utils/Create2.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import {IExitVault} from "src/interfaces/IExitVault.sol";
import {Pause} from "src/Pause.sol";
import {HUNDRED_PERCENT} from "src/Constants.sol";

struct GmxAddresses {
    address gmxVester;
    address glpVester;
    address gmxRewardsTracker;
    address extGmxRewardsTracker;
    address glpRewardsTracker;
    address gmxRewardsRouter;
}

contract ExitVaultEntryPoint is Pause, ERC721Upgradeable {
    error FeeTooHigh();
    error OnlyAdmin();
    error InvalidVault(address vault);
    error InvalidInputLengths();
    error VaultExists();
    error TransferNotSignaled();

    event ExitVaultDeployed(
        uint256 vaultId,
        address indexed vault,
        address indexed owner,
        uint256 donationGmx,
        uint256 donationGlp,
        uint256 nonce,
        string indexed refcode
    );

    event ProtocolFeeSet(uint256 oldFee, uint256 newFee);

    UpgradeableBeacon public beacon;

    address public admin;
    address public pendingAdmin;
    address public treasury;
    uint256 public fee;

    address public gmxVester;
    address public glpVester;
    address public gmxRewardsTracker;
    address public extGmxRewardsTracker;
    address public glpRewardsTracker;
    address public gmxRewardsRouter;

    address public withdrawEscrowImplementation;

    mapping(uint256 nonce => mapping(address sender => address vault)) public deployedVaults; // Quick lookup for right after deployment on UI.
    mapping(address vaultAddress => uint256 id) public vaultId; // Look up token id for the transfer.
    mapping(uint256 id => address vault) public vaults; // Look up the vault to update when transferring via NFT.

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _vaultImplementation,
        address _admin,
        address _treasury,
        uint256 _protocolFee,
        address _withdrawEscrowImplementation,
        GmxAddresses calldata _gmxAddresses
    ) external initializer {
        __ERC721_init("ExitMarketVaultOwnership", "EMVO");
        UpgradeableBeacon _beacon = new UpgradeableBeacon(_vaultImplementation, address(this));
        beacon = _beacon;
        admin = _admin;
        treasury = _treasury;
        fee = _protocolFee;
        isFirstResponder[_admin] = true;
        gmxVester = _gmxAddresses.gmxVester;
        glpVester = _gmxAddresses.glpVester;
        gmxRewardsTracker = _gmxAddresses.gmxRewardsTracker;
        extGmxRewardsTracker = _gmxAddresses.extGmxRewardsTracker;
        glpRewardsTracker = _gmxAddresses.glpRewardsTracker;
        gmxRewardsRouter = _gmxAddresses.gmxRewardsRouter;
        withdrawEscrowImplementation = _withdrawEscrowImplementation;
    }

    function deployVault(
        address _owner,
        uint256 _donationPercentGmx,
        uint256 _donationPercentGlp,
        uint256 _gmxAmount,
        uint256 _glpAmount,
        uint256 _nonce,
        string calldata _refcode
    ) external checkFullPauseEntryPoint returns (address) {
        bytes32 salt = keccak256(abi.encodePacked(_nonce, msg.sender));
        uint256 id = uint256(salt);

        if (vaults[id] != address(0)) revert VaultExists();
        address vault = vaults[id] = Create2.deploy(0, salt, _getBytecode());
        vaultId[vault] = id;
        deployedVaults[_nonce][msg.sender] = vault;
        IExitVault(vault).initialize(
            _owner,
            _donationPercentGmx,
            _donationPercentGlp,
            _gmxAmount,
            _glpAmount,
            fee,
            treasury,
            GmxAddresses(
                gmxVester, glpVester, gmxRewardsTracker, extGmxRewardsTracker, glpRewardsTracker, gmxRewardsRouter
            )
        );

        _safeMint(_owner, id);
        emit ExitVaultDeployed(id, vault, _owner, _donationPercentGmx, _donationPercentGlp, _nonce, _refcode);

        return vault;
    }

    function transferFrom(address from, address to, uint256 tokenId) public override checkFullPauseEntryPoint {
        ERC721Upgradeable.transferFrom(from, to, tokenId);
        ERC721Utils.checkOnERC721Received(_msgSender(), from, to, tokenId, "");
        IExitVault(vaults[tokenId]).setOwner(to);
    }

    function setProtocolFee(uint256 _fee) external onlyAdmin checkFullPauseEntryPoint {
        if (_fee > HUNDRED_PERCENT) revert FeeTooHigh();
        uint256 oldFee = fee;
        fee = _fee;
        emit ProtocolFeeSet(oldFee, _fee);
    }

    function setGMXAddresses(GmxAddresses calldata _gmxAddresses) external onlyAdmin {
        gmxVester = _gmxAddresses.gmxVester;
        glpVester = _gmxAddresses.glpVester;
        gmxRewardsTracker = _gmxAddresses.gmxRewardsTracker;
        glpRewardsTracker = _gmxAddresses.glpRewardsTracker;
        gmxRewardsRouter = _gmxAddresses.gmxRewardsRouter;
    }

    function setTreasury(address _treasury) external onlyAdmin {
        treasury = _treasury;
    }

    function setFirstResponder(address _firstResponder, bool _status) external onlyAdmin {
        isFirstResponder[_firstResponder] = _status;
    }

    function refreshVaultsGmxAddresses(address[] calldata _vaults) external onlyAdmin {
        for (uint256 i = 0; i < _vaults.length; i++) {
            if (vaultId[_vaults[i]] == 0) revert InvalidVault(_vaults[i]);
            IExitVault(_vaults[i]).refreshGMXAddresses();
        }
    }

    function delegateVotes(address[] calldata _vaults, address[] calldata _delegates)
        external
        onlyAdmin
        checkFullPauseEntryPoint
    {
        if (_vaults.length != _delegates.length) revert InvalidInputLengths();

        for (uint256 i = 0; i < _vaults.length; i++) {
            if (vaultId[_vaults[i]] == 0) revert InvalidVault(_vaults[i]);
            IExitVault(_vaults[i]).delegate(_delegates[i]);
        }
    }

    function upgradeImplementation(address _newImplementation) external onlyAdmin {
        UpgradeableBeacon(beacon).upgradeTo(_newImplementation);
    }

    function getBeaconImplementation() external view returns (address) {
        return UpgradeableBeacon(beacon).implementation();
    }

    function computeVaultAddress(uint256 _nonce, address _user) public view returns (address) {
        bytes32 salt = keccak256(abi.encodePacked(_nonce, _user));
        return Create2.computeAddress(salt, keccak256(_getBytecode()));
    }

    function signalAdminTransfer(address _recipient) external onlyAdmin {
        pendingAdmin = _recipient;
    }

    function acceptAdminTransfer() external {
        if (msg.sender != pendingAdmin) revert TransferNotSignaled();
        admin = pendingAdmin;
        pendingAdmin = address(0);
    }

    function _getBytecode() private view returns (bytes memory bytecode) {
        bytes memory sourceCodeBytes = type(BeaconProxy).creationCode;
        bytecode = abi.encodePacked(sourceCodeBytes, abi.encode(beacon, ""));
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) revert OnlyAdmin();
        _;
    }
}
