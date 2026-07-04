// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.24;

import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {ERC721EnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IGeneralError} from "../common/IGeneralError.sol";
import {MemberPool} from "./MemberPool.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {AgentSigVerifier} from "./AgentSigVerifier.sol";

contract Agent is
    IGeneralError,
    Initializable,
    ERC721Upgradeable,
    ERC721EnumerableUpgradeable,
    AccessControlUpgradeable
{
    using EnumerableSet for EnumerableSet.UintSet;
    struct Withdrawal {
        address user;
        uint256 amount;
        uint256 timeUnlock;
        bool isCompleted;
    }

    event Stake(address user, uint256 agentId, uint256 amount, uint256 timestamp);
    event Unstake(address user, uint256 agentId, uint256 amount, uint256 withdrawalId, uint256 timestamp);
    event Withdraw(address user, uint256 amount, uint256 withdrawalId, uint256 timestamp);
    event Delegate(address user, uint256 agentId, uint256 hubId, uint256 amount, uint256 timestamp);
    event Undelegate(address user, uint256 agentId, uint256 hubId, uint256 amount, uint256 timestamp);
    event ClaimReward(address user, uint256 amount, uint256 timestamp);
    event Duplicate(address user);

    bytes32 private constant CONTRACT_ID = "Agent";
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant BATCH_MINT_ROLE = keccak256("BATCH_MINT_ROLE");
    bytes32 public constant GASLESS_ROLE = keccak256("GASLESS_ROLE");

    uint256 private _currentTokenId;
    string private baseURI;

    IERC20 private daoToken;
    MemberPool private memberPool;
    AgentSigVerifier private agentSigVerifier;
    uint256 public agentLimitPerUser;
    uint256 public minStakePerAgent;
    uint256 public lockupPeriodSec;

    mapping(uint256 tokenId => uint256) public stakeAmount;
    mapping(uint256 tokenId => uint256) public currentHub;

    Withdrawal[] public withdrawals;
    mapping(address user => EnumerableSet.UintSet) private userWithdrawals;

    mapping(uint256 hubId => uint256) public minHubXpLengthSec;

    mapping(uint256 tokenId => mapping(uint256 hubId => uint256)) public hubXpPoints;
    mapping(uint256 tokenId => mapping(uint256 hubId => uint256)) public hubXpLengthSec;
    mapping(uint256 tokenId => mapping(uint256 hubId => uint256)) public hubXpSettlementTimestamp;

    mapping(uint256 hubId => bool) public isDelegateSigNeeded;
    mapping(uint256 hubId => mapping(address signer => bool)) public isValidDelegateSigner;

    uint256 public agentLockupPeriodSec;
    mapping(uint256 tokenId => uint256) public agentUnlock;
    uint256 public minStakeMintAgent;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address defaultAdmin, IERC20 _daoToken) public initializer {
        __ERC721_init("Mind Network Agent", "mAGENT");
        __ERC721Enumerable_init();
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        daoToken = _daoToken;
    }

    //TODO remove after TGE
    function changeDaoToken(IERC20 _daoToken) external onlyRole(ADMIN_ROLE) {
        daoToken = _daoToken;
    }

    function setup(
        string calldata __baseURI,
        MemberPool _memberPool,
        AgentSigVerifier _agentSigVerifier,
        uint256 _agentLimitPerUser,
        uint256 _minStakeMintAgent,
        uint256 _minStakePerAgent,
        uint256 _lockupPeriodSec,
        uint256 _agentLockupPeriodSec
    ) external onlyRole(ADMIN_ROLE) {
        baseURI = __baseURI;
        memberPool = _memberPool;
        agentSigVerifier = _agentSigVerifier;
        agentLimitPerUser = _agentLimitPerUser;
        minStakeMintAgent = _minStakeMintAgent;
        minStakePerAgent = _minStakePerAgent;
        lockupPeriodSec = _lockupPeriodSec;
        agentLockupPeriodSec = _agentLockupPeriodSec;
    }

    function setupHubs(
        uint256[] calldata hubIds,
        uint256[] calldata _minHubXpLength,
        bool[] calldata _isDelegateSigNeeded,
        address[][] calldata _delegateSigners,
        bool[][] calldata _isDelegateSigners
    ) external onlyRole(ADMIN_ROLE) {
        for (uint256 i; i < hubIds.length; i++) {
            uint256 hubId = hubIds[i];
            minHubXpLengthSec[hubId] = _minHubXpLength[i];
            isDelegateSigNeeded[hubId] = _isDelegateSigNeeded[i];
            for (uint256 j; j < _delegateSigners[i].length; j++) {
                isValidDelegateSigner[hubId][_delegateSigners[i][j]] = _isDelegateSigners[i][j];
            }
        }
    }

    function batchMint(address[] calldata users) external onlyRole(BATCH_MINT_ROLE) {
        for (uint256 i; i < users.length; i++) {
            if (balanceOf(users[i]) == 0) {
                _mintAgent(users[i]);
            } else {
                emit Duplicate(users[i]);
            }
        }
    }

    function opEIP712(
        AgentSigVerifier.Message calldata message,
        bytes calldata sig,
        bytes calldata delegateSig,
        uint256 delegateSigTs
    ) external onlyRole(GASLESS_ROLE) {
        uint16 sigResult = agentSigVerifier.verify(message, sig);
        if (sigResult == 0) {
            if (Strings.equal(message.action, "Stake FHE")) {
                _stake(message.user, message.agentID, message.amount);
            } else if (Strings.equal(message.action, "Delegate to Hub")) {
                _delegate(message.user, message.agentID, message.hubID, delegateSig, delegateSigTs);
            } else if (Strings.equal(message.action, "Exit current Hub")) {
                _exitCurrentHub(message.user, message.agentID);
            } else if (Strings.equal(message.action, "Switch to another Hub")) {
                _exitCurrentHub(message.user, message.agentID);
                _delegate(message.user, message.agentID, message.hubID, delegateSig, delegateSigTs);
            } else if (Strings.equal(message.action, "Unstake FHE")) {
                _unstake(message.user, message.agentID, message.amount);
            } else if (Strings.equal(message.action, "Destroy Agent")) {
                _burn(message.user, message.agentID);
            } else {
                revert GeneralError(CONTRACT_ID, 40018);
            }
        } else {
            revert GeneralError(CONTRACT_ID, 4010 + sigResult);
        }
    }

    function createOrStake(uint256 tokenId, uint256 amount) external {
        _stake(_msgSender(), tokenId, amount);
    }

    function stake(uint256 tokenId, uint256 amount) external {
        _stake(_msgSender(), tokenId, amount);
    }

    function _mintAgent(address user) private returns (uint256 tokenId) {
        tokenId = _currentTokenId + 1;
        _currentTokenId = tokenId;
        _safeMint(user, tokenId);
    }

    function _stake(address user, uint256 tokenId, uint256 amount) private {
        if (tokenId == 0) {
            if (amount < minStakeMintAgent) {
                revert GeneralError(CONTRACT_ID, 4001);
            }
            if (balanceOf(user) >= agentLimitPerUser) {
                revert GeneralError(CONTRACT_ID, 4002);
            }
            tokenId = _mintAgent(user);
        } else if (ownerOf(tokenId) != user) {
            revert GeneralError(CONTRACT_ID, 4003);
        }

        if (amount > 0) {
            settleHubXp(tokenId);

            SafeERC20.safeTransferFrom(daoToken, user, address(this), amount);
            stakeAmount[tokenId] += amount;
            if (agentUnlock[tokenId] == 0) {
                agentUnlock[tokenId] = block.timestamp + agentLockupPeriodSec;
            }
            emit Stake(user, tokenId, amount, block.timestamp);

            uint256 currentHubId = currentHub[tokenId];
            if (currentHubId > 0) {
                memberPool.delegate(tokenId, currentHubId, amount);
                emit Delegate(user, tokenId, currentHubId, amount, block.timestamp);
            }
        }
    }

    function delegate(uint256 tokenId, uint256 hubId, bytes calldata signature, uint256 sigTs) external {
        _delegate(_msgSender(), tokenId, hubId, signature, sigTs);
    }

    function _delegate(address user, uint256 tokenId, uint256 hubId, bytes calldata signature, uint256 sigTs) private {
        if (hubId == 0) {
            revert GeneralError(CONTRACT_ID, 40021);
        }
        if (ownerOf(tokenId) != user) {
            revert GeneralError(CONTRACT_ID, 4004);
        }
        if (currentHub[tokenId] > 0) {
            revert GeneralError(CONTRACT_ID, 4005);
        }
        if (isDelegateSigNeeded[hubId]) {
            if (sigTs < block.timestamp - 60 * 30) {
                //Signature valid for 30 minutes
                revert GeneralError(CONTRACT_ID, 4006);
            }
            bytes32 payloadHash = keccak256(abi.encode(address(this), tokenId, hubId, sigTs));
            address signer = ECDSA.recover(
                keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", payloadHash)),
                signature
            );
            if (!isValidDelegateSigner[hubId][signer]) {
                revert GeneralError(CONTRACT_ID, 4007);
            }
        }
        uint256 amount = stakeAmount[tokenId];
        if (amount == 0) {
            revert GeneralError(CONTRACT_ID, 40019);
        }
        currentHub[tokenId] = hubId;
        memberPool.delegate(tokenId, hubId, amount);
        hubXpSettlementTimestamp[tokenId][hubId] = block.timestamp;

        emit Delegate(user, tokenId, hubId, amount, block.timestamp);
    }

    function exitCurrentHub(uint256 tokenId) external {
        _exitCurrentHub(_msgSender(), tokenId);
    }

    function _exitCurrentHub(address user, uint256 tokenId) private {
        if (ownerOf(tokenId) != user) {
            revert GeneralError(CONTRACT_ID, 4008);
        }
        uint256 currentHubId = currentHub[tokenId];
        if (currentHubId == 0) {
            revert GeneralError(CONTRACT_ID, 4009);
        }
        settleHubXp(tokenId);
        if (hubXpLengthSec[tokenId][currentHubId] < minHubXpLengthSec[currentHubId]) {
            revert GeneralError(CONTRACT_ID, 40010);
        }
        uint256 amount = stakeAmount[tokenId];
        memberPool.undelegate(user, tokenId, currentHubId, amount);
        currentHub[tokenId] = 0;

        emit Undelegate(user, tokenId, currentHubId, amount, block.timestamp);
    }

    function switchHub(uint256 tokenId, uint256 hubId, bytes calldata signature, uint256 sigTs) external {
        _exitCurrentHub(_msgSender(), tokenId);
        _delegate(_msgSender(), tokenId, hubId, signature, sigTs);
    }

    function unstake(uint256 tokenId, uint256 amount) external {
        _unstake(_msgSender(), tokenId, amount);
    }

    function _unstake(address user, uint256 tokenId, uint256 amount) private {
        if (ownerOf(tokenId) != user) {
            revert GeneralError(CONTRACT_ID, 40011);
        }
        if (amount == 0) {
            revert GeneralError(CONTRACT_ID, 40012);
        }
        if (block.timestamp < agentUnlock[tokenId]) {
            revert GeneralError(CONTRACT_ID, 40022);
        }
        settleHubXp(tokenId);
        uint256 newAmount = stakeAmount[tokenId] - amount;
        if (newAmount < minStakePerAgent || newAmount == 0) {
            revert GeneralError(CONTRACT_ID, 40013);
        }
        stakeAmount[tokenId] = newAmount;
        uint256 currentHubId = currentHub[tokenId];
        if (currentHubId > 0) {
            if (hubXpLengthSec[tokenId][currentHubId] < minHubXpLengthSec[currentHubId]) {
                revert GeneralError(CONTRACT_ID, 40014);
            }
            memberPool.undelegate(user, tokenId, currentHubId, amount);
            emit Undelegate(user, tokenId, currentHubId, amount, block.timestamp);
        }
        uint256 withdrawalId = withdrawals.length;
        withdrawals.push(Withdrawal(user, amount, block.timestamp + lockupPeriodSec, false));
        bool added = userWithdrawals[user].add(withdrawalId);
        if (!added) {
            revert GeneralError(CONTRACT_ID, 50001);
        }

        emit Unstake(user, tokenId, amount, withdrawalId, block.timestamp);
    }

    function burn(uint256 tokenId) external {
        _burn(_msgSender(), tokenId);
    }

    function _burn(address user, uint256 tokenId) private {
        address tokenOwner = ownerOf(tokenId);
        if (tokenOwner != user) {
            revert GeneralError(CONTRACT_ID, 40015);
        }
        if (block.timestamp < agentUnlock[tokenId]) {
            revert GeneralError(CONTRACT_ID, 40023);
        }

        uint256 currentHubId = currentHub[tokenId];
        if (currentHubId > 0) {
            _exitCurrentHub(user, tokenId);
        }

        _update(address(0), tokenId, tokenOwner);

        uint256 amount = stakeAmount[tokenId];
        if (amount > 0) {
            stakeAmount[tokenId] = 0;
            uint256 withdrawalId = withdrawals.length;
            withdrawals.push(Withdrawal(tokenOwner, amount, block.timestamp + lockupPeriodSec, false));
            bool added = userWithdrawals[tokenOwner].add(withdrawalId);
            if (!added) {
                revert GeneralError(CONTRACT_ID, 50002);
            }
            emit Unstake(tokenOwner, tokenId, amount, withdrawalId, block.timestamp);
        }

        claimReward(tokenOwner);
    }

    function claimReward(address user) public {
        uint256 agentCount = balanceOf(user);
        uint256 earliest = type(uint256).max;
        for (uint256 i; i < agentCount; i++) {
            uint256 agentId = tokenOfOwnerByIndex(user, i);
            uint256 hubId = currentHub[agentId];
            if (hubId > 0) {
                memberPool.settleAgentReward(user, agentId, hubId);
            }
            uint256 unlockTime = agentUnlock[agentId];
            if (unlockTime > 0 && unlockTime < earliest) {
                earliest = unlockTime;
            }
        }
        if (earliest < type(uint256).max && block.timestamp < earliest) {
            revert GeneralError(CONTRACT_ID, 40024);
        }
        uint256 amount = memberPool.claimUserReward(user);
        emit ClaimReward(user, amount, block.timestamp);
    }

    function getWithdrawalCount() external view returns (uint256 numWithdrawal) {
        numWithdrawal = withdrawals.length;
    }

    function getWithdrawals(address user) external view returns (uint256[] memory) {
        return userWithdrawals[user].values();
    }

    function withdraw(uint256 withdrawalId) external {
        if (withdrawalId >= withdrawals.length) {
            revert GeneralError(CONTRACT_ID, 40020);
        }
        Withdrawal storage withdrawal = withdrawals[withdrawalId];
        if (withdrawal.timeUnlock > block.timestamp) {
            revert GeneralError(CONTRACT_ID, 40016);
        }
        if (withdrawal.isCompleted) {
            revert GeneralError(CONTRACT_ID, 40017);
        }
        withdrawal.isCompleted = true;
        bool removed = userWithdrawals[withdrawal.user].remove(withdrawalId);
        if (!removed) {
            revert GeneralError(CONTRACT_ID, 50003);
        }
        SafeERC20.safeTransfer(daoToken, withdrawal.user, withdrawal.amount);

        emit Withdraw(withdrawal.user, withdrawal.amount, withdrawalId, block.timestamp);
    }

    function settleHubXp(uint256 tokenId) public {
        uint256 currentHubId = currentHub[tokenId];
        uint256 lastSettlementTimestamp = hubXpSettlementTimestamp[tokenId][currentHubId];
        if (currentHubId > 0 && block.timestamp > lastSettlementTimestamp) {
            uint256 currentAmount = stakeAmount[tokenId];
            uint256 period = block.timestamp - lastSettlementTimestamp;
            uint256 xp = currentAmount * period;

            hubXpPoints[tokenId][currentHubId] += xp;
            hubXpLengthSec[tokenId][currentHubId] += period;
            hubXpSettlementTimestamp[tokenId][currentHubId] = block.timestamp;
        }
    }

    // The following functions are overrides required by Solidity.

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (address) {
        address from = _ownerOf(tokenId);
        if (to != address(0) && from != address(0)) {
            revert GeneralError(CONTRACT_ID, 4032);
        }
        return super._update(to, tokenId, auth);
    }

    function _increaseBalance(
        address account,
        uint128 value
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
        super._increaseBalance(account, value);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721Upgradeable, ERC721EnumerableUpgradeable, AccessControlUpgradeable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }
}
