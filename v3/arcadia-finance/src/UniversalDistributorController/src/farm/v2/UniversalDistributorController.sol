// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "solady/auth/OwnableRoles.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IBasedDistributorV2.sol";
import "./libraries/BoringERC20.sol";
import "./rewarders/IComplexRewarder.sol";
import "./IEsProxyMaster.sol";

interface IEsToken is IERC20 {
    function usageAllocations(address userAddress, address usageAddress) external view returns (uint256);
    function allocateFromUsage(address userAddress, uint256 amount) external;
    function convertTo(uint256 amount, address to) external;
    function deallocateFromUsage(address userAddress, uint256 amount) external;
    function isTransferWhitelisted(address account) external view returns (bool);
}

contract UniversalDistributorController is OwnableRoles, ReentrancyGuard, Pausable {
    using BoringERC20 for IBoringERC20;

    // Custom Errors (already gas-efficient)
    error NotAuthorized();
    error NotEmergencyRole();
    error ZeroAddress();
    error InvalidDelay();
    error MaxEmission();
    error InvalidProposal();
    error ProposalNotReady();
    error ProposalExpired();
    error ProposalAlreadyQueued();
    error ProposalNotQueued();

    // Constants (stored in code, already optimal)
    uint256 public constant MANAGER_ROLE = _ROLE_0;
    uint256 public constant EMERGENCY_ROLE = _ROLE_1;
    uint256 public constant PROPOSAL_EXPIRY = 7 days;
    uint256 public constant MIN_DELAY = 1 days;
    uint256 public constant MAX_DELAY = 30 days;
    uint16 public constant DEPOSIT_FEE = 0;
    uint256 public constant HARVEST_INTERVAL = 30;

    bytes4 public constant UPDATE_EMISSION_RATE_SELECTOR = 0x346e61c6; // Precomputed keccak256("updateEmissionRate(uint256)")
    bytes4 public constant SET_TEAM_PERCENT_SELECTOR = 0x4e8c494c;     // Precomputed keccak256("setTeamPercent(uint256)")
    bytes4 public constant SET_TREASURY_PERCENT_SELECTOR = 0xbecaf1bf; // Precomputed keccak256("setTreasuryPercent(uint256)")
    bytes4 public constant SET_INVESTOR_PERCENT_SELECTOR = 0xeda1128c; // Precomputed keccak256("setInvestorPercent(uint256)")
    bytes4 public constant TRANSFER_MASTERCHEF_OWNERSHIP_SELECTOR = 0x9a0b33bf; // Precomputed keccak256("transferMasterChefOwnership(address)")
    bytes4 public constant TRANSFER_ESMASTER_OWNERSHIP_SELECTOR = 0xba44bc1c; // Precomputed keccak256("transferEsMasterOwnership(address)")
    bytes4 public constant CHANGE_DELAY_SELECTOR = 0x7e3c2510;         // Precomputed keccak256("changeDelay(uint256)")
    bytes4 public constant TRANSFER_SELF_OWNERSHIP_SELECTOR = 0x168a11ce;         // Precomputed keccak256("transferSelfOwnership(address)")

    // Packed struct: 4 + 1 + 1 + 6 = 12 bytes (fits in one slot with params separate)
    struct Proposal {
        bytes4 selector;       // 4 bytes
        bool executed;         // 1 byte
        bool queued;           // 1 byte
        uint48 queueTimestamp; // 6 bytes
        uint256[] params;      // Stored separately
    }

    IBasedDistributorV2 public immutable masterChef;
    IEsProxyMaster public immutable esProxyMaster;
    uint48 public delay;

    mapping(uint256 => Proposal) public proposals;
    uint256 public proposalCount;

    // Events (optimized: single param in ProposalQueued)
    event ManagerAdded(address indexed account);
    event ManagerRemoved(address indexed account);
    event AllocationChanged(uint256 indexed pid, uint256 oldAlloc, uint256 newAlloc);
    event DelayChanged(uint48 newDelay);
    event ProposalQueued(uint256 indexed proposalId, bytes4 selector, uint256 param); // Single param
    event ProposalExecuted(uint256 indexed proposalId);

    constructor(
        IBasedDistributorV2 _masterChef,
        IEsProxyMaster _esProxyMaster,
        address daoMultisig,
        address emergencyAdmin,
        uint48 _initialDelay
    ) {
        // Fixed ZeroAddress check: use logical OR instead of bitwise
        if (address(_masterChef) == address(0) || address(_esProxyMaster) == address(0)) revert ZeroAddress();
        masterChef = _masterChef;
        esProxyMaster = _esProxyMaster;
        delay = _initialDelay;

        _initializeOwner(daoMultisig);
        _grantRoles(emergencyAdmin, EMERGENCY_ROLE);
    }

    // Role management (minimal changes, already efficient)
    function addManager(address account) external onlyOwner {
        _grantRoles(account, MANAGER_ROLE);
        emit ManagerAdded(account);
    }

    function removeManager(address account) external onlyOwner {
        _removeRoles(account, MANAGER_ROLE);
        emit ManagerRemoved(account);
    }

    function transferOwnership(address newOwner) public payable override onlyOwner {
        // Native function disabled; Ownership transfer relies on timelock
        revert NotAuthorized();
    }

    function renounceOwnership() public payable override onlyOwner {
        // Disables ownership renounce
        revert NotAuthorized();
    }

    function completeOwnershipHandover(address pendingOwner) public payable override onlyOwner {
        // Disables two-step handover
        revert NotAuthorized();
    }

    // Distributor Farm management
    function addDistributor(
        uint256 _allocPoint,
        IBoringERC20 _lpToken,
        IComplexRewarder[] calldata _rewarders
    ) external whenNotPaused nonReentrant onlyRolesOrOwner(MANAGER_ROLE) {
        masterChef.add(_allocPoint, _lpToken, DEPOSIT_FEE, HARVEST_INTERVAL, _rewarders);
        // Inline poolLength - 1 to avoid extra SLOAD
        masterChef.deposit(masterChef.poolLength() - 1, 0);
    }

    function setDistributor(
        uint256 _pid,
        uint256 _allocPoint,
        IComplexRewarder[] calldata _rewarders
    ) external whenNotPaused nonReentrant onlyRolesOrOwner(MANAGER_ROLE) {
        masterChef.set(_pid, _allocPoint, DEPOSIT_FEE, HARVEST_INTERVAL, _rewarders);
        masterChef.deposit(_pid, 0);
    }

    function updateDistributorAllocPoint(uint256 _pid, uint256 _allocPoint) 
        external 
        whenNotPaused 
        nonReentrant 
        onlyRolesOrOwner(MANAGER_ROLE)
    {
        (, uint256 oldAlloc, , , , ,) = masterChef.poolInfo(_pid);
        masterChef.updateAllocPoint(_pid, _allocPoint);
        emit AllocationChanged(_pid, oldAlloc, _allocPoint);
    }

    // SAFE TIMELOCK IMPLEMENTATION
    function queueUpdateEmissionRate(uint256 _albPerSec) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(UPDATE_EMISSION_RATE_SELECTOR, _albPerSec);
    }

    function queueSetTeamPercent(uint256 _newTeamPercent) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(SET_TEAM_PERCENT_SELECTOR, _newTeamPercent);
    }

    function queueSetTreasuryPercent(uint256 _newTreasuryPercent) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(SET_TREASURY_PERCENT_SELECTOR, _newTreasuryPercent);
    }

    function queueSetInvestorPercent(uint256 _newInvestorPercent) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(SET_INVESTOR_PERCENT_SELECTOR, _newInvestorPercent);
    }

    function queueTransferMasterChefOwnership(address newOwner, bool esMaster) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(esMaster ? TRANSFER_ESMASTER_OWNERSHIP_SELECTOR : TRANSFER_MASTERCHEF_OWNERSHIP_SELECTOR, uint256(uint160(newOwner)));
    }

    function queueChangeDelay(uint48 newDelay) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(CHANGE_DELAY_SELECTOR, newDelay);
    }

    function queueTransferSelfOwnership(address newOwner) external onlyOwner returns (uint256 pid) {
        pid = _queueProposal(TRANSFER_SELF_OWNERSHIP_SELECTOR, uint256(uint160(newOwner)));
    }

  function _queueProposal(bytes4 selector, uint256 param) internal returns (uint256 pid) {
    unchecked { pid = ++proposalCount; }
    Proposal storage proposal = proposals[pid];
    proposal.selector = selector;
    proposal.params = new uint256[](1);
    proposal.params[0] = param;
    proposal.queueTimestamp = uint48(block.timestamp);
    proposal.queued = true;
    emit ProposalQueued(pid, selector, param);
}

    function executeProposal(uint256 proposalId) external whenNotPaused nonReentrant onlyOwner {
        Proposal storage proposal = proposals[proposalId];
        uint48 queueTs = proposal.queueTimestamp; // Cache SLOAD
        if (!proposal.queued || proposal.executed) revert InvalidProposal();
        uint256 ts = block.timestamp; // Cache timestamp
        if (ts < uint256(queueTs) + delay) revert ProposalNotReady();
        if (ts > uint256(queueTs) + delay + PROPOSAL_EXPIRY) revert ProposalExpired();
        proposal.executed = true;
        uint256 param = proposal.params[0];
        bytes4 selector = proposal.selector;

        if (selector == UPDATE_EMISSION_RATE_SELECTOR) {
            if (param > masterChef.albPerSec() << 1) revert MaxEmission(); // Bit shift instead of *2
            masterChef.updateEmissionRate(param);
        } else if (selector == SET_TEAM_PERCENT_SELECTOR) {
            masterChef.setTeamPercent(param);
        } else if (selector == SET_TREASURY_PERCENT_SELECTOR) {
            masterChef.setTreasuryPercent(param);
        } else if (selector == SET_INVESTOR_PERCENT_SELECTOR) {
            masterChef.setInvestorPercent(param);
        } else if (selector == TRANSFER_MASTERCHEF_OWNERSHIP_SELECTOR) {
            masterChef.transferOwnership(address(uint160(param)));
        } else if (selector == TRANSFER_ESMASTER_OWNERSHIP_SELECTOR) {
            esProxyMaster.transferOwnership(address(uint160(param)));
        } else if (selector == CHANGE_DELAY_SELECTOR) {
            if(param < MIN_DELAY || param > MAX_DELAY) revert InvalidDelay();
            delay = uint48(param);
            emit DelayChanged(uint48(param));
        } else if(selector == TRANSFER_SELF_OWNERSHIP_SELECTOR) {
            _setOwner(address(uint160(param)));
        }
        emit ProposalExecuted(proposalId);
    }

    function cancelProposal(uint256 proposalId) external onlyOwner {
        Proposal storage proposal = proposals[proposalId];
        if (!proposal.queued || proposal.executed) revert InvalidProposal();
        delete proposals[proposalId]; // Gas refund
    }

    // EsProxyMaster management functions
    function addEsProxy(
        uint256 _allocPoint,
        IEsToken _esToken,
        IComplexRewarder[] calldata _rewarders
    ) external whenNotPaused nonReentrant onlyRolesOrOwner(MANAGER_ROLE) {
        uint256 len = _rewarders.length; // Cache length
        address[] memory rewardersAddresses = new address[](len);
        unchecked { // Safe since len is bounded by calldata
            for (uint256 i; i < len; ++i) { // i++ -> ++i to avoid unnecessary assignment
                rewardersAddresses[i] = address(_rewarders[i]);
            }
        }
        esProxyMaster.add(_allocPoint, address(_esToken), HARVEST_INTERVAL, rewardersAddresses);
    }

    function setEsProxy(
        uint256 _pid,
        uint256 _allocPoint,
        IComplexRewarder[] calldata _rewarders
    ) external whenNotPaused nonReentrant onlyRolesOrOwner(MANAGER_ROLE) {
        uint256 len = _rewarders.length; // Cache length
        address[] memory rewardersAddresses = new address[](len);
        unchecked {
            for (uint256 i; i < len; ++i) {
                rewardersAddresses[i] = address(_rewarders[i]);
            }
        }
        esProxyMaster.set(_pid, _allocPoint, HARVEST_INTERVAL, rewardersAddresses);
    }

    function updateEsProxyAllocPoint(uint256 _pid, uint256 _allocPoint) 
        external 
        whenNotPaused 
        nonReentrant 
        onlyRolesOrOwner(MANAGER_ROLE)
    {
        esProxyMaster.updateAllocPoint(_pid, _allocPoint);
        emit AllocationChanged(_pid, 0, _allocPoint);
    }

    function recoverEsProxyRewardToken(uint256 amount) 
        external 
        whenNotPaused 
        nonReentrant 
        onlyOwner 
    {
        esProxyMaster.recoverRewardToken(amount);
    }

    // Emergency functions
    function pause() external {
        if (!hasAnyRole(msg.sender, EMERGENCY_ROLE)) revert NotEmergencyRole();
        _pause();
    }

    function unpause() external {
        if (!hasAnyRole(msg.sender, EMERGENCY_ROLE)) revert NotEmergencyRole();
        _unpause();
    }
}